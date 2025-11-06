Profile: Observation_TW_LTC_AssessmentSummary_SDK
Parent: Observation
Id: Observation-TW-LTC-AssessmentSummary-SDK
Title: "長照 SDK－評估核定摘要"
Description: "對應 SDK r2：福利身分、CMS 等級、評估完成日、狀態、評估類型、計畫起訖等。"
* ^url = "https://ltc-ig.fhir.tw/StructureDefinition/Observation-TW-LTC-AssessmentSummary-SDK"
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
* component[welfare-identity].code = https://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-assessment-component-sdk#welfare-identity "福利身分"
* component[cms-level].code        = https://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-assessment-component-sdk#cms-level "CMS 等級"
* component[approval-status].code  = https://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-assessment-component-sdk#approval-status "核定狀態"
* component[assessment-type].code  = https://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-assessment-component-sdk#assessment-type "評估類型"
* component[plan-start].code       = https://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-assessment-component-sdk#plan-start "計畫起始日"
* component[plan-end].code         = https://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-assessment-component-sdk#plan-end "計畫結束日"
* component[welfare-identity].value[x] only CodeableConcept
* component[welfare-identity].valueCodeableConcept from VS_TW_LTC_WelfareIdentity_SDK (extensible)
* component[cms-level].value[x] only CodeableConcept
* component[cms-level].valueCodeableConcept from VS_TW_LTC_CMSLevel_SDK (required)
* component[approval-status].value[x] only CodeableConcept
* component[assessment-type].value[x] only CodeableConcept
* component[assessment-type].valueCodeableConcept from VS_TW_LTC_AssessmentType_SDK (extensible)
* component[plan-start].value[x] only dateTime
* component[plan-end].value[x]   only dateTime
