Profile: HNIADLsResponse
Parent: LTCQuestionnaireResponse
Id: HNIADLsResponse
Title: "居家護理－工具性日常生活活動功能評估表單"
Description: "記錄工具性日常生活活動功能評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。"
* ^status = #draft
* ^version = "5.0.16"
* questionnaire 1..1 MS
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/hn-iadls"
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
    q588e1a8f 1..1 MS and
    q1652b964 1..1 MS and
    qd5905863 1..1 MS and
    qdb0b2a30 1..1 MS and
    q578f5fe3 1..1 MS and
    q7177787c 1..1 MS and
    qbd97434e 1..1 MS and
    q62f790cc 1..1 MS
* item[Questions].item[q588e1a8f].linkId = "Questions.q588e1a8f"
* item[Questions].item[q588e1a8f] ^short = "購物"
* item[Questions].item[q588e1a8f].answer 0..0
* item[Questions].item[q588e1a8f].item ^slicing.discriminator.type = #value
* item[Questions].item[q588e1a8f].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[q588e1a8f].item ^slicing.rules = #closed
* item[Questions].item[q588e1a8f].item contains
    Answer 1..1 MS
* item[Questions].item[q588e1a8f].item[Answer].linkId = "Questions.q588e1a8f.Answer"
* item[Questions].item[q588e1a8f].item[Answer] ^short = "評估答案"
* item[Questions].item[q588e1a8f].item[Answer].item 0..0
* item[Questions].item[q588e1a8f].item[Answer].answer 0..1
* item[Questions].item[q588e1a8f].item[Answer].answer.value[x] only Coding
* item[Questions].item[q588e1a8f].item[Answer].answer.value[x] 1..1
* item[Questions].item[q588e1a8f].item[Answer].answer.valueCoding from hn-vs-cbfa2194bae7 (required)
* item[Questions].item[q1652b964].linkId = "Questions.q1652b964"
* item[Questions].item[q1652b964] ^short = "家務"
* item[Questions].item[q1652b964].answer 0..0
* item[Questions].item[q1652b964].item ^slicing.discriminator.type = #value
* item[Questions].item[q1652b964].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[q1652b964].item ^slicing.rules = #closed
* item[Questions].item[q1652b964].item contains
    Answer 1..1 MS
* item[Questions].item[q1652b964].item[Answer].linkId = "Questions.q1652b964.Answer"
* item[Questions].item[q1652b964].item[Answer] ^short = "評估答案"
* item[Questions].item[q1652b964].item[Answer].item 0..0
* item[Questions].item[q1652b964].item[Answer].answer 0..1
* item[Questions].item[q1652b964].item[Answer].answer.value[x] only Coding
* item[Questions].item[q1652b964].item[Answer].answer.value[x] 1..1
* item[Questions].item[q1652b964].item[Answer].answer.valueCoding from hn-vs-b455f8b9ce05 (required)
* item[Questions].item[qd5905863].linkId = "Questions.qd5905863"
* item[Questions].item[qd5905863] ^short = "理財"
* item[Questions].item[qd5905863].answer 0..0
* item[Questions].item[qd5905863].item ^slicing.discriminator.type = #value
* item[Questions].item[qd5905863].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[qd5905863].item ^slicing.rules = #closed
* item[Questions].item[qd5905863].item contains
    Answer 1..1 MS
* item[Questions].item[qd5905863].item[Answer].linkId = "Questions.qd5905863.Answer"
* item[Questions].item[qd5905863].item[Answer] ^short = "評估答案"
* item[Questions].item[qd5905863].item[Answer].item 0..0
* item[Questions].item[qd5905863].item[Answer].answer 0..1
* item[Questions].item[qd5905863].item[Answer].answer.value[x] only Coding
* item[Questions].item[qd5905863].item[Answer].answer.value[x] 1..1
* item[Questions].item[qd5905863].item[Answer].answer.valueCoding from hn-vs-41cb9f76208c (required)
* item[Questions].item[qdb0b2a30].linkId = "Questions.qdb0b2a30"
* item[Questions].item[qdb0b2a30] ^short = "備食"
* item[Questions].item[qdb0b2a30].answer 0..0
* item[Questions].item[qdb0b2a30].item ^slicing.discriminator.type = #value
* item[Questions].item[qdb0b2a30].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[qdb0b2a30].item ^slicing.rules = #closed
* item[Questions].item[qdb0b2a30].item contains
    Answer 1..1 MS
* item[Questions].item[qdb0b2a30].item[Answer].linkId = "Questions.qdb0b2a30.Answer"
* item[Questions].item[qdb0b2a30].item[Answer] ^short = "評估答案"
* item[Questions].item[qdb0b2a30].item[Answer].item 0..0
* item[Questions].item[qdb0b2a30].item[Answer].answer 0..1
* item[Questions].item[qdb0b2a30].item[Answer].answer.value[x] only Coding
* item[Questions].item[qdb0b2a30].item[Answer].answer.value[x] 1..1
* item[Questions].item[qdb0b2a30].item[Answer].answer.valueCoding from hn-vs-15ba9c15ead1 (required)
* item[Questions].item[q578f5fe3].linkId = "Questions.q578f5fe3"
* item[Questions].item[q578f5fe3] ^short = "交通"
* item[Questions].item[q578f5fe3].answer 0..0
* item[Questions].item[q578f5fe3].item ^slicing.discriminator.type = #value
* item[Questions].item[q578f5fe3].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[q578f5fe3].item ^slicing.rules = #closed
* item[Questions].item[q578f5fe3].item contains
    Answer 1..1 MS
* item[Questions].item[q578f5fe3].item[Answer].linkId = "Questions.q578f5fe3.Answer"
* item[Questions].item[q578f5fe3].item[Answer] ^short = "評估答案"
* item[Questions].item[q578f5fe3].item[Answer].item 0..0
* item[Questions].item[q578f5fe3].item[Answer].answer 0..1
* item[Questions].item[q578f5fe3].item[Answer].answer.value[x] only Coding
* item[Questions].item[q578f5fe3].item[Answer].answer.value[x] 1..1
* item[Questions].item[q578f5fe3].item[Answer].answer.valueCoding from hn-vs-543807b1d856 (required)
* item[Questions].item[q7177787c].linkId = "Questions.q7177787c"
* item[Questions].item[q7177787c] ^short = "電話"
* item[Questions].item[q7177787c].answer 0..0
* item[Questions].item[q7177787c].item ^slicing.discriminator.type = #value
* item[Questions].item[q7177787c].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[q7177787c].item ^slicing.rules = #closed
* item[Questions].item[q7177787c].item contains
    Answer 1..1 MS
* item[Questions].item[q7177787c].item[Answer].linkId = "Questions.q7177787c.Answer"
* item[Questions].item[q7177787c].item[Answer] ^short = "評估答案"
* item[Questions].item[q7177787c].item[Answer].item 0..0
* item[Questions].item[q7177787c].item[Answer].answer 0..1
* item[Questions].item[q7177787c].item[Answer].answer.value[x] only Coding
* item[Questions].item[q7177787c].item[Answer].answer.value[x] 1..1
* item[Questions].item[q7177787c].item[Answer].answer.valueCoding from hn-vs-fa9ab3cef6b1 (required)
* item[Questions].item[qbd97434e].linkId = "Questions.qbd97434e"
* item[Questions].item[qbd97434e] ^short = "洗衣"
* item[Questions].item[qbd97434e].answer 0..0
* item[Questions].item[qbd97434e].item ^slicing.discriminator.type = #value
* item[Questions].item[qbd97434e].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[qbd97434e].item ^slicing.rules = #closed
* item[Questions].item[qbd97434e].item contains
    Answer 1..1 MS
* item[Questions].item[qbd97434e].item[Answer].linkId = "Questions.qbd97434e.Answer"
* item[Questions].item[qbd97434e].item[Answer] ^short = "評估答案"
* item[Questions].item[qbd97434e].item[Answer].item 0..0
* item[Questions].item[qbd97434e].item[Answer].answer 0..1
* item[Questions].item[qbd97434e].item[Answer].answer.value[x] only Coding
* item[Questions].item[qbd97434e].item[Answer].answer.value[x] 1..1
* item[Questions].item[qbd97434e].item[Answer].answer.valueCoding from hn-vs-3435e7a5a84d (required)
* item[Questions].item[q62f790cc].linkId = "Questions.q62f790cc"
* item[Questions].item[q62f790cc] ^short = "服藥"
* item[Questions].item[q62f790cc].answer 0..0
* item[Questions].item[q62f790cc].item ^slicing.discriminator.type = #value
* item[Questions].item[q62f790cc].item ^slicing.discriminator.path = "linkId"
* item[Questions].item[q62f790cc].item ^slicing.rules = #closed
* item[Questions].item[q62f790cc].item contains
    Answer 1..1 MS
* item[Questions].item[q62f790cc].item[Answer].linkId = "Questions.q62f790cc.Answer"
* item[Questions].item[q62f790cc].item[Answer] ^short = "評估答案"
* item[Questions].item[q62f790cc].item[Answer].item 0..0
* item[Questions].item[q62f790cc].item[Answer].answer 0..1
* item[Questions].item[q62f790cc].item[Answer].answer.value[x] only Coding
* item[Questions].item[q62f790cc].item[Answer].answer.value[x] 1..1
* item[Questions].item[q62f790cc].item[Answer].answer.valueCoding from hn-vs-1c0dbbd93870 (required)
* item[IsTemporary].linkId = "IsTemporary"
* item[IsTemporary] ^short = "是否暫存"
* item[IsTemporary].item 0..0
* item[IsTemporary].answer 0..1
* item[IsTemporary].answer.value[x] only Coding
* item[IsTemporary].answer.value[x] 1..1
* item[IsTemporary].answer.valueCoding from hn-vs-58e4d598f859 (required)
* obeys hn-iadls-1
* obeys hn-iadls-2

Invariant: hn-iadls-1
Description: "暫存填是時，表單狀態必須為 in-progress。"
Severity: #error
Expression: "item.where(linkId='IsTemporary').answer.value.ofType(Coding).where(code='cb5141d3d19e9').exists() implies status='in-progress'"

Invariant: hn-iadls-2
Description: "暫存填否時，表單狀態必須為 completed 或 amended。"
Severity: #error
Expression: "item.where(linkId='IsTemporary').answer.value.ofType(Coding).where(code='c0c70665b6eb6').exists() implies (status='completed' or status='amended')"
