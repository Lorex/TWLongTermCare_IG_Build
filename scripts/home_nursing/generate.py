"""Generate the versioned home nursing forms and their field mappings.

Run from any directory with Python 3. The curated schema is the source of truth;
PDF extraction is deliberately not part of generation.
"""
import hashlib
import uuid
import re
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
SCHEMA = json.loads(Path(__file__).with_name('schema.json').read_text())
CANONICAL = 'http://ltc-ig.fhir.tw'
FORMS = SCHEMA['forms']
OUTPUT = {}
SETS = {}
CONCEPTS = {}


def quote(value):
    return json.dumps(value, ensure_ascii=False)


def token(value):
    return 'c' + hashlib.sha256(value.encode()).hexdigest()[:12]


def vocabulary(node):
    if 'externalVS' in node: return node['externalVS']
    values = node['choices']
    ident = 'hn-vs-' + hashlib.sha256('|'.join(sorted(values)).encode()).hexdigest()[:12]
    SETS.setdefault(ident, (node.get('vocabularyTitle', node['label']), values))
    for value in values:
        CONCEPTS[token(value)] = value
    return ident


def write(path, lines):
    if lines and lines[0].startswith(('CodeSystem:', 'ValueSet:')):
        enriched = []
        kind = None
        for line in lines:
            if line.startswith(('CodeSystem:', 'ValueSet:')): kind = line.split(':')[0]
            enriched.append(line)
            if line.startswith('Id:'): ident = line.split(':', 1)[1].strip()
            if line.startswith('Description:'):
                oid = uuid.uuid5(uuid.NAMESPACE_URL, CANONICAL + '/' + kind + '/' + ident).int
                enriched += ['* ^experimental = false', '* ^identifier[0].system = "urn:ietf:rfc:3986"', f'* ^identifier[0].value = "urn:oid:2.25.{oid}"']
        lines = enriched
    OUTPUT[path] = '\n'.join(lines) + '\n'


def walk(nodes, parent=''):
    for node in nodes:
        path = parent + node['key']
        yield path, node
        yield from walk(node.get('children', []), path + '.')


def link(path):
    # Stable, bounded length, including deeply nested form items.
    return path if len(path) < 100 else 'item-' + hashlib.sha256(path.encode()).hexdigest()[:20]


def lower_camel(part):
    part = re.sub(r'_([A-Za-z0-9])', lambda m: m.group(1).upper(), part)
    return part[:1].lower() + part[1:]


def qrpath(path):
    parts = path.split('.')
    return '.'.join('item[' + key + ']' for key in parts)


def mappingpath(path):
    parts = path.split('.')
    return '.'.join("item.where(linkId='" + link('.'.join(parts[:i + 1])) + "')" for i in range(len(parts)))


def value_type(node):
    if 'choices' in node:
        return 'Coding'
    return {'string': 'String', 'date': 'Date', 'time': 'Time', 'integer': 'Integer', 'decimal': 'Decimal', 'boolean': 'Boolean'}[node['type']]


def sample(node):
    key = node['key']
    if 'example' in node: return quote(node['example'])
    if 'choices' in node:
        if 'externalSystem' in node: return node['externalSystem'] + '#' + node['externalCodes'][0]
        # Avoid choosing an unspecified "other" as the default example.
        val = ('否' if node['choices'] == ['是', '否'] else '電訪' if '電訪' in node['choices'] else next((v for v in node['choices'] if not v.startswith('其他')), node['choices'][0]))
        return 'HNAnswerCS#' + token(val) + ' ' + quote(val)
    if node['type'] == 'date': return '"2025-12-08"'
    if node['type'] == 'time': return '"09:00:00"'
    if node['type'] == 'boolean': return 'false'
    if node['type'] == 'integer': return str({'Pulse':77,'Respiration':16,'BloodPressure1':112,'BloodPressure2':73,'BloodGlucose':120,'BloodOxygen':98}.get(key,1))
    if node['type'] == 'decimal': return '36.5' if key == 'Temperature' else '1.0'
    if key == 'IDNo': return '"C123456789"'
    if key in ['CaseID','IdNo']: return '"A123456789"'
    if key in ['NurseID','UserID','CloseID']: return '"B123456789"'
    if key == 'CreateID': return '"B123456789"'
    if key == 'CaseName': return '"陳明慧"'
    if key == 'TargetStatement': return '"降低跌倒風險"'
    if key == 'Summary': return '"跌倒問題"'
    if key == 'City': return '"臺北市"'
    if key == 'Area': return '"中正區"'
    if 'Tel' in key or key in ['PhoneNumber']: return '"02-23456789"'
    if key == 'CaseType': return '"非足部護理"'
    return quote(node['label'] + '範例')


def ordered_response(lines, form):
    """Use explicit indexes so optional items retain Questionnaire order in SUSHI."""
    profile = 'HN' + form['name'] + 'Response'
    item_pattern = re.compile(r'item\[([^]]+)\](?:\[(\d+)\])?')
    orders = {}
    def register(nodes, parent=()):
        orders[parent] = {n['key']: i for i, n in enumerate(nodes)}
        for node in nodes:
            register(node.get('children', []), parent + (node['key'],))
    register(form['fields'])
    present = {}
    for line in lines:
        if not line.startswith('* item['): continue
        path = line[2:].split(' = ', 1)[0]
        parent = ()
        for match in item_pattern.finditer(path):
            child = (match[1], int(match[2] or 0))
            present.setdefault(parent, set()).add(child)
            parent += (child,)
    positions = {}
    for parent, children in present.items():
        order = orders[tuple(k for k, _ in parent)]
        positions[parent] = {child: i for i, child in enumerate(sorted(children, key=lambda c: (order[c[0]], c[1])))}
    result = []
    added_metadata = False
    for line in lines:
        if line == 'InstanceOf: ' + profile: line = 'InstanceOf: QuestionnaireResponse'
        if line.startswith('* ') and not added_metadata:
            result += [f'* meta.profile[0] = Canonical({profile})', f'* questionnaire = "{CANONICAL}/Questionnaire/hn-{form["name"].lower()}"']
            added_metadata = True
        if line.startswith('* extension[episode].'):
            result.append('* extension[0].url = Canonical(ExtHNEpisode)')
            line = line.replace('extension[episode]', 'extension[0]')
        if line.startswith('* item['):
            path, value = line[2:].split(' = ', 1)
            parent = ()
            def replace(match):
                nonlocal parent
                child = (match[1], int(match[2] or 0))
                index = positions[parent][child]
                parent += (child,)
                return f'item[{index}]'
            line = '* ' + item_pattern.sub(replace, path) + ' = ' + value
        result.append(line)
    return result


for form in FORMS:
    name, title = form['name'], form['label']
    logical = 'HN' + name + 'Model'
    profile = 'HN' + name + 'Response'
    qid = 'hn-' + name.lower()
    fields = form['fields']
    lm = [f'Logical: {logical}', f'Id: {logical}', f'Title: "居家護理－{title}邏輯模型"', f'Description: "描述居家護理{title}的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。"', '* ^status = #draft', '* ^version = "5.0.16"']
    parent = 'QuestionnaireResponse' if form.get('staff') else 'LTCQuestionnaireResponse'
    pf = [f'Profile: {profile}', f'Parent: {parent}', f'Id: {profile}', f'Title: "居家護理－{title}表單"', f'Description: "記錄{title}的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。"', '* ^status = #draft', '* ^version = "5.0.16"', '* questionnaire 1..1 MS', f'* questionnaire = "{CANONICAL}/Questionnaire/{qid}"', '* status 1..1 MS', '* authored 1..1 MS', '* subject 1..1 MS']
    if form.get('staff'):
        pf += ['* subject only Reference(Practitioner)', '* author only Reference(LTCOrganization)', '* author 1..1 MS']
    else:
        pf += ['* extension contains ExtHNEpisode named episode 1..1 MS']
    q = [f'Instance: {qid}', 'InstanceOf: LTCQuestionnaire', 'Usage: #definition', f'Title: "居家護理－{title}問卷"', f'Description: "V5.0.16 {title}的問題結構與輸入型態。"', f'* url = "{CANONICAL}/Questionnaire/{qid}"', '* version = "5.0.16"', f'* name = "HN{name}Questionnaire"', f'* title = "居家護理－{title}"', '* status = #draft', '* experimental = false', '* date = "2025-12-08"']
    example = [f'Instance: hn-{name.lower()}-example', f'InstanceOf: {profile}', 'Usage: #example', f'Title: "居家護理－{title}範例"', f'Description: "示範{title}結構與未作答欄位。資料為虛構。"', '* status = #in-progress', '* authored = "2025-12-08T09:00:00+08:00"']
    if form.get('staff'):
        example += ['* subject = Reference(hn-staff-example)', '* author = Reference(hn-organization-example)']
    else:
        example += ['* subject = Reference(hn-patient-example)', '* extension[episode].valueReference = Reference(hn-episode-example)']
    mappings = [f'Mapping: {logical}ToFHIR', f'Id: hn-{name.lower()}-fhir', f'Title: "居家護理－{title}欄位對應"', f'Source: {logical}', f'Target: "{CANONICAL}/StructureDefinition/{profile}"']
    docs = [f'### {title}', '', f'來源：規範印刷頁 {form["pages"]}。', '', '| 來源欄位／題目 | Logical Model 元素 | FHIR 表單元素 | 必填／重複 |', '| --- | --- | --- | --- |']
    def group(nodes, prefix='', qp='', ep='', sourceprefix=''):
        if not nodes: return
        slicepath = qrpath(prefix[:-1]) + '.item' if prefix else 'item'
        pf.extend([f'* {slicepath} ^slicing.discriminator.type = #value', f'* {slicepath} ^slicing.discriminator.path = "linkId"', f'* {slicepath} ^slicing.rules = #closed', f'* {slicepath} contains'])
        for i, node in enumerate(nodes):
            pf.append(f'    {node["key"]} {node["min"]}..{node["max"] if "children" in node else 1} MS' + (' and' if i < len(nodes) - 1 else ''))
        for i, node in enumerate(nodes):
            path = prefix + node['key']
            logicalpath = '.'.join(lower_camel(part) for part in path.split('.'))
            source = (sourceprefix[:-1] + node['source'][node['source'].index('['):]) if node.get('source', '').startswith(('Questions[', 'QuestionsNot[', 'BodyQuestions[', 'MedicalHistoryQuestions[')) else sourceprefix + node.get('source', node['key'])
            fp = qrpath(path)
            qi = qp + f'item[{i}]'
            ei = ep + f'item[{node["key"]}]'
            typ = 'BackboneElement' if 'children' in node else 'Coding' if 'choices' in node else node['type']
            description = node['label'] + ('。' + node['notes'] if node.get('notes') else '')
            lm.append(f'* {logicalpath} {node["min"]}..{node["max"]} {typ} {quote(node["label"])} {quote(description)}')
            if 'choices' in node: lm.append(f'* {logicalpath} from {vocabulary(node)} ({node.get("binding", "required")})')
            pf.extend([f'* {fp}.linkId = {quote(link(path))}', f'* {fp} ^short = {quote(node["label"])}'])
            q.extend([f'* {qi}.linkId = {quote(link(path))}', f'* {qi}.text = {quote(node["label"])}', f'* {qi}.type = #{"group" if "children" in node else "choice" if "choices" in node else node["type"]}', f'* {qi}.required = {str(bool(node["min"] and not node.get("empty"))).lower()}', f'* {qi}.repeats = {str(node["max"] == "*").lower()}'])
            present = node['min'] > 0 or 'example' in node or node.get('empty', False)
            if present: example.append(f'* {ei}.linkId = {quote(link(path))}')
            mappings.append(f'* {logicalpath} -> {quote("QuestionnaireResponse." + mappingpath(path))} {quote("來源欄位／題目：" + source)}')
            docs.append(f'| `{source}` | `{logicalpath}` | `{mappingpath(path)}` | {node["min"]}..{node["max"]} |')
            if 'children' in node:
                pf.append(f'* {fp}.answer 0..0')
                before = len(example)
                group(node['children'], path + '.', qi + '.', ei + '.', source + '.')
                if not present: del example[before:]
            else:
                pf.extend([f'* {fp}.item 0..0', f'* {fp}.answer 0..{node["max"]}', f'* {fp}.answer.value[x] only {('Coding' if value_type(node) == 'Coding' else value_type(node)[0].lower() + value_type(node)[1:])}', f'* {fp}.answer.value[x] 1..1'])
                # The item is required independently of its answer; null answers remain absent.
                if node['min'] and not node.get('empty'): pf.append(f'* {fp}.answer 1..{node["max"]}')
                if 'choices' in node:
                    vs = vocabulary(node)
                    strength = node.get('binding', 'required')
                    pf.append(f'* {fp}.answer.valueCoding from {vs} ({strength})')
                    if strength == 'required': q.append(f'* {qi}.answerValueSet = "{CANONICAL}/ValueSet/{vs}"')
                if node['type'] in ['integer', 'decimal']:
                    suffix = value_type(node)
                    for bound, prop in [('minimum', 'minValue'), ('maximum', 'maxValue')]:
                        if bound in node:
                            lm.append(f'* {logicalpath} ^{prop}{suffix} = {node[bound]}')
                            pf.append(f'* {fp}.answer.value{suffix} ^{prop}{suffix} = {node[bound]}')
                if node.get('length') and 'choices' not in node and node['type'] == 'string':
                    pf.append(f'* {fp}.answer.valueString ^maxLength = {node["length"]}')
                    q.append(f'* {qi}.maxLength = {node["length"]}')
                if present and not node.get('empty'): example.append(f'* {ei}.answer[0].value{value_type(node)} = {sample(node)}')
    group(fields)
    if form.get('assessment') and any(n['key'] == 'Statement' for n in fields):
        example += ['* item[Statement].linkId = "Statement"', '* item[Statement].answer.valueString = "個案本次無法配合評估"']
    constraints = form.get('constraints', [])
    pf += ['* obeys hn-' + name.lower() + '-' + str(index + 1) for index in range(len(constraints))]
    for index, constraint in enumerate(constraints):
        ident = 'hn-' + name.lower() + '-' + str(index + 1)
        pf += ['', 'Invariant: ' + ident, 'Description: ' + quote(constraint['description']), 'Severity: #error', 'Expression: ' + quote(constraint['expression'])]
    write(f'input/fsh/profiles/logical-models/home-nursing/logical_model_{name.lower()}.fsh', lm + [''] + mappings)
    write(f'input/fsh/profiles/home-nursing/profile_{name.lower()}_response.fsh', pf)
    write(f'input/fsh/examples/home-nursing/questionnaire_{name.lower()}.fsh', q)
    write(f'input/fsh/examples/home-nursing/example_{name.lower()}_response.fsh', ordered_response(example, form))
    form['_docs'] = docs

cs = ['CodeSystem: HNAnswerCS', 'Id: hn-answer', 'Title: "居家護理－表單選項代碼"', 'Description: "依 V5.0.16 有效選項定義；代碼由本 IG 配發，原 API 傳輸中文顯示文字。相同選項共用代碼，各 ValueSet 限定適用欄位。"', '* ^status = #draft', '* ^version = "5.0.16"', '* ^caseSensitive = true', '* ^content = #complete']
for code, display in sorted(CONCEPTS.items()): cs.append(f'* #{code} {quote(display)}')
write('input/fsh/codesystems/home-nursing/cs_home_nursing_answers.fsh', cs)
vs = []
for ident, (label, values) in sorted(SETS.items()):
    vs += [f'ValueSet: HNAnswerVS{ident[6:]}', f'Id: {ident}', f'Title: "居家護理－{label}選項"', f'Description: "限定{label}可填入的 V5.0.16 選項。"', '* ^status = #draft', '* ^version = "5.0.16"']
    vs += [f'* HNAnswerCS#{token(value)}' for value in values]
    vs.append('')
write('input/fsh/valuesets/home-nursing/vs_home_nursing_answers.fsh', vs)
# API envelope models retain the actual payload organization, including CarePlan's object.
for name, title, pages in SCHEMA['apis']:
    lines = [f'Logical: HN{name}APIModel', f'Id: HN{name}APIModel', f'Title: "居家護理－{title} API 邏輯模型"', f'Description: "描述{title} API 的請求資料。來源為 V5.0.16 印刷頁 {pages}，所有 API 採 POST。SecretKey 僅用於傳輸驗證，不存入 FHIR。"', '* ^status = #draft', '* ^version = "5.0.16"', '* agency 1..1 Identifier "機構識別" "填入 AGENCY_ID 對應的機構識別。"']
    if name == 'Evaluation':
        lines += ['* dataList 1..* BackboneElement "個案評估批次" "每筆資料包含個案識別與不同日期的評估。"', '* dataList.caseID 1..1 string "個案身分證字號"', '* dataList.endDate 1..1 date "收案日期"']
        for form in FORMS:
            if form.get('assessment'): lines.append(f'* dataList.{lower_camel(form["name"])} 0..* HN{form["name"]}Model {quote(form["label"])}')
    elif name == 'CarePlan':
        lines.append('* dataList 1..1 BackboneElement "照護計畫批次" "目標、措施、評值各至多 100 筆；任一筆失敗時整份檔案不匯入。"')
        for k in ['Targets','Measures','Evaluations']:lines.append(f'* dataList.{lower_camel(k)} 0..100 HN{k}Model "照護計畫資料"')
    elif name == 'GetLog':lines += ['* startDate 1..1 date "取得資料起始日" "原 API start_date 採 yyyy/MM/dd。"', '* endDate 0..1 date "取得資料結束日" "原 API end_date 採 yyyy/MM/dd；未填時為起始日隔天。"']
    elif name == 'GetLogByTicket':lines += ['* ticket 1..1 string "追蹤碼" "填入八位數字，保留前導零。"', '* ticket ^maxLength = 8']
    else:lines.append(f'* dataList 1..* HN{name}Model "上傳資料" "逐筆填入本次上傳的資料。"')
    write(f'input/fsh/profiles/logical-models/home-nursing/logical_api_{name.lower()}.fsh', lines)
write('input/pagecontent/topics/home-nursing-mapping.md', ['本頁列出居家護理 V5.0.16 來源欄位、邏輯模型與 FHIR 表單的逐欄對應。', '', '評估題目以穩定識別碼建模；原始題目文字由對應欄保留。陣列中的各筆物件使用重複 group item；多選答案使用重複 answer。來源的空白或 null 答案以保留 item、省略 answer 表達。', '', 'FHIR 表單使用數值及 date/time 型態。回寫原 API 時依主題說明轉回字串及日期格式。', ''] + [line for form in FORMS for line in form['_docs'] + ['']])
for path, content in OUTPUT.items():
    dest = ROOT / path
    dest.parent.mkdir(parents=True, exist_ok=True)
    dest.write_text(content)
print(f'Generated {len(OUTPUT)} files, {len(FORMS)} forms, {len(CONCEPTS)} concepts, {len(SETS)} value sets.')
