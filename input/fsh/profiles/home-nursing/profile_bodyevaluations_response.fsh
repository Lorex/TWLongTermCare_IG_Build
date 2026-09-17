Profile: HNBodyEvaluationsResponse
Parent: LTCQuestionnaireResponse
Id: HNBodyEvaluationsResponse
Title: "居家護理－身體評估評估表單"
Description: "記錄身體評估評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。"
* ^status = #draft
* ^version = "5.0.16"
* questionnaire 1..1 MS
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/hn-bodyevaluations"
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
    BodyQuestions 1..1 MS and
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
* item[BodyQuestions].linkId = "BodyQuestions"
* item[BodyQuestions] ^short = "評估項目"
* item[BodyQuestions].answer 0..0
* item[BodyQuestions].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item ^slicing.rules = #closed
* item[BodyQuestions].item contains
    q3d5455cd 1..1 MS and
    q78be3cfc 1..1 MS and
    qd5d3ea28 1..1 MS and
    q9999e6f5 1..1 MS and
    qcd3cc2c1 1..1 MS and
    q99290406 1..1 MS and
    q24eedc1b 1..1 MS and
    q6215056f 1..1 MS and
    q1678a5f1 1..1 MS and
    q93005aaa 1..1 MS and
    q2386d883 1..1 MS and
    q306e4676 1..1 MS and
    q63b2fbbe 1..1 MS and
    q3288f369 1..1 MS and
    q14304745 1..1 MS and
    q7ca654d9 1..1 MS and
    q53fb7d09 1..1 MS and
    qfcd3bd60 1..1 MS and
    q7b3136eb 1..1 MS and
    qc0a49d43 1..1 MS and
    qd49ab702 1..1 MS and
    q1b2dc66c 1..1 MS and
    qfaaaf47f 1..1 MS and
    qbfd21c82 1..1 MS and
    q0cdace56 1..1 MS and
    q3170f977 1..1 MS and
    q1dddcc0f 1..1 MS and
    q889a3f5d 1..1 MS and
    qfbbbe51d 1..1 MS and
    q2edc1f98 1..1 MS and
    q0aec089c 1..1 MS and
    q5b3534e0 1..1 MS and
    q6e6e5811 1..1 MS and
    q4c713f60 1..1 MS and
    q43c26e48 1..1 MS and
    q9926c640 1..1 MS and
    q3f44d138 1..1 MS and
    qcd675f81 1..1 MS and
    q3adf788d 1..1 MS and
    q4ce17519 1..1 MS and
    qcc99d785 1..1 MS and
    q1ea67d8d 1..1 MS and
    qca5f735b 1..1 MS and
    qd8db9643 1..1 MS and
    q65b57fd8 1..1 MS and
    q03fdb3f1 1..1 MS and
    qd30f4212 1..1 MS and
    q1355f181 1..1 MS and
    q1c902f78 1..1 MS and
    q6772dc09 1..1 MS
* item[BodyQuestions].item[q3d5455cd].linkId = "BodyQuestions.q3d5455cd"
* item[BodyQuestions].item[q3d5455cd] ^short = "睜眼"
* item[BodyQuestions].item[q3d5455cd].answer 0..0
* item[BodyQuestions].item[q3d5455cd].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[q3d5455cd].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[q3d5455cd].item ^slicing.rules = #closed
* item[BodyQuestions].item[q3d5455cd].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[q3d5455cd].item[Answer].linkId = "BodyQuestions.q3d5455cd.Answer"
* item[BodyQuestions].item[q3d5455cd].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[q3d5455cd].item[Answer].item 0..0
* item[BodyQuestions].item[q3d5455cd].item[Answer].answer 0..1
* item[BodyQuestions].item[q3d5455cd].item[Answer].answer.value[x] only Coding
* item[BodyQuestions].item[q3d5455cd].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[q3d5455cd].item[Answer].answer.valueCoding from hn-vs-6380f9a50deb (required)
* item[BodyQuestions].item[q3d5455cd].item[MultipleAnswer].linkId = "BodyQuestions.q3d5455cd.MultipleAnswer"
* item[BodyQuestions].item[q3d5455cd].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[q3d5455cd].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[q3d5455cd].item[MultipleAnswer].answer 0..1
* item[BodyQuestions].item[q3d5455cd].item[MultipleAnswer].answer.value[x] only string
* item[BodyQuestions].item[q3d5455cd].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[q3d5455cd].item[MultipleAnswer].answer.valueString ^maxLength = 1000
* item[BodyQuestions].item[q3d5455cd].item[Other].linkId = "BodyQuestions.q3d5455cd.Other"
* item[BodyQuestions].item[q3d5455cd].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[q3d5455cd].item[Other].item 0..0
* item[BodyQuestions].item[q3d5455cd].item[Other].answer 0..1
* item[BodyQuestions].item[q3d5455cd].item[Other].answer.value[x] only string
* item[BodyQuestions].item[q3d5455cd].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[q3d5455cd].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[q78be3cfc].linkId = "BodyQuestions.q78be3cfc"
* item[BodyQuestions].item[q78be3cfc] ^short = "語言"
* item[BodyQuestions].item[q78be3cfc].answer 0..0
* item[BodyQuestions].item[q78be3cfc].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[q78be3cfc].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[q78be3cfc].item ^slicing.rules = #closed
* item[BodyQuestions].item[q78be3cfc].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[q78be3cfc].item[Answer].linkId = "BodyQuestions.q78be3cfc.Answer"
* item[BodyQuestions].item[q78be3cfc].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[q78be3cfc].item[Answer].item 0..0
* item[BodyQuestions].item[q78be3cfc].item[Answer].answer 0..1
* item[BodyQuestions].item[q78be3cfc].item[Answer].answer.value[x] only Coding
* item[BodyQuestions].item[q78be3cfc].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[q78be3cfc].item[Answer].answer.valueCoding from hn-vs-d2f289370ed0 (required)
* item[BodyQuestions].item[q78be3cfc].item[MultipleAnswer].linkId = "BodyQuestions.q78be3cfc.MultipleAnswer"
* item[BodyQuestions].item[q78be3cfc].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[q78be3cfc].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[q78be3cfc].item[MultipleAnswer].answer 0..1
* item[BodyQuestions].item[q78be3cfc].item[MultipleAnswer].answer.value[x] only string
* item[BodyQuestions].item[q78be3cfc].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[q78be3cfc].item[MultipleAnswer].answer.valueString ^maxLength = 1000
* item[BodyQuestions].item[q78be3cfc].item[Other].linkId = "BodyQuestions.q78be3cfc.Other"
* item[BodyQuestions].item[q78be3cfc].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[q78be3cfc].item[Other].item 0..0
* item[BodyQuestions].item[q78be3cfc].item[Other].answer 0..1
* item[BodyQuestions].item[q78be3cfc].item[Other].answer.value[x] only string
* item[BodyQuestions].item[q78be3cfc].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[q78be3cfc].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[qd5d3ea28].linkId = "BodyQuestions.qd5d3ea28"
* item[BodyQuestions].item[qd5d3ea28] ^short = "運動"
* item[BodyQuestions].item[qd5d3ea28].answer 0..0
* item[BodyQuestions].item[qd5d3ea28].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[qd5d3ea28].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[qd5d3ea28].item ^slicing.rules = #closed
* item[BodyQuestions].item[qd5d3ea28].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[qd5d3ea28].item[Answer].linkId = "BodyQuestions.qd5d3ea28.Answer"
* item[BodyQuestions].item[qd5d3ea28].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[qd5d3ea28].item[Answer].item 0..0
* item[BodyQuestions].item[qd5d3ea28].item[Answer].answer 0..1
* item[BodyQuestions].item[qd5d3ea28].item[Answer].answer.value[x] only Coding
* item[BodyQuestions].item[qd5d3ea28].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[qd5d3ea28].item[Answer].answer.valueCoding from hn-vs-784e3567e13b (required)
* item[BodyQuestions].item[qd5d3ea28].item[MultipleAnswer].linkId = "BodyQuestions.qd5d3ea28.MultipleAnswer"
* item[BodyQuestions].item[qd5d3ea28].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[qd5d3ea28].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[qd5d3ea28].item[MultipleAnswer].answer 0..1
* item[BodyQuestions].item[qd5d3ea28].item[MultipleAnswer].answer.value[x] only string
* item[BodyQuestions].item[qd5d3ea28].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[qd5d3ea28].item[MultipleAnswer].answer.valueString ^maxLength = 1000
* item[BodyQuestions].item[qd5d3ea28].item[Other].linkId = "BodyQuestions.qd5d3ea28.Other"
* item[BodyQuestions].item[qd5d3ea28].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[qd5d3ea28].item[Other].item 0..0
* item[BodyQuestions].item[qd5d3ea28].item[Other].answer 0..1
* item[BodyQuestions].item[qd5d3ea28].item[Other].answer.value[x] only string
* item[BodyQuestions].item[qd5d3ea28].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[qd5d3ea28].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[q9999e6f5].linkId = "BodyQuestions.q9999e6f5"
* item[BodyQuestions].item[q9999e6f5] ^short = "視力"
* item[BodyQuestions].item[q9999e6f5].answer 0..0
* item[BodyQuestions].item[q9999e6f5].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[q9999e6f5].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[q9999e6f5].item ^slicing.rules = #closed
* item[BodyQuestions].item[q9999e6f5].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[q9999e6f5].item[Answer].linkId = "BodyQuestions.q9999e6f5.Answer"
* item[BodyQuestions].item[q9999e6f5].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[q9999e6f5].item[Answer].item 0..0
* item[BodyQuestions].item[q9999e6f5].item[Answer].answer 0..1
* item[BodyQuestions].item[q9999e6f5].item[Answer].answer.value[x] only Coding
* item[BodyQuestions].item[q9999e6f5].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[q9999e6f5].item[Answer].answer.valueCoding from hn-vs-ef4daeacd99a (required)
* item[BodyQuestions].item[q9999e6f5].item[MultipleAnswer].linkId = "BodyQuestions.q9999e6f5.MultipleAnswer"
* item[BodyQuestions].item[q9999e6f5].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[q9999e6f5].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[q9999e6f5].item[MultipleAnswer].answer 0..1
* item[BodyQuestions].item[q9999e6f5].item[MultipleAnswer].answer.value[x] only string
* item[BodyQuestions].item[q9999e6f5].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[q9999e6f5].item[MultipleAnswer].answer.valueString ^maxLength = 1000
* item[BodyQuestions].item[q9999e6f5].item[Other].linkId = "BodyQuestions.q9999e6f5.Other"
* item[BodyQuestions].item[q9999e6f5].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[q9999e6f5].item[Other].item 0..0
* item[BodyQuestions].item[q9999e6f5].item[Other].answer 0..1
* item[BodyQuestions].item[q9999e6f5].item[Other].answer.value[x] only string
* item[BodyQuestions].item[q9999e6f5].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[q9999e6f5].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[qcd3cc2c1].linkId = "BodyQuestions.qcd3cc2c1"
* item[BodyQuestions].item[qcd3cc2c1] ^short = "視力-部位"
* item[BodyQuestions].item[qcd3cc2c1].answer 0..0
* item[BodyQuestions].item[qcd3cc2c1].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[qcd3cc2c1].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[qcd3cc2c1].item ^slicing.rules = #closed
* item[BodyQuestions].item[qcd3cc2c1].item contains
    Answer 0..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[qcd3cc2c1].item[Answer].linkId = "BodyQuestions.qcd3cc2c1.Answer"
* item[BodyQuestions].item[qcd3cc2c1].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[qcd3cc2c1].item[Answer].item 0..0
* item[BodyQuestions].item[qcd3cc2c1].item[Answer].answer 0..1
* item[BodyQuestions].item[qcd3cc2c1].item[Answer].answer.value[x] only string
* item[BodyQuestions].item[qcd3cc2c1].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[qcd3cc2c1].item[Answer].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[qcd3cc2c1].item[MultipleAnswer].linkId = "BodyQuestions.qcd3cc2c1.MultipleAnswer"
* item[BodyQuestions].item[qcd3cc2c1].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[qcd3cc2c1].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[qcd3cc2c1].item[MultipleAnswer].answer 0..*
* item[BodyQuestions].item[qcd3cc2c1].item[MultipleAnswer].answer.value[x] only Coding
* item[BodyQuestions].item[qcd3cc2c1].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[qcd3cc2c1].item[MultipleAnswer].answer.valueCoding from hn-vs-2fd20e6427ff (required)
* item[BodyQuestions].item[qcd3cc2c1].item[Other].linkId = "BodyQuestions.qcd3cc2c1.Other"
* item[BodyQuestions].item[qcd3cc2c1].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[qcd3cc2c1].item[Other].item 0..0
* item[BodyQuestions].item[qcd3cc2c1].item[Other].answer 0..1
* item[BodyQuestions].item[qcd3cc2c1].item[Other].answer.value[x] only string
* item[BodyQuestions].item[qcd3cc2c1].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[qcd3cc2c1].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[q99290406].linkId = "BodyQuestions.q99290406"
* item[BodyQuestions].item[q99290406] ^short = "視力-影響日常活動"
* item[BodyQuestions].item[q99290406].answer 0..0
* item[BodyQuestions].item[q99290406].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[q99290406].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[q99290406].item ^slicing.rules = #closed
* item[BodyQuestions].item[q99290406].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[q99290406].item[Answer].linkId = "BodyQuestions.q99290406.Answer"
* item[BodyQuestions].item[q99290406].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[q99290406].item[Answer].item 0..0
* item[BodyQuestions].item[q99290406].item[Answer].answer 0..1
* item[BodyQuestions].item[q99290406].item[Answer].answer.value[x] only Coding
* item[BodyQuestions].item[q99290406].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[q99290406].item[Answer].answer.valueCoding from hn-vs-58e4d598f859 (required)
* item[BodyQuestions].item[q99290406].item[MultipleAnswer].linkId = "BodyQuestions.q99290406.MultipleAnswer"
* item[BodyQuestions].item[q99290406].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[q99290406].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[q99290406].item[MultipleAnswer].answer 0..1
* item[BodyQuestions].item[q99290406].item[MultipleAnswer].answer.value[x] only string
* item[BodyQuestions].item[q99290406].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[q99290406].item[MultipleAnswer].answer.valueString ^maxLength = 1000
* item[BodyQuestions].item[q99290406].item[Other].linkId = "BodyQuestions.q99290406.Other"
* item[BodyQuestions].item[q99290406].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[q99290406].item[Other].item 0..0
* item[BodyQuestions].item[q99290406].item[Other].answer 0..1
* item[BodyQuestions].item[q99290406].item[Other].answer.value[x] only string
* item[BodyQuestions].item[q99290406].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[q99290406].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[q24eedc1b].linkId = "BodyQuestions.q24eedc1b"
* item[BodyQuestions].item[q24eedc1b] ^short = "視力-輔具"
* item[BodyQuestions].item[q24eedc1b].answer 0..0
* item[BodyQuestions].item[q24eedc1b].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[q24eedc1b].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[q24eedc1b].item ^slicing.rules = #closed
* item[BodyQuestions].item[q24eedc1b].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[q24eedc1b].item[Answer].linkId = "BodyQuestions.q24eedc1b.Answer"
* item[BodyQuestions].item[q24eedc1b].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[q24eedc1b].item[Answer].item 0..0
* item[BodyQuestions].item[q24eedc1b].item[Answer].answer 0..1
* item[BodyQuestions].item[q24eedc1b].item[Answer].answer.value[x] only Coding
* item[BodyQuestions].item[q24eedc1b].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[q24eedc1b].item[Answer].answer.valueCoding from hn-vs-49fe20230ec3 (required)
* item[BodyQuestions].item[q24eedc1b].item[MultipleAnswer].linkId = "BodyQuestions.q24eedc1b.MultipleAnswer"
* item[BodyQuestions].item[q24eedc1b].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[q24eedc1b].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[q24eedc1b].item[MultipleAnswer].answer 0..*
* item[BodyQuestions].item[q24eedc1b].item[MultipleAnswer].answer.value[x] only Coding
* item[BodyQuestions].item[q24eedc1b].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[q24eedc1b].item[MultipleAnswer].answer.valueCoding from hn-vs-afadc3bb2a88 (required)
* item[BodyQuestions].item[q24eedc1b].item[Other].linkId = "BodyQuestions.q24eedc1b.Other"
* item[BodyQuestions].item[q24eedc1b].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[q24eedc1b].item[Other].item 0..0
* item[BodyQuestions].item[q24eedc1b].item[Other].answer 0..1
* item[BodyQuestions].item[q24eedc1b].item[Other].answer.value[x] only string
* item[BodyQuestions].item[q24eedc1b].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[q24eedc1b].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[q6215056f].linkId = "BodyQuestions.q6215056f"
* item[BodyQuestions].item[q6215056f] ^short = "聽力"
* item[BodyQuestions].item[q6215056f].answer 0..0
* item[BodyQuestions].item[q6215056f].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[q6215056f].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[q6215056f].item ^slicing.rules = #closed
* item[BodyQuestions].item[q6215056f].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[q6215056f].item[Answer].linkId = "BodyQuestions.q6215056f.Answer"
* item[BodyQuestions].item[q6215056f].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[q6215056f].item[Answer].item 0..0
* item[BodyQuestions].item[q6215056f].item[Answer].answer 0..1
* item[BodyQuestions].item[q6215056f].item[Answer].answer.value[x] only Coding
* item[BodyQuestions].item[q6215056f].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[q6215056f].item[Answer].answer.valueCoding from hn-vs-ef4daeacd99a (required)
* item[BodyQuestions].item[q6215056f].item[MultipleAnswer].linkId = "BodyQuestions.q6215056f.MultipleAnswer"
* item[BodyQuestions].item[q6215056f].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[q6215056f].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[q6215056f].item[MultipleAnswer].answer 0..1
* item[BodyQuestions].item[q6215056f].item[MultipleAnswer].answer.value[x] only string
* item[BodyQuestions].item[q6215056f].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[q6215056f].item[MultipleAnswer].answer.valueString ^maxLength = 1000
* item[BodyQuestions].item[q6215056f].item[Other].linkId = "BodyQuestions.q6215056f.Other"
* item[BodyQuestions].item[q6215056f].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[q6215056f].item[Other].item 0..0
* item[BodyQuestions].item[q6215056f].item[Other].answer 0..1
* item[BodyQuestions].item[q6215056f].item[Other].answer.value[x] only string
* item[BodyQuestions].item[q6215056f].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[q6215056f].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[q1678a5f1].linkId = "BodyQuestions.q1678a5f1"
* item[BodyQuestions].item[q1678a5f1] ^short = "聽力-部位"
* item[BodyQuestions].item[q1678a5f1].answer 0..0
* item[BodyQuestions].item[q1678a5f1].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[q1678a5f1].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[q1678a5f1].item ^slicing.rules = #closed
* item[BodyQuestions].item[q1678a5f1].item contains
    Answer 0..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[q1678a5f1].item[Answer].linkId = "BodyQuestions.q1678a5f1.Answer"
* item[BodyQuestions].item[q1678a5f1].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[q1678a5f1].item[Answer].item 0..0
* item[BodyQuestions].item[q1678a5f1].item[Answer].answer 0..1
* item[BodyQuestions].item[q1678a5f1].item[Answer].answer.value[x] only string
* item[BodyQuestions].item[q1678a5f1].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[q1678a5f1].item[Answer].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[q1678a5f1].item[MultipleAnswer].linkId = "BodyQuestions.q1678a5f1.MultipleAnswer"
* item[BodyQuestions].item[q1678a5f1].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[q1678a5f1].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[q1678a5f1].item[MultipleAnswer].answer 0..*
* item[BodyQuestions].item[q1678a5f1].item[MultipleAnswer].answer.value[x] only Coding
* item[BodyQuestions].item[q1678a5f1].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[q1678a5f1].item[MultipleAnswer].answer.valueCoding from hn-vs-7bc89358fe37 (required)
* item[BodyQuestions].item[q1678a5f1].item[Other].linkId = "BodyQuestions.q1678a5f1.Other"
* item[BodyQuestions].item[q1678a5f1].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[q1678a5f1].item[Other].item 0..0
* item[BodyQuestions].item[q1678a5f1].item[Other].answer 0..1
* item[BodyQuestions].item[q1678a5f1].item[Other].answer.value[x] only string
* item[BodyQuestions].item[q1678a5f1].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[q1678a5f1].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[q93005aaa].linkId = "BodyQuestions.q93005aaa"
* item[BodyQuestions].item[q93005aaa] ^short = "聽力-影響日常活動"
* item[BodyQuestions].item[q93005aaa].answer 0..0
* item[BodyQuestions].item[q93005aaa].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[q93005aaa].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[q93005aaa].item ^slicing.rules = #closed
* item[BodyQuestions].item[q93005aaa].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[q93005aaa].item[Answer].linkId = "BodyQuestions.q93005aaa.Answer"
* item[BodyQuestions].item[q93005aaa].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[q93005aaa].item[Answer].item 0..0
* item[BodyQuestions].item[q93005aaa].item[Answer].answer 0..1
* item[BodyQuestions].item[q93005aaa].item[Answer].answer.value[x] only Coding
* item[BodyQuestions].item[q93005aaa].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[q93005aaa].item[Answer].answer.valueCoding from hn-vs-58e4d598f859 (required)
* item[BodyQuestions].item[q93005aaa].item[MultipleAnswer].linkId = "BodyQuestions.q93005aaa.MultipleAnswer"
* item[BodyQuestions].item[q93005aaa].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[q93005aaa].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[q93005aaa].item[MultipleAnswer].answer 0..1
* item[BodyQuestions].item[q93005aaa].item[MultipleAnswer].answer.value[x] only string
* item[BodyQuestions].item[q93005aaa].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[q93005aaa].item[MultipleAnswer].answer.valueString ^maxLength = 1000
* item[BodyQuestions].item[q93005aaa].item[Other].linkId = "BodyQuestions.q93005aaa.Other"
* item[BodyQuestions].item[q93005aaa].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[q93005aaa].item[Other].item 0..0
* item[BodyQuestions].item[q93005aaa].item[Other].answer 0..1
* item[BodyQuestions].item[q93005aaa].item[Other].answer.value[x] only string
* item[BodyQuestions].item[q93005aaa].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[q93005aaa].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[q2386d883].linkId = "BodyQuestions.q2386d883"
* item[BodyQuestions].item[q2386d883] ^short = "聽力-輔具"
* item[BodyQuestions].item[q2386d883].answer 0..0
* item[BodyQuestions].item[q2386d883].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[q2386d883].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[q2386d883].item ^slicing.rules = #closed
* item[BodyQuestions].item[q2386d883].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[q2386d883].item[Answer].linkId = "BodyQuestions.q2386d883.Answer"
* item[BodyQuestions].item[q2386d883].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[q2386d883].item[Answer].item 0..0
* item[BodyQuestions].item[q2386d883].item[Answer].answer 0..1
* item[BodyQuestions].item[q2386d883].item[Answer].answer.value[x] only Coding
* item[BodyQuestions].item[q2386d883].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[q2386d883].item[Answer].answer.valueCoding from hn-vs-49fe20230ec3 (required)
* item[BodyQuestions].item[q2386d883].item[MultipleAnswer].linkId = "BodyQuestions.q2386d883.MultipleAnswer"
* item[BodyQuestions].item[q2386d883].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[q2386d883].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[q2386d883].item[MultipleAnswer].answer 0..*
* item[BodyQuestions].item[q2386d883].item[MultipleAnswer].answer.value[x] only Coding
* item[BodyQuestions].item[q2386d883].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[q2386d883].item[MultipleAnswer].answer.valueCoding from hn-vs-f0b4522906b6 (required)
* item[BodyQuestions].item[q2386d883].item[Other].linkId = "BodyQuestions.q2386d883.Other"
* item[BodyQuestions].item[q2386d883].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[q2386d883].item[Other].item 0..0
* item[BodyQuestions].item[q2386d883].item[Other].answer 0..1
* item[BodyQuestions].item[q2386d883].item[Other].answer.value[x] only string
* item[BodyQuestions].item[q2386d883].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[q2386d883].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[q306e4676].linkId = "BodyQuestions.q306e4676"
* item[BodyQuestions].item[q306e4676] ^short = "溝通"
* item[BodyQuestions].item[q306e4676].answer 0..0
* item[BodyQuestions].item[q306e4676].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[q306e4676].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[q306e4676].item ^slicing.rules = #closed
* item[BodyQuestions].item[q306e4676].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[q306e4676].item[Answer].linkId = "BodyQuestions.q306e4676.Answer"
* item[BodyQuestions].item[q306e4676].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[q306e4676].item[Answer].item 0..0
* item[BodyQuestions].item[q306e4676].item[Answer].answer 0..1
* item[BodyQuestions].item[q306e4676].item[Answer].answer.value[x] only Coding
* item[BodyQuestions].item[q306e4676].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[q306e4676].item[Answer].answer.valueCoding from hn-vs-0655870f5454 (required)
* item[BodyQuestions].item[q306e4676].item[MultipleAnswer].linkId = "BodyQuestions.q306e4676.MultipleAnswer"
* item[BodyQuestions].item[q306e4676].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[q306e4676].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[q306e4676].item[MultipleAnswer].answer 0..1
* item[BodyQuestions].item[q306e4676].item[MultipleAnswer].answer.value[x] only string
* item[BodyQuestions].item[q306e4676].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[q306e4676].item[MultipleAnswer].answer.valueString ^maxLength = 1000
* item[BodyQuestions].item[q306e4676].item[Other].linkId = "BodyQuestions.q306e4676.Other"
* item[BodyQuestions].item[q306e4676].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[q306e4676].item[Other].item 0..0
* item[BodyQuestions].item[q306e4676].item[Other].answer 0..1
* item[BodyQuestions].item[q306e4676].item[Other].answer.value[x] only string
* item[BodyQuestions].item[q306e4676].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[q306e4676].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[q63b2fbbe].linkId = "BodyQuestions.q63b2fbbe"
* item[BodyQuestions].item[q63b2fbbe] ^short = "溝通-影響日常活動"
* item[BodyQuestions].item[q63b2fbbe].answer 0..0
* item[BodyQuestions].item[q63b2fbbe].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[q63b2fbbe].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[q63b2fbbe].item ^slicing.rules = #closed
* item[BodyQuestions].item[q63b2fbbe].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[q63b2fbbe].item[Answer].linkId = "BodyQuestions.q63b2fbbe.Answer"
* item[BodyQuestions].item[q63b2fbbe].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[q63b2fbbe].item[Answer].item 0..0
* item[BodyQuestions].item[q63b2fbbe].item[Answer].answer 0..1
* item[BodyQuestions].item[q63b2fbbe].item[Answer].answer.value[x] only Coding
* item[BodyQuestions].item[q63b2fbbe].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[q63b2fbbe].item[Answer].answer.valueCoding from hn-vs-d9301962abbf (required)
* item[BodyQuestions].item[q63b2fbbe].item[MultipleAnswer].linkId = "BodyQuestions.q63b2fbbe.MultipleAnswer"
* item[BodyQuestions].item[q63b2fbbe].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[q63b2fbbe].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[q63b2fbbe].item[MultipleAnswer].answer 0..1
* item[BodyQuestions].item[q63b2fbbe].item[MultipleAnswer].answer.value[x] only string
* item[BodyQuestions].item[q63b2fbbe].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[q63b2fbbe].item[MultipleAnswer].answer.valueString ^maxLength = 1000
* item[BodyQuestions].item[q63b2fbbe].item[Other].linkId = "BodyQuestions.q63b2fbbe.Other"
* item[BodyQuestions].item[q63b2fbbe].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[q63b2fbbe].item[Other].item 0..0
* item[BodyQuestions].item[q63b2fbbe].item[Other].answer 0..1
* item[BodyQuestions].item[q63b2fbbe].item[Other].answer.value[x] only string
* item[BodyQuestions].item[q63b2fbbe].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[q63b2fbbe].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[q3288f369].linkId = "BodyQuestions.q3288f369"
* item[BodyQuestions].item[q3288f369] ^short = "說話"
* item[BodyQuestions].item[q3288f369].answer 0..0
* item[BodyQuestions].item[q3288f369].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[q3288f369].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[q3288f369].item ^slicing.rules = #closed
* item[BodyQuestions].item[q3288f369].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[q3288f369].item[Answer].linkId = "BodyQuestions.q3288f369.Answer"
* item[BodyQuestions].item[q3288f369].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[q3288f369].item[Answer].item 0..0
* item[BodyQuestions].item[q3288f369].item[Answer].answer 0..1
* item[BodyQuestions].item[q3288f369].item[Answer].answer.value[x] only Coding
* item[BodyQuestions].item[q3288f369].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[q3288f369].item[Answer].answer.valueCoding from hn-vs-3330cbe2f937 (required)
* item[BodyQuestions].item[q3288f369].item[MultipleAnswer].linkId = "BodyQuestions.q3288f369.MultipleAnswer"
* item[BodyQuestions].item[q3288f369].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[q3288f369].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[q3288f369].item[MultipleAnswer].answer 0..1
* item[BodyQuestions].item[q3288f369].item[MultipleAnswer].answer.value[x] only string
* item[BodyQuestions].item[q3288f369].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[q3288f369].item[MultipleAnswer].answer.valueString ^maxLength = 1000
* item[BodyQuestions].item[q3288f369].item[Other].linkId = "BodyQuestions.q3288f369.Other"
* item[BodyQuestions].item[q3288f369].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[q3288f369].item[Other].item 0..0
* item[BodyQuestions].item[q3288f369].item[Other].answer 0..1
* item[BodyQuestions].item[q3288f369].item[Other].answer.value[x] only string
* item[BodyQuestions].item[q3288f369].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[q3288f369].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[q14304745].linkId = "BodyQuestions.q14304745"
* item[BodyQuestions].item[q14304745] ^short = "理解"
* item[BodyQuestions].item[q14304745].answer 0..0
* item[BodyQuestions].item[q14304745].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[q14304745].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[q14304745].item ^slicing.rules = #closed
* item[BodyQuestions].item[q14304745].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[q14304745].item[Answer].linkId = "BodyQuestions.q14304745.Answer"
* item[BodyQuestions].item[q14304745].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[q14304745].item[Answer].item 0..0
* item[BodyQuestions].item[q14304745].item[Answer].answer 0..1
* item[BodyQuestions].item[q14304745].item[Answer].answer.value[x] only Coding
* item[BodyQuestions].item[q14304745].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[q14304745].item[Answer].answer.valueCoding from hn-vs-dc054900d0e6 (required)
* item[BodyQuestions].item[q14304745].item[MultipleAnswer].linkId = "BodyQuestions.q14304745.MultipleAnswer"
* item[BodyQuestions].item[q14304745].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[q14304745].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[q14304745].item[MultipleAnswer].answer 0..1
* item[BodyQuestions].item[q14304745].item[MultipleAnswer].answer.value[x] only string
* item[BodyQuestions].item[q14304745].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[q14304745].item[MultipleAnswer].answer.valueString ^maxLength = 1000
* item[BodyQuestions].item[q14304745].item[Other].linkId = "BodyQuestions.q14304745.Other"
* item[BodyQuestions].item[q14304745].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[q14304745].item[Other].item 0..0
* item[BodyQuestions].item[q14304745].item[Other].answer 0..1
* item[BodyQuestions].item[q14304745].item[Other].answer.value[x] only string
* item[BodyQuestions].item[q14304745].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[q14304745].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[q7ca654d9].linkId = "BodyQuestions.q7ca654d9"
* item[BodyQuestions].item[q7ca654d9] ^short = "口腔外觀"
* item[BodyQuestions].item[q7ca654d9].answer 0..0
* item[BodyQuestions].item[q7ca654d9].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[q7ca654d9].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[q7ca654d9].item ^slicing.rules = #closed
* item[BodyQuestions].item[q7ca654d9].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[q7ca654d9].item[Answer].linkId = "BodyQuestions.q7ca654d9.Answer"
* item[BodyQuestions].item[q7ca654d9].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[q7ca654d9].item[Answer].item 0..0
* item[BodyQuestions].item[q7ca654d9].item[Answer].answer 0..1
* item[BodyQuestions].item[q7ca654d9].item[Answer].answer.value[x] only Coding
* item[BodyQuestions].item[q7ca654d9].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[q7ca654d9].item[Answer].answer.valueCoding from hn-vs-7c98e63372ac (required)
* item[BodyQuestions].item[q7ca654d9].item[MultipleAnswer].linkId = "BodyQuestions.q7ca654d9.MultipleAnswer"
* item[BodyQuestions].item[q7ca654d9].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[q7ca654d9].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[q7ca654d9].item[MultipleAnswer].answer 0..*
* item[BodyQuestions].item[q7ca654d9].item[MultipleAnswer].answer.value[x] only Coding
* item[BodyQuestions].item[q7ca654d9].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[q7ca654d9].item[MultipleAnswer].answer.valueCoding from hn-vs-415683173294 (required)
* item[BodyQuestions].item[q7ca654d9].item[Other].linkId = "BodyQuestions.q7ca654d9.Other"
* item[BodyQuestions].item[q7ca654d9].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[q7ca654d9].item[Other].item 0..0
* item[BodyQuestions].item[q7ca654d9].item[Other].answer 0..1
* item[BodyQuestions].item[q7ca654d9].item[Other].answer.value[x] only string
* item[BodyQuestions].item[q7ca654d9].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[q7ca654d9].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[q53fb7d09].linkId = "BodyQuestions.q53fb7d09"
* item[BodyQuestions].item[q53fb7d09] ^short = "特殊進食"
* item[BodyQuestions].item[q53fb7d09].answer 0..0
* item[BodyQuestions].item[q53fb7d09].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[q53fb7d09].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[q53fb7d09].item ^slicing.rules = #closed
* item[BodyQuestions].item[q53fb7d09].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[q53fb7d09].item[Answer].linkId = "BodyQuestions.q53fb7d09.Answer"
* item[BodyQuestions].item[q53fb7d09].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[q53fb7d09].item[Answer].item 0..0
* item[BodyQuestions].item[q53fb7d09].item[Answer].answer 0..1
* item[BodyQuestions].item[q53fb7d09].item[Answer].answer.value[x] only Coding
* item[BodyQuestions].item[q53fb7d09].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[q53fb7d09].item[Answer].answer.valueCoding from hn-vs-49fe20230ec3 (required)
* item[BodyQuestions].item[q53fb7d09].item[MultipleAnswer].linkId = "BodyQuestions.q53fb7d09.MultipleAnswer"
* item[BodyQuestions].item[q53fb7d09].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[q53fb7d09].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[q53fb7d09].item[MultipleAnswer].answer 0..*
* item[BodyQuestions].item[q53fb7d09].item[MultipleAnswer].answer.value[x] only Coding
* item[BodyQuestions].item[q53fb7d09].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[q53fb7d09].item[MultipleAnswer].answer.valueCoding from hn-vs-3435b7eace88 (required)
* item[BodyQuestions].item[q53fb7d09].item[Other].linkId = "BodyQuestions.q53fb7d09.Other"
* item[BodyQuestions].item[q53fb7d09].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[q53fb7d09].item[Other].item 0..0
* item[BodyQuestions].item[q53fb7d09].item[Other].answer 0..1
* item[BodyQuestions].item[q53fb7d09].item[Other].answer.value[x] only string
* item[BodyQuestions].item[q53fb7d09].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[q53fb7d09].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[qfcd3bd60].linkId = "BodyQuestions.qfcd3bd60"
* item[BodyQuestions].item[qfcd3bd60] ^short = "假牙狀況"
* item[BodyQuestions].item[qfcd3bd60].answer 0..0
* item[BodyQuestions].item[qfcd3bd60].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[qfcd3bd60].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[qfcd3bd60].item ^slicing.rules = #closed
* item[BodyQuestions].item[qfcd3bd60].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[qfcd3bd60].item[Answer].linkId = "BodyQuestions.qfcd3bd60.Answer"
* item[BodyQuestions].item[qfcd3bd60].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[qfcd3bd60].item[Answer].item 0..0
* item[BodyQuestions].item[qfcd3bd60].item[Answer].answer 0..1
* item[BodyQuestions].item[qfcd3bd60].item[Answer].answer.value[x] only Coding
* item[BodyQuestions].item[qfcd3bd60].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[qfcd3bd60].item[Answer].answer.valueCoding from hn-vs-a051b2c062af (required)
* item[BodyQuestions].item[qfcd3bd60].item[MultipleAnswer].linkId = "BodyQuestions.qfcd3bd60.MultipleAnswer"
* item[BodyQuestions].item[qfcd3bd60].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[qfcd3bd60].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[qfcd3bd60].item[MultipleAnswer].answer 0..*
* item[BodyQuestions].item[qfcd3bd60].item[MultipleAnswer].answer.value[x] only Coding
* item[BodyQuestions].item[qfcd3bd60].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[qfcd3bd60].item[MultipleAnswer].answer.valueCoding from hn-vs-eee6be407d0e (required)
* item[BodyQuestions].item[qfcd3bd60].item[Other].linkId = "BodyQuestions.qfcd3bd60.Other"
* item[BodyQuestions].item[qfcd3bd60].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[qfcd3bd60].item[Other].item 0..0
* item[BodyQuestions].item[qfcd3bd60].item[Other].answer 0..1
* item[BodyQuestions].item[qfcd3bd60].item[Other].answer.value[x] only string
* item[BodyQuestions].item[qfcd3bd60].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[qfcd3bd60].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[q7b3136eb].linkId = "BodyQuestions.q7b3136eb"
* item[BodyQuestions].item[q7b3136eb] ^short = "腹部狀態"
* item[BodyQuestions].item[q7b3136eb].answer 0..0
* item[BodyQuestions].item[q7b3136eb].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[q7b3136eb].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[q7b3136eb].item ^slicing.rules = #closed
* item[BodyQuestions].item[q7b3136eb].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[q7b3136eb].item[Answer].linkId = "BodyQuestions.q7b3136eb.Answer"
* item[BodyQuestions].item[q7b3136eb].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[q7b3136eb].item[Answer].item 0..0
* item[BodyQuestions].item[q7b3136eb].item[Answer].answer 0..1
* item[BodyQuestions].item[q7b3136eb].item[Answer].answer.value[x] only Coding
* item[BodyQuestions].item[q7b3136eb].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[q7b3136eb].item[Answer].answer.valueCoding from hn-vs-b42a51b1139e (required)
* item[BodyQuestions].item[q7b3136eb].item[MultipleAnswer].linkId = "BodyQuestions.q7b3136eb.MultipleAnswer"
* item[BodyQuestions].item[q7b3136eb].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[q7b3136eb].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[q7b3136eb].item[MultipleAnswer].answer 0..1
* item[BodyQuestions].item[q7b3136eb].item[MultipleAnswer].answer.value[x] only string
* item[BodyQuestions].item[q7b3136eb].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[q7b3136eb].item[MultipleAnswer].answer.valueString ^maxLength = 1000
* item[BodyQuestions].item[q7b3136eb].item[Other].linkId = "BodyQuestions.q7b3136eb.Other"
* item[BodyQuestions].item[q7b3136eb].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[q7b3136eb].item[Other].item 0..0
* item[BodyQuestions].item[q7b3136eb].item[Other].answer 0..1
* item[BodyQuestions].item[q7b3136eb].item[Other].answer.value[x] only string
* item[BodyQuestions].item[q7b3136eb].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[q7b3136eb].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[qc0a49d43].linkId = "BodyQuestions.qc0a49d43"
* item[BodyQuestions].item[qc0a49d43] ^short = "腸蠕動"
* item[BodyQuestions].item[qc0a49d43].answer 0..0
* item[BodyQuestions].item[qc0a49d43].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[qc0a49d43].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[qc0a49d43].item ^slicing.rules = #closed
* item[BodyQuestions].item[qc0a49d43].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[qc0a49d43].item[Answer].linkId = "BodyQuestions.qc0a49d43.Answer"
* item[BodyQuestions].item[qc0a49d43].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[qc0a49d43].item[Answer].item 0..0
* item[BodyQuestions].item[qc0a49d43].item[Answer].answer 0..1
* item[BodyQuestions].item[qc0a49d43].item[Answer].answer.value[x] only Coding
* item[BodyQuestions].item[qc0a49d43].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[qc0a49d43].item[Answer].answer.valueCoding from hn-vs-3d4ed1f2575b (required)
* item[BodyQuestions].item[qc0a49d43].item[MultipleAnswer].linkId = "BodyQuestions.qc0a49d43.MultipleAnswer"
* item[BodyQuestions].item[qc0a49d43].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[qc0a49d43].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[qc0a49d43].item[MultipleAnswer].answer 0..1
* item[BodyQuestions].item[qc0a49d43].item[MultipleAnswer].answer.value[x] only string
* item[BodyQuestions].item[qc0a49d43].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[qc0a49d43].item[MultipleAnswer].answer.valueString ^maxLength = 1000
* item[BodyQuestions].item[qc0a49d43].item[Other].linkId = "BodyQuestions.qc0a49d43.Other"
* item[BodyQuestions].item[qc0a49d43].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[qc0a49d43].item[Other].item 0..0
* item[BodyQuestions].item[qc0a49d43].item[Other].answer 0..1
* item[BodyQuestions].item[qc0a49d43].item[Other].answer.value[x] only string
* item[BodyQuestions].item[qc0a49d43].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[qc0a49d43].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[qd49ab702].linkId = "BodyQuestions.qd49ab702"
* item[BodyQuestions].item[qd49ab702] ^short = "消化狀態"
* item[BodyQuestions].item[qd49ab702].answer 0..0
* item[BodyQuestions].item[qd49ab702].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[qd49ab702].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[qd49ab702].item ^slicing.rules = #closed
* item[BodyQuestions].item[qd49ab702].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[qd49ab702].item[Answer].linkId = "BodyQuestions.qd49ab702.Answer"
* item[BodyQuestions].item[qd49ab702].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[qd49ab702].item[Answer].item 0..0
* item[BodyQuestions].item[qd49ab702].item[Answer].answer 0..1
* item[BodyQuestions].item[qd49ab702].item[Answer].answer.value[x] only Coding
* item[BodyQuestions].item[qd49ab702].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[qd49ab702].item[Answer].answer.valueCoding from hn-vs-7ce3f119b854 (required)
* item[BodyQuestions].item[qd49ab702].item[MultipleAnswer].linkId = "BodyQuestions.qd49ab702.MultipleAnswer"
* item[BodyQuestions].item[qd49ab702].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[qd49ab702].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[qd49ab702].item[MultipleAnswer].answer 0..1
* item[BodyQuestions].item[qd49ab702].item[MultipleAnswer].answer.value[x] only string
* item[BodyQuestions].item[qd49ab702].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[qd49ab702].item[MultipleAnswer].answer.valueString ^maxLength = 1000
* item[BodyQuestions].item[qd49ab702].item[Other].linkId = "BodyQuestions.qd49ab702.Other"
* item[BodyQuestions].item[qd49ab702].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[qd49ab702].item[Other].item 0..0
* item[BodyQuestions].item[qd49ab702].item[Other].answer 0..1
* item[BodyQuestions].item[qd49ab702].item[Other].answer.value[x] only string
* item[BodyQuestions].item[qd49ab702].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[qd49ab702].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[q1b2dc66c].linkId = "BodyQuestions.q1b2dc66c"
* item[BodyQuestions].item[q1b2dc66c] ^short = "排便型態"
* item[BodyQuestions].item[q1b2dc66c].answer 0..0
* item[BodyQuestions].item[q1b2dc66c].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[q1b2dc66c].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[q1b2dc66c].item ^slicing.rules = #closed
* item[BodyQuestions].item[q1b2dc66c].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[q1b2dc66c].item[Answer].linkId = "BodyQuestions.q1b2dc66c.Answer"
* item[BodyQuestions].item[q1b2dc66c].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[q1b2dc66c].item[Answer].item 0..0
* item[BodyQuestions].item[q1b2dc66c].item[Answer].answer 0..1
* item[BodyQuestions].item[q1b2dc66c].item[Answer].answer.value[x] only Coding
* item[BodyQuestions].item[q1b2dc66c].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[q1b2dc66c].item[Answer].answer.valueCoding from hn-vs-7f8a5cfdf9c9 (required)
* item[BodyQuestions].item[q1b2dc66c].item[MultipleAnswer].linkId = "BodyQuestions.q1b2dc66c.MultipleAnswer"
* item[BodyQuestions].item[q1b2dc66c].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[q1b2dc66c].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[q1b2dc66c].item[MultipleAnswer].answer 0..1
* item[BodyQuestions].item[q1b2dc66c].item[MultipleAnswer].answer.value[x] only string
* item[BodyQuestions].item[q1b2dc66c].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[q1b2dc66c].item[MultipleAnswer].answer.valueString ^maxLength = 1000
* item[BodyQuestions].item[q1b2dc66c].item[Other].linkId = "BodyQuestions.q1b2dc66c.Other"
* item[BodyQuestions].item[q1b2dc66c].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[q1b2dc66c].item[Other].item 0..0
* item[BodyQuestions].item[q1b2dc66c].item[Other].answer 0..1
* item[BodyQuestions].item[q1b2dc66c].item[Other].answer.value[x] only string
* item[BodyQuestions].item[q1b2dc66c].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[q1b2dc66c].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[qfaaaf47f].linkId = "BodyQuestions.qfaaaf47f"
* item[BodyQuestions].item[qfaaaf47f] ^short = "排便顏色"
* item[BodyQuestions].item[qfaaaf47f].answer 0..0
* item[BodyQuestions].item[qfaaaf47f].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[qfaaaf47f].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[qfaaaf47f].item ^slicing.rules = #closed
* item[BodyQuestions].item[qfaaaf47f].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[qfaaaf47f].item[Answer].linkId = "BodyQuestions.qfaaaf47f.Answer"
* item[BodyQuestions].item[qfaaaf47f].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[qfaaaf47f].item[Answer].item 0..0
* item[BodyQuestions].item[qfaaaf47f].item[Answer].answer 0..1
* item[BodyQuestions].item[qfaaaf47f].item[Answer].answer.value[x] only Coding
* item[BodyQuestions].item[qfaaaf47f].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[qfaaaf47f].item[Answer].answer.valueCoding from hn-vs-a88d0ac6ee1a (required)
* item[BodyQuestions].item[qfaaaf47f].item[MultipleAnswer].linkId = "BodyQuestions.qfaaaf47f.MultipleAnswer"
* item[BodyQuestions].item[qfaaaf47f].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[qfaaaf47f].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[qfaaaf47f].item[MultipleAnswer].answer 0..1
* item[BodyQuestions].item[qfaaaf47f].item[MultipleAnswer].answer.value[x] only string
* item[BodyQuestions].item[qfaaaf47f].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[qfaaaf47f].item[MultipleAnswer].answer.valueString ^maxLength = 1000
* item[BodyQuestions].item[qfaaaf47f].item[Other].linkId = "BodyQuestions.qfaaaf47f.Other"
* item[BodyQuestions].item[qfaaaf47f].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[qfaaaf47f].item[Other].item 0..0
* item[BodyQuestions].item[qfaaaf47f].item[Other].answer 0..1
* item[BodyQuestions].item[qfaaaf47f].item[Other].answer.value[x] only string
* item[BodyQuestions].item[qfaaaf47f].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[qfaaaf47f].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[qbfd21c82].linkId = "BodyQuestions.qbfd21c82"
* item[BodyQuestions].item[qbfd21c82] ^short = "排便輔助"
* item[BodyQuestions].item[qbfd21c82].answer 0..0
* item[BodyQuestions].item[qbfd21c82].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[qbfd21c82].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[qbfd21c82].item ^slicing.rules = #closed
* item[BodyQuestions].item[qbfd21c82].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[qbfd21c82].item[Answer].linkId = "BodyQuestions.qbfd21c82.Answer"
* item[BodyQuestions].item[qbfd21c82].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[qbfd21c82].item[Answer].item 0..0
* item[BodyQuestions].item[qbfd21c82].item[Answer].answer 0..1
* item[BodyQuestions].item[qbfd21c82].item[Answer].answer.value[x] only Coding
* item[BodyQuestions].item[qbfd21c82].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[qbfd21c82].item[Answer].answer.valueCoding from hn-vs-19264db8df7b (required)
* item[BodyQuestions].item[qbfd21c82].item[MultipleAnswer].linkId = "BodyQuestions.qbfd21c82.MultipleAnswer"
* item[BodyQuestions].item[qbfd21c82].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[qbfd21c82].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[qbfd21c82].item[MultipleAnswer].answer 0..*
* item[BodyQuestions].item[qbfd21c82].item[MultipleAnswer].answer.value[x] only Coding
* item[BodyQuestions].item[qbfd21c82].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[qbfd21c82].item[MultipleAnswer].answer.valueCoding from hn-vs-0467df08a056 (required)
* item[BodyQuestions].item[qbfd21c82].item[Other].linkId = "BodyQuestions.qbfd21c82.Other"
* item[BodyQuestions].item[qbfd21c82].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[qbfd21c82].item[Other].item 0..0
* item[BodyQuestions].item[qbfd21c82].item[Other].answer 0..1
* item[BodyQuestions].item[qbfd21c82].item[Other].answer.value[x] only string
* item[BodyQuestions].item[qbfd21c82].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[qbfd21c82].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[q0cdace56].linkId = "BodyQuestions.q0cdace56"
* item[BodyQuestions].item[q0cdace56] ^short = "排尿型態"
* item[BodyQuestions].item[q0cdace56].answer 0..0
* item[BodyQuestions].item[q0cdace56].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[q0cdace56].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[q0cdace56].item ^slicing.rules = #closed
* item[BodyQuestions].item[q0cdace56].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[q0cdace56].item[Answer].linkId = "BodyQuestions.q0cdace56.Answer"
* item[BodyQuestions].item[q0cdace56].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[q0cdace56].item[Answer].item 0..0
* item[BodyQuestions].item[q0cdace56].item[Answer].answer 0..1
* item[BodyQuestions].item[q0cdace56].item[Answer].answer.value[x] only Coding
* item[BodyQuestions].item[q0cdace56].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[q0cdace56].item[Answer].answer.valueCoding from hn-vs-5cb9bbd6d620 (required)
* item[BodyQuestions].item[q0cdace56].item[MultipleAnswer].linkId = "BodyQuestions.q0cdace56.MultipleAnswer"
* item[BodyQuestions].item[q0cdace56].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[q0cdace56].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[q0cdace56].item[MultipleAnswer].answer 0..*
* item[BodyQuestions].item[q0cdace56].item[MultipleAnswer].answer.value[x] only Coding
* item[BodyQuestions].item[q0cdace56].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[q0cdace56].item[MultipleAnswer].answer.valueCoding from hn-vs-b5e899beaa3a (required)
* item[BodyQuestions].item[q0cdace56].item[Other].linkId = "BodyQuestions.q0cdace56.Other"
* item[BodyQuestions].item[q0cdace56].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[q0cdace56].item[Other].item 0..0
* item[BodyQuestions].item[q0cdace56].item[Other].answer 0..1
* item[BodyQuestions].item[q0cdace56].item[Other].answer.value[x] only string
* item[BodyQuestions].item[q0cdace56].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[q0cdace56].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[q3170f977].linkId = "BodyQuestions.q3170f977"
* item[BodyQuestions].item[q3170f977] ^short = "排尿顏色"
* item[BodyQuestions].item[q3170f977].answer 0..0
* item[BodyQuestions].item[q3170f977].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[q3170f977].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[q3170f977].item ^slicing.rules = #closed
* item[BodyQuestions].item[q3170f977].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[q3170f977].item[Answer].linkId = "BodyQuestions.q3170f977.Answer"
* item[BodyQuestions].item[q3170f977].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[q3170f977].item[Answer].item 0..0
* item[BodyQuestions].item[q3170f977].item[Answer].answer 0..1
* item[BodyQuestions].item[q3170f977].item[Answer].answer.value[x] only Coding
* item[BodyQuestions].item[q3170f977].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[q3170f977].item[Answer].answer.valueCoding from hn-vs-c0e4f2d08eec (required)
* item[BodyQuestions].item[q3170f977].item[MultipleAnswer].linkId = "BodyQuestions.q3170f977.MultipleAnswer"
* item[BodyQuestions].item[q3170f977].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[q3170f977].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[q3170f977].item[MultipleAnswer].answer 0..1
* item[BodyQuestions].item[q3170f977].item[MultipleAnswer].answer.value[x] only string
* item[BodyQuestions].item[q3170f977].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[q3170f977].item[MultipleAnswer].answer.valueString ^maxLength = 1000
* item[BodyQuestions].item[q3170f977].item[Other].linkId = "BodyQuestions.q3170f977.Other"
* item[BodyQuestions].item[q3170f977].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[q3170f977].item[Other].item 0..0
* item[BodyQuestions].item[q3170f977].item[Other].answer 0..1
* item[BodyQuestions].item[q3170f977].item[Other].answer.value[x] only string
* item[BodyQuestions].item[q3170f977].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[q3170f977].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[q1dddcc0f].linkId = "BodyQuestions.q1dddcc0f"
* item[BodyQuestions].item[q1dddcc0f] ^short = "排尿輔助"
* item[BodyQuestions].item[q1dddcc0f].answer 0..0
* item[BodyQuestions].item[q1dddcc0f].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[q1dddcc0f].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[q1dddcc0f].item ^slicing.rules = #closed
* item[BodyQuestions].item[q1dddcc0f].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[q1dddcc0f].item[Answer].linkId = "BodyQuestions.q1dddcc0f.Answer"
* item[BodyQuestions].item[q1dddcc0f].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[q1dddcc0f].item[Answer].item 0..0
* item[BodyQuestions].item[q1dddcc0f].item[Answer].answer 0..1
* item[BodyQuestions].item[q1dddcc0f].item[Answer].answer.value[x] only Coding
* item[BodyQuestions].item[q1dddcc0f].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[q1dddcc0f].item[Answer].answer.valueCoding from hn-vs-19264db8df7b (required)
* item[BodyQuestions].item[q1dddcc0f].item[MultipleAnswer].linkId = "BodyQuestions.q1dddcc0f.MultipleAnswer"
* item[BodyQuestions].item[q1dddcc0f].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[q1dddcc0f].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[q1dddcc0f].item[MultipleAnswer].answer 0..*
* item[BodyQuestions].item[q1dddcc0f].item[MultipleAnswer].answer.value[x] only Coding
* item[BodyQuestions].item[q1dddcc0f].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[q1dddcc0f].item[MultipleAnswer].answer.valueCoding from hn-vs-ec686161641f (required)
* item[BodyQuestions].item[q1dddcc0f].item[Other].linkId = "BodyQuestions.q1dddcc0f.Other"
* item[BodyQuestions].item[q1dddcc0f].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[q1dddcc0f].item[Other].item 0..0
* item[BodyQuestions].item[q1dddcc0f].item[Other].answer 0..1
* item[BodyQuestions].item[q1dddcc0f].item[Other].answer.value[x] only string
* item[BodyQuestions].item[q1dddcc0f].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[q1dddcc0f].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[q889a3f5d].linkId = "BodyQuestions.q889a3f5d"
* item[BodyQuestions].item[q889a3f5d] ^short = "溫度"
* item[BodyQuestions].item[q889a3f5d].answer 0..0
* item[BodyQuestions].item[q889a3f5d].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[q889a3f5d].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[q889a3f5d].item ^slicing.rules = #closed
* item[BodyQuestions].item[q889a3f5d].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[q889a3f5d].item[Answer].linkId = "BodyQuestions.q889a3f5d.Answer"
* item[BodyQuestions].item[q889a3f5d].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[q889a3f5d].item[Answer].item 0..0
* item[BodyQuestions].item[q889a3f5d].item[Answer].answer 0..1
* item[BodyQuestions].item[q889a3f5d].item[Answer].answer.value[x] only Coding
* item[BodyQuestions].item[q889a3f5d].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[q889a3f5d].item[Answer].answer.valueCoding from hn-vs-13d13792ca45 (required)
* item[BodyQuestions].item[q889a3f5d].item[MultipleAnswer].linkId = "BodyQuestions.q889a3f5d.MultipleAnswer"
* item[BodyQuestions].item[q889a3f5d].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[q889a3f5d].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[q889a3f5d].item[MultipleAnswer].answer 0..1
* item[BodyQuestions].item[q889a3f5d].item[MultipleAnswer].answer.value[x] only string
* item[BodyQuestions].item[q889a3f5d].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[q889a3f5d].item[MultipleAnswer].answer.valueString ^maxLength = 1000
* item[BodyQuestions].item[q889a3f5d].item[Other].linkId = "BodyQuestions.q889a3f5d.Other"
* item[BodyQuestions].item[q889a3f5d].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[q889a3f5d].item[Other].item 0..0
* item[BodyQuestions].item[q889a3f5d].item[Other].answer 0..1
* item[BodyQuestions].item[q889a3f5d].item[Other].answer.value[x] only string
* item[BodyQuestions].item[q889a3f5d].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[q889a3f5d].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[qfbbbe51d].linkId = "BodyQuestions.qfbbbe51d"
* item[BodyQuestions].item[qfbbbe51d] ^short = "濕度"
* item[BodyQuestions].item[qfbbbe51d].answer 0..0
* item[BodyQuestions].item[qfbbbe51d].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[qfbbbe51d].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[qfbbbe51d].item ^slicing.rules = #closed
* item[BodyQuestions].item[qfbbbe51d].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[qfbbbe51d].item[Answer].linkId = "BodyQuestions.qfbbbe51d.Answer"
* item[BodyQuestions].item[qfbbbe51d].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[qfbbbe51d].item[Answer].item 0..0
* item[BodyQuestions].item[qfbbbe51d].item[Answer].answer 0..1
* item[BodyQuestions].item[qfbbbe51d].item[Answer].answer.value[x] only Coding
* item[BodyQuestions].item[qfbbbe51d].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[qfbbbe51d].item[Answer].answer.valueCoding from hn-vs-acfe4f6c5f3a (required)
* item[BodyQuestions].item[qfbbbe51d].item[MultipleAnswer].linkId = "BodyQuestions.qfbbbe51d.MultipleAnswer"
* item[BodyQuestions].item[qfbbbe51d].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[qfbbbe51d].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[qfbbbe51d].item[MultipleAnswer].answer 0..1
* item[BodyQuestions].item[qfbbbe51d].item[MultipleAnswer].answer.value[x] only string
* item[BodyQuestions].item[qfbbbe51d].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[qfbbbe51d].item[MultipleAnswer].answer.valueString ^maxLength = 1000
* item[BodyQuestions].item[qfbbbe51d].item[Other].linkId = "BodyQuestions.qfbbbe51d.Other"
* item[BodyQuestions].item[qfbbbe51d].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[qfbbbe51d].item[Other].item 0..0
* item[BodyQuestions].item[qfbbbe51d].item[Other].answer 0..1
* item[BodyQuestions].item[qfbbbe51d].item[Other].answer.value[x] only string
* item[BodyQuestions].item[qfbbbe51d].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[qfbbbe51d].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[q2edc1f98].linkId = "BodyQuestions.q2edc1f98"
* item[BodyQuestions].item[q2edc1f98] ^short = "顏色"
* item[BodyQuestions].item[q2edc1f98].answer 0..0
* item[BodyQuestions].item[q2edc1f98].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[q2edc1f98].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[q2edc1f98].item ^slicing.rules = #closed
* item[BodyQuestions].item[q2edc1f98].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[q2edc1f98].item[Answer].linkId = "BodyQuestions.q2edc1f98.Answer"
* item[BodyQuestions].item[q2edc1f98].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[q2edc1f98].item[Answer].item 0..0
* item[BodyQuestions].item[q2edc1f98].item[Answer].answer 0..1
* item[BodyQuestions].item[q2edc1f98].item[Answer].answer.value[x] only Coding
* item[BodyQuestions].item[q2edc1f98].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[q2edc1f98].item[Answer].answer.valueCoding from hn-vs-ed3fafa578d2 (required)
* item[BodyQuestions].item[q2edc1f98].item[MultipleAnswer].linkId = "BodyQuestions.q2edc1f98.MultipleAnswer"
* item[BodyQuestions].item[q2edc1f98].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[q2edc1f98].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[q2edc1f98].item[MultipleAnswer].answer 0..1
* item[BodyQuestions].item[q2edc1f98].item[MultipleAnswer].answer.value[x] only string
* item[BodyQuestions].item[q2edc1f98].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[q2edc1f98].item[MultipleAnswer].answer.valueString ^maxLength = 1000
* item[BodyQuestions].item[q2edc1f98].item[Other].linkId = "BodyQuestions.q2edc1f98.Other"
* item[BodyQuestions].item[q2edc1f98].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[q2edc1f98].item[Other].item 0..0
* item[BodyQuestions].item[q2edc1f98].item[Other].answer 0..1
* item[BodyQuestions].item[q2edc1f98].item[Other].answer.value[x] only string
* item[BodyQuestions].item[q2edc1f98].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[q2edc1f98].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[q0aec089c].linkId = "BodyQuestions.q0aec089c"
* item[BodyQuestions].item[q0aec089c] ^short = "水腫級數"
* item[BodyQuestions].item[q0aec089c].answer 0..0
* item[BodyQuestions].item[q0aec089c].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[q0aec089c].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[q0aec089c].item ^slicing.rules = #closed
* item[BodyQuestions].item[q0aec089c].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[q0aec089c].item[Answer].linkId = "BodyQuestions.q0aec089c.Answer"
* item[BodyQuestions].item[q0aec089c].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[q0aec089c].item[Answer].item 0..0
* item[BodyQuestions].item[q0aec089c].item[Answer].answer 0..1
* item[BodyQuestions].item[q0aec089c].item[Answer].answer.value[x] only Coding
* item[BodyQuestions].item[q0aec089c].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[q0aec089c].item[Answer].answer.valueCoding from hn-vs-49fe20230ec3 (required)
* item[BodyQuestions].item[q0aec089c].item[MultipleAnswer].linkId = "BodyQuestions.q0aec089c.MultipleAnswer"
* item[BodyQuestions].item[q0aec089c].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[q0aec089c].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[q0aec089c].item[MultipleAnswer].answer 0..1
* item[BodyQuestions].item[q0aec089c].item[MultipleAnswer].answer.value[x] only string
* item[BodyQuestions].item[q0aec089c].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[q0aec089c].item[MultipleAnswer].answer.valueString ^maxLength = 1000
* item[BodyQuestions].item[q0aec089c].item[Other].linkId = "BodyQuestions.q0aec089c.Other"
* item[BodyQuestions].item[q0aec089c].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[q0aec089c].item[Other].item 0..0
* item[BodyQuestions].item[q0aec089c].item[Other].answer 0..1
* item[BodyQuestions].item[q0aec089c].item[Other].answer.value[x] only string
* item[BodyQuestions].item[q0aec089c].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[q0aec089c].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[q5b3534e0].linkId = "BodyQuestions.q5b3534e0"
* item[BodyQuestions].item[q5b3534e0] ^short = "水腫等級"
* item[BodyQuestions].item[q5b3534e0].answer 0..0
* item[BodyQuestions].item[q5b3534e0].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[q5b3534e0].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[q5b3534e0].item ^slicing.rules = #closed
* item[BodyQuestions].item[q5b3534e0].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[q5b3534e0].item[Answer].linkId = "BodyQuestions.q5b3534e0.Answer"
* item[BodyQuestions].item[q5b3534e0].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[q5b3534e0].item[Answer].item 0..0
* item[BodyQuestions].item[q5b3534e0].item[Answer].answer 0..1
* item[BodyQuestions].item[q5b3534e0].item[Answer].answer.value[x] only Coding
* item[BodyQuestions].item[q5b3534e0].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[q5b3534e0].item[Answer].answer.valueCoding from hn-vs-c93d67023284 (required)
* item[BodyQuestions].item[q5b3534e0].item[MultipleAnswer].linkId = "BodyQuestions.q5b3534e0.MultipleAnswer"
* item[BodyQuestions].item[q5b3534e0].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[q5b3534e0].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[q5b3534e0].item[MultipleAnswer].answer 0..1
* item[BodyQuestions].item[q5b3534e0].item[MultipleAnswer].answer.value[x] only string
* item[BodyQuestions].item[q5b3534e0].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[q5b3534e0].item[MultipleAnswer].answer.valueString ^maxLength = 1000
* item[BodyQuestions].item[q5b3534e0].item[Other].linkId = "BodyQuestions.q5b3534e0.Other"
* item[BodyQuestions].item[q5b3534e0].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[q5b3534e0].item[Other].item 0..0
* item[BodyQuestions].item[q5b3534e0].item[Other].answer 0..1
* item[BodyQuestions].item[q5b3534e0].item[Other].answer.value[x] only string
* item[BodyQuestions].item[q5b3534e0].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[q5b3534e0].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[q6e6e5811].linkId = "BodyQuestions.q6e6e5811"
* item[BodyQuestions].item[q6e6e5811] ^short = "完整"
* item[BodyQuestions].item[q6e6e5811].answer 0..0
* item[BodyQuestions].item[q6e6e5811].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[q6e6e5811].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[q6e6e5811].item ^slicing.rules = #closed
* item[BodyQuestions].item[q6e6e5811].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[q6e6e5811].item[Answer].linkId = "BodyQuestions.q6e6e5811.Answer"
* item[BodyQuestions].item[q6e6e5811].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[q6e6e5811].item[Answer].item 0..0
* item[BodyQuestions].item[q6e6e5811].item[Answer].answer 0..1
* item[BodyQuestions].item[q6e6e5811].item[Answer].answer.value[x] only Coding
* item[BodyQuestions].item[q6e6e5811].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[q6e6e5811].item[Answer].answer.valueCoding from hn-vs-58e4d598f859 (required)
* item[BodyQuestions].item[q6e6e5811].item[MultipleAnswer].linkId = "BodyQuestions.q6e6e5811.MultipleAnswer"
* item[BodyQuestions].item[q6e6e5811].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[q6e6e5811].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[q6e6e5811].item[MultipleAnswer].answer 0..1
* item[BodyQuestions].item[q6e6e5811].item[MultipleAnswer].answer.value[x] only string
* item[BodyQuestions].item[q6e6e5811].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[q6e6e5811].item[MultipleAnswer].answer.valueString ^maxLength = 1000
* item[BodyQuestions].item[q6e6e5811].item[Other].linkId = "BodyQuestions.q6e6e5811.Other"
* item[BodyQuestions].item[q6e6e5811].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[q6e6e5811].item[Other].item 0..0
* item[BodyQuestions].item[q6e6e5811].item[Other].answer 0..1
* item[BodyQuestions].item[q6e6e5811].item[Other].answer.value[x] only string
* item[BodyQuestions].item[q6e6e5811].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[q6e6e5811].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[q4c713f60].linkId = "BodyQuestions.q4c713f60"
* item[BodyQuestions].item[q4c713f60] ^short = "左上肢"
* item[BodyQuestions].item[q4c713f60].answer 0..0
* item[BodyQuestions].item[q4c713f60].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[q4c713f60].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[q4c713f60].item ^slicing.rules = #closed
* item[BodyQuestions].item[q4c713f60].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[q4c713f60].item[Answer].linkId = "BodyQuestions.q4c713f60.Answer"
* item[BodyQuestions].item[q4c713f60].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[q4c713f60].item[Answer].item 0..0
* item[BodyQuestions].item[q4c713f60].item[Answer].answer 0..1
* item[BodyQuestions].item[q4c713f60].item[Answer].answer.value[x] only Coding
* item[BodyQuestions].item[q4c713f60].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[q4c713f60].item[Answer].answer.valueCoding from hn-vs-00697b86a7bc (required)
* item[BodyQuestions].item[q4c713f60].item[MultipleAnswer].linkId = "BodyQuestions.q4c713f60.MultipleAnswer"
* item[BodyQuestions].item[q4c713f60].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[q4c713f60].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[q4c713f60].item[MultipleAnswer].answer 0..1
* item[BodyQuestions].item[q4c713f60].item[MultipleAnswer].answer.value[x] only string
* item[BodyQuestions].item[q4c713f60].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[q4c713f60].item[MultipleAnswer].answer.valueString ^maxLength = 1000
* item[BodyQuestions].item[q4c713f60].item[Other].linkId = "BodyQuestions.q4c713f60.Other"
* item[BodyQuestions].item[q4c713f60].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[q4c713f60].item[Other].item 0..0
* item[BodyQuestions].item[q4c713f60].item[Other].answer 0..1
* item[BodyQuestions].item[q4c713f60].item[Other].answer.value[x] only string
* item[BodyQuestions].item[q4c713f60].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[q4c713f60].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[q43c26e48].linkId = "BodyQuestions.q43c26e48"
* item[BodyQuestions].item[q43c26e48] ^short = "右上肢"
* item[BodyQuestions].item[q43c26e48].answer 0..0
* item[BodyQuestions].item[q43c26e48].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[q43c26e48].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[q43c26e48].item ^slicing.rules = #closed
* item[BodyQuestions].item[q43c26e48].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[q43c26e48].item[Answer].linkId = "BodyQuestions.q43c26e48.Answer"
* item[BodyQuestions].item[q43c26e48].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[q43c26e48].item[Answer].item 0..0
* item[BodyQuestions].item[q43c26e48].item[Answer].answer 0..1
* item[BodyQuestions].item[q43c26e48].item[Answer].answer.value[x] only Coding
* item[BodyQuestions].item[q43c26e48].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[q43c26e48].item[Answer].answer.valueCoding from hn-vs-00697b86a7bc (required)
* item[BodyQuestions].item[q43c26e48].item[MultipleAnswer].linkId = "BodyQuestions.q43c26e48.MultipleAnswer"
* item[BodyQuestions].item[q43c26e48].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[q43c26e48].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[q43c26e48].item[MultipleAnswer].answer 0..1
* item[BodyQuestions].item[q43c26e48].item[MultipleAnswer].answer.value[x] only string
* item[BodyQuestions].item[q43c26e48].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[q43c26e48].item[MultipleAnswer].answer.valueString ^maxLength = 1000
* item[BodyQuestions].item[q43c26e48].item[Other].linkId = "BodyQuestions.q43c26e48.Other"
* item[BodyQuestions].item[q43c26e48].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[q43c26e48].item[Other].item 0..0
* item[BodyQuestions].item[q43c26e48].item[Other].answer 0..1
* item[BodyQuestions].item[q43c26e48].item[Other].answer.value[x] only string
* item[BodyQuestions].item[q43c26e48].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[q43c26e48].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[q9926c640].linkId = "BodyQuestions.q9926c640"
* item[BodyQuestions].item[q9926c640] ^short = "左下肢"
* item[BodyQuestions].item[q9926c640].answer 0..0
* item[BodyQuestions].item[q9926c640].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[q9926c640].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[q9926c640].item ^slicing.rules = #closed
* item[BodyQuestions].item[q9926c640].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[q9926c640].item[Answer].linkId = "BodyQuestions.q9926c640.Answer"
* item[BodyQuestions].item[q9926c640].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[q9926c640].item[Answer].item 0..0
* item[BodyQuestions].item[q9926c640].item[Answer].answer 0..1
* item[BodyQuestions].item[q9926c640].item[Answer].answer.value[x] only Coding
* item[BodyQuestions].item[q9926c640].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[q9926c640].item[Answer].answer.valueCoding from hn-vs-00697b86a7bc (required)
* item[BodyQuestions].item[q9926c640].item[MultipleAnswer].linkId = "BodyQuestions.q9926c640.MultipleAnswer"
* item[BodyQuestions].item[q9926c640].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[q9926c640].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[q9926c640].item[MultipleAnswer].answer 0..1
* item[BodyQuestions].item[q9926c640].item[MultipleAnswer].answer.value[x] only string
* item[BodyQuestions].item[q9926c640].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[q9926c640].item[MultipleAnswer].answer.valueString ^maxLength = 1000
* item[BodyQuestions].item[q9926c640].item[Other].linkId = "BodyQuestions.q9926c640.Other"
* item[BodyQuestions].item[q9926c640].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[q9926c640].item[Other].item 0..0
* item[BodyQuestions].item[q9926c640].item[Other].answer 0..1
* item[BodyQuestions].item[q9926c640].item[Other].answer.value[x] only string
* item[BodyQuestions].item[q9926c640].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[q9926c640].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[q3f44d138].linkId = "BodyQuestions.q3f44d138"
* item[BodyQuestions].item[q3f44d138] ^short = "右下肢"
* item[BodyQuestions].item[q3f44d138].answer 0..0
* item[BodyQuestions].item[q3f44d138].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[q3f44d138].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[q3f44d138].item ^slicing.rules = #closed
* item[BodyQuestions].item[q3f44d138].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[q3f44d138].item[Answer].linkId = "BodyQuestions.q3f44d138.Answer"
* item[BodyQuestions].item[q3f44d138].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[q3f44d138].item[Answer].item 0..0
* item[BodyQuestions].item[q3f44d138].item[Answer].answer 0..1
* item[BodyQuestions].item[q3f44d138].item[Answer].answer.value[x] only Coding
* item[BodyQuestions].item[q3f44d138].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[q3f44d138].item[Answer].answer.valueCoding from hn-vs-00697b86a7bc (required)
* item[BodyQuestions].item[q3f44d138].item[MultipleAnswer].linkId = "BodyQuestions.q3f44d138.MultipleAnswer"
* item[BodyQuestions].item[q3f44d138].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[q3f44d138].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[q3f44d138].item[MultipleAnswer].answer 0..1
* item[BodyQuestions].item[q3f44d138].item[MultipleAnswer].answer.value[x] only string
* item[BodyQuestions].item[q3f44d138].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[q3f44d138].item[MultipleAnswer].answer.valueString ^maxLength = 1000
* item[BodyQuestions].item[q3f44d138].item[Other].linkId = "BodyQuestions.q3f44d138.Other"
* item[BodyQuestions].item[q3f44d138].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[q3f44d138].item[Other].item 0..0
* item[BodyQuestions].item[q3f44d138].item[Other].answer 0..1
* item[BodyQuestions].item[q3f44d138].item[Other].answer.value[x] only string
* item[BodyQuestions].item[q3f44d138].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[q3f44d138].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[qcd675f81].linkId = "BodyQuestions.qcd675f81"
* item[BodyQuestions].item[qcd675f81] ^short = "行動能力問題"
* item[BodyQuestions].item[qcd675f81].answer 0..0
* item[BodyQuestions].item[qcd675f81].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[qcd675f81].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[qcd675f81].item ^slicing.rules = #closed
* item[BodyQuestions].item[qcd675f81].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[qcd675f81].item[Answer].linkId = "BodyQuestions.qcd675f81.Answer"
* item[BodyQuestions].item[qcd675f81].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[qcd675f81].item[Answer].item 0..0
* item[BodyQuestions].item[qcd675f81].item[Answer].answer 0..1
* item[BodyQuestions].item[qcd675f81].item[Answer].answer.value[x] only Coding
* item[BodyQuestions].item[qcd675f81].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[qcd675f81].item[Answer].answer.valueCoding from hn-vs-1ffa1d5d3bef (required)
* item[BodyQuestions].item[qcd675f81].item[MultipleAnswer].linkId = "BodyQuestions.qcd675f81.MultipleAnswer"
* item[BodyQuestions].item[qcd675f81].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[qcd675f81].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[qcd675f81].item[MultipleAnswer].answer 0..1
* item[BodyQuestions].item[qcd675f81].item[MultipleAnswer].answer.value[x] only string
* item[BodyQuestions].item[qcd675f81].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[qcd675f81].item[MultipleAnswer].answer.valueString ^maxLength = 1000
* item[BodyQuestions].item[qcd675f81].item[Other].linkId = "BodyQuestions.qcd675f81.Other"
* item[BodyQuestions].item[qcd675f81].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[qcd675f81].item[Other].item 0..0
* item[BodyQuestions].item[qcd675f81].item[Other].answer 0..1
* item[BodyQuestions].item[qcd675f81].item[Other].answer.value[x] only string
* item[BodyQuestions].item[qcd675f81].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[qcd675f81].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[q3adf788d].linkId = "BodyQuestions.q3adf788d"
* item[BodyQuestions].item[q3adf788d] ^short = "肌力-輔具"
* item[BodyQuestions].item[q3adf788d].answer 0..0
* item[BodyQuestions].item[q3adf788d].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[q3adf788d].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[q3adf788d].item ^slicing.rules = #closed
* item[BodyQuestions].item[q3adf788d].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[q3adf788d].item[Answer].linkId = "BodyQuestions.q3adf788d.Answer"
* item[BodyQuestions].item[q3adf788d].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[q3adf788d].item[Answer].item 0..0
* item[BodyQuestions].item[q3adf788d].item[Answer].answer 0..1
* item[BodyQuestions].item[q3adf788d].item[Answer].answer.value[x] only Coding
* item[BodyQuestions].item[q3adf788d].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[q3adf788d].item[Answer].answer.valueCoding from hn-vs-49fe20230ec3 (required)
* item[BodyQuestions].item[q3adf788d].item[MultipleAnswer].linkId = "BodyQuestions.q3adf788d.MultipleAnswer"
* item[BodyQuestions].item[q3adf788d].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[q3adf788d].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[q3adf788d].item[MultipleAnswer].answer 0..*
* item[BodyQuestions].item[q3adf788d].item[MultipleAnswer].answer.value[x] only Coding
* item[BodyQuestions].item[q3adf788d].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[q3adf788d].item[MultipleAnswer].answer.valueCoding from hn-vs-1a72d15a5965 (required)
* item[BodyQuestions].item[q3adf788d].item[Other].linkId = "BodyQuestions.q3adf788d.Other"
* item[BodyQuestions].item[q3adf788d].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[q3adf788d].item[Other].item 0..0
* item[BodyQuestions].item[q3adf788d].item[Other].answer 0..1
* item[BodyQuestions].item[q3adf788d].item[Other].answer.value[x] only string
* item[BodyQuestions].item[q3adf788d].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[q3adf788d].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[q4ce17519].linkId = "BodyQuestions.q4ce17519"
* item[BodyQuestions].item[q4ce17519] ^short = "跌倒"
* item[BodyQuestions].item[q4ce17519].answer 0..0
* item[BodyQuestions].item[q4ce17519].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[q4ce17519].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[q4ce17519].item ^slicing.rules = #closed
* item[BodyQuestions].item[q4ce17519].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[q4ce17519].item[Answer].linkId = "BodyQuestions.q4ce17519.Answer"
* item[BodyQuestions].item[q4ce17519].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[q4ce17519].item[Answer].item 0..0
* item[BodyQuestions].item[q4ce17519].item[Answer].answer 0..1
* item[BodyQuestions].item[q4ce17519].item[Answer].answer.value[x] only Coding
* item[BodyQuestions].item[q4ce17519].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[q4ce17519].item[Answer].answer.valueCoding from hn-vs-19264db8df7b (required)
* item[BodyQuestions].item[q4ce17519].item[MultipleAnswer].linkId = "BodyQuestions.q4ce17519.MultipleAnswer"
* item[BodyQuestions].item[q4ce17519].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[q4ce17519].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[q4ce17519].item[MultipleAnswer].answer 0..*
* item[BodyQuestions].item[q4ce17519].item[MultipleAnswer].answer.value[x] only Coding
* item[BodyQuestions].item[q4ce17519].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[q4ce17519].item[MultipleAnswer].answer.valueCoding from hn-vs-3bbfa4b4f8db (required)
* item[BodyQuestions].item[q4ce17519].item[Other].linkId = "BodyQuestions.q4ce17519.Other"
* item[BodyQuestions].item[q4ce17519].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[q4ce17519].item[Other].item 0..0
* item[BodyQuestions].item[q4ce17519].item[Other].answer 0..1
* item[BodyQuestions].item[q4ce17519].item[Other].answer.value[x] only string
* item[BodyQuestions].item[q4ce17519].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[q4ce17519].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[qcc99d785].linkId = "BodyQuestions.qcc99d785"
* item[BodyQuestions].item[qcc99d785] ^short = "跌倒次數"
* item[BodyQuestions].item[qcc99d785].answer 0..0
* item[BodyQuestions].item[qcc99d785].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[qcc99d785].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[qcc99d785].item ^slicing.rules = #closed
* item[BodyQuestions].item[qcc99d785].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[qcc99d785].item[Answer].linkId = "BodyQuestions.qcc99d785.Answer"
* item[BodyQuestions].item[qcc99d785].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[qcc99d785].item[Answer].item 0..0
* item[BodyQuestions].item[qcc99d785].item[Answer].answer 0..1
* item[BodyQuestions].item[qcc99d785].item[Answer].answer.value[x] only string
* item[BodyQuestions].item[qcc99d785].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[qcc99d785].item[Answer].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[qcc99d785].item[MultipleAnswer].linkId = "BodyQuestions.qcc99d785.MultipleAnswer"
* item[BodyQuestions].item[qcc99d785].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[qcc99d785].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[qcc99d785].item[MultipleAnswer].answer 0..1
* item[BodyQuestions].item[qcc99d785].item[MultipleAnswer].answer.value[x] only string
* item[BodyQuestions].item[qcc99d785].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[qcc99d785].item[MultipleAnswer].answer.valueString ^maxLength = 1000
* item[BodyQuestions].item[qcc99d785].item[Other].linkId = "BodyQuestions.qcc99d785.Other"
* item[BodyQuestions].item[qcc99d785].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[qcc99d785].item[Other].item 0..0
* item[BodyQuestions].item[qcc99d785].item[Other].answer 0..1
* item[BodyQuestions].item[qcc99d785].item[Other].answer.value[x] only string
* item[BodyQuestions].item[qcc99d785].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[qcc99d785].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[q1ea67d8d].linkId = "BodyQuestions.q1ea67d8d"
* item[BodyQuestions].item[q1ea67d8d] ^short = "行為"
* item[BodyQuestions].item[q1ea67d8d].answer 0..0
* item[BodyQuestions].item[q1ea67d8d].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[q1ea67d8d].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[q1ea67d8d].item ^slicing.rules = #closed
* item[BodyQuestions].item[q1ea67d8d].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[q1ea67d8d].item[Answer].linkId = "BodyQuestions.q1ea67d8d.Answer"
* item[BodyQuestions].item[q1ea67d8d].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[q1ea67d8d].item[Answer].item 0..0
* item[BodyQuestions].item[q1ea67d8d].item[Answer].answer 0..1
* item[BodyQuestions].item[q1ea67d8d].item[Answer].answer.value[x] only Coding
* item[BodyQuestions].item[q1ea67d8d].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[q1ea67d8d].item[Answer].answer.valueCoding from hn-vs-365bfce838bb (required)
* item[BodyQuestions].item[q1ea67d8d].item[MultipleAnswer].linkId = "BodyQuestions.q1ea67d8d.MultipleAnswer"
* item[BodyQuestions].item[q1ea67d8d].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[q1ea67d8d].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[q1ea67d8d].item[MultipleAnswer].answer 0..*
* item[BodyQuestions].item[q1ea67d8d].item[MultipleAnswer].answer.value[x] only Coding
* item[BodyQuestions].item[q1ea67d8d].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[q1ea67d8d].item[MultipleAnswer].answer.valueCoding from hn-vs-46c8866533a0 (required)
* item[BodyQuestions].item[q1ea67d8d].item[Other].linkId = "BodyQuestions.q1ea67d8d.Other"
* item[BodyQuestions].item[q1ea67d8d].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[q1ea67d8d].item[Other].item 0..0
* item[BodyQuestions].item[q1ea67d8d].item[Other].answer 0..1
* item[BodyQuestions].item[q1ea67d8d].item[Other].answer.value[x] only string
* item[BodyQuestions].item[q1ea67d8d].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[q1ea67d8d].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[qca5f735b].linkId = "BodyQuestions.qca5f735b"
* item[BodyQuestions].item[qca5f735b] ^short = "睡眠"
* item[BodyQuestions].item[qca5f735b].answer 0..0
* item[BodyQuestions].item[qca5f735b].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[qca5f735b].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[qca5f735b].item ^slicing.rules = #closed
* item[BodyQuestions].item[qca5f735b].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[qca5f735b].item[Answer].linkId = "BodyQuestions.qca5f735b.Answer"
* item[BodyQuestions].item[qca5f735b].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[qca5f735b].item[Answer].item 0..0
* item[BodyQuestions].item[qca5f735b].item[Answer].answer 0..1
* item[BodyQuestions].item[qca5f735b].item[Answer].answer.value[x] only Coding
* item[BodyQuestions].item[qca5f735b].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[qca5f735b].item[Answer].answer.valueCoding from hn-vs-ef4daeacd99a (required)
* item[BodyQuestions].item[qca5f735b].item[MultipleAnswer].linkId = "BodyQuestions.qca5f735b.MultipleAnswer"
* item[BodyQuestions].item[qca5f735b].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[qca5f735b].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[qca5f735b].item[MultipleAnswer].answer 0..*
* item[BodyQuestions].item[qca5f735b].item[MultipleAnswer].answer.value[x] only Coding
* item[BodyQuestions].item[qca5f735b].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[qca5f735b].item[MultipleAnswer].answer.valueCoding from hn-vs-c34dc3f43d82 (required)
* item[BodyQuestions].item[qca5f735b].item[Other].linkId = "BodyQuestions.qca5f735b.Other"
* item[BodyQuestions].item[qca5f735b].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[qca5f735b].item[Other].item 0..0
* item[BodyQuestions].item[qca5f735b].item[Other].answer 0..1
* item[BodyQuestions].item[qca5f735b].item[Other].answer.value[x] only string
* item[BodyQuestions].item[qca5f735b].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[qca5f735b].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[qd8db9643].linkId = "BodyQuestions.qd8db9643"
* item[BodyQuestions].item[qd8db9643] ^short = "服用藥物"
* item[BodyQuestions].item[qd8db9643].answer 0..0
* item[BodyQuestions].item[qd8db9643].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[qd8db9643].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[qd8db9643].item ^slicing.rules = #closed
* item[BodyQuestions].item[qd8db9643].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[qd8db9643].item[Answer].linkId = "BodyQuestions.qd8db9643.Answer"
* item[BodyQuestions].item[qd8db9643].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[qd8db9643].item[Answer].item 0..0
* item[BodyQuestions].item[qd8db9643].item[Answer].answer 0..1
* item[BodyQuestions].item[qd8db9643].item[Answer].answer.value[x] only Coding
* item[BodyQuestions].item[qd8db9643].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[qd8db9643].item[Answer].answer.valueCoding from hn-vs-49fe20230ec3 (required)
* item[BodyQuestions].item[qd8db9643].item[MultipleAnswer].linkId = "BodyQuestions.qd8db9643.MultipleAnswer"
* item[BodyQuestions].item[qd8db9643].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[qd8db9643].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[qd8db9643].item[MultipleAnswer].answer 0..1
* item[BodyQuestions].item[qd8db9643].item[MultipleAnswer].answer.value[x] only string
* item[BodyQuestions].item[qd8db9643].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[qd8db9643].item[MultipleAnswer].answer.valueString ^maxLength = 1000
* item[BodyQuestions].item[qd8db9643].item[Other].linkId = "BodyQuestions.qd8db9643.Other"
* item[BodyQuestions].item[qd8db9643].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[qd8db9643].item[Other].item 0..0
* item[BodyQuestions].item[qd8db9643].item[Other].answer 0..1
* item[BodyQuestions].item[qd8db9643].item[Other].answer.value[x] only string
* item[BodyQuestions].item[qd8db9643].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[qd8db9643].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[q65b57fd8].linkId = "BodyQuestions.q65b57fd8"
* item[BodyQuestions].item[q65b57fd8] ^short = "藥物類別"
* item[BodyQuestions].item[q65b57fd8].answer 0..0
* item[BodyQuestions].item[q65b57fd8].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[q65b57fd8].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[q65b57fd8].item ^slicing.rules = #closed
* item[BodyQuestions].item[q65b57fd8].item contains
    Answer 0..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[q65b57fd8].item[Answer].linkId = "BodyQuestions.q65b57fd8.Answer"
* item[BodyQuestions].item[q65b57fd8].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[q65b57fd8].item[Answer].item 0..0
* item[BodyQuestions].item[q65b57fd8].item[Answer].answer 0..1
* item[BodyQuestions].item[q65b57fd8].item[Answer].answer.value[x] only string
* item[BodyQuestions].item[q65b57fd8].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[q65b57fd8].item[Answer].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[q65b57fd8].item[MultipleAnswer].linkId = "BodyQuestions.q65b57fd8.MultipleAnswer"
* item[BodyQuestions].item[q65b57fd8].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[q65b57fd8].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[q65b57fd8].item[MultipleAnswer].answer 0..*
* item[BodyQuestions].item[q65b57fd8].item[MultipleAnswer].answer.value[x] only Coding
* item[BodyQuestions].item[q65b57fd8].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[q65b57fd8].item[MultipleAnswer].answer.valueCoding from hn-vs-6d733f47d6f4 (required)
* item[BodyQuestions].item[q65b57fd8].item[Other].linkId = "BodyQuestions.q65b57fd8.Other"
* item[BodyQuestions].item[q65b57fd8].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[q65b57fd8].item[Other].item 0..0
* item[BodyQuestions].item[q65b57fd8].item[Other].answer 0..1
* item[BodyQuestions].item[q65b57fd8].item[Other].answer.value[x] only string
* item[BodyQuestions].item[q65b57fd8].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[q65b57fd8].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[q03fdb3f1].linkId = "BodyQuestions.q03fdb3f1"
* item[BodyQuestions].item[q03fdb3f1] ^short = "服用頻率"
* item[BodyQuestions].item[q03fdb3f1].answer 0..0
* item[BodyQuestions].item[q03fdb3f1].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[q03fdb3f1].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[q03fdb3f1].item ^slicing.rules = #closed
* item[BodyQuestions].item[q03fdb3f1].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[q03fdb3f1].item[Answer].linkId = "BodyQuestions.q03fdb3f1.Answer"
* item[BodyQuestions].item[q03fdb3f1].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[q03fdb3f1].item[Answer].item 0..0
* item[BodyQuestions].item[q03fdb3f1].item[Answer].answer 0..1
* item[BodyQuestions].item[q03fdb3f1].item[Answer].answer.value[x] only Coding
* item[BodyQuestions].item[q03fdb3f1].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[q03fdb3f1].item[Answer].answer.valueCoding from hn-vs-cf479df80e62 (required)
* item[BodyQuestions].item[q03fdb3f1].item[MultipleAnswer].linkId = "BodyQuestions.q03fdb3f1.MultipleAnswer"
* item[BodyQuestions].item[q03fdb3f1].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[q03fdb3f1].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[q03fdb3f1].item[MultipleAnswer].answer 0..1
* item[BodyQuestions].item[q03fdb3f1].item[MultipleAnswer].answer.value[x] only string
* item[BodyQuestions].item[q03fdb3f1].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[q03fdb3f1].item[MultipleAnswer].answer.valueString ^maxLength = 1000
* item[BodyQuestions].item[q03fdb3f1].item[Other].linkId = "BodyQuestions.q03fdb3f1.Other"
* item[BodyQuestions].item[q03fdb3f1].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[q03fdb3f1].item[Other].item 0..0
* item[BodyQuestions].item[q03fdb3f1].item[Other].answer 0..1
* item[BodyQuestions].item[q03fdb3f1].item[Other].answer.value[x] only string
* item[BodyQuestions].item[q03fdb3f1].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[q03fdb3f1].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[qd30f4212].linkId = "BodyQuestions.qd30f4212"
* item[BodyQuestions].item[qd30f4212] ^short = "輔助器"
* item[BodyQuestions].item[qd30f4212].answer 0..0
* item[BodyQuestions].item[qd30f4212].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[qd30f4212].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[qd30f4212].item ^slicing.rules = #closed
* item[BodyQuestions].item[qd30f4212].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[qd30f4212].item[Answer].linkId = "BodyQuestions.qd30f4212.Answer"
* item[BodyQuestions].item[qd30f4212].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[qd30f4212].item[Answer].item 0..0
* item[BodyQuestions].item[qd30f4212].item[Answer].answer 0..1
* item[BodyQuestions].item[qd30f4212].item[Answer].answer.value[x] only Coding
* item[BodyQuestions].item[qd30f4212].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[qd30f4212].item[Answer].answer.valueCoding from hn-vs-49fe20230ec3 (required)
* item[BodyQuestions].item[qd30f4212].item[MultipleAnswer].linkId = "BodyQuestions.qd30f4212.MultipleAnswer"
* item[BodyQuestions].item[qd30f4212].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[qd30f4212].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[qd30f4212].item[MultipleAnswer].answer 0..1
* item[BodyQuestions].item[qd30f4212].item[MultipleAnswer].answer.value[x] only string
* item[BodyQuestions].item[qd30f4212].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[qd30f4212].item[MultipleAnswer].answer.valueString ^maxLength = 1000
* item[BodyQuestions].item[qd30f4212].item[Other].linkId = "BodyQuestions.qd30f4212.Other"
* item[BodyQuestions].item[qd30f4212].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[qd30f4212].item[Other].item 0..0
* item[BodyQuestions].item[qd30f4212].item[Other].answer 0..1
* item[BodyQuestions].item[qd30f4212].item[Other].answer.value[x] only string
* item[BodyQuestions].item[qd30f4212].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[qd30f4212].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[q1355f181].linkId = "BodyQuestions.q1355f181"
* item[BodyQuestions].item[q1355f181] ^short = "有輔助器"
* item[BodyQuestions].item[q1355f181].answer 0..0
* item[BodyQuestions].item[q1355f181].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[q1355f181].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[q1355f181].item ^slicing.rules = #closed
* item[BodyQuestions].item[q1355f181].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[q1355f181].item[Answer].linkId = "BodyQuestions.q1355f181.Answer"
* item[BodyQuestions].item[q1355f181].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[q1355f181].item[Answer].item 0..0
* item[BodyQuestions].item[q1355f181].item[Answer].answer 0..1
* item[BodyQuestions].item[q1355f181].item[Answer].answer.value[x] only Coding
* item[BodyQuestions].item[q1355f181].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[q1355f181].item[Answer].answer.valueCoding from hn-vs-8aa8b9aed3b2 (required)
* item[BodyQuestions].item[q1355f181].item[MultipleAnswer].linkId = "BodyQuestions.q1355f181.MultipleAnswer"
* item[BodyQuestions].item[q1355f181].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[q1355f181].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[q1355f181].item[MultipleAnswer].answer 0..*
* item[BodyQuestions].item[q1355f181].item[MultipleAnswer].answer.value[x] only Coding
* item[BodyQuestions].item[q1355f181].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[q1355f181].item[MultipleAnswer].answer.valueCoding from hn-vs-1c644096303f (required)
* item[BodyQuestions].item[q1355f181].item[Other].linkId = "BodyQuestions.q1355f181.Other"
* item[BodyQuestions].item[q1355f181].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[q1355f181].item[Other].item 0..0
* item[BodyQuestions].item[q1355f181].item[Other].answer 0..1
* item[BodyQuestions].item[q1355f181].item[Other].answer.value[x] only string
* item[BodyQuestions].item[q1355f181].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[q1355f181].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[q1c902f78].linkId = "BodyQuestions.q1c902f78"
* item[BodyQuestions].item[q1c902f78] ^short = "鼻導管"
* item[BodyQuestions].item[q1c902f78].answer 0..0
* item[BodyQuestions].item[q1c902f78].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[q1c902f78].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[q1c902f78].item ^slicing.rules = #closed
* item[BodyQuestions].item[q1c902f78].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[q1c902f78].item[Answer].linkId = "BodyQuestions.q1c902f78.Answer"
* item[BodyQuestions].item[q1c902f78].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[q1c902f78].item[Answer].item 0..0
* item[BodyQuestions].item[q1c902f78].item[Answer].answer 0..1
* item[BodyQuestions].item[q1c902f78].item[Answer].answer.value[x] only string
* item[BodyQuestions].item[q1c902f78].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[q1c902f78].item[Answer].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[q1c902f78].item[MultipleAnswer].linkId = "BodyQuestions.q1c902f78.MultipleAnswer"
* item[BodyQuestions].item[q1c902f78].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[q1c902f78].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[q1c902f78].item[MultipleAnswer].answer 0..1
* item[BodyQuestions].item[q1c902f78].item[MultipleAnswer].answer.value[x] only string
* item[BodyQuestions].item[q1c902f78].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[q1c902f78].item[MultipleAnswer].answer.valueString ^maxLength = 1000
* item[BodyQuestions].item[q1c902f78].item[Other].linkId = "BodyQuestions.q1c902f78.Other"
* item[BodyQuestions].item[q1c902f78].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[q1c902f78].item[Other].item 0..0
* item[BodyQuestions].item[q1c902f78].item[Other].answer 0..1
* item[BodyQuestions].item[q1c902f78].item[Other].answer.value[x] only string
* item[BodyQuestions].item[q1c902f78].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[q1c902f78].item[Other].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[q6772dc09].linkId = "BodyQuestions.q6772dc09"
* item[BodyQuestions].item[q6772dc09] ^short = "氧氣面罩"
* item[BodyQuestions].item[q6772dc09].answer 0..0
* item[BodyQuestions].item[q6772dc09].item ^slicing.discriminator.type = #value
* item[BodyQuestions].item[q6772dc09].item ^slicing.discriminator.path = "linkId"
* item[BodyQuestions].item[q6772dc09].item ^slicing.rules = #closed
* item[BodyQuestions].item[q6772dc09].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[BodyQuestions].item[q6772dc09].item[Answer].linkId = "BodyQuestions.q6772dc09.Answer"
* item[BodyQuestions].item[q6772dc09].item[Answer] ^short = "評估答案"
* item[BodyQuestions].item[q6772dc09].item[Answer].item 0..0
* item[BodyQuestions].item[q6772dc09].item[Answer].answer 0..1
* item[BodyQuestions].item[q6772dc09].item[Answer].answer.value[x] only string
* item[BodyQuestions].item[q6772dc09].item[Answer].answer.value[x] 1..1
* item[BodyQuestions].item[q6772dc09].item[Answer].answer.valueString ^maxLength = 100
* item[BodyQuestions].item[q6772dc09].item[MultipleAnswer].linkId = "BodyQuestions.q6772dc09.MultipleAnswer"
* item[BodyQuestions].item[q6772dc09].item[MultipleAnswer] ^short = "評估多選答案"
* item[BodyQuestions].item[q6772dc09].item[MultipleAnswer].item 0..0
* item[BodyQuestions].item[q6772dc09].item[MultipleAnswer].answer 0..1
* item[BodyQuestions].item[q6772dc09].item[MultipleAnswer].answer.value[x] only string
* item[BodyQuestions].item[q6772dc09].item[MultipleAnswer].answer.value[x] 1..1
* item[BodyQuestions].item[q6772dc09].item[MultipleAnswer].answer.valueString ^maxLength = 1000
* item[BodyQuestions].item[q6772dc09].item[Other].linkId = "BodyQuestions.q6772dc09.Other"
* item[BodyQuestions].item[q6772dc09].item[Other] ^short = "補充說明"
* item[BodyQuestions].item[q6772dc09].item[Other].item 0..0
* item[BodyQuestions].item[q6772dc09].item[Other].answer 0..1
* item[BodyQuestions].item[q6772dc09].item[Other].answer.value[x] only string
* item[BodyQuestions].item[q6772dc09].item[Other].answer.value[x] 1..1
* item[BodyQuestions].item[q6772dc09].item[Other].answer.valueString ^maxLength = 100
* item[IsTemporary].linkId = "IsTemporary"
* item[IsTemporary] ^short = "是否暫存"
* item[IsTemporary].item 0..0
* item[IsTemporary].answer 0..1
* item[IsTemporary].answer.value[x] only Coding
* item[IsTemporary].answer.value[x] 1..1
* item[IsTemporary].answer.valueCoding from hn-vs-58e4d598f859 (required)
* obeys hn-bodyevaluations-1
* obeys hn-bodyevaluations-2

Invariant: hn-bodyevaluations-1
Description: "暫存填是時，表單狀態必須為 in-progress。"
Severity: #error
Expression: "item.where(linkId='IsTemporary').answer.value.ofType(Coding).where(code='cb5141d3d19e9').exists() implies status='in-progress'"

Invariant: hn-bodyevaluations-2
Description: "暫存填否時，表單狀態必須為 completed 或 amended。"
Severity: #error
Expression: "item.where(linkId='IsTemporary').answer.value.ofType(Coding).where(code='c0c70665b6eb6').exists() implies (status='completed' or status='amended')"
