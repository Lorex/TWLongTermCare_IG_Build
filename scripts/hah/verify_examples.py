#!/usr/bin/env python3
"""檢查 SUSHI 輸出的在宅急症文件；FHIR 結構與術語仍由 Publisher 驗證。"""
import copy
import json
from pathlib import Path
import re

ROOT = Path(__file__).resolve().parents[2]
RESOURCES = ROOT / 'fsh-generated/resources'
EPISODE_EXTENSION = 'http://ltc-ig.fhir.tw/StructureDefinition/ExtHAHEpisode'


def references(value):
    if isinstance(value, dict):
        if isinstance(value.get('reference'), str):
            yield value['reference']
        for child in value.values():
            yield from references(child)
    elif isinstance(value, list):
        for child in value:
            yield from references(child)


def check_document(bundle):
    entries = bundle['entry']
    assert entries[0]['resource']['resourceType'] == 'Composition', '第一筆必須為 Composition'
    resources = {}
    urls = set()
    for entry in entries:
        resource = entry['resource']
        key = f"{resource['resourceType']}/{resource['id']}"
        assert key not in resources, f'重複資源：{key}'
        assert entry['fullUrl'] not in urls, 'fullUrl 重複'
        resources[key] = resource
        urls.add(entry['fullUrl'])
    url_keys = {e['fullUrl']: f"{e['resource']['resourceType']}/{e['resource']['id']}" for e in entries}

    def resolve(ref):
        key = url_keys.get(ref, ref)
        assert key in resources, f'文件缺少參照：{ref}'
        return key

    graph = {}
    for key, resource in resources.items():
        contained = {r['id'] for r in resource.get('contained', [])}
        graph[key] = set()
        for ref in references(resource):
            if ref.startswith('#'):
                assert ref[1:] in contained, f'找不到 contained：{ref}'
            else:
                graph[key].add(resolve(ref))
    composition = entries[0]['resource']
    patient = resolve(composition['subject']['reference'])
    admission = resources[resolve(composition['encounter']['reference'])]
    episode = resolve(admission['episodeOfCare'][0]['reference'])
    for key, resource in resources.items():
        for field in ('subject', 'patient', 'for'):
            ref = resource.get(field, {}).get('reference')
            if ref and resources[resolve(ref)]['resourceType'] == 'Patient':
                assert resolve(ref) == patient, f'跨個案參照：{key}.{field}'
        for ref in resource.get('episodeOfCare', []):
            assert resolve(ref['reference']) == episode, f'跨療程參照：{key}'
        for extension in resource.get('extension', []):
            if extension['url'] == EPISODE_EXTENSION:
                assert resolve(extension['valueReference']['reference']) == episode, f'跨療程 Extension：{key}'
        if resource['resourceType'] == 'Encounter' and resource.get('partOf'):
            parent = resources[resolve(resource['partOf']['reference'])]
            assert parent['class']['code'] == 'IMP', f'訪視未連至整段照護：{key}'
    first = f"Composition/{composition['id']}"
    reachable, pending = set(), [first]
    while pending:
        key = pending.pop()
        if key not in reachable:
            reachable.add(key)
            pending.extend(graph[key] - reachable)
    assert reachable == set(resources), f'文件含無關資源：{set(resources) - reachable}'
    return len(resources)


def expect_failure(bundle, description):
    try:
        check_document(bundle)
    except AssertionError:
        return
    raise AssertionError(f'未偵測到反例：{description}')


def main():
    questionnaire_name = 'Questionnaire-hah-intake-assessment.json'
    questionnaire = json.loads((RESOURCES / questionnaire_name).read_text())
    canonical = questionnaire['url'] + '|' + questionnaire['version']
    for name in ('hah-document', 'hah-transfer-document'):
        bundle = json.loads((RESOURCES / f'Bundle-{name}.json').read_text())
        count = check_document(bundle)
        for entry in bundle['entry']:
            resource = entry['resource']
            if resource['resourceType'] == 'QuestionnaireResponse':
                assert resource['questionnaire'] == canonical, '問卷回覆與問卷版本不一致'
        broken = copy.deepcopy(bundle)
        broken['entry'] = [e for e in broken['entry'] if e['resource']['resourceType'] != 'Practitioner']
        expect_failure(broken, '漏掉文件作者')
        broken = copy.deepcopy(bundle)
        broken['entry'][0], broken['entry'][1] = broken['entry'][1], broken['entry'][0]
        expect_failure(broken, 'Composition 未置於第一筆')
        broken = copy.deepcopy(bundle)
        other_patient = copy.deepcopy(next(e for e in broken['entry'] if e['resource']['resourceType'] == 'Patient'))
        other_patient['resource']['id'] = 'different-patient'
        other_patient['fullUrl'] = 'https://example.org/fhir/Patient/different-patient'
        broken['entry'].append(other_patient)
        next(e['resource'] for e in broken['entry'] if e['resource']['resourceType'] == 'Encounter')['subject']['reference'] = 'Patient/different-patient'
        expect_failure(broken, '不同個案的就診混入文件')
        broken = copy.deepcopy(bundle)
        other_episode = copy.deepcopy(next(e for e in broken['entry'] if e['resource']['resourceType'] == 'EpisodeOfCare'))
        other_episode['resource']['id'] = 'different-episode'
        other_episode['fullUrl'] = 'https://example.org/fhir/EpisodeOfCare/different-episode'
        broken['entry'].append(other_episode)
        # 加入一筆錯接其他收案的訪視；整段照護仍指向原療程。
        extra_visit = copy.deepcopy(next(e for e in broken['entry'] if e['resource']['resourceType'] == 'Encounter'))
        extra_visit['resource']['id'] = 'different-visit'
        extra_visit['fullUrl'] = 'https://example.org/fhir/Encounter/different-visit'
        extra_visit['resource']['episodeOfCare'][0]['reference'] = 'EpisodeOfCare/different-episode'
        broken['entry'].append(extra_visit)
        broken['entry'][0]['resource']['section'][0]['entry'].append({'reference': 'Encounter/different-visit'})
        expect_failure(broken, '不同療程的訪視混入文件')
        print(f'{name}: {count} resources，完整性與反例檢查通過')
    model = (ROOT / 'input/fsh/profiles/logical-models/hah/logical_model_hah.fsh').read_text()
    paths = set(re.findall(r'^\* ([\w.]+) \d+\.\.', model, re.M))
    mapping = (ROOT / 'input/pagecontent/topics/hah-mapping.md').read_text()
    mapped = set(re.findall(r'^\| `([^`]+)` \|', mapping, re.M))
    assert paths == mapped, f'模型與對照表不符：{paths ^ mapped}'
    print(f'Logical Model: {len(paths)} 個資料元素均有對照')
    profiles = set()
    for file in (ROOT / 'input/fsh/profiles/hah').glob('*.fsh'):
        profiles.update(re.findall(r'^Profile: (\S+)', file.read_text(), re.M))
    used = set()
    for file in (ROOT / 'input/fsh/examples/hah').glob('*.fsh'):
        used.update(re.findall(r'^InstanceOf: (\S+)', file.read_text(), re.M))
    # HAHEncounter 的實例由 HAHAdmissionEncounter／HAHVisitEncounter 示範。
    assert not profiles - used - {'HAHEncounter'}, f'未提供範例：{profiles - used}'
    print(f'{len(profiles)} 個 Profiles 均有直接或子 Profile 範例')
    published_path = ROOT / 'output' / questionnaire_name
    if published_path.exists():
        published = json.loads(published_path.read_text())
        assert published['url'] + '|' + published['version'] == canonical, 'Publisher 問卷版本與來源參照不一致；請確認已重新建置'
        print('Publisher 輸出的問卷 canonical 與回覆版本一致')


if __name__ == '__main__':
    main()
