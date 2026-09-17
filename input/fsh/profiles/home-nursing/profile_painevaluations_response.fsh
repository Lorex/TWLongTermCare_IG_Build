Profile: HNPainEvaluationsResponse
Parent: LTCQuestionnaireResponse
Id: HNPainEvaluationsResponse
Title: "居家護理－疼痛評估表單"
Description: "記錄疼痛評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。"
* ^status = #draft
* ^version = "5.0.16"
* questionnaire 1..1 MS
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/hn-painevaluations"
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
    Scale 1..1 MS and
    Questions 0..1 MS and
    QuestionsNot 0..1 MS and
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
* item[Scale].linkId = "Scale"
* item[Scale] ^short = "言語狀態"
* item[Scale].item 0..0
* item[Scale].answer 0..1
* item[Scale].answer.value[x] only Coding
* item[Scale].answer.value[x] 1..1
* item[Scale].answer 1..1
* item[Scale].answer.valueCoding from hn-vs-a370027f399e (required)
* item[Questions].linkId = "Questions"
* item[Questions] ^short = "評估項目"
* item[Questions].answer 0..0
* item[Questions].item ^slicing.discriminator.type = #value
* item[Questions].item ^slicing.discriminator.path = "linkId"
* item[Questions].item ^slicing.rules = #closed
* item[Questions].item contains
    qc6065ee9 0..1 MS and
    qabb84b45 0..1 MS and
    q09558b2c 0..1 MS and
    q62ecf378 0..1 MS and
    q3ae9ab7d 0..1 MS
* item[Questions].item[qc6065ee9].linkId = "Questions.qc6065ee9"
* item[Questions].item[qc6065ee9] ^short = "部位"
* item[Questions].item[qc6065ee9].answer 0..0
* item[Questions].item[qc6065ee9].item ^slicing.discriminator.type = #value
* item[Questions].item[qc6065ee9].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[qc6065ee9].item ^slicing.rules = #closed
* item[Questions].item[qc6065ee9].item contains
    Answer 1..1 MS
* item[Questions].item[qc6065ee9].item[Answer].linkId = "Questions.qc6065ee9.Answer"
* item[Questions].item[qc6065ee9].item[Answer] ^short = "評估答案"
* item[Questions].item[qc6065ee9].item[Answer].item 0..0
* item[Questions].item[qc6065ee9].item[Answer].answer 0..1
* item[Questions].item[qc6065ee9].item[Answer].answer.value[x] only string
* item[Questions].item[qc6065ee9].item[Answer].answer.value[x] 1..1
* item[Questions].item[qc6065ee9].item[Answer].answer.valueString ^maxLength = 100
* item[Questions].item[qabb84b45].linkId = "Questions.qabb84b45"
* item[Questions].item[qabb84b45] ^short = "分數"
* item[Questions].item[qabb84b45].answer 0..0
* item[Questions].item[qabb84b45].item ^slicing.discriminator.type = #value
* item[Questions].item[qabb84b45].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[qabb84b45].item ^slicing.rules = #closed
* item[Questions].item[qabb84b45].item contains
    Answer 1..1 MS
* item[Questions].item[qabb84b45].item[Answer].linkId = "Questions.qabb84b45.Answer"
* item[Questions].item[qabb84b45].item[Answer] ^short = "評估答案"
* item[Questions].item[qabb84b45].item[Answer].item 0..0
* item[Questions].item[qabb84b45].item[Answer].answer 0..1
* item[Questions].item[qabb84b45].item[Answer].answer.value[x] only string
* item[Questions].item[qabb84b45].item[Answer].answer.value[x] 1..1
* item[Questions].item[qabb84b45].item[Answer].answer.valueString ^maxLength = 100
* item[Questions].item[q09558b2c].linkId = "Questions.q09558b2c"
* item[Questions].item[q09558b2c] ^short = "時間"
* item[Questions].item[q09558b2c].answer 0..0
* item[Questions].item[q09558b2c].item ^slicing.discriminator.type = #value
* item[Questions].item[q09558b2c].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[q09558b2c].item ^slicing.rules = #closed
* item[Questions].item[q09558b2c].item contains
    Answer 1..1 MS
* item[Questions].item[q09558b2c].item[Answer].linkId = "Questions.q09558b2c.Answer"
* item[Questions].item[q09558b2c].item[Answer] ^short = "評估答案"
* item[Questions].item[q09558b2c].item[Answer].item 0..0
* item[Questions].item[q09558b2c].item[Answer].answer 0..1
* item[Questions].item[q09558b2c].item[Answer].answer.value[x] only string
* item[Questions].item[q09558b2c].item[Answer].answer.value[x] 1..1
* item[Questions].item[q09558b2c].item[Answer].answer.valueString ^maxLength = 100
* item[Questions].item[q62ecf378].linkId = "Questions.q62ecf378"
* item[Questions].item[q62ecf378] ^short = "性質"
* item[Questions].item[q62ecf378].answer 0..0
* item[Questions].item[q62ecf378].item ^slicing.discriminator.type = #value
* item[Questions].item[q62ecf378].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[q62ecf378].item ^slicing.rules = #closed
* item[Questions].item[q62ecf378].item contains
    Answer 1..1 MS
* item[Questions].item[q62ecf378].item[Answer].linkId = "Questions.q62ecf378.Answer"
* item[Questions].item[q62ecf378].item[Answer] ^short = "評估答案"
* item[Questions].item[q62ecf378].item[Answer].item 0..0
* item[Questions].item[q62ecf378].item[Answer].answer 0..1
* item[Questions].item[q62ecf378].item[Answer].answer.value[x] only string
* item[Questions].item[q62ecf378].item[Answer].answer.value[x] 1..1
* item[Questions].item[q62ecf378].item[Answer].answer.valueString ^maxLength = 100
* item[Questions].item[q3ae9ab7d].linkId = "Questions.q3ae9ab7d"
* item[Questions].item[q3ae9ab7d] ^short = "備註"
* item[Questions].item[q3ae9ab7d].answer 0..0
* item[Questions].item[q3ae9ab7d].item ^slicing.discriminator.type = #value
* item[Questions].item[q3ae9ab7d].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[q3ae9ab7d].item ^slicing.rules = #closed
* item[Questions].item[q3ae9ab7d].item contains
    Answer 1..1 MS
* item[Questions].item[q3ae9ab7d].item[Answer].linkId = "Questions.q3ae9ab7d.Answer"
* item[Questions].item[q3ae9ab7d].item[Answer] ^short = "評估答案"
* item[Questions].item[q3ae9ab7d].item[Answer].item 0..0
* item[Questions].item[q3ae9ab7d].item[Answer].answer 0..1
* item[Questions].item[q3ae9ab7d].item[Answer].answer.value[x] only string
* item[Questions].item[q3ae9ab7d].item[Answer].answer.value[x] 1..1
* item[Questions].item[q3ae9ab7d].item[Answer].answer.valueString ^maxLength = 100
* item[QuestionsNot].linkId = "QuestionsNot"
* item[QuestionsNot] ^short = "無法言語評估項目"
* item[QuestionsNot].answer 0..0
* item[QuestionsNot].item ^slicing.discriminator.type = #value
* item[QuestionsNot].item ^slicing.discriminator.path = "linkId"
* item[QuestionsNot].item ^slicing.rules = #closed
* item[QuestionsNot].item contains
    qd14007fb 0..1 MS and
    qe42750dd 0..1 MS and
    q3e683be4 0..1 MS and
    q463fccdc 0..1 MS and
    q9f3bcfc5 0..1 MS
* item[QuestionsNot].item[qd14007fb].linkId = "QuestionsNot.qd14007fb"
* item[QuestionsNot].item[qd14007fb] ^short = "呼吸型態"
* item[QuestionsNot].item[qd14007fb].answer 0..0
* item[QuestionsNot].item[qd14007fb].item ^slicing.discriminator.type = #value
* item[QuestionsNot].item[qd14007fb].item ^slicing.discriminator.path = "linkId"
* item[QuestionsNot].item[qd14007fb].item ^slicing.rules = #closed
* item[QuestionsNot].item[qd14007fb].item contains
    Answer 1..1 MS
* item[QuestionsNot].item[qd14007fb].item[Answer].linkId = "QuestionsNot.qd14007fb.Answer"
* item[QuestionsNot].item[qd14007fb].item[Answer] ^short = "評估答案"
* item[QuestionsNot].item[qd14007fb].item[Answer].item 0..0
* item[QuestionsNot].item[qd14007fb].item[Answer].answer 0..1
* item[QuestionsNot].item[qd14007fb].item[Answer].answer.value[x] only string
* item[QuestionsNot].item[qd14007fb].item[Answer].answer.value[x] 1..1
* item[QuestionsNot].item[qd14007fb].item[Answer].answer.valueString ^maxLength = 100
* item[QuestionsNot].item[qe42750dd].linkId = "QuestionsNot.qe42750dd"
* item[QuestionsNot].item[qe42750dd] ^short = "不舒服、負向情緒的發聲"
* item[QuestionsNot].item[qe42750dd].answer 0..0
* item[QuestionsNot].item[qe42750dd].item ^slicing.discriminator.type = #value
* item[QuestionsNot].item[qe42750dd].item ^slicing.discriminator.path = "linkId"
* item[QuestionsNot].item[qe42750dd].item ^slicing.rules = #closed
* item[QuestionsNot].item[qe42750dd].item contains
    Answer 1..1 MS
* item[QuestionsNot].item[qe42750dd].item[Answer].linkId = "QuestionsNot.qe42750dd.Answer"
* item[QuestionsNot].item[qe42750dd].item[Answer] ^short = "評估答案"
* item[QuestionsNot].item[qe42750dd].item[Answer].item 0..0
* item[QuestionsNot].item[qe42750dd].item[Answer].answer 0..1
* item[QuestionsNot].item[qe42750dd].item[Answer].answer.value[x] only string
* item[QuestionsNot].item[qe42750dd].item[Answer].answer.value[x] 1..1
* item[QuestionsNot].item[qe42750dd].item[Answer].answer.valueString ^maxLength = 100
* item[QuestionsNot].item[q3e683be4].linkId = "QuestionsNot.q3e683be4"
* item[QuestionsNot].item[q3e683be4] ^short = "臉部表情"
* item[QuestionsNot].item[q3e683be4].answer 0..0
* item[QuestionsNot].item[q3e683be4].item ^slicing.discriminator.type = #value
* item[QuestionsNot].item[q3e683be4].item ^slicing.discriminator.path = "linkId"
* item[QuestionsNot].item[q3e683be4].item ^slicing.rules = #closed
* item[QuestionsNot].item[q3e683be4].item contains
    Answer 1..1 MS
* item[QuestionsNot].item[q3e683be4].item[Answer].linkId = "QuestionsNot.q3e683be4.Answer"
* item[QuestionsNot].item[q3e683be4].item[Answer] ^short = "評估答案"
* item[QuestionsNot].item[q3e683be4].item[Answer].item 0..0
* item[QuestionsNot].item[q3e683be4].item[Answer].answer 0..1
* item[QuestionsNot].item[q3e683be4].item[Answer].answer.value[x] only string
* item[QuestionsNot].item[q3e683be4].item[Answer].answer.value[x] 1..1
* item[QuestionsNot].item[q3e683be4].item[Answer].answer.valueString ^maxLength = 100
* item[QuestionsNot].item[q463fccdc].linkId = "QuestionsNot.q463fccdc"
* item[QuestionsNot].item[q463fccdc] ^short = "肢體語言"
* item[QuestionsNot].item[q463fccdc].answer 0..0
* item[QuestionsNot].item[q463fccdc].item ^slicing.discriminator.type = #value
* item[QuestionsNot].item[q463fccdc].item ^slicing.discriminator.path = "linkId"
* item[QuestionsNot].item[q463fccdc].item ^slicing.rules = #closed
* item[QuestionsNot].item[q463fccdc].item contains
    Answer 1..1 MS
* item[QuestionsNot].item[q463fccdc].item[Answer].linkId = "QuestionsNot.q463fccdc.Answer"
* item[QuestionsNot].item[q463fccdc].item[Answer] ^short = "評估答案"
* item[QuestionsNot].item[q463fccdc].item[Answer].item 0..0
* item[QuestionsNot].item[q463fccdc].item[Answer].answer 0..1
* item[QuestionsNot].item[q463fccdc].item[Answer].answer.value[x] only string
* item[QuestionsNot].item[q463fccdc].item[Answer].answer.value[x] 1..1
* item[QuestionsNot].item[q463fccdc].item[Answer].answer.valueString ^maxLength = 100
* item[QuestionsNot].item[q9f3bcfc5].linkId = "QuestionsNot.q9f3bcfc5"
* item[QuestionsNot].item[q9f3bcfc5] ^short = "可安撫程度"
* item[QuestionsNot].item[q9f3bcfc5].answer 0..0
* item[QuestionsNot].item[q9f3bcfc5].item ^slicing.discriminator.type = #value
* item[QuestionsNot].item[q9f3bcfc5].item ^slicing.discriminator.path = "linkId"
* item[QuestionsNot].item[q9f3bcfc5].item ^slicing.rules = #closed
* item[QuestionsNot].item[q9f3bcfc5].item contains
    Answer 1..1 MS
* item[QuestionsNot].item[q9f3bcfc5].item[Answer].linkId = "QuestionsNot.q9f3bcfc5.Answer"
* item[QuestionsNot].item[q9f3bcfc5].item[Answer] ^short = "評估答案"
* item[QuestionsNot].item[q9f3bcfc5].item[Answer].item 0..0
* item[QuestionsNot].item[q9f3bcfc5].item[Answer].answer 0..1
* item[QuestionsNot].item[q9f3bcfc5].item[Answer].answer.value[x] only string
* item[QuestionsNot].item[q9f3bcfc5].item[Answer].answer.value[x] 1..1
* item[QuestionsNot].item[q9f3bcfc5].item[Answer].answer.valueString ^maxLength = 100
* item[IsTemporary].linkId = "IsTemporary"
* item[IsTemporary] ^short = "是否暫存"
* item[IsTemporary].item 0..0
* item[IsTemporary].answer 0..1
* item[IsTemporary].answer.value[x] only Coding
* item[IsTemporary].answer.value[x] 1..1
* item[IsTemporary].answer.valueCoding from hn-vs-58e4d598f859 (required)
* obeys hn-painevaluations-1
* obeys hn-painevaluations-2
* obeys hn-painevaluations-3

Invariant: hn-painevaluations-1
Description: "暫存填是時，表單狀態必須為 in-progress。"
Severity: #error
Expression: "item.where(linkId='IsTemporary').answer.value.ofType(Coding).where(code='cb5141d3d19e9').exists() implies status='in-progress'"

Invariant: hn-painevaluations-2
Description: "暫存填否時，表單狀態必須為 completed 或 amended。"
Severity: #error
Expression: "item.where(linkId='IsTemporary').answer.value.ofType(Coding).where(code='c0c70665b6eb6').exists() implies (status='completed' or status='amended')"

Invariant: hn-painevaluations-3
Description: "沒有疼痛題目時應說明無法評估原因。"
Severity: #error
Expression: "(item.where(linkId='Questions').empty() and item.where(linkId='QuestionsNot').empty()) implies item.where(linkId='Statement').answer.value.exists()"
