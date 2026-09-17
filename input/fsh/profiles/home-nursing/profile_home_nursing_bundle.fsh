Profile: HNVitalSignsBundle
Parent: Bundle
Id: HNVitalSignsBundle
Title: "居家護理－生命徵象交換集合"
Description: "彙集同一次量測的生命徵象與血糖。量測組的 hasMember 限生命徵象 Profile，故以 Bundle 串聯既有血糖 Profile。"
* type = #collection
* entry 5..7 MS
* entry.fullUrl 1..1
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry contains
    vitals 1..1 MS and
    glucose 0..1 MS and
    temperature 1..1 MS and
    pulse 1..1 MS and
    respiration 1..1 MS and
    bloodPressure 1..1 MS and
    oxygen 0..1 MS
* entry[vitals].resource 1..1
* entry[vitals].resource only HNVitalSigns
* entry[glucose].resource 1..1
* entry[glucose].resource only PASportObservationGlucose

* entry[temperature].resource 1..1
* entry[temperature].resource only PASportObservationBodyTemperature
* entry[pulse].resource 1..1
* entry[pulse].resource only PASportObservationHeartRate
* entry[respiration].resource 1..1
* entry[respiration].resource only PASportObservationRespiratoryRate
* entry[bloodPressure].resource 1..1
* entry[bloodPressure].resource only PASportObservationBloodPressure
* entry[oxygen].resource 1..1
* entry[oxygen].resource only PASportObservationPeripheralOxygenSaturation

Profile: HNCarePlanTransaction
Parent: Bundle
Id: HNCarePlanTransaction
Title: "居家護理－照護計畫交易"
Description: "以 FHIR transaction 一次提交目標、措施、評值及其臨床資源。任一 entry 失敗時不得僅儲存部分資料。原 API 的檔案仍須依其格式另外轉換。"
* type = #transaction
* entry 1..* MS
* entry.fullUrl 1..1
* entry.resource 1..1
* entry.resource only HNTargetsResponse or HNMeasuresResponse or HNEvaluationsResponse or HNGoal or HNCarePlan
* entry.request 1..1
* entry.request.method = #PUT
* entry.request.url 1..1
