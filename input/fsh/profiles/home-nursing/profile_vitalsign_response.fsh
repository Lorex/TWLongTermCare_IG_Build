Profile: HNVitalSignResponse
Parent: LTCQuestionnaireResponse
Id: HNVitalSignResponse
Title: "居家護理－生命徵象表單"
Description: "記錄生命徵象的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。"
* ^status = #draft
* ^version = "5.0.16"
* questionnaire 1..1 MS
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/hn-vitalsign"
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
    RecordDate 1..1 MS and
    RecordTime 1..1 MS and
    Temperature 1..1 MS and
    Pulse 1..1 MS and
    Respiration 1..1 MS and
    BloodPressure1 1..1 MS and
    BloodPressure2 1..1 MS and
    BloodGlucose 0..1 MS and
    BloodOxygen 0..1 MS and
    CreateID 1..1 MS
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
* item[RecordDate].linkId = "RecordDate"
* item[RecordDate] ^short = "量測日期"
* item[RecordDate].item 0..0
* item[RecordDate].answer 0..1
* item[RecordDate].answer.value[x] only date
* item[RecordDate].answer.value[x] 1..1
* item[RecordDate].answer 1..1
* item[RecordTime].linkId = "RecordTime"
* item[RecordTime] ^short = "量測時間"
* item[RecordTime].item 0..0
* item[RecordTime].answer 0..1
* item[RecordTime].answer.value[x] only time
* item[RecordTime].answer.value[x] 1..1
* item[RecordTime].answer 1..1
* item[Temperature].linkId = "Temperature"
* item[Temperature] ^short = "體溫"
* item[Temperature].item 0..0
* item[Temperature].answer 0..1
* item[Temperature].answer.value[x] only decimal
* item[Temperature].answer.value[x] 1..1
* item[Temperature].answer 1..1
* item[Temperature].answer.valueDecimal ^minValueDecimal = 0
* item[Temperature].answer.valueDecimal ^maxValueDecimal = 999
* item[Pulse].linkId = "Pulse"
* item[Pulse] ^short = "脈搏"
* item[Pulse].item 0..0
* item[Pulse].answer 0..1
* item[Pulse].answer.value[x] only integer
* item[Pulse].answer.value[x] 1..1
* item[Pulse].answer 1..1
* item[Pulse].answer.valueInteger ^minValueInteger = 0
* item[Pulse].answer.valueInteger ^maxValueInteger = 999
* item[Respiration].linkId = "Respiration"
* item[Respiration] ^short = "呼吸"
* item[Respiration].item 0..0
* item[Respiration].answer 0..1
* item[Respiration].answer.value[x] only integer
* item[Respiration].answer.value[x] 1..1
* item[Respiration].answer 1..1
* item[Respiration].answer.valueInteger ^minValueInteger = 0
* item[Respiration].answer.valueInteger ^maxValueInteger = 999
* item[BloodPressure1].linkId = "BloodPressure1"
* item[BloodPressure1] ^short = "收縮壓"
* item[BloodPressure1].item 0..0
* item[BloodPressure1].answer 0..1
* item[BloodPressure1].answer.value[x] only integer
* item[BloodPressure1].answer.value[x] 1..1
* item[BloodPressure1].answer 1..1
* item[BloodPressure1].answer.valueInteger ^minValueInteger = 0
* item[BloodPressure1].answer.valueInteger ^maxValueInteger = 999
* item[BloodPressure2].linkId = "BloodPressure2"
* item[BloodPressure2] ^short = "舒張壓"
* item[BloodPressure2].item 0..0
* item[BloodPressure2].answer 0..1
* item[BloodPressure2].answer.value[x] only integer
* item[BloodPressure2].answer.value[x] 1..1
* item[BloodPressure2].answer 1..1
* item[BloodPressure2].answer.valueInteger ^minValueInteger = 0
* item[BloodPressure2].answer.valueInteger ^maxValueInteger = 999
* item[BloodGlucose].linkId = "BloodGlucose"
* item[BloodGlucose] ^short = "血糖"
* item[BloodGlucose].item 0..0
* item[BloodGlucose].answer 0..1
* item[BloodGlucose].answer.value[x] only integer
* item[BloodGlucose].answer.value[x] 1..1
* item[BloodGlucose].answer.valueInteger ^minValueInteger = 0
* item[BloodGlucose].answer.valueInteger ^maxValueInteger = 999
* item[BloodOxygen].linkId = "BloodOxygen"
* item[BloodOxygen] ^short = "血氧"
* item[BloodOxygen].item 0..0
* item[BloodOxygen].answer 0..1
* item[BloodOxygen].answer.value[x] only integer
* item[BloodOxygen].answer.value[x] 1..1
* item[BloodOxygen].answer.valueInteger ^minValueInteger = 0
* item[BloodOxygen].answer.valueInteger ^maxValueInteger = 100
* item[CreateID].linkId = "CreateID"
* item[CreateID] ^short = "照護人員身分證字號"
* item[CreateID].item 0..0
* item[CreateID].answer 0..1
* item[CreateID].answer.value[x] only string
* item[CreateID].answer.value[x] 1..1
* item[CreateID].answer 1..1
* item[CreateID].answer.valueString ^maxLength = 10
