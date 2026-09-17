Profile: HNFallRisksResponse
Parent: LTCQuestionnaireResponse
Id: HNFallRisksResponse
Title: "居家護理－跌倒危險性評估表單"
Description: "記錄跌倒危險性評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。"
* ^status = #draft
* ^version = "5.0.16"
* questionnaire 1..1 MS
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/hn-fallrisks"
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
    q2f552b4a 1..1 MS and
    q463dc41d 1..1 MS and
    qd680c277 1..1 MS and
    qc1c1fb2c 1..1 MS and
    q603c2de9 1..1 MS and
    qbf720dbc 1..1 MS and
    q6fa60520 1..1 MS and
    qe6e35ded 1..1 MS
* item[Questions].item[q2f552b4a].linkId = "Questions.q2f552b4a"
* item[Questions].item[q2f552b4a] ^short = "年紀65歲以上"
* item[Questions].item[q2f552b4a].answer 0..0
* item[Questions].item[q2f552b4a].item ^slicing.discriminator.type = #value
* item[Questions].item[q2f552b4a].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[q2f552b4a].item ^slicing.rules = #closed
* item[Questions].item[q2f552b4a].item contains
    Answer 1..1 MS and
    Options 0..1 MS and
    Other 0..1 MS
* item[Questions].item[q2f552b4a].item[Answer].linkId = "Questions.q2f552b4a.Answer"
* item[Questions].item[q2f552b4a].item[Answer] ^short = "評估答案"
* item[Questions].item[q2f552b4a].item[Answer].item 0..0
* item[Questions].item[q2f552b4a].item[Answer].answer 0..1
* item[Questions].item[q2f552b4a].item[Answer].answer.value[x] only Coding
* item[Questions].item[q2f552b4a].item[Answer].answer.value[x] 1..1
* item[Questions].item[q2f552b4a].item[Answer].answer.valueCoding from hn-vs-58e4d598f859 (required)
* item[Questions].item[q2f552b4a].item[Options].linkId = "Questions.q2f552b4a.Options"
* item[Questions].item[q2f552b4a].item[Options] ^short = "多選答案"
* item[Questions].item[q2f552b4a].item[Options].item 0..0
* item[Questions].item[q2f552b4a].item[Options].answer 0..1
* item[Questions].item[q2f552b4a].item[Options].answer.value[x] only string
* item[Questions].item[q2f552b4a].item[Options].answer.value[x] 1..1
* item[Questions].item[q2f552b4a].item[Options].answer.valueString ^maxLength = 1000
* item[Questions].item[q2f552b4a].item[Other].linkId = "Questions.q2f552b4a.Other"
* item[Questions].item[q2f552b4a].item[Other] ^short = "其他用藥說明"
* item[Questions].item[q2f552b4a].item[Other].item 0..0
* item[Questions].item[q2f552b4a].item[Other].answer 0..1
* item[Questions].item[q2f552b4a].item[Other].answer.value[x] only string
* item[Questions].item[q2f552b4a].item[Other].answer.value[x] 1..1
* item[Questions].item[q2f552b4a].item[Other].answer.valueString ^maxLength = 100
* item[Questions].item[q463dc41d].linkId = "Questions.q463dc41d"
* item[Questions].item[q463dc41d] ^short = "過去一年內曾跌倒"
* item[Questions].item[q463dc41d].answer 0..0
* item[Questions].item[q463dc41d].item ^slicing.discriminator.type = #value
* item[Questions].item[q463dc41d].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[q463dc41d].item ^slicing.rules = #closed
* item[Questions].item[q463dc41d].item contains
    Answer 1..1 MS and
    Options 0..1 MS and
    Other 0..1 MS
* item[Questions].item[q463dc41d].item[Answer].linkId = "Questions.q463dc41d.Answer"
* item[Questions].item[q463dc41d].item[Answer] ^short = "評估答案"
* item[Questions].item[q463dc41d].item[Answer].item 0..0
* item[Questions].item[q463dc41d].item[Answer].answer 0..1
* item[Questions].item[q463dc41d].item[Answer].answer.value[x] only Coding
* item[Questions].item[q463dc41d].item[Answer].answer.value[x] 1..1
* item[Questions].item[q463dc41d].item[Answer].answer.valueCoding from hn-vs-58e4d598f859 (required)
* item[Questions].item[q463dc41d].item[Options].linkId = "Questions.q463dc41d.Options"
* item[Questions].item[q463dc41d].item[Options] ^short = "多選答案"
* item[Questions].item[q463dc41d].item[Options].item 0..0
* item[Questions].item[q463dc41d].item[Options].answer 0..1
* item[Questions].item[q463dc41d].item[Options].answer.value[x] only string
* item[Questions].item[q463dc41d].item[Options].answer.value[x] 1..1
* item[Questions].item[q463dc41d].item[Options].answer.valueString ^maxLength = 1000
* item[Questions].item[q463dc41d].item[Other].linkId = "Questions.q463dc41d.Other"
* item[Questions].item[q463dc41d].item[Other] ^short = "其他用藥說明"
* item[Questions].item[q463dc41d].item[Other].item 0..0
* item[Questions].item[q463dc41d].item[Other].answer 0..1
* item[Questions].item[q463dc41d].item[Other].answer.value[x] only string
* item[Questions].item[q463dc41d].item[Other].answer.value[x] 1..1
* item[Questions].item[q463dc41d].item[Other].answer.valueString ^maxLength = 100
* item[Questions].item[qd680c277].linkId = "Questions.qd680c277"
* item[Questions].item[qd680c277] ^short = "最近意識/認知出現異常"
* item[Questions].item[qd680c277].answer 0..0
* item[Questions].item[qd680c277].item ^slicing.discriminator.type = #value
* item[Questions].item[qd680c277].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[qd680c277].item ^slicing.rules = #closed
* item[Questions].item[qd680c277].item contains
    Answer 1..1 MS and
    Options 0..1 MS and
    Other 0..1 MS
* item[Questions].item[qd680c277].item[Answer].linkId = "Questions.qd680c277.Answer"
* item[Questions].item[qd680c277].item[Answer] ^short = "評估答案"
* item[Questions].item[qd680c277].item[Answer].item 0..0
* item[Questions].item[qd680c277].item[Answer].answer 0..1
* item[Questions].item[qd680c277].item[Answer].answer.value[x] only Coding
* item[Questions].item[qd680c277].item[Answer].answer.value[x] 1..1
* item[Questions].item[qd680c277].item[Answer].answer.valueCoding from hn-vs-58e4d598f859 (required)
* item[Questions].item[qd680c277].item[Options].linkId = "Questions.qd680c277.Options"
* item[Questions].item[qd680c277].item[Options] ^short = "多選答案"
* item[Questions].item[qd680c277].item[Options].item 0..0
* item[Questions].item[qd680c277].item[Options].answer 0..1
* item[Questions].item[qd680c277].item[Options].answer.value[x] only string
* item[Questions].item[qd680c277].item[Options].answer.value[x] 1..1
* item[Questions].item[qd680c277].item[Options].answer.valueString ^maxLength = 1000
* item[Questions].item[qd680c277].item[Other].linkId = "Questions.qd680c277.Other"
* item[Questions].item[qd680c277].item[Other] ^short = "其他用藥說明"
* item[Questions].item[qd680c277].item[Other].item 0..0
* item[Questions].item[qd680c277].item[Other].answer 0..1
* item[Questions].item[qd680c277].item[Other].answer.value[x] only string
* item[Questions].item[qd680c277].item[Other].answer.value[x] 1..1
* item[Questions].item[qd680c277].item[Other].answer.valueString ^maxLength = 100
* item[Questions].item[qc1c1fb2c].linkId = "Questions.qc1c1fb2c"
* item[Questions].item[qc1c1fb2c] ^short = "活動功能異常"
* item[Questions].item[qc1c1fb2c].answer 0..0
* item[Questions].item[qc1c1fb2c].item ^slicing.discriminator.type = #value
* item[Questions].item[qc1c1fb2c].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[qc1c1fb2c].item ^slicing.rules = #closed
* item[Questions].item[qc1c1fb2c].item contains
    Answer 1..1 MS and
    Options 0..1 MS and
    Other 0..1 MS
* item[Questions].item[qc1c1fb2c].item[Answer].linkId = "Questions.qc1c1fb2c.Answer"
* item[Questions].item[qc1c1fb2c].item[Answer] ^short = "評估答案"
* item[Questions].item[qc1c1fb2c].item[Answer].item 0..0
* item[Questions].item[qc1c1fb2c].item[Answer].answer 0..1
* item[Questions].item[qc1c1fb2c].item[Answer].answer.value[x] only Coding
* item[Questions].item[qc1c1fb2c].item[Answer].answer.value[x] 1..1
* item[Questions].item[qc1c1fb2c].item[Answer].answer.valueCoding from hn-vs-58e4d598f859 (required)
* item[Questions].item[qc1c1fb2c].item[Options].linkId = "Questions.qc1c1fb2c.Options"
* item[Questions].item[qc1c1fb2c].item[Options] ^short = "多選答案"
* item[Questions].item[qc1c1fb2c].item[Options].item 0..0
* item[Questions].item[qc1c1fb2c].item[Options].answer 0..1
* item[Questions].item[qc1c1fb2c].item[Options].answer.value[x] only string
* item[Questions].item[qc1c1fb2c].item[Options].answer.value[x] 1..1
* item[Questions].item[qc1c1fb2c].item[Options].answer.valueString ^maxLength = 1000
* item[Questions].item[qc1c1fb2c].item[Other].linkId = "Questions.qc1c1fb2c.Other"
* item[Questions].item[qc1c1fb2c].item[Other] ^short = "其他用藥說明"
* item[Questions].item[qc1c1fb2c].item[Other].item 0..0
* item[Questions].item[qc1c1fb2c].item[Other].answer 0..1
* item[Questions].item[qc1c1fb2c].item[Other].answer.value[x] only string
* item[Questions].item[qc1c1fb2c].item[Other].answer.value[x] 1..1
* item[Questions].item[qc1c1fb2c].item[Other].answer.valueString ^maxLength = 100
* item[Questions].item[q603c2de9].linkId = "Questions.q603c2de9"
* item[Questions].item[q603c2de9] ^short = "體能虛弱"
* item[Questions].item[q603c2de9].answer 0..0
* item[Questions].item[q603c2de9].item ^slicing.discriminator.type = #value
* item[Questions].item[q603c2de9].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[q603c2de9].item ^slicing.rules = #closed
* item[Questions].item[q603c2de9].item contains
    Answer 1..1 MS and
    Options 0..1 MS and
    Other 0..1 MS
* item[Questions].item[q603c2de9].item[Answer].linkId = "Questions.q603c2de9.Answer"
* item[Questions].item[q603c2de9].item[Answer] ^short = "評估答案"
* item[Questions].item[q603c2de9].item[Answer].item 0..0
* item[Questions].item[q603c2de9].item[Answer].answer 0..1
* item[Questions].item[q603c2de9].item[Answer].answer.value[x] only Coding
* item[Questions].item[q603c2de9].item[Answer].answer.value[x] 1..1
* item[Questions].item[q603c2de9].item[Answer].answer.valueCoding from hn-vs-58e4d598f859 (required)
* item[Questions].item[q603c2de9].item[Options].linkId = "Questions.q603c2de9.Options"
* item[Questions].item[q603c2de9].item[Options] ^short = "多選答案"
* item[Questions].item[q603c2de9].item[Options].item 0..0
* item[Questions].item[q603c2de9].item[Options].answer 0..1
* item[Questions].item[q603c2de9].item[Options].answer.value[x] only string
* item[Questions].item[q603c2de9].item[Options].answer.value[x] 1..1
* item[Questions].item[q603c2de9].item[Options].answer.valueString ^maxLength = 1000
* item[Questions].item[q603c2de9].item[Other].linkId = "Questions.q603c2de9.Other"
* item[Questions].item[q603c2de9].item[Other] ^short = "其他用藥說明"
* item[Questions].item[q603c2de9].item[Other].item 0..0
* item[Questions].item[q603c2de9].item[Other].answer 0..1
* item[Questions].item[q603c2de9].item[Other].answer.value[x] only string
* item[Questions].item[q603c2de9].item[Other].answer.value[x] 1..1
* item[Questions].item[q603c2de9].item[Other].answer.valueString ^maxLength = 100
* item[Questions].item[qbf720dbc].linkId = "Questions.qbf720dbc"
* item[Questions].item[qbf720dbc] ^short = "知覺障礙"
* item[Questions].item[qbf720dbc].answer 0..0
* item[Questions].item[qbf720dbc].item ^slicing.discriminator.type = #value
* item[Questions].item[qbf720dbc].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[qbf720dbc].item ^slicing.rules = #closed
* item[Questions].item[qbf720dbc].item contains
    Answer 1..1 MS and
    Options 0..1 MS and
    Other 0..1 MS
* item[Questions].item[qbf720dbc].item[Answer].linkId = "Questions.qbf720dbc.Answer"
* item[Questions].item[qbf720dbc].item[Answer] ^short = "評估答案"
* item[Questions].item[qbf720dbc].item[Answer].item 0..0
* item[Questions].item[qbf720dbc].item[Answer].answer 0..1
* item[Questions].item[qbf720dbc].item[Answer].answer.value[x] only Coding
* item[Questions].item[qbf720dbc].item[Answer].answer.value[x] 1..1
* item[Questions].item[qbf720dbc].item[Answer].answer.valueCoding from hn-vs-58e4d598f859 (required)
* item[Questions].item[qbf720dbc].item[Options].linkId = "Questions.qbf720dbc.Options"
* item[Questions].item[qbf720dbc].item[Options] ^short = "多選答案"
* item[Questions].item[qbf720dbc].item[Options].item 0..0
* item[Questions].item[qbf720dbc].item[Options].answer 0..1
* item[Questions].item[qbf720dbc].item[Options].answer.value[x] only string
* item[Questions].item[qbf720dbc].item[Options].answer.value[x] 1..1
* item[Questions].item[qbf720dbc].item[Options].answer.valueString ^maxLength = 1000
* item[Questions].item[qbf720dbc].item[Other].linkId = "Questions.qbf720dbc.Other"
* item[Questions].item[qbf720dbc].item[Other] ^short = "其他用藥說明"
* item[Questions].item[qbf720dbc].item[Other].item 0..0
* item[Questions].item[qbf720dbc].item[Other].answer 0..1
* item[Questions].item[qbf720dbc].item[Other].answer.value[x] only string
* item[Questions].item[qbf720dbc].item[Other].answer.value[x] 1..1
* item[Questions].item[qbf720dbc].item[Other].answer.valueString ^maxLength = 100
* item[Questions].item[q6fa60520].linkId = "Questions.q6fa60520"
* item[Questions].item[q6fa60520] ^short = "暈眩/低血壓"
* item[Questions].item[q6fa60520].answer 0..0
* item[Questions].item[q6fa60520].item ^slicing.discriminator.type = #value
* item[Questions].item[q6fa60520].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[q6fa60520].item ^slicing.rules = #closed
* item[Questions].item[q6fa60520].item contains
    Answer 1..1 MS and
    Options 0..1 MS and
    Other 0..1 MS
* item[Questions].item[q6fa60520].item[Answer].linkId = "Questions.q6fa60520.Answer"
* item[Questions].item[q6fa60520].item[Answer] ^short = "評估答案"
* item[Questions].item[q6fa60520].item[Answer].item 0..0
* item[Questions].item[q6fa60520].item[Answer].answer 0..1
* item[Questions].item[q6fa60520].item[Answer].answer.value[x] only Coding
* item[Questions].item[q6fa60520].item[Answer].answer.value[x] 1..1
* item[Questions].item[q6fa60520].item[Answer].answer.valueCoding from hn-vs-58e4d598f859 (required)
* item[Questions].item[q6fa60520].item[Options].linkId = "Questions.q6fa60520.Options"
* item[Questions].item[q6fa60520].item[Options] ^short = "多選答案"
* item[Questions].item[q6fa60520].item[Options].item 0..0
* item[Questions].item[q6fa60520].item[Options].answer 0..1
* item[Questions].item[q6fa60520].item[Options].answer.value[x] only string
* item[Questions].item[q6fa60520].item[Options].answer.value[x] 1..1
* item[Questions].item[q6fa60520].item[Options].answer.valueString ^maxLength = 1000
* item[Questions].item[q6fa60520].item[Other].linkId = "Questions.q6fa60520.Other"
* item[Questions].item[q6fa60520].item[Other] ^short = "其他用藥說明"
* item[Questions].item[q6fa60520].item[Other].item 0..0
* item[Questions].item[q6fa60520].item[Other].answer 0..1
* item[Questions].item[q6fa60520].item[Other].answer.value[x] only string
* item[Questions].item[q6fa60520].item[Other].answer.value[x] 1..1
* item[Questions].item[q6fa60520].item[Other].answer.valueString ^maxLength = 100
* item[Questions].item[qe6e35ded].linkId = "Questions.qe6e35ded"
* item[Questions].item[qe6e35ded] ^short = "使用藥物"
* item[Questions].item[qe6e35ded].answer 0..0
* item[Questions].item[qe6e35ded].item ^slicing.discriminator.type = #value
* item[Questions].item[qe6e35ded].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[qe6e35ded].item ^slicing.rules = #closed
* item[Questions].item[qe6e35ded].item contains
    Answer 1..1 MS and
    Options 0..1 MS and
    Other 0..1 MS
* item[Questions].item[qe6e35ded].item[Answer].linkId = "Questions.qe6e35ded.Answer"
* item[Questions].item[qe6e35ded].item[Answer] ^short = "評估答案"
* item[Questions].item[qe6e35ded].item[Answer].item 0..0
* item[Questions].item[qe6e35ded].item[Answer].answer 0..1
* item[Questions].item[qe6e35ded].item[Answer].answer.value[x] only Coding
* item[Questions].item[qe6e35ded].item[Answer].answer.value[x] 1..1
* item[Questions].item[qe6e35ded].item[Answer].answer.valueCoding from hn-vs-58e4d598f859 (required)
* item[Questions].item[qe6e35ded].item[Options].linkId = "Questions.qe6e35ded.Options"
* item[Questions].item[qe6e35ded].item[Options] ^short = "多選答案"
* item[Questions].item[qe6e35ded].item[Options].item 0..0
* item[Questions].item[qe6e35ded].item[Options].answer 0..1
* item[Questions].item[qe6e35ded].item[Options].answer.value[x] only string
* item[Questions].item[qe6e35ded].item[Options].answer.value[x] 1..1
* item[Questions].item[qe6e35ded].item[Options].answer.valueString ^maxLength = 1000
* item[Questions].item[qe6e35ded].item[Other].linkId = "Questions.qe6e35ded.Other"
* item[Questions].item[qe6e35ded].item[Other] ^short = "其他用藥說明"
* item[Questions].item[qe6e35ded].item[Other].item 0..0
* item[Questions].item[qe6e35ded].item[Other].answer 0..1
* item[Questions].item[qe6e35ded].item[Other].answer.value[x] only string
* item[Questions].item[qe6e35ded].item[Other].answer.value[x] 1..1
* item[Questions].item[qe6e35ded].item[Other].answer.valueString ^maxLength = 100
* item[IsTemporary].linkId = "IsTemporary"
* item[IsTemporary] ^short = "是否暫存"
* item[IsTemporary].item 0..0
* item[IsTemporary].answer 0..1
* item[IsTemporary].answer.value[x] only Coding
* item[IsTemporary].answer.value[x] 1..1
* item[IsTemporary].answer.valueCoding from hn-vs-58e4d598f859 (required)
* obeys hn-fallrisks-1
* obeys hn-fallrisks-2

Invariant: hn-fallrisks-1
Description: "暫存填是時，表單狀態必須為 in-progress。"
Severity: #error
Expression: "item.where(linkId='IsTemporary').answer.value.ofType(Coding).where(code='cb5141d3d19e9').exists() implies status='in-progress'"

Invariant: hn-fallrisks-2
Description: "暫存填否時，表單狀態必須為 completed 或 amended。"
Severity: #error
Expression: "item.where(linkId='IsTemporary').answer.value.ofType(Coding).where(code='c0c70665b6eb6').exists() implies (status='completed' or status='amended')"
