Profile: HNDementiasResponse
Parent: LTCQuestionnaireResponse
Id: HNDementiasResponse
Title: "居家護理－認知功能評估表單"
Description: "記錄認知功能評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。"
* ^status = #draft
* ^version = "5.0.16"
* questionnaire 1..1 MS
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/hn-dementias"
* status 1..1 MS
* authored 1..1 MS
* subject 1..1 MS
* extension contains ExtHNEpisode named episode 1..1 MS
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #closed
* item contains
    Date 1..1 MS and
    NurseID 1..1 MS and
    Statement 0..1 MS and
    Questions 0..1 MS and
    IsTemporary 0..1 MS
* item[Date].linkId = "Date"
* item[Date] ^short = "紀錄日期"
* item[Date].item 0..0
* item[Date].answer 0..1
* item[Date].answer.value[x] only date
* item[Date].answer.value[x] 1..1
* item[Date].answer 1..1
* item[NurseID].linkId = "NurseID"
* item[NurseID] ^short = "護理人員身分證字號"
* item[NurseID].item 0..0
* item[NurseID].answer 0..1
* item[NurseID].answer.value[x] only string
* item[NurseID].answer.value[x] 1..1
* item[NurseID].answer 1..1
* item[NurseID].answer.valueString ^maxLength = 10
* item[Statement].linkId = "Statement"
* item[Statement] ^short = "無法評估原因或備註"
* item[Statement].item 0..0
* item[Statement].answer 0..1
* item[Statement].answer.value[x] only string
* item[Statement].answer.value[x] 1..1
* item[Statement].answer.valueString ^maxLength = 500
* item[Questions].linkId = "Questions"
* item[Questions] ^short = "評估項目"
* item[Questions].answer 0..0
* item[Questions].item ^slicing.discriminator.type = #value
* item[Questions].item ^slicing.discriminator.path = "linkId"
* item[Questions].item ^slicing.rules = #closed
* item[Questions].item contains
    q48174716 0..1 MS and
    qe97f506c 0..1 MS and
    q6128d754 0..1 MS and
    qe0801d08 0..1 MS and
    qd40595f2 0..1 MS and
    q1ddb5b1c 0..1 MS and
    q995c979b 0..1 MS and
    q6df0269a 0..1 MS and
    q8a8a8021 0..1 MS and
    qb719d7b7 0..1 MS and
    q295d5a12 0..1 MS
* item[Questions].item[q48174716].linkId = "Questions.q48174716"
* item[Questions].item[q48174716] ^short = "今天是幾年幾月幾日？__年__月__日"
* item[Questions].item[q48174716].answer 0..0
* item[Questions].item[q48174716].item ^slicing.discriminator.type = #value
* item[Questions].item[q48174716].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[q48174716].item ^slicing.rules = #closed
* item[Questions].item[q48174716].item contains
    Answer 1..1 MS
* item[Questions].item[q48174716].item[Answer].linkId = "Questions.q48174716.Answer"
* item[Questions].item[q48174716].item[Answer] ^short = "評估答案"
* item[Questions].item[q48174716].item[Answer].item 0..0
* item[Questions].item[q48174716].item[Answer].answer 0..1
* item[Questions].item[q48174716].item[Answer].answer.value[x] only Coding
* item[Questions].item[q48174716].item[Answer].answer.value[x] 1..1
* item[Questions].item[q48174716].item[Answer].answer.valueCoding from hn-vs-2a3bd76ba6eb (required)
* item[Questions].item[qe97f506c].linkId = "Questions.qe97f506c"
* item[Questions].item[qe97f506c] ^short = "今天是星期幾？"
* item[Questions].item[qe97f506c].answer 0..0
* item[Questions].item[qe97f506c].item ^slicing.discriminator.type = #value
* item[Questions].item[qe97f506c].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[qe97f506c].item ^slicing.rules = #closed
* item[Questions].item[qe97f506c].item contains
    Answer 1..1 MS
* item[Questions].item[qe97f506c].item[Answer].linkId = "Questions.qe97f506c.Answer"
* item[Questions].item[qe97f506c].item[Answer] ^short = "評估答案"
* item[Questions].item[qe97f506c].item[Answer].item 0..0
* item[Questions].item[qe97f506c].item[Answer].answer 0..1
* item[Questions].item[qe97f506c].item[Answer].answer.value[x] only Coding
* item[Questions].item[qe97f506c].item[Answer].answer.value[x] 1..1
* item[Questions].item[qe97f506c].item[Answer].answer.valueCoding from hn-vs-2a3bd76ba6eb (required)
* item[Questions].item[q6128d754].linkId = "Questions.q6128d754"
* item[Questions].item[q6128d754] ^short = "這裡是什麼地方？"
* item[Questions].item[q6128d754].answer 0..0
* item[Questions].item[q6128d754].item ^slicing.discriminator.type = #value
* item[Questions].item[q6128d754].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[q6128d754].item ^slicing.rules = #closed
* item[Questions].item[q6128d754].item contains
    Answer 1..1 MS
* item[Questions].item[q6128d754].item[Answer].linkId = "Questions.q6128d754.Answer"
* item[Questions].item[q6128d754].item[Answer] ^short = "評估答案"
* item[Questions].item[q6128d754].item[Answer].item 0..0
* item[Questions].item[q6128d754].item[Answer].answer 0..1
* item[Questions].item[q6128d754].item[Answer].answer.value[x] only Coding
* item[Questions].item[q6128d754].item[Answer].answer.value[x] 1..1
* item[Questions].item[q6128d754].item[Answer].answer.valueCoding from hn-vs-2a3bd76ba6eb (required)
* item[Questions].item[qe0801d08].linkId = "Questions.qe0801d08"
* item[Questions].item[qe0801d08] ^short = "你的電話號碼是幾號？"
* item[Questions].item[qe0801d08].answer 0..0
* item[Questions].item[qe0801d08].item ^slicing.discriminator.type = #value
* item[Questions].item[qe0801d08].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[qe0801d08].item ^slicing.rules = #closed
* item[Questions].item[qe0801d08].item contains
    Answer 1..1 MS
* item[Questions].item[qe0801d08].item[Answer].linkId = "Questions.qe0801d08.Answer"
* item[Questions].item[qe0801d08].item[Answer] ^short = "評估答案"
* item[Questions].item[qe0801d08].item[Answer].item 0..0
* item[Questions].item[qe0801d08].item[Answer].answer 0..1
* item[Questions].item[qe0801d08].item[Answer].answer.value[x] only Coding
* item[Questions].item[qe0801d08].item[Answer].answer.value[x] 1..1
* item[Questions].item[qe0801d08].item[Answer].answer.valueCoding from hn-vs-2a3bd76ba6eb (required)
* item[Questions].item[qd40595f2].linkId = "Questions.qd40595f2"
* item[Questions].item[qd40595f2] ^short = "你住在什麼地方？"
* item[Questions].item[qd40595f2].answer 0..0
* item[Questions].item[qd40595f2].item ^slicing.discriminator.type = #value
* item[Questions].item[qd40595f2].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[qd40595f2].item ^slicing.rules = #closed
* item[Questions].item[qd40595f2].item contains
    Answer 1..1 MS
* item[Questions].item[qd40595f2].item[Answer].linkId = "Questions.qd40595f2.Answer"
* item[Questions].item[qd40595f2].item[Answer] ^short = "評估答案"
* item[Questions].item[qd40595f2].item[Answer].item 0..0
* item[Questions].item[qd40595f2].item[Answer].answer 0..1
* item[Questions].item[qd40595f2].item[Answer].answer.value[x] only Coding
* item[Questions].item[qd40595f2].item[Answer].answer.value[x] 1..1
* item[Questions].item[qd40595f2].item[Answer].answer.valueCoding from hn-vs-2a3bd76ba6eb (required)
* item[Questions].item[q1ddb5b1c].linkId = "Questions.q1ddb5b1c"
* item[Questions].item[q1ddb5b1c] ^short = "你幾歲了？"
* item[Questions].item[q1ddb5b1c].answer 0..0
* item[Questions].item[q1ddb5b1c].item ^slicing.discriminator.type = #value
* item[Questions].item[q1ddb5b1c].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[q1ddb5b1c].item ^slicing.rules = #closed
* item[Questions].item[q1ddb5b1c].item contains
    Answer 1..1 MS
* item[Questions].item[q1ddb5b1c].item[Answer].linkId = "Questions.q1ddb5b1c.Answer"
* item[Questions].item[q1ddb5b1c].item[Answer] ^short = "評估答案"
* item[Questions].item[q1ddb5b1c].item[Answer].item 0..0
* item[Questions].item[q1ddb5b1c].item[Answer].answer 0..1
* item[Questions].item[q1ddb5b1c].item[Answer].answer.value[x] only Coding
* item[Questions].item[q1ddb5b1c].item[Answer].answer.value[x] 1..1
* item[Questions].item[q1ddb5b1c].item[Answer].answer.valueCoding from hn-vs-2a3bd76ba6eb (required)
* item[Questions].item[q995c979b].linkId = "Questions.q995c979b"
* item[Questions].item[q995c979b] ^short = "你的生日是哪一天？"
* item[Questions].item[q995c979b].answer 0..0
* item[Questions].item[q995c979b].item ^slicing.discriminator.type = #value
* item[Questions].item[q995c979b].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[q995c979b].item ^slicing.rules = #closed
* item[Questions].item[q995c979b].item contains
    Answer 1..1 MS
* item[Questions].item[q995c979b].item[Answer].linkId = "Questions.q995c979b.Answer"
* item[Questions].item[q995c979b].item[Answer] ^short = "評估答案"
* item[Questions].item[q995c979b].item[Answer].item 0..0
* item[Questions].item[q995c979b].item[Answer].answer 0..1
* item[Questions].item[q995c979b].item[Answer].answer.value[x] only Coding
* item[Questions].item[q995c979b].item[Answer].answer.value[x] 1..1
* item[Questions].item[q995c979b].item[Answer].answer.valueCoding from hn-vs-2a3bd76ba6eb (required)
* item[Questions].item[q6df0269a].linkId = "Questions.q6df0269a"
* item[Questions].item[q6df0269a] ^short = "現任總統是誰？"
* item[Questions].item[q6df0269a].answer 0..0
* item[Questions].item[q6df0269a].item ^slicing.discriminator.type = #value
* item[Questions].item[q6df0269a].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[q6df0269a].item ^slicing.rules = #closed
* item[Questions].item[q6df0269a].item contains
    Answer 1..1 MS
* item[Questions].item[q6df0269a].item[Answer].linkId = "Questions.q6df0269a.Answer"
* item[Questions].item[q6df0269a].item[Answer] ^short = "評估答案"
* item[Questions].item[q6df0269a].item[Answer].item 0..0
* item[Questions].item[q6df0269a].item[Answer].answer 0..1
* item[Questions].item[q6df0269a].item[Answer].answer.value[x] only Coding
* item[Questions].item[q6df0269a].item[Answer].answer.value[x] 1..1
* item[Questions].item[q6df0269a].item[Answer].answer.valueCoding from hn-vs-2a3bd76ba6eb (required)
* item[Questions].item[q8a8a8021].linkId = "Questions.q8a8a8021"
* item[Questions].item[q8a8a8021] ^short = "前任總統是誰？"
* item[Questions].item[q8a8a8021].answer 0..0
* item[Questions].item[q8a8a8021].item ^slicing.discriminator.type = #value
* item[Questions].item[q8a8a8021].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[q8a8a8021].item ^slicing.rules = #closed
* item[Questions].item[q8a8a8021].item contains
    Answer 1..1 MS
* item[Questions].item[q8a8a8021].item[Answer].linkId = "Questions.q8a8a8021.Answer"
* item[Questions].item[q8a8a8021].item[Answer] ^short = "評估答案"
* item[Questions].item[q8a8a8021].item[Answer].item 0..0
* item[Questions].item[q8a8a8021].item[Answer].answer 0..1
* item[Questions].item[q8a8a8021].item[Answer].answer.value[x] only Coding
* item[Questions].item[q8a8a8021].item[Answer].answer.value[x] 1..1
* item[Questions].item[q8a8a8021].item[Answer].answer.valueCoding from hn-vs-2a3bd76ba6eb (required)
* item[Questions].item[qb719d7b7].linkId = "Questions.qb719d7b7"
* item[Questions].item[qb719d7b7] ^short = "你媽媽叫什麼名字？"
* item[Questions].item[qb719d7b7].answer 0..0
* item[Questions].item[qb719d7b7].item ^slicing.discriminator.type = #value
* item[Questions].item[qb719d7b7].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[qb719d7b7].item ^slicing.rules = #closed
* item[Questions].item[qb719d7b7].item contains
    Answer 1..1 MS
* item[Questions].item[qb719d7b7].item[Answer].linkId = "Questions.qb719d7b7.Answer"
* item[Questions].item[qb719d7b7].item[Answer] ^short = "評估答案"
* item[Questions].item[qb719d7b7].item[Answer].item 0..0
* item[Questions].item[qb719d7b7].item[Answer].answer 0..1
* item[Questions].item[qb719d7b7].item[Answer].answer.value[x] only Coding
* item[Questions].item[qb719d7b7].item[Answer].answer.value[x] 1..1
* item[Questions].item[qb719d7b7].item[Answer].answer.valueCoding from hn-vs-2a3bd76ba6eb (required)
* item[Questions].item[q295d5a12].linkId = "Questions.q295d5a12"
* item[Questions].item[q295d5a12] ^short = "從20 減3 開始算，一直減3 減下去。"
* item[Questions].item[q295d5a12].answer 0..0
* item[Questions].item[q295d5a12].item ^slicing.discriminator.type = #value
* item[Questions].item[q295d5a12].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[q295d5a12].item ^slicing.rules = #closed
* item[Questions].item[q295d5a12].item contains
    Answer 1..1 MS
* item[Questions].item[q295d5a12].item[Answer].linkId = "Questions.q295d5a12.Answer"
* item[Questions].item[q295d5a12].item[Answer] ^short = "評估答案"
* item[Questions].item[q295d5a12].item[Answer].item 0..0
* item[Questions].item[q295d5a12].item[Answer].answer 0..1
* item[Questions].item[q295d5a12].item[Answer].answer.value[x] only Coding
* item[Questions].item[q295d5a12].item[Answer].answer.value[x] 1..1
* item[Questions].item[q295d5a12].item[Answer].answer.valueCoding from hn-vs-2a3bd76ba6eb (required)
* item[IsTemporary].linkId = "IsTemporary"
* item[IsTemporary] ^short = "是否暫存"
* item[IsTemporary].item 0..0
* item[IsTemporary].answer 0..1
* item[IsTemporary].answer.value[x] only Coding
* item[IsTemporary].answer.value[x] 1..1
* item[IsTemporary].answer.valueCoding from hn-vs-58e4d598f859 (required)
* obeys hn-dementias-1
* obeys hn-dementias-2
* obeys hn-dementias-3

Invariant: hn-dementias-1
Description: "暫存填是時，表單狀態必須為 in-progress。"
Severity: #error
Expression: "item.where(linkId='IsTemporary').answer.value.ofType(Coding).where(code='cb5141d3d19e9').exists() implies status='in-progress'"

Invariant: hn-dementias-2
Description: "暫存填否時，表單狀態必須為 completed 或 amended。"
Severity: #error
Expression: "item.where(linkId='IsTemporary').answer.value.ofType(Coding).where(code='c0c70665b6eb6').exists() implies (status='completed' or status='amended')"

Invariant: hn-dementias-3
Description: "缺少評估問題時應說明無法評估原因。"
Severity: #error
Expression: "item.where(linkId='Questions').empty() implies item.where(linkId='Statement').answer.value.exists()"
