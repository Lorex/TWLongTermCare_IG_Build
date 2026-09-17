Profile: HNCaseCloseResponse
Parent: LTCQuestionnaireResponse
Id: HNCaseCloseResponse
Title: "居家護理－個案結案表單"
Description: "記錄個案結案的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。"
* ^status = #draft
* ^version = "5.0.16"
* questionnaire 1..1 MS
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/hn-caseclose"
* status 1..1 MS
* authored 1..1 MS
* subject 1..1 MS
* extension contains ExtHNEpisode named episode 1..1 MS
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #closed
* item contains
    CaseID 1..1 MS and
    EndDate 1..1 MS and
    Date 1..1 MS and
    UserID 1..1 MS and
    Reason 1..1 MS
* item[CaseID].linkId = "CaseID"
* item[CaseID] ^short = "個案身分證字號"
* item[CaseID].item 0..0
* item[CaseID].answer 0..1
* item[CaseID].answer.value[x] only string
* item[CaseID].answer.value[x] 1..1
* item[CaseID].answer 1..1
* item[CaseID].answer.valueString ^maxLength = 10
* item[EndDate].linkId = "EndDate"
* item[EndDate] ^short = "收案日期"
* item[EndDate].item 0..0
* item[EndDate].answer 0..1
* item[EndDate].answer.value[x] only date
* item[EndDate].answer.value[x] 1..1
* item[EndDate].answer 1..1
* item[Date].linkId = "Date"
* item[Date] ^short = "結案日期"
* item[Date].item 0..0
* item[Date].answer 0..1
* item[Date].answer.value[x] only date
* item[Date].answer.value[x] 1..1
* item[Date].answer 1..1
* item[UserID].linkId = "UserID"
* item[UserID] ^short = "結案護理人員身分證字號"
* item[UserID].item 0..0
* item[UserID].answer 0..1
* item[UserID].answer.value[x] only string
* item[UserID].answer.value[x] 1..1
* item[UserID].answer 1..1
* item[UserID].answer.valueString ^maxLength = 10
* item[Reason].linkId = "Reason"
* item[Reason] ^short = "結案原因"
* item[Reason].answer 0..0
* item[Reason].item ^slicing.discriminator.type = #value
* item[Reason].item ^slicing.discriminator.path = "linkId"
* item[Reason].item ^slicing.rules = #closed
* item[Reason].item contains
    Value 1..1 MS and
    Other 0..1 MS
* item[Reason].item[Value].linkId = "Reason.Value"
* item[Reason].item[Value] ^short = "選項"
* item[Reason].item[Value].item 0..0
* item[Reason].item[Value].answer 0..1
* item[Reason].item[Value].answer.value[x] only Coding
* item[Reason].item[Value].answer.value[x] 1..1
* item[Reason].item[Value].answer 1..1
* item[Reason].item[Value].answer.valueCoding from hn-vs-75dc5876369b (required)
* item[Reason].item[Other].linkId = "Reason.Other"
* item[Reason].item[Other] ^short = "補充說明"
* item[Reason].item[Other].item 0..0
* item[Reason].item[Other].answer 0..1
* item[Reason].item[Other].answer.value[x] only string
* item[Reason].item[Other].answer.value[x] 1..1
* item[Reason].item[Other].answer.valueString ^maxLength = 100
* obeys hn-caseclose-1

Invariant: hn-caseclose-1
Description: "結案原因選擇其他時應填寫補充說明。"
Severity: #error
Expression: "item.where(linkId='Reason').all((item.where(linkId='Reason.Value').answer.value.ofType(Coding).where(code='cd2909f1647e7').exists()) implies item.where(linkId='Reason.Other').answer.value.exists())"
