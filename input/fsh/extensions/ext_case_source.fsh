Extension: ExtTWLTCCaseSource
Id: Ext-TW-LTC-Case-Source
Title: "長照 SDK－案件－申請來源"
Description: "案件（EpisodeOfCare）之申請來源。"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-Case-Source"
* ^status = #active
* ^context.type = #element
* ^context.expression = "EpisodeOfCare"
* value[x] only CodeableConcept
* value[x] 1..1 MS
* valueCodeableConcept from VS_TW_LTC_Case_Source (required)
