Profile: HNSOFsResponse
Parent: LTCQuestionnaireResponse
Id: HNSOFsResponse
Title: "居家護理－衰弱評估表單"
Description: "記錄衰弱評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。"
* ^status = #draft
* ^version = "5.0.16"
* questionnaire 1..1 MS
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/hn-sofs"
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
    q4e1023eb 0..1 MS and
    q7e60ea58 0..1 MS and
    qc604ec89 0..1 MS
* item[Questions].item[q4e1023eb].linkId = "Questions.q4e1023eb"
* item[Questions].item[q4e1023eb] ^short = "體重減輕"
* item[Questions].item[q4e1023eb].answer 0..0
* item[Questions].item[q4e1023eb].item ^slicing.discriminator.type = #value
* item[Questions].item[q4e1023eb].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[q4e1023eb].item ^slicing.rules = #closed
* item[Questions].item[q4e1023eb].item contains
    Answer 1..1 MS
* item[Questions].item[q4e1023eb].item[Answer].linkId = "Questions.q4e1023eb.Answer"
* item[Questions].item[q4e1023eb].item[Answer] ^short = "評估答案"
* item[Questions].item[q4e1023eb].item[Answer].item 0..0
* item[Questions].item[q4e1023eb].item[Answer].answer 0..1
* item[Questions].item[q4e1023eb].item[Answer].answer.value[x] only Coding
* item[Questions].item[q4e1023eb].item[Answer].answer.value[x] 1..1
* item[Questions].item[q4e1023eb].item[Answer].answer.valueCoding from hn-vs-58e4d598f859 (required)
* item[Questions].item[q7e60ea58].linkId = "Questions.q7e60ea58"
* item[Questions].item[q7e60ea58] ^short = "下肢功能"
* item[Questions].item[q7e60ea58].answer 0..0
* item[Questions].item[q7e60ea58].item ^slicing.discriminator.type = #value
* item[Questions].item[q7e60ea58].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[q7e60ea58].item ^slicing.rules = #closed
* item[Questions].item[q7e60ea58].item contains
    Answer 1..1 MS
* item[Questions].item[q7e60ea58].item[Answer].linkId = "Questions.q7e60ea58.Answer"
* item[Questions].item[q7e60ea58].item[Answer] ^short = "評估答案"
* item[Questions].item[q7e60ea58].item[Answer].item 0..0
* item[Questions].item[q7e60ea58].item[Answer].answer 0..1
* item[Questions].item[q7e60ea58].item[Answer].answer.value[x] only Coding
* item[Questions].item[q7e60ea58].item[Answer].answer.value[x] 1..1
* item[Questions].item[q7e60ea58].item[Answer].answer.valueCoding from hn-vs-58e4d598f859 (required)
* item[Questions].item[qc604ec89].linkId = "Questions.qc604ec89"
* item[Questions].item[qc604ec89] ^short = "活力降低"
* item[Questions].item[qc604ec89].answer 0..0
* item[Questions].item[qc604ec89].item ^slicing.discriminator.type = #value
* item[Questions].item[qc604ec89].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[qc604ec89].item ^slicing.rules = #closed
* item[Questions].item[qc604ec89].item contains
    Answer 1..1 MS
* item[Questions].item[qc604ec89].item[Answer].linkId = "Questions.qc604ec89.Answer"
* item[Questions].item[qc604ec89].item[Answer] ^short = "評估答案"
* item[Questions].item[qc604ec89].item[Answer].item 0..0
* item[Questions].item[qc604ec89].item[Answer].answer 0..1
* item[Questions].item[qc604ec89].item[Answer].answer.value[x] only Coding
* item[Questions].item[qc604ec89].item[Answer].answer.value[x] 1..1
* item[Questions].item[qc604ec89].item[Answer].answer.valueCoding from hn-vs-58e4d598f859 (required)
* item[IsTemporary].linkId = "IsTemporary"
* item[IsTemporary] ^short = "是否暫存"
* item[IsTemporary].item 0..0
* item[IsTemporary].answer 0..1
* item[IsTemporary].answer.value[x] only Coding
* item[IsTemporary].answer.value[x] 1..1
* item[IsTemporary].answer.valueCoding from hn-vs-58e4d598f859 (required)
* obeys hn-sofs-1
* obeys hn-sofs-2
* obeys hn-sofs-3

Invariant: hn-sofs-1
Description: "暫存填是時，表單狀態必須為 in-progress。"
Severity: #error
Expression: "item.where(linkId='IsTemporary').answer.value.ofType(Coding).where(code='cb5141d3d19e9').exists() implies status='in-progress'"

Invariant: hn-sofs-2
Description: "暫存填否時，表單狀態必須為 completed 或 amended。"
Severity: #error
Expression: "item.where(linkId='IsTemporary').answer.value.ofType(Coding).where(code='c0c70665b6eb6').exists() implies (status='completed' or status='amended')"

Invariant: hn-sofs-3
Description: "缺少評估問題時應說明無法評估原因。"
Severity: #error
Expression: "item.where(linkId='Questions').empty() implies item.where(linkId='Statement').answer.value.exists()"
