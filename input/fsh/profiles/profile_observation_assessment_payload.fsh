Profile: LTCObservationAssessmentPayload
Parent: LTCObservationAssessmentBase
Id: LTC-Observation-Assessment-Payload
Title: "長照 SDK－評估核定摘要"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現長照 SDK 回傳之評估核定摘要，包含福利身分、CMS 等級、評估類型及計畫起訖等資訊。"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/LTC-Observation-Assessment-Payload"
* ^version = "0.1.0"
* ^status = #draft
// 繼承自 LTCObservationAssessmentBase：status, code, subject, effective[x], component
* identifier 0..* MS
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component 1..* MS
* component contains
    welfare-identity 0..1 MS and
    cms-level        0..1 MS and
    approval-status  0..1 MS and
    assessment-type  0..1 MS and
    plan-start       0..1 MS and
    plan-end         0..1 MS
* component[welfare-identity].code = http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-assessment-component#welfare-identity "長照福利身分"
* component[cms-level].code        = http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-assessment-component#cms-level "CMS 等級"
* component[approval-status].code  = http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-assessment-component#approval-status "核定狀態"
* component[assessment-type].code  = http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-assessment-component#assessment-type "評估類型"
* component[plan-start].code       = http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-assessment-component#plan-start "計畫起始日"
* component[plan-end].code         = http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-assessment-component#plan-end "計畫結束日"
* component[welfare-identity].value[x] only CodeableConcept
* component[welfare-identity].valueCodeableConcept from VS_TW_LTC_WelfareIdentity (extensible)
* component[cms-level].value[x] only CodeableConcept
* component[cms-level].valueCodeableConcept from VS_TW_LTC_CMSLevel (required)
* component[approval-status].value[x] only CodeableConcept
* component[assessment-type].value[x] only CodeableConcept
* component[assessment-type].valueCodeableConcept from VS_TW_LTC_AssessmentType (extensible)
* component[plan-start].value[x] only dateTime
* component[plan-end].value[x]   only dateTime
