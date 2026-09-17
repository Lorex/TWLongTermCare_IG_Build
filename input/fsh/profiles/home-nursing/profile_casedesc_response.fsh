Profile: HNCaseDescResponse
Parent: LTCQuestionnaireResponse
Id: HNCaseDescResponse
Title: "居家護理－共照紀錄表單"
Description: "記錄共照紀錄的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。"
* ^status = #draft
* ^version = "5.0.16"
* questionnaire 1..1 MS
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/hn-casedesc"
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
    Time 1..1 MS and
    Time2 1..1 MS and
    MedicalName 1..1 MS and
    Title 1..1 MS and
    Statement 1..1 MS
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
* item[Date] ^short = "照護日期"
* item[Date].item 0..0
* item[Date].answer 0..1
* item[Date].answer.value[x] only date
* item[Date].answer.value[x] 1..1
* item[Date].answer 1..1
* item[Time].linkId = "Time"
* item[Time] ^short = "開始時間"
* item[Time].item 0..0
* item[Time].answer 0..1
* item[Time].answer.value[x] only time
* item[Time].answer.value[x] 1..1
* item[Time].answer 1..1
* item[Time2].linkId = "Time2"
* item[Time2] ^short = "結束時間"
* item[Time2].item 0..0
* item[Time2].answer 0..1
* item[Time2].answer.value[x] only time
* item[Time2].answer.value[x] 1..1
* item[Time2].answer 1..1
* item[MedicalName].linkId = "MedicalName"
* item[MedicalName] ^short = "共照成員姓名"
* item[MedicalName].item 0..0
* item[MedicalName].answer 0..1
* item[MedicalName].answer.value[x] only string
* item[MedicalName].answer.value[x] 1..1
* item[MedicalName].answer 1..1
* item[MedicalName].answer.valueString ^maxLength = 50
* item[Title].linkId = "Title"
* item[Title] ^short = "共照成員職稱"
* item[Title].answer 0..0
* item[Title].item ^slicing.discriminator.type = #value
* item[Title].item ^slicing.discriminator.path = "linkId"
* item[Title].item ^slicing.rules = #closed
* item[Title].item contains
    Value 1..1 MS and
    Other 0..1 MS
* item[Title].item[Value].linkId = "Title.Value"
* item[Title].item[Value] ^short = "選項"
* item[Title].item[Value].item 0..0
* item[Title].item[Value].answer 0..1
* item[Title].item[Value].answer.value[x] only Coding
* item[Title].item[Value].answer.value[x] 1..1
* item[Title].item[Value].answer 1..1
* item[Title].item[Value].answer.valueCoding from hn-vs-94d2d2fdf018 (required)
* item[Title].item[Other].linkId = "Title.Other"
* item[Title].item[Other] ^short = "補充說明"
* item[Title].item[Other].item 0..0
* item[Title].item[Other].answer 0..1
* item[Title].item[Other].answer.value[x] only string
* item[Title].item[Other].answer.value[x] 1..1
* item[Title].item[Other].answer.valueString ^maxLength = 100
* item[Statement].linkId = "Statement"
* item[Statement] ^short = "照護紀錄"
* item[Statement].item 0..0
* item[Statement].answer 0..1
* item[Statement].answer.value[x] only string
* item[Statement].answer.value[x] 1..1
* item[Statement].answer 1..1
* item[Statement].answer.valueString ^maxLength = 200
* obeys hn-casedesc-1
* obeys hn-casedesc-2

Invariant: hn-casedesc-1
Description: "共照成員職稱選擇其他時應填寫補充說明。"
Severity: #error
Expression: "item.where(linkId='Title').all((item.where(linkId='Title.Value').answer.value.ofType(Coding).where(code='cd2909f1647e7').exists()) implies item.where(linkId='Title.Other').answer.value.exists())"

Invariant: hn-casedesc-2
Description: "照護結束時間不可早於開始時間。"
Severity: #error
Expression: "item.where(linkId='Time2').answer.value.single() >= item.where(linkId='Time').answer.value.single()"
