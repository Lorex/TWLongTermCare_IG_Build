Profile: Observation_TW_LTC_AssessmentSummary
Parent: Observation
Id: Observation-TW-LTC-AssessmentSummary
Title: "長照 SDK－評估核定摘要（Observation）"
Description: "CMS 等級、福利身分、評估類型、核定期間/狀態等摘要。"
* ^url = "https://ltc-ig.fhir.tw/StructureDefinition/Observation-TW-LTC-AssessmentSummary"
* ^version = "0.1.0"
* ^status = #draft

* status 1..1 MS
* code 1..1 MS
* code = LOINC#8357-6 "Assessment note"
* subject 1..1 MS
* subject only Reference(TWCorePatient)
* effective[x] only dateTime
* effectiveDateTime 1..1 MS
* identifier 0..* MS

* component 1..* MS
* component.code from VS_TW_LTC_AssessmentComponent (required)
* component.value[x] only CodeableConcept or dateTime or string

Invariant: ltc-assess-has-core
Description: "component 至少包含 cms-level 或 welfare-identity 或 assessment-type 其中之一"
Severity: #error
Expression: "component.code.coding.code contains 'cms-level' or component.code.coding.code contains 'welfare-identity' or component.code.coding.code contains 'assessment-type'"
// * obeys ltc-assess-has-core
