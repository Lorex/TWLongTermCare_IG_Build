Profile: HNMedicalHistoriesResponse
Parent: LTCQuestionnaireResponse
Id: HNMedicalHistoriesResponse
Title: "居家護理－疾病史評估表單"
Description: "記錄疾病史評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。"
* ^status = #draft
* ^version = "5.0.16"
* questionnaire 1..1 MS
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/hn-medicalhistories"
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
    AnsOther_1 1..1 MS and
    AnsOther_2 0..1 MS and
    MedicalHistoryQuestions 1..1 MS and
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
* item[AnsOther_1].linkId = "AnsOther_1"
* item[AnsOther_1] ^short = "主要診斷"
* item[AnsOther_1].item 0..0
* item[AnsOther_1].answer 0..1
* item[AnsOther_1].answer.value[x] only string
* item[AnsOther_1].answer.value[x] 1..1
* item[AnsOther_1].answer 1..1
* item[AnsOther_1].answer.valueString ^maxLength = 500
* item[AnsOther_2].linkId = "AnsOther_2"
* item[AnsOther_2] ^short = "次要診斷"
* item[AnsOther_2].item 0..0
* item[AnsOther_2].answer 0..1
* item[AnsOther_2].answer.value[x] only string
* item[AnsOther_2].answer.value[x] 1..1
* item[AnsOther_2].answer.valueString ^maxLength = 500
* item[MedicalHistoryQuestions].linkId = "MedicalHistoryQuestions"
* item[MedicalHistoryQuestions] ^short = "評估項目"
* item[MedicalHistoryQuestions].answer 0..0
* item[MedicalHistoryQuestions].item ^slicing.discriminator.type = #value
* item[MedicalHistoryQuestions].item ^slicing.discriminator.path = "linkId"
* item[MedicalHistoryQuestions].item ^slicing.rules = #closed
* item[MedicalHistoryQuestions].item contains
    q32e5fad7 1..1 MS and
    qbeda0dd8 1..1 MS and
    q628b2adc 1..1 MS and
    q7e61f4f9 1..1 MS and
    q958e3479 1..1 MS and
    q5713fd48 1..1 MS and
    q486b7939 1..1 MS and
    qb7ad0283 1..1 MS and
    qc62d7017 1..1 MS and
    qa92ba1d3 1..1 MS and
    q48138ed7 1..1 MS and
    q24f8809f 1..1 MS and
    qe34cc85c 1..1 MS and
    q2c808271 1..1 MS
* item[MedicalHistoryQuestions].item[q32e5fad7].linkId = "MedicalHistoryQuestions.q32e5fad7"
* item[MedicalHistoryQuestions].item[q32e5fad7] ^short = "心臟問題(只包含心臟)"
* item[MedicalHistoryQuestions].item[q32e5fad7].answer 0..0
* item[MedicalHistoryQuestions].item[q32e5fad7].item ^slicing.discriminator.type = #value
* item[MedicalHistoryQuestions].item[q32e5fad7].item ^slicing.discriminator.path = "linkId"
* item[MedicalHistoryQuestions].item[q32e5fad7].item ^slicing.rules = #closed
* item[MedicalHistoryQuestions].item[q32e5fad7].item contains
    Answer 1..1 MS and
    Statement 0..1 MS
* item[MedicalHistoryQuestions].item[q32e5fad7].item[Answer].linkId = "MedicalHistoryQuestions.q32e5fad7.Answer"
* item[MedicalHistoryQuestions].item[q32e5fad7].item[Answer] ^short = "評估答案"
* item[MedicalHistoryQuestions].item[q32e5fad7].item[Answer].item 0..0
* item[MedicalHistoryQuestions].item[q32e5fad7].item[Answer].answer 0..1
* item[MedicalHistoryQuestions].item[q32e5fad7].item[Answer].answer.value[x] only Coding
* item[MedicalHistoryQuestions].item[q32e5fad7].item[Answer].answer.value[x] 1..1
* item[MedicalHistoryQuestions].item[q32e5fad7].item[Answer].answer.valueCoding from hn-vs-d782d810cfdd (required)
* item[MedicalHistoryQuestions].item[q32e5fad7].item[Statement].linkId = "MedicalHistoryQuestions.q32e5fad7.Statement"
* item[MedicalHistoryQuestions].item[q32e5fad7].item[Statement] ^short = "備註"
* item[MedicalHistoryQuestions].item[q32e5fad7].item[Statement].item 0..0
* item[MedicalHistoryQuestions].item[q32e5fad7].item[Statement].answer 0..1
* item[MedicalHistoryQuestions].item[q32e5fad7].item[Statement].answer.value[x] only string
* item[MedicalHistoryQuestions].item[q32e5fad7].item[Statement].answer.value[x] 1..1
* item[MedicalHistoryQuestions].item[q32e5fad7].item[Statement].answer.valueString ^maxLength = 100
* item[MedicalHistoryQuestions].item[qbeda0dd8].linkId = "MedicalHistoryQuestions.qbeda0dd8"
* item[MedicalHistoryQuestions].item[qbeda0dd8] ^short = "周邊血管系統問題(包括高血壓)"
* item[MedicalHistoryQuestions].item[qbeda0dd8].answer 0..0
* item[MedicalHistoryQuestions].item[qbeda0dd8].item ^slicing.discriminator.type = #value
* item[MedicalHistoryQuestions].item[qbeda0dd8].item ^slicing.discriminator.path = "linkId"
* item[MedicalHistoryQuestions].item[qbeda0dd8].item ^slicing.rules = #closed
* item[MedicalHistoryQuestions].item[qbeda0dd8].item contains
    Answer 1..1 MS and
    Statement 0..1 MS
* item[MedicalHistoryQuestions].item[qbeda0dd8].item[Answer].linkId = "MedicalHistoryQuestions.qbeda0dd8.Answer"
* item[MedicalHistoryQuestions].item[qbeda0dd8].item[Answer] ^short = "評估答案"
* item[MedicalHistoryQuestions].item[qbeda0dd8].item[Answer].item 0..0
* item[MedicalHistoryQuestions].item[qbeda0dd8].item[Answer].answer 0..1
* item[MedicalHistoryQuestions].item[qbeda0dd8].item[Answer].answer.value[x] only Coding
* item[MedicalHistoryQuestions].item[qbeda0dd8].item[Answer].answer.value[x] 1..1
* item[MedicalHistoryQuestions].item[qbeda0dd8].item[Answer].answer.valueCoding from hn-vs-d782d810cfdd (required)
* item[MedicalHistoryQuestions].item[qbeda0dd8].item[Statement].linkId = "MedicalHistoryQuestions.qbeda0dd8.Statement"
* item[MedicalHistoryQuestions].item[qbeda0dd8].item[Statement] ^short = "備註"
* item[MedicalHistoryQuestions].item[qbeda0dd8].item[Statement].item 0..0
* item[MedicalHistoryQuestions].item[qbeda0dd8].item[Statement].answer 0..1
* item[MedicalHistoryQuestions].item[qbeda0dd8].item[Statement].answer.value[x] only string
* item[MedicalHistoryQuestions].item[qbeda0dd8].item[Statement].answer.value[x] 1..1
* item[MedicalHistoryQuestions].item[qbeda0dd8].item[Statement].answer.valueString ^maxLength = 100
* item[MedicalHistoryQuestions].item[q628b2adc].linkId = "MedicalHistoryQuestions.q628b2adc"
* item[MedicalHistoryQuestions].item[q628b2adc] ^short = "造血系統問題(貧血、血球、淋巴、骨髓、脾臟等)"
* item[MedicalHistoryQuestions].item[q628b2adc].answer 0..0
* item[MedicalHistoryQuestions].item[q628b2adc].item ^slicing.discriminator.type = #value
* item[MedicalHistoryQuestions].item[q628b2adc].item ^slicing.discriminator.path = "linkId"
* item[MedicalHistoryQuestions].item[q628b2adc].item ^slicing.rules = #closed
* item[MedicalHistoryQuestions].item[q628b2adc].item contains
    Answer 1..1 MS and
    Statement 0..1 MS
* item[MedicalHistoryQuestions].item[q628b2adc].item[Answer].linkId = "MedicalHistoryQuestions.q628b2adc.Answer"
* item[MedicalHistoryQuestions].item[q628b2adc].item[Answer] ^short = "評估答案"
* item[MedicalHistoryQuestions].item[q628b2adc].item[Answer].item 0..0
* item[MedicalHistoryQuestions].item[q628b2adc].item[Answer].answer 0..1
* item[MedicalHistoryQuestions].item[q628b2adc].item[Answer].answer.value[x] only Coding
* item[MedicalHistoryQuestions].item[q628b2adc].item[Answer].answer.value[x] 1..1
* item[MedicalHistoryQuestions].item[q628b2adc].item[Answer].answer.valueCoding from hn-vs-d782d810cfdd (required)
* item[MedicalHistoryQuestions].item[q628b2adc].item[Statement].linkId = "MedicalHistoryQuestions.q628b2adc.Statement"
* item[MedicalHistoryQuestions].item[q628b2adc].item[Statement] ^short = "備註"
* item[MedicalHistoryQuestions].item[q628b2adc].item[Statement].item 0..0
* item[MedicalHistoryQuestions].item[q628b2adc].item[Statement].answer 0..1
* item[MedicalHistoryQuestions].item[q628b2adc].item[Statement].answer.value[x] only string
* item[MedicalHistoryQuestions].item[q628b2adc].item[Statement].answer.value[x] 1..1
* item[MedicalHistoryQuestions].item[q628b2adc].item[Statement].answer.valueString ^maxLength = 100
* item[MedicalHistoryQuestions].item[q7e61f4f9].linkId = "MedicalHistoryQuestions.q7e61f4f9"
* item[MedicalHistoryQuestions].item[q7e61f4f9] ^short = "呼吸系統問題(肺部、支氣管、氣管及抽菸狀況)"
* item[MedicalHistoryQuestions].item[q7e61f4f9].answer 0..0
* item[MedicalHistoryQuestions].item[q7e61f4f9].item ^slicing.discriminator.type = #value
* item[MedicalHistoryQuestions].item[q7e61f4f9].item ^slicing.discriminator.path = "linkId"
* item[MedicalHistoryQuestions].item[q7e61f4f9].item ^slicing.rules = #closed
* item[MedicalHistoryQuestions].item[q7e61f4f9].item contains
    Answer 1..1 MS and
    Statement 0..1 MS
* item[MedicalHistoryQuestions].item[q7e61f4f9].item[Answer].linkId = "MedicalHistoryQuestions.q7e61f4f9.Answer"
* item[MedicalHistoryQuestions].item[q7e61f4f9].item[Answer] ^short = "評估答案"
* item[MedicalHistoryQuestions].item[q7e61f4f9].item[Answer].item 0..0
* item[MedicalHistoryQuestions].item[q7e61f4f9].item[Answer].answer 0..1
* item[MedicalHistoryQuestions].item[q7e61f4f9].item[Answer].answer.value[x] only Coding
* item[MedicalHistoryQuestions].item[q7e61f4f9].item[Answer].answer.value[x] 1..1
* item[MedicalHistoryQuestions].item[q7e61f4f9].item[Answer].answer.valueCoding from hn-vs-d782d810cfdd (required)
* item[MedicalHistoryQuestions].item[q7e61f4f9].item[Statement].linkId = "MedicalHistoryQuestions.q7e61f4f9.Statement"
* item[MedicalHistoryQuestions].item[q7e61f4f9].item[Statement] ^short = "備註"
* item[MedicalHistoryQuestions].item[q7e61f4f9].item[Statement].item 0..0
* item[MedicalHistoryQuestions].item[q7e61f4f9].item[Statement].answer 0..1
* item[MedicalHistoryQuestions].item[q7e61f4f9].item[Statement].answer.value[x] only string
* item[MedicalHistoryQuestions].item[q7e61f4f9].item[Statement].answer.value[x] 1..1
* item[MedicalHistoryQuestions].item[q7e61f4f9].item[Statement].answer.valueString ^maxLength = 100
* item[MedicalHistoryQuestions].item[q958e3479].linkId = "MedicalHistoryQuestions.q958e3479"
* item[MedicalHistoryQuestions].item[q958e3479] ^short = "眼耳鼻喉問題"
* item[MedicalHistoryQuestions].item[q958e3479].answer 0..0
* item[MedicalHistoryQuestions].item[q958e3479].item ^slicing.discriminator.type = #value
* item[MedicalHistoryQuestions].item[q958e3479].item ^slicing.discriminator.path = "linkId"
* item[MedicalHistoryQuestions].item[q958e3479].item ^slicing.rules = #closed
* item[MedicalHistoryQuestions].item[q958e3479].item contains
    Answer 1..1 MS and
    Statement 0..1 MS
* item[MedicalHistoryQuestions].item[q958e3479].item[Answer].linkId = "MedicalHistoryQuestions.q958e3479.Answer"
* item[MedicalHistoryQuestions].item[q958e3479].item[Answer] ^short = "評估答案"
* item[MedicalHistoryQuestions].item[q958e3479].item[Answer].item 0..0
* item[MedicalHistoryQuestions].item[q958e3479].item[Answer].answer 0..1
* item[MedicalHistoryQuestions].item[q958e3479].item[Answer].answer.value[x] only Coding
* item[MedicalHistoryQuestions].item[q958e3479].item[Answer].answer.value[x] 1..1
* item[MedicalHistoryQuestions].item[q958e3479].item[Answer].answer.valueCoding from hn-vs-d782d810cfdd (required)
* item[MedicalHistoryQuestions].item[q958e3479].item[Statement].linkId = "MedicalHistoryQuestions.q958e3479.Statement"
* item[MedicalHistoryQuestions].item[q958e3479].item[Statement] ^short = "備註"
* item[MedicalHistoryQuestions].item[q958e3479].item[Statement].item 0..0
* item[MedicalHistoryQuestions].item[q958e3479].item[Statement].answer 0..1
* item[MedicalHistoryQuestions].item[q958e3479].item[Statement].answer.value[x] only string
* item[MedicalHistoryQuestions].item[q958e3479].item[Statement].answer.value[x] 1..1
* item[MedicalHistoryQuestions].item[q958e3479].item[Statement].answer.valueString ^maxLength = 100
* item[MedicalHistoryQuestions].item[q5713fd48].linkId = "MedicalHistoryQuestions.q5713fd48"
* item[MedicalHistoryQuestions].item[q5713fd48] ^short = "上消化道問題(食道、胃、十二指腸)"
* item[MedicalHistoryQuestions].item[q5713fd48].answer 0..0
* item[MedicalHistoryQuestions].item[q5713fd48].item ^slicing.discriminator.type = #value
* item[MedicalHistoryQuestions].item[q5713fd48].item ^slicing.discriminator.path = "linkId"
* item[MedicalHistoryQuestions].item[q5713fd48].item ^slicing.rules = #closed
* item[MedicalHistoryQuestions].item[q5713fd48].item contains
    Answer 1..1 MS and
    Statement 0..1 MS
* item[MedicalHistoryQuestions].item[q5713fd48].item[Answer].linkId = "MedicalHistoryQuestions.q5713fd48.Answer"
* item[MedicalHistoryQuestions].item[q5713fd48].item[Answer] ^short = "評估答案"
* item[MedicalHistoryQuestions].item[q5713fd48].item[Answer].item 0..0
* item[MedicalHistoryQuestions].item[q5713fd48].item[Answer].answer 0..1
* item[MedicalHistoryQuestions].item[q5713fd48].item[Answer].answer.value[x] only Coding
* item[MedicalHistoryQuestions].item[q5713fd48].item[Answer].answer.value[x] 1..1
* item[MedicalHistoryQuestions].item[q5713fd48].item[Answer].answer.valueCoding from hn-vs-d782d810cfdd (required)
* item[MedicalHistoryQuestions].item[q5713fd48].item[Statement].linkId = "MedicalHistoryQuestions.q5713fd48.Statement"
* item[MedicalHistoryQuestions].item[q5713fd48].item[Statement] ^short = "備註"
* item[MedicalHistoryQuestions].item[q5713fd48].item[Statement].item 0..0
* item[MedicalHistoryQuestions].item[q5713fd48].item[Statement].answer 0..1
* item[MedicalHistoryQuestions].item[q5713fd48].item[Statement].answer.value[x] only string
* item[MedicalHistoryQuestions].item[q5713fd48].item[Statement].answer.value[x] 1..1
* item[MedicalHistoryQuestions].item[q5713fd48].item[Statement].answer.valueString ^maxLength = 100
* item[MedicalHistoryQuestions].item[q486b7939].linkId = "MedicalHistoryQuestions.q486b7939"
* item[MedicalHistoryQuestions].item[q486b7939] ^short = "下消化道問題(小腸、大腸、直腸)"
* item[MedicalHistoryQuestions].item[q486b7939].answer 0..0
* item[MedicalHistoryQuestions].item[q486b7939].item ^slicing.discriminator.type = #value
* item[MedicalHistoryQuestions].item[q486b7939].item ^slicing.discriminator.path = "linkId"
* item[MedicalHistoryQuestions].item[q486b7939].item ^slicing.rules = #closed
* item[MedicalHistoryQuestions].item[q486b7939].item contains
    Answer 1..1 MS and
    Statement 0..1 MS
* item[MedicalHistoryQuestions].item[q486b7939].item[Answer].linkId = "MedicalHistoryQuestions.q486b7939.Answer"
* item[MedicalHistoryQuestions].item[q486b7939].item[Answer] ^short = "評估答案"
* item[MedicalHistoryQuestions].item[q486b7939].item[Answer].item 0..0
* item[MedicalHistoryQuestions].item[q486b7939].item[Answer].answer 0..1
* item[MedicalHistoryQuestions].item[q486b7939].item[Answer].answer.value[x] only Coding
* item[MedicalHistoryQuestions].item[q486b7939].item[Answer].answer.value[x] 1..1
* item[MedicalHistoryQuestions].item[q486b7939].item[Answer].answer.valueCoding from hn-vs-d782d810cfdd (required)
* item[MedicalHistoryQuestions].item[q486b7939].item[Statement].linkId = "MedicalHistoryQuestions.q486b7939.Statement"
* item[MedicalHistoryQuestions].item[q486b7939].item[Statement] ^short = "備註"
* item[MedicalHistoryQuestions].item[q486b7939].item[Statement].item 0..0
* item[MedicalHistoryQuestions].item[q486b7939].item[Statement].answer 0..1
* item[MedicalHistoryQuestions].item[q486b7939].item[Statement].answer.value[x] only string
* item[MedicalHistoryQuestions].item[q486b7939].item[Statement].answer.value[x] 1..1
* item[MedicalHistoryQuestions].item[q486b7939].item[Statement].answer.valueString ^maxLength = 100
* item[MedicalHistoryQuestions].item[qb7ad0283].linkId = "MedicalHistoryQuestions.qb7ad0283"
* item[MedicalHistoryQuestions].item[qb7ad0283] ^short = "肝膽胰臟問題"
* item[MedicalHistoryQuestions].item[qb7ad0283].answer 0..0
* item[MedicalHistoryQuestions].item[qb7ad0283].item ^slicing.discriminator.type = #value
* item[MedicalHistoryQuestions].item[qb7ad0283].item ^slicing.discriminator.path = "linkId"
* item[MedicalHistoryQuestions].item[qb7ad0283].item ^slicing.rules = #closed
* item[MedicalHistoryQuestions].item[qb7ad0283].item contains
    Answer 1..1 MS and
    Statement 0..1 MS
* item[MedicalHistoryQuestions].item[qb7ad0283].item[Answer].linkId = "MedicalHistoryQuestions.qb7ad0283.Answer"
* item[MedicalHistoryQuestions].item[qb7ad0283].item[Answer] ^short = "評估答案"
* item[MedicalHistoryQuestions].item[qb7ad0283].item[Answer].item 0..0
* item[MedicalHistoryQuestions].item[qb7ad0283].item[Answer].answer 0..1
* item[MedicalHistoryQuestions].item[qb7ad0283].item[Answer].answer.value[x] only Coding
* item[MedicalHistoryQuestions].item[qb7ad0283].item[Answer].answer.value[x] 1..1
* item[MedicalHistoryQuestions].item[qb7ad0283].item[Answer].answer.valueCoding from hn-vs-d782d810cfdd (required)
* item[MedicalHistoryQuestions].item[qb7ad0283].item[Statement].linkId = "MedicalHistoryQuestions.qb7ad0283.Statement"
* item[MedicalHistoryQuestions].item[qb7ad0283].item[Statement] ^short = "備註"
* item[MedicalHistoryQuestions].item[qb7ad0283].item[Statement].item 0..0
* item[MedicalHistoryQuestions].item[qb7ad0283].item[Statement].answer 0..1
* item[MedicalHistoryQuestions].item[qb7ad0283].item[Statement].answer.value[x] only string
* item[MedicalHistoryQuestions].item[qb7ad0283].item[Statement].answer.value[x] 1..1
* item[MedicalHistoryQuestions].item[qb7ad0283].item[Statement].answer.valueString ^maxLength = 100
* item[MedicalHistoryQuestions].item[qc62d7017].linkId = "MedicalHistoryQuestions.qc62d7017"
* item[MedicalHistoryQuestions].item[qc62d7017] ^short = "腎臟問題"
* item[MedicalHistoryQuestions].item[qc62d7017].answer 0..0
* item[MedicalHistoryQuestions].item[qc62d7017].item ^slicing.discriminator.type = #value
* item[MedicalHistoryQuestions].item[qc62d7017].item ^slicing.discriminator.path = "linkId"
* item[MedicalHistoryQuestions].item[qc62d7017].item ^slicing.rules = #closed
* item[MedicalHistoryQuestions].item[qc62d7017].item contains
    Answer 1..1 MS and
    Statement 0..1 MS
* item[MedicalHistoryQuestions].item[qc62d7017].item[Answer].linkId = "MedicalHistoryQuestions.qc62d7017.Answer"
* item[MedicalHistoryQuestions].item[qc62d7017].item[Answer] ^short = "評估答案"
* item[MedicalHistoryQuestions].item[qc62d7017].item[Answer].item 0..0
* item[MedicalHistoryQuestions].item[qc62d7017].item[Answer].answer 0..1
* item[MedicalHistoryQuestions].item[qc62d7017].item[Answer].answer.value[x] only Coding
* item[MedicalHistoryQuestions].item[qc62d7017].item[Answer].answer.value[x] 1..1
* item[MedicalHistoryQuestions].item[qc62d7017].item[Answer].answer.valueCoding from hn-vs-d782d810cfdd (required)
* item[MedicalHistoryQuestions].item[qc62d7017].item[Statement].linkId = "MedicalHistoryQuestions.qc62d7017.Statement"
* item[MedicalHistoryQuestions].item[qc62d7017].item[Statement] ^short = "備註"
* item[MedicalHistoryQuestions].item[qc62d7017].item[Statement].item 0..0
* item[MedicalHistoryQuestions].item[qc62d7017].item[Statement].answer 0..1
* item[MedicalHistoryQuestions].item[qc62d7017].item[Statement].answer.value[x] only string
* item[MedicalHistoryQuestions].item[qc62d7017].item[Statement].answer.value[x] 1..1
* item[MedicalHistoryQuestions].item[qc62d7017].item[Statement].answer.valueString ^maxLength = 100
* item[MedicalHistoryQuestions].item[qa92ba1d3].linkId = "MedicalHistoryQuestions.qa92ba1d3"
* item[MedicalHistoryQuestions].item[qa92ba1d3] ^short = "其他泌尿生殖系統問題(輸尿管、尿道、膀胱、攝護腺、其他生殖系統問題)"
* item[MedicalHistoryQuestions].item[qa92ba1d3].answer 0..0
* item[MedicalHistoryQuestions].item[qa92ba1d3].item ^slicing.discriminator.type = #value
* item[MedicalHistoryQuestions].item[qa92ba1d3].item ^slicing.discriminator.path = "linkId"
* item[MedicalHistoryQuestions].item[qa92ba1d3].item ^slicing.rules = #closed
* item[MedicalHistoryQuestions].item[qa92ba1d3].item contains
    Answer 1..1 MS and
    Statement 0..1 MS
* item[MedicalHistoryQuestions].item[qa92ba1d3].item[Answer].linkId = "MedicalHistoryQuestions.qa92ba1d3.Answer"
* item[MedicalHistoryQuestions].item[qa92ba1d3].item[Answer] ^short = "評估答案"
* item[MedicalHistoryQuestions].item[qa92ba1d3].item[Answer].item 0..0
* item[MedicalHistoryQuestions].item[qa92ba1d3].item[Answer].answer 0..1
* item[MedicalHistoryQuestions].item[qa92ba1d3].item[Answer].answer.value[x] only Coding
* item[MedicalHistoryQuestions].item[qa92ba1d3].item[Answer].answer.value[x] 1..1
* item[MedicalHistoryQuestions].item[qa92ba1d3].item[Answer].answer.valueCoding from hn-vs-d782d810cfdd (required)
* item[MedicalHistoryQuestions].item[qa92ba1d3].item[Statement].linkId = "MedicalHistoryQuestions.qa92ba1d3.Statement"
* item[MedicalHistoryQuestions].item[qa92ba1d3].item[Statement] ^short = "備註"
* item[MedicalHistoryQuestions].item[qa92ba1d3].item[Statement].item 0..0
* item[MedicalHistoryQuestions].item[qa92ba1d3].item[Statement].answer 0..1
* item[MedicalHistoryQuestions].item[qa92ba1d3].item[Statement].answer.value[x] only string
* item[MedicalHistoryQuestions].item[qa92ba1d3].item[Statement].answer.value[x] 1..1
* item[MedicalHistoryQuestions].item[qa92ba1d3].item[Statement].answer.valueString ^maxLength = 100
* item[MedicalHistoryQuestions].item[q48138ed7].linkId = "MedicalHistoryQuestions.q48138ed7"
* item[MedicalHistoryQuestions].item[q48138ed7] ^short = "肌肉骨骼皮膚問題"
* item[MedicalHistoryQuestions].item[q48138ed7].answer 0..0
* item[MedicalHistoryQuestions].item[q48138ed7].item ^slicing.discriminator.type = #value
* item[MedicalHistoryQuestions].item[q48138ed7].item ^slicing.discriminator.path = "linkId"
* item[MedicalHistoryQuestions].item[q48138ed7].item ^slicing.rules = #closed
* item[MedicalHistoryQuestions].item[q48138ed7].item contains
    Answer 1..1 MS and
    Statement 0..1 MS
* item[MedicalHistoryQuestions].item[q48138ed7].item[Answer].linkId = "MedicalHistoryQuestions.q48138ed7.Answer"
* item[MedicalHistoryQuestions].item[q48138ed7].item[Answer] ^short = "評估答案"
* item[MedicalHistoryQuestions].item[q48138ed7].item[Answer].item 0..0
* item[MedicalHistoryQuestions].item[q48138ed7].item[Answer].answer 0..1
* item[MedicalHistoryQuestions].item[q48138ed7].item[Answer].answer.value[x] only Coding
* item[MedicalHistoryQuestions].item[q48138ed7].item[Answer].answer.value[x] 1..1
* item[MedicalHistoryQuestions].item[q48138ed7].item[Answer].answer.valueCoding from hn-vs-d782d810cfdd (required)
* item[MedicalHistoryQuestions].item[q48138ed7].item[Statement].linkId = "MedicalHistoryQuestions.q48138ed7.Statement"
* item[MedicalHistoryQuestions].item[q48138ed7].item[Statement] ^short = "備註"
* item[MedicalHistoryQuestions].item[q48138ed7].item[Statement].item 0..0
* item[MedicalHistoryQuestions].item[q48138ed7].item[Statement].answer 0..1
* item[MedicalHistoryQuestions].item[q48138ed7].item[Statement].answer.value[x] only string
* item[MedicalHistoryQuestions].item[q48138ed7].item[Statement].answer.value[x] 1..1
* item[MedicalHistoryQuestions].item[q48138ed7].item[Statement].answer.valueString ^maxLength = 100
* item[MedicalHistoryQuestions].item[q24f8809f].linkId = "MedicalHistoryQuestions.q24f8809f"
* item[MedicalHistoryQuestions].item[q24f8809f] ^short = "神經系統問題(腦部、脊髓、周邊神經等、不包含失智症)"
* item[MedicalHistoryQuestions].item[q24f8809f].answer 0..0
* item[MedicalHistoryQuestions].item[q24f8809f].item ^slicing.discriminator.type = #value
* item[MedicalHistoryQuestions].item[q24f8809f].item ^slicing.discriminator.path = "linkId"
* item[MedicalHistoryQuestions].item[q24f8809f].item ^slicing.rules = #closed
* item[MedicalHistoryQuestions].item[q24f8809f].item contains
    Answer 1..1 MS and
    Statement 0..1 MS
* item[MedicalHistoryQuestions].item[q24f8809f].item[Answer].linkId = "MedicalHistoryQuestions.q24f8809f.Answer"
* item[MedicalHistoryQuestions].item[q24f8809f].item[Answer] ^short = "評估答案"
* item[MedicalHistoryQuestions].item[q24f8809f].item[Answer].item 0..0
* item[MedicalHistoryQuestions].item[q24f8809f].item[Answer].answer 0..1
* item[MedicalHistoryQuestions].item[q24f8809f].item[Answer].answer.value[x] only Coding
* item[MedicalHistoryQuestions].item[q24f8809f].item[Answer].answer.value[x] 1..1
* item[MedicalHistoryQuestions].item[q24f8809f].item[Answer].answer.valueCoding from hn-vs-d782d810cfdd (required)
* item[MedicalHistoryQuestions].item[q24f8809f].item[Statement].linkId = "MedicalHistoryQuestions.q24f8809f.Statement"
* item[MedicalHistoryQuestions].item[q24f8809f].item[Statement] ^short = "備註"
* item[MedicalHistoryQuestions].item[q24f8809f].item[Statement].item 0..0
* item[MedicalHistoryQuestions].item[q24f8809f].item[Statement].answer 0..1
* item[MedicalHistoryQuestions].item[q24f8809f].item[Statement].answer.value[x] only string
* item[MedicalHistoryQuestions].item[q24f8809f].item[Statement].answer.value[x] 1..1
* item[MedicalHistoryQuestions].item[q24f8809f].item[Statement].answer.valueString ^maxLength = 100
* item[MedicalHistoryQuestions].item[qe34cc85c].linkId = "MedicalHistoryQuestions.qe34cc85c"
* item[MedicalHistoryQuestions].item[qe34cc85c] ^short = "內分泌、感染與代謝問題(包含糖尿病、甲狀腺、肥胖、乳房異常、感染性疾病與毒藥物問題)"
* item[MedicalHistoryQuestions].item[qe34cc85c].answer 0..0
* item[MedicalHistoryQuestions].item[qe34cc85c].item ^slicing.discriminator.type = #value
* item[MedicalHistoryQuestions].item[qe34cc85c].item ^slicing.discriminator.path = "linkId"
* item[MedicalHistoryQuestions].item[qe34cc85c].item ^slicing.rules = #closed
* item[MedicalHistoryQuestions].item[qe34cc85c].item contains
    Answer 1..1 MS and
    Statement 0..1 MS
* item[MedicalHistoryQuestions].item[qe34cc85c].item[Answer].linkId = "MedicalHistoryQuestions.qe34cc85c.Answer"
* item[MedicalHistoryQuestions].item[qe34cc85c].item[Answer] ^short = "評估答案"
* item[MedicalHistoryQuestions].item[qe34cc85c].item[Answer].item 0..0
* item[MedicalHistoryQuestions].item[qe34cc85c].item[Answer].answer 0..1
* item[MedicalHistoryQuestions].item[qe34cc85c].item[Answer].answer.value[x] only Coding
* item[MedicalHistoryQuestions].item[qe34cc85c].item[Answer].answer.value[x] 1..1
* item[MedicalHistoryQuestions].item[qe34cc85c].item[Answer].answer.valueCoding from hn-vs-d782d810cfdd (required)
* item[MedicalHistoryQuestions].item[qe34cc85c].item[Statement].linkId = "MedicalHistoryQuestions.qe34cc85c.Statement"
* item[MedicalHistoryQuestions].item[qe34cc85c].item[Statement] ^short = "備註"
* item[MedicalHistoryQuestions].item[qe34cc85c].item[Statement].item 0..0
* item[MedicalHistoryQuestions].item[qe34cc85c].item[Statement].answer 0..1
* item[MedicalHistoryQuestions].item[qe34cc85c].item[Statement].answer.value[x] only string
* item[MedicalHistoryQuestions].item[qe34cc85c].item[Statement].answer.value[x] 1..1
* item[MedicalHistoryQuestions].item[qe34cc85c].item[Statement].answer.valueString ^maxLength = 100
* item[MedicalHistoryQuestions].item[q2c808271].linkId = "MedicalHistoryQuestions.q2c808271"
* item[MedicalHistoryQuestions].item[q2c808271] ^short = "情緒與行為問題(包括憂鬱、焦慮、激躁、急性混亂、瞻妄及失智症等問題)"
* item[MedicalHistoryQuestions].item[q2c808271].answer 0..0
* item[MedicalHistoryQuestions].item[q2c808271].item ^slicing.discriminator.type = #value
* item[MedicalHistoryQuestions].item[q2c808271].item ^slicing.discriminator.path = "linkId"
* item[MedicalHistoryQuestions].item[q2c808271].item ^slicing.rules = #closed
* item[MedicalHistoryQuestions].item[q2c808271].item contains
    Answer 1..1 MS and
    Statement 0..1 MS
* item[MedicalHistoryQuestions].item[q2c808271].item[Answer].linkId = "MedicalHistoryQuestions.q2c808271.Answer"
* item[MedicalHistoryQuestions].item[q2c808271].item[Answer] ^short = "評估答案"
* item[MedicalHistoryQuestions].item[q2c808271].item[Answer].item 0..0
* item[MedicalHistoryQuestions].item[q2c808271].item[Answer].answer 0..1
* item[MedicalHistoryQuestions].item[q2c808271].item[Answer].answer.value[x] only Coding
* item[MedicalHistoryQuestions].item[q2c808271].item[Answer].answer.value[x] 1..1
* item[MedicalHistoryQuestions].item[q2c808271].item[Answer].answer.valueCoding from hn-vs-d782d810cfdd (required)
* item[MedicalHistoryQuestions].item[q2c808271].item[Statement].linkId = "MedicalHistoryQuestions.q2c808271.Statement"
* item[MedicalHistoryQuestions].item[q2c808271].item[Statement] ^short = "備註"
* item[MedicalHistoryQuestions].item[q2c808271].item[Statement].item 0..0
* item[MedicalHistoryQuestions].item[q2c808271].item[Statement].answer 0..1
* item[MedicalHistoryQuestions].item[q2c808271].item[Statement].answer.value[x] only string
* item[MedicalHistoryQuestions].item[q2c808271].item[Statement].answer.value[x] 1..1
* item[MedicalHistoryQuestions].item[q2c808271].item[Statement].answer.valueString ^maxLength = 100
* item[IsTemporary].linkId = "IsTemporary"
* item[IsTemporary] ^short = "是否暫存"
* item[IsTemporary].item 0..0
* item[IsTemporary].answer 0..1
* item[IsTemporary].answer.value[x] only Coding
* item[IsTemporary].answer.value[x] 1..1
* item[IsTemporary].answer.valueCoding from hn-vs-58e4d598f859 (required)
* obeys hn-medicalhistories-1
* obeys hn-medicalhistories-2

Invariant: hn-medicalhistories-1
Description: "暫存填是時，表單狀態必須為 in-progress。"
Severity: #error
Expression: "item.where(linkId='IsTemporary').answer.value.ofType(Coding).where(code='cb5141d3d19e9').exists() implies status='in-progress'"

Invariant: hn-medicalhistories-2
Description: "暫存填否時，表單狀態必須為 completed 或 amended。"
Severity: #error
Expression: "item.where(linkId='IsTemporary').answer.value.ofType(Coding).where(code='c0c70665b6eb6').exists() implies (status='completed' or status='amended')"
