Extension: ExtTWLTCExportUnit
Id: Ext-TW-LTC-Export-Unit
Title: "長照 SDK－單位資訊（PIA/PIB/CENTER/MAN_*）"
Description: "此 Extension 用於表示長照 SDK 的單位資訊，包含特約單位、照管中心、個管員等相關資訊，適用於 Claim 及 ClaimResponse 資源。"
// * ^url = http://ltc-ig.fhir.tw/StructureDefinition/Ext_TW_LTC_Export_Unit
* ^context[0].type = #element
* ^context[=].expression = "Claim"
* ^context[+].type = #element
* ^context[=].expression = "ClaimResponse"
* extension contains
    type 0..1 and
    name 0..1 and
    code 0..1 and
    contact 0..1
* extension[type].valueCodeableConcept 1..1
* extension[name].valueString 0..1
* extension[code].valueString 0..1
* extension[contact].valueString 0..1
