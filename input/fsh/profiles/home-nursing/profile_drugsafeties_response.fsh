Profile: HNDrugSafetiesResponse
Parent: LTCQuestionnaireResponse
Id: HNDrugSafetiesResponse
Title: "居家護理－藥物安全性評估表單"
Description: "記錄藥物安全性評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。"
* ^status = #draft
* ^version = "5.0.16"
* questionnaire 1..1 MS
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/hn-drugsafeties"
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
    DrugInUses 0..* MS and
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
    q1b200653 0..1 MS and
    qb5202c4c 0..1 MS and
    q023931ae 0..1 MS and
    qc7a63c2d 0..1 MS and
    q0482b7eb 0..1 MS and
    qc67400fe 0..1 MS
* item[Questions].item[q1b200653].linkId = "Questions.q1b200653"
* item[Questions].item[q1b200653] ^short = "是否有長期使用藥物"
* item[Questions].item[q1b200653].answer 0..0
* item[Questions].item[q1b200653].item ^slicing.discriminator.type = #value
* item[Questions].item[q1b200653].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[q1b200653].item ^slicing.rules = #closed
* item[Questions].item[q1b200653].item contains
    Answer 1..1 MS and
    Statement1 0..1 MS
* item[Questions].item[q1b200653].item[Answer].linkId = "Questions.q1b200653.Answer"
* item[Questions].item[q1b200653].item[Answer] ^short = "評估答案"
* item[Questions].item[q1b200653].item[Answer].item 0..0
* item[Questions].item[q1b200653].item[Answer].answer 0..1
* item[Questions].item[q1b200653].item[Answer].answer.value[x] only Coding
* item[Questions].item[q1b200653].item[Answer].answer.value[x] 1..1
* item[Questions].item[q1b200653].item[Answer].answer.valueCoding from hn-vs-49fe20230ec3 (required)
* item[Questions].item[q1b200653].item[Statement1].linkId = "Questions.q1b200653.Statement1"
* item[Questions].item[q1b200653].item[Statement1] ^short = "補充說明"
* item[Questions].item[q1b200653].item[Statement1].item 0..0
* item[Questions].item[q1b200653].item[Statement1].answer 0..1
* item[Questions].item[q1b200653].item[Statement1].answer.value[x] only string
* item[Questions].item[q1b200653].item[Statement1].answer.value[x] 1..1
* item[Questions].item[q1b200653].item[Statement1].answer.valueString ^maxLength = 100
* item[Questions].item[qb5202c4c].linkId = "Questions.qb5202c4c"
* item[Questions].item[qb5202c4c] ^short = "目前使用中的藥物種類"
* item[Questions].item[qb5202c4c].answer 0..0
* item[Questions].item[qb5202c4c].item ^slicing.discriminator.type = #value
* item[Questions].item[qb5202c4c].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[qb5202c4c].item ^slicing.rules = #closed
* item[Questions].item[qb5202c4c].item contains
    Answer 1..1 MS and
    Statement1 0..1 MS
* item[Questions].item[qb5202c4c].item[Answer].linkId = "Questions.qb5202c4c.Answer"
* item[Questions].item[qb5202c4c].item[Answer] ^short = "評估答案"
* item[Questions].item[qb5202c4c].item[Answer].item 0..0
* item[Questions].item[qb5202c4c].item[Answer].answer 0..1
* item[Questions].item[qb5202c4c].item[Answer].answer.value[x] only Coding
* item[Questions].item[qb5202c4c].item[Answer].answer.value[x] 1..1
* item[Questions].item[qb5202c4c].item[Answer].answer.valueCoding from hn-vs-19264db8df7b (required)
* item[Questions].item[qb5202c4c].item[Statement1].linkId = "Questions.qb5202c4c.Statement1"
* item[Questions].item[qb5202c4c].item[Statement1] ^short = "補充說明"
* item[Questions].item[qb5202c4c].item[Statement1].item 0..0
* item[Questions].item[qb5202c4c].item[Statement1].answer 0..1
* item[Questions].item[qb5202c4c].item[Statement1].answer.value[x] only string
* item[Questions].item[qb5202c4c].item[Statement1].answer.value[x] 1..1
* item[Questions].item[qb5202c4c].item[Statement1].answer.valueString ^maxLength = 100
* item[Questions].item[q023931ae].linkId = "Questions.q023931ae"
* item[Questions].item[q023931ae] ^short = "使用精神用藥"
* item[Questions].item[q023931ae].answer 0..0
* item[Questions].item[q023931ae].item ^slicing.discriminator.type = #value
* item[Questions].item[q023931ae].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[q023931ae].item ^slicing.rules = #closed
* item[Questions].item[q023931ae].item contains
    Answer 1..1 MS and
    Statement1 0..1 MS
* item[Questions].item[q023931ae].item[Answer].linkId = "Questions.q023931ae.Answer"
* item[Questions].item[q023931ae].item[Answer] ^short = "評估答案"
* item[Questions].item[q023931ae].item[Answer].item 0..0
* item[Questions].item[q023931ae].item[Answer].answer 0..1
* item[Questions].item[q023931ae].item[Answer].answer.value[x] only Coding
* item[Questions].item[q023931ae].item[Answer].answer.value[x] 1..1
* item[Questions].item[q023931ae].item[Answer].answer.valueCoding from hn-vs-19264db8df7b (required)
* item[Questions].item[q023931ae].item[Statement1].linkId = "Questions.q023931ae.Statement1"
* item[Questions].item[q023931ae].item[Statement1] ^short = "補充說明"
* item[Questions].item[q023931ae].item[Statement1].item 0..0
* item[Questions].item[q023931ae].item[Statement1].answer 0..1
* item[Questions].item[q023931ae].item[Statement1].answer.value[x] only string
* item[Questions].item[q023931ae].item[Statement1].answer.value[x] 1..1
* item[Questions].item[q023931ae].item[Statement1].answer.valueString ^maxLength = 100
* item[Questions].item[qc7a63c2d].linkId = "Questions.qc7a63c2d"
* item[Questions].item[qc7a63c2d] ^short = "使用止痛用藥"
* item[Questions].item[qc7a63c2d].answer 0..0
* item[Questions].item[qc7a63c2d].item ^slicing.discriminator.type = #value
* item[Questions].item[qc7a63c2d].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[qc7a63c2d].item ^slicing.rules = #closed
* item[Questions].item[qc7a63c2d].item contains
    Answer 1..1 MS and
    Statement1 0..1 MS
* item[Questions].item[qc7a63c2d].item[Answer].linkId = "Questions.qc7a63c2d.Answer"
* item[Questions].item[qc7a63c2d].item[Answer] ^short = "評估答案"
* item[Questions].item[qc7a63c2d].item[Answer].item 0..0
* item[Questions].item[qc7a63c2d].item[Answer].answer 0..1
* item[Questions].item[qc7a63c2d].item[Answer].answer.value[x] only Coding
* item[Questions].item[qc7a63c2d].item[Answer].answer.value[x] 1..1
* item[Questions].item[qc7a63c2d].item[Answer].answer.valueCoding from hn-vs-19264db8df7b (required)
* item[Questions].item[qc7a63c2d].item[Statement1].linkId = "Questions.qc7a63c2d.Statement1"
* item[Questions].item[qc7a63c2d].item[Statement1] ^short = "補充說明"
* item[Questions].item[qc7a63c2d].item[Statement1].item 0..0
* item[Questions].item[qc7a63c2d].item[Statement1].answer 0..1
* item[Questions].item[qc7a63c2d].item[Statement1].answer.value[x] only string
* item[Questions].item[qc7a63c2d].item[Statement1].answer.value[x] 1..1
* item[Questions].item[qc7a63c2d].item[Statement1].answer.valueString ^maxLength = 100
* item[Questions].item[q0482b7eb].linkId = "Questions.q0482b7eb"
* item[Questions].item[q0482b7eb] ^short = "是否存在多重用藥問題"
* item[Questions].item[q0482b7eb].answer 0..0
* item[Questions].item[q0482b7eb].item ^slicing.discriminator.type = #value
* item[Questions].item[q0482b7eb].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[q0482b7eb].item ^slicing.rules = #closed
* item[Questions].item[q0482b7eb].item contains
    Answer 1..1 MS and
    Statement1 0..1 MS
* item[Questions].item[q0482b7eb].item[Answer].linkId = "Questions.q0482b7eb.Answer"
* item[Questions].item[q0482b7eb].item[Answer] ^short = "評估答案"
* item[Questions].item[q0482b7eb].item[Answer].item 0..0
* item[Questions].item[q0482b7eb].item[Answer].answer 0..1
* item[Questions].item[q0482b7eb].item[Answer].answer.value[x] only Coding
* item[Questions].item[q0482b7eb].item[Answer].answer.value[x] 1..1
* item[Questions].item[q0482b7eb].item[Answer].answer.valueCoding from hn-vs-523a43c4a46a (required)
* item[Questions].item[q0482b7eb].item[Statement1].linkId = "Questions.q0482b7eb.Statement1"
* item[Questions].item[q0482b7eb].item[Statement1] ^short = "補充說明"
* item[Questions].item[q0482b7eb].item[Statement1].item 0..0
* item[Questions].item[q0482b7eb].item[Statement1].answer 0..1
* item[Questions].item[q0482b7eb].item[Statement1].answer.value[x] only string
* item[Questions].item[q0482b7eb].item[Statement1].answer.value[x] 1..1
* item[Questions].item[q0482b7eb].item[Statement1].answer.valueString ^maxLength = 100
* item[Questions].item[qc67400fe].linkId = "Questions.qc67400fe"
* item[Questions].item[qc67400fe] ^short = "目前是否使用有自行購藥(電台、他人介紹..等非醫療院所取得)"
* item[Questions].item[qc67400fe].answer 0..0
* item[Questions].item[qc67400fe].item ^slicing.discriminator.type = #value
* item[Questions].item[qc67400fe].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[qc67400fe].item ^slicing.rules = #closed
* item[Questions].item[qc67400fe].item contains
    Answer 1..1 MS and
    Statement1 0..1 MS
* item[Questions].item[qc67400fe].item[Answer].linkId = "Questions.qc67400fe.Answer"
* item[Questions].item[qc67400fe].item[Answer] ^short = "評估答案"
* item[Questions].item[qc67400fe].item[Answer].item 0..0
* item[Questions].item[qc67400fe].item[Answer].answer 0..1
* item[Questions].item[qc67400fe].item[Answer].answer.value[x] only Coding
* item[Questions].item[qc67400fe].item[Answer].answer.value[x] 1..1
* item[Questions].item[qc67400fe].item[Answer].answer.valueCoding from hn-vs-19264db8df7b (required)
* item[Questions].item[qc67400fe].item[Statement1].linkId = "Questions.qc67400fe.Statement1"
* item[Questions].item[qc67400fe].item[Statement1] ^short = "補充說明"
* item[Questions].item[qc67400fe].item[Statement1].item 0..0
* item[Questions].item[qc67400fe].item[Statement1].answer 0..1
* item[Questions].item[qc67400fe].item[Statement1].answer.value[x] only string
* item[Questions].item[qc67400fe].item[Statement1].answer.value[x] 1..1
* item[Questions].item[qc67400fe].item[Statement1].answer.valueString ^maxLength = 100
* item[DrugInUses].linkId = "DrugInUses"
* item[DrugInUses] ^short = "使用中的藥物"
* item[DrugInUses].answer 0..0
* item[DrugInUses].item ^slicing.discriminator.type = #value
* item[DrugInUses].item ^slicing.discriminator.path = "linkId"
* item[DrugInUses].item ^slicing.rules = #closed
* item[DrugInUses].item contains
    Name 1..1 MS and
    Volume 1..1 MS and
    Frequency 1..1 MS and
    Purpose 1..1 MS and
    Remark 0..1 MS
* item[DrugInUses].item[Name].linkId = "DrugInUses.Name"
* item[DrugInUses].item[Name] ^short = "藥物品項"
* item[DrugInUses].item[Name].item 0..0
* item[DrugInUses].item[Name].answer 0..1
* item[DrugInUses].item[Name].answer.value[x] only string
* item[DrugInUses].item[Name].answer.value[x] 1..1
* item[DrugInUses].item[Name].answer 1..1
* item[DrugInUses].item[Name].answer.valueString ^maxLength = 150
* item[DrugInUses].item[Volume].linkId = "DrugInUses.Volume"
* item[DrugInUses].item[Volume] ^short = "劑量"
* item[DrugInUses].item[Volume].item 0..0
* item[DrugInUses].item[Volume].answer 0..1
* item[DrugInUses].item[Volume].answer.value[x] only string
* item[DrugInUses].item[Volume].answer.value[x] 1..1
* item[DrugInUses].item[Volume].answer 1..1
* item[DrugInUses].item[Volume].answer.valueString ^maxLength = 100
* item[DrugInUses].item[Frequency].linkId = "DrugInUses.Frequency"
* item[DrugInUses].item[Frequency] ^short = "頻率"
* item[DrugInUses].item[Frequency].item 0..0
* item[DrugInUses].item[Frequency].answer 0..1
* item[DrugInUses].item[Frequency].answer.value[x] only string
* item[DrugInUses].item[Frequency].answer.value[x] 1..1
* item[DrugInUses].item[Frequency].answer 1..1
* item[DrugInUses].item[Frequency].answer.valueString ^maxLength = 100
* item[DrugInUses].item[Purpose].linkId = "DrugInUses.Purpose"
* item[DrugInUses].item[Purpose] ^short = "用途"
* item[DrugInUses].item[Purpose].item 0..0
* item[DrugInUses].item[Purpose].answer 0..1
* item[DrugInUses].item[Purpose].answer.value[x] only string
* item[DrugInUses].item[Purpose].answer.value[x] 1..1
* item[DrugInUses].item[Purpose].answer 1..1
* item[DrugInUses].item[Purpose].answer.valueString ^maxLength = 100
* item[DrugInUses].item[Remark].linkId = "DrugInUses.Remark"
* item[DrugInUses].item[Remark] ^short = "備註"
* item[DrugInUses].item[Remark].item 0..0
* item[DrugInUses].item[Remark].answer 0..1
* item[DrugInUses].item[Remark].answer.value[x] only string
* item[DrugInUses].item[Remark].answer.value[x] 1..1
* item[DrugInUses].item[Remark].answer.valueString ^maxLength = 100
* item[IsTemporary].linkId = "IsTemporary"
* item[IsTemporary] ^short = "是否暫存"
* item[IsTemporary].item 0..0
* item[IsTemporary].answer 0..1
* item[IsTemporary].answer.value[x] only Coding
* item[IsTemporary].answer.value[x] 1..1
* item[IsTemporary].answer.valueCoding from hn-vs-58e4d598f859 (required)
* obeys hn-drugsafeties-1
* obeys hn-drugsafeties-2
* obeys hn-drugsafeties-3

Invariant: hn-drugsafeties-1
Description: "暫存填是時，表單狀態必須為 in-progress。"
Severity: #error
Expression: "item.where(linkId='IsTemporary').answer.value.ofType(Coding).where(code='cb5141d3d19e9').exists() implies status='in-progress'"

Invariant: hn-drugsafeties-2
Description: "暫存填否時，表單狀態必須為 completed 或 amended。"
Severity: #error
Expression: "item.where(linkId='IsTemporary').answer.value.ofType(Coding).where(code='c0c70665b6eb6').exists() implies (status='completed' or status='amended')"

Invariant: hn-drugsafeties-3
Description: "缺少評估問題時應說明無法評估原因。"
Severity: #error
Expression: "item.where(linkId='Questions').empty() implies item.where(linkId='Statement').answer.value.exists()"
