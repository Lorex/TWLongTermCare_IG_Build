Profile: HNMNASFsResponse
Parent: LTCQuestionnaireResponse
Id: HNMNASFsResponse
Title: "居家護理－簡易營養評估表單"
Description: "記錄簡易營養評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。"
* ^status = #draft
* ^version = "5.0.16"
* questionnaire 1..1 MS
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/hn-mnasfs"
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
    q9eab1f0b 1..1 MS and
    qc9c61c04 1..1 MS and
    qb3e55f55 1..1 MS and
    q99f746cb 1..1 MS and
    qa4ab5839 1..1 MS and
    q6073598b 1..1 MS and
    qd38a556c 1..1 MS
* item[Questions].item[q9eab1f0b].linkId = "Questions.q9eab1f0b"
* item[Questions].item[q9eab1f0b] ^short = "過去三個月之中，是否因食慾不佳、消化問題、咀嚼或吞嚥困難，以致進食量減少？"
* item[Questions].item[q9eab1f0b].answer 0..0
* item[Questions].item[q9eab1f0b].item ^slicing.discriminator.type = #value
* item[Questions].item[q9eab1f0b].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[q9eab1f0b].item ^slicing.rules = #closed
* item[Questions].item[q9eab1f0b].item contains
    Answer 1..1 MS
* item[Questions].item[q9eab1f0b].item[Answer].linkId = "Questions.q9eab1f0b.Answer"
* item[Questions].item[q9eab1f0b].item[Answer] ^short = "評估答案"
* item[Questions].item[q9eab1f0b].item[Answer].item 0..0
* item[Questions].item[q9eab1f0b].item[Answer].answer 0..1
* item[Questions].item[q9eab1f0b].item[Answer].answer.value[x] only Coding
* item[Questions].item[q9eab1f0b].item[Answer].answer.value[x] 1..1
* item[Questions].item[q9eab1f0b].item[Answer].answer.valueCoding from hn-vs-cfb0b454818b (required)
* item[Questions].item[qc9c61c04].linkId = "Questions.qc9c61c04"
* item[Questions].item[qc9c61c04] ^short = "近三個月體重變化"
* item[Questions].item[qc9c61c04].answer 0..0
* item[Questions].item[qc9c61c04].item ^slicing.discriminator.type = #value
* item[Questions].item[qc9c61c04].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[qc9c61c04].item ^slicing.rules = #closed
* item[Questions].item[qc9c61c04].item contains
    Answer 1..1 MS
* item[Questions].item[qc9c61c04].item[Answer].linkId = "Questions.qc9c61c04.Answer"
* item[Questions].item[qc9c61c04].item[Answer] ^short = "評估答案"
* item[Questions].item[qc9c61c04].item[Answer].item 0..0
* item[Questions].item[qc9c61c04].item[Answer].answer 0..1
* item[Questions].item[qc9c61c04].item[Answer].answer.value[x] only Coding
* item[Questions].item[qc9c61c04].item[Answer].answer.value[x] 1..1
* item[Questions].item[qc9c61c04].item[Answer].answer.valueCoding from hn-vs-bff7df80c996 (required)
* item[Questions].item[qb3e55f55].linkId = "Questions.qb3e55f55"
* item[Questions].item[qb3e55f55] ^short = "行動力"
* item[Questions].item[qb3e55f55].answer 0..0
* item[Questions].item[qb3e55f55].item ^slicing.discriminator.type = #value
* item[Questions].item[qb3e55f55].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[qb3e55f55].item ^slicing.rules = #closed
* item[Questions].item[qb3e55f55].item contains
    Answer 1..1 MS
* item[Questions].item[qb3e55f55].item[Answer].linkId = "Questions.qb3e55f55.Answer"
* item[Questions].item[qb3e55f55].item[Answer] ^short = "評估答案"
* item[Questions].item[qb3e55f55].item[Answer].item 0..0
* item[Questions].item[qb3e55f55].item[Answer].answer 0..1
* item[Questions].item[qb3e55f55].item[Answer].answer.value[x] only Coding
* item[Questions].item[qb3e55f55].item[Answer].answer.value[x] 1..1
* item[Questions].item[qb3e55f55].item[Answer].answer.valueCoding from hn-vs-3baefb430e5b (required)
* item[Questions].item[q99f746cb].linkId = "Questions.q99f746cb"
* item[Questions].item[q99f746cb] ^short = "過去三個月內曾有精神性壓力或急性疾病發作？"
* item[Questions].item[q99f746cb].answer 0..0
* item[Questions].item[q99f746cb].item ^slicing.discriminator.type = #value
* item[Questions].item[q99f746cb].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[q99f746cb].item ^slicing.rules = #closed
* item[Questions].item[q99f746cb].item contains
    Answer 1..1 MS
* item[Questions].item[q99f746cb].item[Answer].linkId = "Questions.q99f746cb.Answer"
* item[Questions].item[q99f746cb].item[Answer] ^short = "評估答案"
* item[Questions].item[q99f746cb].item[Answer].item 0..0
* item[Questions].item[q99f746cb].item[Answer].answer 0..1
* item[Questions].item[q99f746cb].item[Answer].answer.value[x] only Coding
* item[Questions].item[q99f746cb].item[Answer].answer.value[x] 1..1
* item[Questions].item[q99f746cb].item[Answer].answer.valueCoding from hn-vs-58e4d598f859 (required)
* item[Questions].item[qa4ab5839].linkId = "Questions.qa4ab5839"
* item[Questions].item[qa4ab5839] ^short = "神經精神問題"
* item[Questions].item[qa4ab5839].answer 0..0
* item[Questions].item[qa4ab5839].item ^slicing.discriminator.type = #value
* item[Questions].item[qa4ab5839].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[qa4ab5839].item ^slicing.rules = #closed
* item[Questions].item[qa4ab5839].item contains
    Answer 1..1 MS
* item[Questions].item[qa4ab5839].item[Answer].linkId = "Questions.qa4ab5839.Answer"
* item[Questions].item[qa4ab5839].item[Answer] ^short = "評估答案"
* item[Questions].item[qa4ab5839].item[Answer].item 0..0
* item[Questions].item[qa4ab5839].item[Answer].answer 0..1
* item[Questions].item[qa4ab5839].item[Answer].answer.value[x] only Coding
* item[Questions].item[qa4ab5839].item[Answer].answer.value[x] 1..1
* item[Questions].item[qa4ab5839].item[Answer].answer.valueCoding from hn-vs-5f4a5d3ebea4 (required)
* item[Questions].item[q6073598b].linkId = "Questions.q6073598b"
* item[Questions].item[q6073598b] ^short = "身體質量指數(BMI)=體重(公斤)/身高(公尺)2"
* item[Questions].item[q6073598b].answer 0..0
* item[Questions].item[q6073598b].item ^slicing.discriminator.type = #value
* item[Questions].item[q6073598b].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[q6073598b].item ^slicing.rules = #closed
* item[Questions].item[q6073598b].item contains
    Answer 1..1 MS
* item[Questions].item[q6073598b].item[Answer].linkId = "Questions.q6073598b.Answer"
* item[Questions].item[q6073598b].item[Answer] ^short = "評估答案"
* item[Questions].item[q6073598b].item[Answer].item 0..0
* item[Questions].item[q6073598b].item[Answer].answer 0..1
* item[Questions].item[q6073598b].item[Answer].answer.value[x] only Coding
* item[Questions].item[q6073598b].item[Answer].answer.value[x] 1..1
* item[Questions].item[q6073598b].item[Answer].answer.valueCoding from hn-vs-b8e0b67e2012 (required)
* item[Questions].item[qd38a556c].linkId = "Questions.qd38a556c"
* item[Questions].item[qd38a556c] ^short = "若BMI 無法取得，用小腿圍或臂中圍代替(公分)"
* item[Questions].item[qd38a556c].answer 0..0
* item[Questions].item[qd38a556c].item ^slicing.discriminator.type = #value
* item[Questions].item[qd38a556c].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[qd38a556c].item ^slicing.rules = #closed
* item[Questions].item[qd38a556c].item contains
    Answer 1..1 MS
* item[Questions].item[qd38a556c].item[Answer].linkId = "Questions.qd38a556c.Answer"
* item[Questions].item[qd38a556c].item[Answer] ^short = "評估答案"
* item[Questions].item[qd38a556c].item[Answer].item 0..0
* item[Questions].item[qd38a556c].item[Answer].answer 0..1
* item[Questions].item[qd38a556c].item[Answer].answer.value[x] only Coding
* item[Questions].item[qd38a556c].item[Answer].answer.value[x] 1..1
* item[Questions].item[qd38a556c].item[Answer].answer.valueCoding from hn-vs-5d29c89b2d60 (required)
* item[IsTemporary].linkId = "IsTemporary"
* item[IsTemporary] ^short = "是否暫存"
* item[IsTemporary].item 0..0
* item[IsTemporary].answer 0..1
* item[IsTemporary].answer.value[x] only Coding
* item[IsTemporary].answer.value[x] 1..1
* item[IsTemporary].answer.valueCoding from hn-vs-58e4d598f859 (required)
* obeys hn-mnasfs-1
* obeys hn-mnasfs-2

Invariant: hn-mnasfs-1
Description: "暫存填是時，表單狀態必須為 in-progress。"
Severity: #error
Expression: "item.where(linkId='IsTemporary').answer.value.ofType(Coding).where(code='cb5141d3d19e9').exists() implies status='in-progress'"

Invariant: hn-mnasfs-2
Description: "暫存填否時，表單狀態必須為 completed 或 amended。"
Severity: #error
Expression: "item.where(linkId='IsTemporary').answer.value.ofType(Coding).where(code='c0c70665b6eb6').exists() implies (status='completed' or status='amended')"
