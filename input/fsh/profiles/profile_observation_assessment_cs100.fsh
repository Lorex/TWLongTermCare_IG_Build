Profile: LTCObservationAssessmentCS100
Parent: LTCObservationAssessmentBase
Id: LTC-Observation-Assessment-CS100
Title: "長照 SDK－評估核定摘要（Observation）"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現 CS100 個案總查詢之評估核定摘要，包含 CMS 等級、福利身分及評估類型等資訊。"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/LTC-Observation-Assessment-CS100"
* ^version = "0.1.0"
* ^status = #draft

// 繼承自 LTCObservationAssessmentBase：status, code, subject, effective[x], component
* identifier 0..* MS
* component.code from VS_TW_LTC_AssessmentComponent (required)
* component.value[x] only CodeableConcept or dateTime or string

Invariant: ltc-assess-has-core
Description: "component 至少包含 cms-level 或 welfare-identity 或 assessment-type 其中之一"
Severity: #error
Expression: "component.code.coding.code contains 'cms-level' or component.code.coding.code contains 'welfare-identity' or component.code.coding.code contains 'assessment-type'"
// * obeys ltc-assess-has-core
