Profile: HNStaffEgyResponse
Parent: QuestionnaireResponse
Id: HNStaffEgyResponse
Title: "居家護理－人員緊急事件表單"
Description: "記錄人員緊急事件的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。"
* ^status = #draft
* ^version = "5.0.16"
* questionnaire 1..1 MS
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/hn-staffegy"
* status 1..1 MS
* authored 1..1 MS
* subject 1..1 MS
* subject only Reference(Practitioner)
* author only Reference(LTCOrganization)
* author 1..1 MS
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #closed
* item contains
    Title 1..1 MS and
    Name 1..1 MS and
    IDNo 1..1 MS and
    EmergencyType 1..1 MS and
    Date 1..1 MS and
    Time 1..1 MS and
    Reason 1..1 MS and
    Description 1..1 MS and
    Process 1..1 MS and
    Report 1..1 MS and
    CreateID 1..1 MS
* item[Title].linkId = "Title"
* item[Title] ^short = "工作人員職稱"
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
* item[Name].linkId = "Name"
* item[Name] ^short = "工作人員姓名"
* item[Name].item 0..0
* item[Name].answer 0..1
* item[Name].answer.value[x] only string
* item[Name].answer.value[x] 1..1
* item[Name].answer 1..1
* item[Name].answer.valueString ^maxLength = 50
* item[IDNo].linkId = "IDNo"
* item[IDNo] ^short = "人員身分證字號"
* item[IDNo].item 0..0
* item[IDNo].answer 0..1
* item[IDNo].answer.value[x] only string
* item[IDNo].answer.value[x] 1..1
* item[IDNo].answer 1..1
* item[IDNo].answer.valueString ^maxLength = 10
* item[EmergencyType].linkId = "EmergencyType"
* item[EmergencyType] ^short = "緊急事件類型"
* item[EmergencyType].answer 0..0
* item[EmergencyType].item ^slicing.discriminator.type = #value
* item[EmergencyType].item ^slicing.discriminator.path = "linkId"
* item[EmergencyType].item ^slicing.rules = #closed
* item[EmergencyType].item contains
    Value 1..1 MS and
    Other 0..1 MS
* item[EmergencyType].item[Value].linkId = "EmergencyType.Value"
* item[EmergencyType].item[Value] ^short = "選項"
* item[EmergencyType].item[Value].item 0..0
* item[EmergencyType].item[Value].answer 0..1
* item[EmergencyType].item[Value].answer.value[x] only Coding
* item[EmergencyType].item[Value].answer.value[x] 1..1
* item[EmergencyType].item[Value].answer 1..1
* item[EmergencyType].item[Value].answer.valueCoding from hn-vs-6892f4f30c24 (required)
* item[EmergencyType].item[Other].linkId = "EmergencyType.Other"
* item[EmergencyType].item[Other] ^short = "補充說明"
* item[EmergencyType].item[Other].item 0..0
* item[EmergencyType].item[Other].answer 0..1
* item[EmergencyType].item[Other].answer.value[x] only string
* item[EmergencyType].item[Other].answer.value[x] 1..1
* item[EmergencyType].item[Other].answer.valueString ^maxLength = 100
* item[Date].linkId = "Date"
* item[Date] ^short = "發生日期"
* item[Date].item 0..0
* item[Date].answer 0..1
* item[Date].answer.value[x] only date
* item[Date].answer.value[x] 1..1
* item[Date].answer 1..1
* item[Time].linkId = "Time"
* item[Time] ^short = "發生時間"
* item[Time].item 0..0
* item[Time].answer 0..1
* item[Time].answer.value[x] only time
* item[Time].answer.value[x] 1..1
* item[Time].answer 1..1
* item[Reason].linkId = "Reason"
* item[Reason] ^short = "發生原因"
* item[Reason].item 0..0
* item[Reason].answer 0..1
* item[Reason].answer.value[x] only string
* item[Reason].answer.value[x] 1..1
* item[Reason].answer 1..1
* item[Reason].answer.valueString ^maxLength = 100
* item[Description].linkId = "Description"
* item[Description] ^short = "事件敘述"
* item[Description].item 0..0
* item[Description].answer 0..1
* item[Description].answer.value[x] only string
* item[Description].answer.value[x] 1..1
* item[Description].answer 1..1
* item[Description].answer.valueString ^maxLength = 200
* item[Process].linkId = "Process"
* item[Process] ^short = "通報及處理過程"
* item[Process].item 0..0
* item[Process].answer 0..1
* item[Process].answer.value[x] only string
* item[Process].answer.value[x] 1..1
* item[Process].answer 1..1
* item[Process].answer.valueString ^maxLength = 200
* item[Report].linkId = "Report"
* item[Report] ^short = "檢討紀錄"
* item[Report].item 0..0
* item[Report].answer 0..1
* item[Report].answer.value[x] only string
* item[Report].answer.value[x] 1..1
* item[Report].answer 1..1
* item[Report].answer.valueString ^maxLength = 200
* item[CreateID].linkId = "CreateID"
* item[CreateID] ^short = "建立機構代碼"
* item[CreateID].item 0..0
* item[CreateID].answer 0..1
* item[CreateID].answer.value[x] only string
* item[CreateID].answer.value[x] 1..1
* item[CreateID].answer 1..1
* item[CreateID].answer.valueString ^maxLength = 10
* obeys hn-staffegy-1
* obeys hn-staffegy-2

Invariant: hn-staffegy-1
Description: "工作人員職稱選擇其他時應填寫補充說明。"
Severity: #error
Expression: "item.where(linkId='Title').all((item.where(linkId='Title.Value').answer.value.ofType(Coding).where(code='cd2909f1647e7').exists()) implies item.where(linkId='Title.Other').answer.value.exists())"

Invariant: hn-staffegy-2
Description: "緊急事件類型選擇其他時應填寫補充說明。"
Severity: #error
Expression: "item.where(linkId='EmergencyType').all((item.where(linkId='EmergencyType.Value').answer.value.ofType(Coding).where(code='cd2909f1647e7').exists()) implies item.where(linkId='EmergencyType.Other').answer.value.exists())"
