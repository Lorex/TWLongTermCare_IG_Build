Profile: HNPressureInjuriesResponse
Parent: LTCQuestionnaireResponse
Id: HNPressureInjuriesResponse
Title: "居家護理－壓力性損傷危險評估表單"
Description: "記錄壓力性損傷危險評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。"
* ^status = #draft
* ^version = "5.0.16"
* questionnaire 1..1 MS
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/hn-pressureinjuries"
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
    q77f132a8 1..1 MS and
    qb093cea2 1..1 MS and
    qda68c82c 1..1 MS and
    qb03d6393 1..1 MS and
    q68dfbe5f 1..1 MS and
    q52107185 1..1 MS
* item[Questions].item[q77f132a8].linkId = "Questions.q77f132a8"
* item[Questions].item[q77f132a8] ^short = "知覺感受"
* item[Questions].item[q77f132a8].answer 0..0
* item[Questions].item[q77f132a8].item ^slicing.discriminator.type = #value
* item[Questions].item[q77f132a8].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[q77f132a8].item ^slicing.rules = #closed
* item[Questions].item[q77f132a8].item contains
    Answer 1..1 MS
* item[Questions].item[q77f132a8].item[Answer].linkId = "Questions.q77f132a8.Answer"
* item[Questions].item[q77f132a8].item[Answer] ^short = "評估答案"
* item[Questions].item[q77f132a8].item[Answer].item 0..0
* item[Questions].item[q77f132a8].item[Answer].answer 0..1
* item[Questions].item[q77f132a8].item[Answer].answer.value[x] only Coding
* item[Questions].item[q77f132a8].item[Answer].answer.value[x] 1..1
* item[Questions].item[q77f132a8].item[Answer].answer.valueCoding from hn-vs-66dfb92df102 (required)
* item[Questions].item[qb093cea2].linkId = "Questions.qb093cea2"
* item[Questions].item[qb093cea2] ^short = "潮溼程度"
* item[Questions].item[qb093cea2].answer 0..0
* item[Questions].item[qb093cea2].item ^slicing.discriminator.type = #value
* item[Questions].item[qb093cea2].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[qb093cea2].item ^slicing.rules = #closed
* item[Questions].item[qb093cea2].item contains
    Answer 1..1 MS
* item[Questions].item[qb093cea2].item[Answer].linkId = "Questions.qb093cea2.Answer"
* item[Questions].item[qb093cea2].item[Answer] ^short = "評估答案"
* item[Questions].item[qb093cea2].item[Answer].item 0..0
* item[Questions].item[qb093cea2].item[Answer].answer 0..1
* item[Questions].item[qb093cea2].item[Answer].answer.value[x] only Coding
* item[Questions].item[qb093cea2].item[Answer].answer.value[x] 1..1
* item[Questions].item[qb093cea2].item[Answer].answer.valueCoding from hn-vs-548098d5ace2 (required)
* item[Questions].item[qda68c82c].linkId = "Questions.qda68c82c"
* item[Questions].item[qda68c82c] ^short = "活動能力"
* item[Questions].item[qda68c82c].answer 0..0
* item[Questions].item[qda68c82c].item ^slicing.discriminator.type = #value
* item[Questions].item[qda68c82c].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[qda68c82c].item ^slicing.rules = #closed
* item[Questions].item[qda68c82c].item contains
    Answer 1..1 MS
* item[Questions].item[qda68c82c].item[Answer].linkId = "Questions.qda68c82c.Answer"
* item[Questions].item[qda68c82c].item[Answer] ^short = "評估答案"
* item[Questions].item[qda68c82c].item[Answer].item 0..0
* item[Questions].item[qda68c82c].item[Answer].answer 0..1
* item[Questions].item[qda68c82c].item[Answer].answer.value[x] only Coding
* item[Questions].item[qda68c82c].item[Answer].answer.value[x] 1..1
* item[Questions].item[qda68c82c].item[Answer].answer.valueCoding from hn-vs-78444472aa70 (required)
* item[Questions].item[qb03d6393].linkId = "Questions.qb03d6393"
* item[Questions].item[qb03d6393] ^short = "移動能力"
* item[Questions].item[qb03d6393].answer 0..0
* item[Questions].item[qb03d6393].item ^slicing.discriminator.type = #value
* item[Questions].item[qb03d6393].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[qb03d6393].item ^slicing.rules = #closed
* item[Questions].item[qb03d6393].item contains
    Answer 1..1 MS
* item[Questions].item[qb03d6393].item[Answer].linkId = "Questions.qb03d6393.Answer"
* item[Questions].item[qb03d6393].item[Answer] ^short = "評估答案"
* item[Questions].item[qb03d6393].item[Answer].item 0..0
* item[Questions].item[qb03d6393].item[Answer].answer 0..1
* item[Questions].item[qb03d6393].item[Answer].answer.value[x] only Coding
* item[Questions].item[qb03d6393].item[Answer].answer.value[x] 1..1
* item[Questions].item[qb03d6393].item[Answer].answer.valueCoding from hn-vs-f466b3393017 (required)
* item[Questions].item[q68dfbe5f].linkId = "Questions.q68dfbe5f"
* item[Questions].item[q68dfbe5f] ^short = "營養攝取"
* item[Questions].item[q68dfbe5f].answer 0..0
* item[Questions].item[q68dfbe5f].item ^slicing.discriminator.type = #value
* item[Questions].item[q68dfbe5f].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[q68dfbe5f].item ^slicing.rules = #closed
* item[Questions].item[q68dfbe5f].item contains
    Answer 1..1 MS
* item[Questions].item[q68dfbe5f].item[Answer].linkId = "Questions.q68dfbe5f.Answer"
* item[Questions].item[q68dfbe5f].item[Answer] ^short = "評估答案"
* item[Questions].item[q68dfbe5f].item[Answer].item 0..0
* item[Questions].item[q68dfbe5f].item[Answer].answer 0..1
* item[Questions].item[q68dfbe5f].item[Answer].answer.value[x] only Coding
* item[Questions].item[q68dfbe5f].item[Answer].answer.value[x] 1..1
* item[Questions].item[q68dfbe5f].item[Answer].answer.valueCoding from hn-vs-9d4f84a14066 (required)
* item[Questions].item[q52107185].linkId = "Questions.q52107185"
* item[Questions].item[q52107185] ^short = "摩擦力/剪力"
* item[Questions].item[q52107185].answer 0..0
* item[Questions].item[q52107185].item ^slicing.discriminator.type = #value
* item[Questions].item[q52107185].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[q52107185].item ^slicing.rules = #closed
* item[Questions].item[q52107185].item contains
    Answer 1..1 MS
* item[Questions].item[q52107185].item[Answer].linkId = "Questions.q52107185.Answer"
* item[Questions].item[q52107185].item[Answer] ^short = "評估答案"
* item[Questions].item[q52107185].item[Answer].item 0..0
* item[Questions].item[q52107185].item[Answer].answer 0..1
* item[Questions].item[q52107185].item[Answer].answer.value[x] only Coding
* item[Questions].item[q52107185].item[Answer].answer.value[x] 1..1
* item[Questions].item[q52107185].item[Answer].answer.valueCoding from hn-vs-bcd0a25d02b9 (required)
* item[IsTemporary].linkId = "IsTemporary"
* item[IsTemporary] ^short = "是否暫存"
* item[IsTemporary].item 0..0
* item[IsTemporary].answer 0..1
* item[IsTemporary].answer.value[x] only Coding
* item[IsTemporary].answer.value[x] 1..1
* item[IsTemporary].answer.valueCoding from hn-vs-58e4d598f859 (required)
* obeys hn-pressureinjuries-1
* obeys hn-pressureinjuries-2

Invariant: hn-pressureinjuries-1
Description: "暫存填是時，表單狀態必須為 in-progress。"
Severity: #error
Expression: "item.where(linkId='IsTemporary').answer.value.ofType(Coding).where(code='cb5141d3d19e9').exists() implies status='in-progress'"

Invariant: hn-pressureinjuries-2
Description: "暫存填否時，表單狀態必須為 completed 或 amended。"
Severity: #error
Expression: "item.where(linkId='IsTemporary').answer.value.ofType(Coding).where(code='c0c70665b6eb6').exists() implies (status='completed' or status='amended')"
