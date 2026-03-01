Extension: ExtTWLTCAdverseEventAbout
Id: Ext-TW-LTC-AdverseEvent-About
Title: "長期照顧－異常事件關聯案件"
Description: "關聯的案件（EpisodeOfCare）或照顧計畫（CarePlan）"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-AdverseEvent-About"
* ^status = #active
* ^context[0].type = #element
* ^context[=].expression = "AdverseEvent"
* value[x] only Reference(EpisodeOfCare or CarePlan)
* valueReference 1..1 MS
