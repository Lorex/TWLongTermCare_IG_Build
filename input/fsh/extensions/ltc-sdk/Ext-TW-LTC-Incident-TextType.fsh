Extension: Ext_TW_LTC_Incident_TextType
Id: ext-tw-ltc-incident-texttype
Title: "長照 SDK－異常紀錄－文字區塊標記"
Description: "標記 payload.contentString 的用途（描述/過程/後續處理/建議）。"
// * ^url = "https://ltc-ig.fhir.tw/StructureDefinition/ext-tw-ltc-incident-texttype"
* ^version = "0.1.0"
* ^status = #draft
* value[x] only CodeableConcept
* valueCodeableConcept from VS_TW_LTC_Incident_TextType (required)
