Profile: HNADLsResponse
Parent: LTCQuestionnaireResponse
Id: HNADLsResponse
Title: "居家護理－日常生活功能評估表單"
Description: "記錄日常生活功能評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。"
* ^status = #draft
* ^version = "5.0.16"
* questionnaire 1..1 MS
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/hn-adls"
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
    Questions 1..1 MS and
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
* item[Questions].linkId = "Questions"
* item[Questions] ^short = "評估項目"
* item[Questions].answer 0..0
* item[Questions].item ^slicing.discriminator.type = #value
* item[Questions].item ^slicing.discriminator.path = "linkId"
* item[Questions].item ^slicing.rules = #closed
* item[Questions].item contains
    q46787535 1..1 MS and
    q0bc7e44d 1..1 MS and
    qb93b932f 1..1 MS and
    q96220a06 1..1 MS and
    q92ee129c 1..1 MS and
    qb8f96793 1..1 MS and
    q1cb17d5b 1..1 MS and
    qd949ce2d 1..1 MS and
    qfe7de24a 1..1 MS and
    q13cca4d4 1..1 MS
* item[Questions].item[q46787535].linkId = "Questions.q46787535"
* item[Questions].item[q46787535] ^short = "進食"
* item[Questions].item[q46787535].answer 0..0
* item[Questions].item[q46787535].item ^slicing.discriminator.type = #value
* item[Questions].item[q46787535].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[q46787535].item ^slicing.rules = #closed
* item[Questions].item[q46787535].item contains
    Answer 1..1 MS
* item[Questions].item[q46787535].item[Answer].linkId = "Questions.q46787535.Answer"
* item[Questions].item[q46787535].item[Answer] ^short = "評估答案"
* item[Questions].item[q46787535].item[Answer].item 0..0
* item[Questions].item[q46787535].item[Answer].answer 0..1
* item[Questions].item[q46787535].item[Answer].answer.value[x] only Coding
* item[Questions].item[q46787535].item[Answer].answer.value[x] 1..1
* item[Questions].item[q46787535].item[Answer].answer.valueCoding from hn-vs-c020bc6f582f (required)
* item[Questions].item[q0bc7e44d].linkId = "Questions.q0bc7e44d"
* item[Questions].item[q0bc7e44d] ^short = "移位"
* item[Questions].item[q0bc7e44d].answer 0..0
* item[Questions].item[q0bc7e44d].item ^slicing.discriminator.type = #value
* item[Questions].item[q0bc7e44d].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[q0bc7e44d].item ^slicing.rules = #closed
* item[Questions].item[q0bc7e44d].item contains
    Answer 1..1 MS
* item[Questions].item[q0bc7e44d].item[Answer].linkId = "Questions.q0bc7e44d.Answer"
* item[Questions].item[q0bc7e44d].item[Answer] ^short = "評估答案"
* item[Questions].item[q0bc7e44d].item[Answer].item 0..0
* item[Questions].item[q0bc7e44d].item[Answer].answer 0..1
* item[Questions].item[q0bc7e44d].item[Answer].answer.value[x] only Coding
* item[Questions].item[q0bc7e44d].item[Answer].answer.value[x] 1..1
* item[Questions].item[q0bc7e44d].item[Answer].answer.valueCoding from hn-vs-5509cc9b0f4c (required)
* item[Questions].item[qb93b932f].linkId = "Questions.qb93b932f"
* item[Questions].item[qb93b932f] ^short = "衛生"
* item[Questions].item[qb93b932f].answer 0..0
* item[Questions].item[qb93b932f].item ^slicing.discriminator.type = #value
* item[Questions].item[qb93b932f].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[qb93b932f].item ^slicing.rules = #closed
* item[Questions].item[qb93b932f].item contains
    Answer 1..1 MS
* item[Questions].item[qb93b932f].item[Answer].linkId = "Questions.qb93b932f.Answer"
* item[Questions].item[qb93b932f].item[Answer] ^short = "評估答案"
* item[Questions].item[qb93b932f].item[Answer].item 0..0
* item[Questions].item[qb93b932f].item[Answer].answer 0..1
* item[Questions].item[qb93b932f].item[Answer].answer.value[x] only Coding
* item[Questions].item[qb93b932f].item[Answer].answer.value[x] 1..1
* item[Questions].item[qb93b932f].item[Answer].answer.valueCoding from hn-vs-c1223cdffc0c (required)
* item[Questions].item[q96220a06].linkId = "Questions.q96220a06"
* item[Questions].item[q96220a06] ^short = "如廁"
* item[Questions].item[q96220a06].answer 0..0
* item[Questions].item[q96220a06].item ^slicing.discriminator.type = #value
* item[Questions].item[q96220a06].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[q96220a06].item ^slicing.rules = #closed
* item[Questions].item[q96220a06].item contains
    Answer 1..1 MS
* item[Questions].item[q96220a06].item[Answer].linkId = "Questions.q96220a06.Answer"
* item[Questions].item[q96220a06].item[Answer] ^short = "評估答案"
* item[Questions].item[q96220a06].item[Answer].item 0..0
* item[Questions].item[q96220a06].item[Answer].answer 0..1
* item[Questions].item[q96220a06].item[Answer].answer.value[x] only Coding
* item[Questions].item[q96220a06].item[Answer].answer.value[x] 1..1
* item[Questions].item[q96220a06].item[Answer].answer.valueCoding from hn-vs-5a0da2e50fde (required)
* item[Questions].item[q92ee129c].linkId = "Questions.q92ee129c"
* item[Questions].item[q92ee129c] ^short = "洗澡"
* item[Questions].item[q92ee129c].answer 0..0
* item[Questions].item[q92ee129c].item ^slicing.discriminator.type = #value
* item[Questions].item[q92ee129c].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[q92ee129c].item ^slicing.rules = #closed
* item[Questions].item[q92ee129c].item contains
    Answer 1..1 MS
* item[Questions].item[q92ee129c].item[Answer].linkId = "Questions.q92ee129c.Answer"
* item[Questions].item[q92ee129c].item[Answer] ^short = "評估答案"
* item[Questions].item[q92ee129c].item[Answer].item 0..0
* item[Questions].item[q92ee129c].item[Answer].answer 0..1
* item[Questions].item[q92ee129c].item[Answer].answer.value[x] only Coding
* item[Questions].item[q92ee129c].item[Answer].answer.value[x] 1..1
* item[Questions].item[q92ee129c].item[Answer].answer.valueCoding from hn-vs-3c038851248f (required)
* item[Questions].item[qb8f96793].linkId = "Questions.qb8f96793"
* item[Questions].item[qb8f96793] ^short = "走動"
* item[Questions].item[qb8f96793].answer 0..0
* item[Questions].item[qb8f96793].item ^slicing.discriminator.type = #value
* item[Questions].item[qb8f96793].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[qb8f96793].item ^slicing.rules = #closed
* item[Questions].item[qb8f96793].item contains
    Answer 1..1 MS
* item[Questions].item[qb8f96793].item[Answer].linkId = "Questions.qb8f96793.Answer"
* item[Questions].item[qb8f96793].item[Answer] ^short = "評估答案"
* item[Questions].item[qb8f96793].item[Answer].item 0..0
* item[Questions].item[qb8f96793].item[Answer].answer 0..1
* item[Questions].item[qb8f96793].item[Answer].answer.value[x] only Coding
* item[Questions].item[qb8f96793].item[Answer].answer.value[x] 1..1
* item[Questions].item[qb8f96793].item[Answer].answer.valueCoding from hn-vs-9a2ed66b6061 (required)
* item[Questions].item[q1cb17d5b].linkId = "Questions.q1cb17d5b"
* item[Questions].item[q1cb17d5b] ^short = "樓梯"
* item[Questions].item[q1cb17d5b].answer 0..0
* item[Questions].item[q1cb17d5b].item ^slicing.discriminator.type = #value
* item[Questions].item[q1cb17d5b].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[q1cb17d5b].item ^slicing.rules = #closed
* item[Questions].item[q1cb17d5b].item contains
    Answer 1..1 MS
* item[Questions].item[q1cb17d5b].item[Answer].linkId = "Questions.q1cb17d5b.Answer"
* item[Questions].item[q1cb17d5b].item[Answer] ^short = "評估答案"
* item[Questions].item[q1cb17d5b].item[Answer].item 0..0
* item[Questions].item[q1cb17d5b].item[Answer].answer 0..1
* item[Questions].item[q1cb17d5b].item[Answer].answer.value[x] only Coding
* item[Questions].item[q1cb17d5b].item[Answer].answer.value[x] 1..1
* item[Questions].item[q1cb17d5b].item[Answer].answer.valueCoding from hn-vs-076f2d014436 (required)
* item[Questions].item[qd949ce2d].linkId = "Questions.qd949ce2d"
* item[Questions].item[qd949ce2d] ^short = "穿脫"
* item[Questions].item[qd949ce2d].answer 0..0
* item[Questions].item[qd949ce2d].item ^slicing.discriminator.type = #value
* item[Questions].item[qd949ce2d].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[qd949ce2d].item ^slicing.rules = #closed
* item[Questions].item[qd949ce2d].item contains
    Answer 1..1 MS
* item[Questions].item[qd949ce2d].item[Answer].linkId = "Questions.qd949ce2d.Answer"
* item[Questions].item[qd949ce2d].item[Answer] ^short = "評估答案"
* item[Questions].item[qd949ce2d].item[Answer].item 0..0
* item[Questions].item[qd949ce2d].item[Answer].answer 0..1
* item[Questions].item[qd949ce2d].item[Answer].answer.value[x] only Coding
* item[Questions].item[qd949ce2d].item[Answer].answer.value[x] 1..1
* item[Questions].item[qd949ce2d].item[Answer].answer.valueCoding from hn-vs-723d296bd93d (required)
* item[Questions].item[qfe7de24a].linkId = "Questions.qfe7de24a"
* item[Questions].item[qfe7de24a] ^short = "大便"
* item[Questions].item[qfe7de24a].answer 0..0
* item[Questions].item[qfe7de24a].item ^slicing.discriminator.type = #value
* item[Questions].item[qfe7de24a].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[qfe7de24a].item ^slicing.rules = #closed
* item[Questions].item[qfe7de24a].item contains
    Answer 1..1 MS
* item[Questions].item[qfe7de24a].item[Answer].linkId = "Questions.qfe7de24a.Answer"
* item[Questions].item[qfe7de24a].item[Answer] ^short = "評估答案"
* item[Questions].item[qfe7de24a].item[Answer].item 0..0
* item[Questions].item[qfe7de24a].item[Answer].answer 0..1
* item[Questions].item[qfe7de24a].item[Answer].answer.value[x] only Coding
* item[Questions].item[qfe7de24a].item[Answer].answer.value[x] 1..1
* item[Questions].item[qfe7de24a].item[Answer].answer.valueCoding from hn-vs-8c7bcb320a01 (required)
* item[Questions].item[q13cca4d4].linkId = "Questions.q13cca4d4"
* item[Questions].item[q13cca4d4] ^short = "小便"
* item[Questions].item[q13cca4d4].answer 0..0
* item[Questions].item[q13cca4d4].item ^slicing.discriminator.type = #value
* item[Questions].item[q13cca4d4].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[q13cca4d4].item ^slicing.rules = #closed
* item[Questions].item[q13cca4d4].item contains
    Answer 1..1 MS
* item[Questions].item[q13cca4d4].item[Answer].linkId = "Questions.q13cca4d4.Answer"
* item[Questions].item[q13cca4d4].item[Answer] ^short = "評估答案"
* item[Questions].item[q13cca4d4].item[Answer].item 0..0
* item[Questions].item[q13cca4d4].item[Answer].answer 0..1
* item[Questions].item[q13cca4d4].item[Answer].answer.value[x] only Coding
* item[Questions].item[q13cca4d4].item[Answer].answer.value[x] 1..1
* item[Questions].item[q13cca4d4].item[Answer].answer.valueCoding from hn-vs-d20974b4a161 (required)
* item[IsTemporary].linkId = "IsTemporary"
* item[IsTemporary] ^short = "是否暫存"
* item[IsTemporary].item 0..0
* item[IsTemporary].answer 0..1
* item[IsTemporary].answer.value[x] only Coding
* item[IsTemporary].answer.value[x] 1..1
* item[IsTemporary].answer.valueCoding from hn-vs-58e4d598f859 (required)
* obeys hn-adls-1
* obeys hn-adls-2

Invariant: hn-adls-1
Description: "暫存填是時，表單狀態必須為 in-progress。"
Severity: #error
Expression: "item.where(linkId='IsTemporary').answer.value.ofType(Coding).where(code='cb5141d3d19e9').exists() implies status='in-progress'"

Invariant: hn-adls-2
Description: "暫存填否時，表單狀態必須為 completed 或 amended。"
Severity: #error
Expression: "item.where(linkId='IsTemporary').answer.value.ofType(Coding).where(code='c0c70665b6eb6').exists() implies (status='completed' or status='amended')"
