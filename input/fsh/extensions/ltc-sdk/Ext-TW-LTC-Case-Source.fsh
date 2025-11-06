Extension: ExtTWLTCCaseSource
Id: ext-tw-ltc-case-source
Title: "長照 SDK－案件－申請來源"
Description: "案件（EpisodeOfCare）之申請來源。"
// * ^url = "https://ltc-ig.fhir.tw/StructureDefinition/ext-tw-ltc-case-source"
* ^version = "0.1.0"
* ^status = #draft
* value[x] only CodeableConcept
* valueCodeableConcept from VS_TW_LTC_Case_Source (required)
