Profile: LTCObservationAssessmentBase
Parent: Observation
Id: LTCObservationAssessmentBase
Title: "長期照顧－評估核定摘要基礎"
Description: "此 Profile 為評估核定摘要 Observation 的共用基礎 Profile，定義評估結果之基本結構與共用欄位。"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/LTCObservationAssessmentBase"
* ^status = #active
* status 1..1 MS
* code 1..1 MS
* code = $LOINC#8357-6
* subject 1..1 MS
* subject only Reference(LTCPatient)
* effective[x] only dateTime
* effectiveDateTime 1..1 MS
* component 1..* MS
