Extension: ExtTWLTCExportEvaId
Id: Ext-TW-LTC-Export-EvaId
Title: "長照 SDK－評估案號（EVA_ID）"
Description: "此 Extension 用於表示長照 SDK 的評估案號（EVA_ID），適用於 Claim 或 CarePlan 資源。"
// * ^url = http://ltc-ig.fhir.tw/StructureDefinition/Ext_TW_LTC_Export_EvaId
* value[x] only string
* ^context.type = #element
* ^context.expression = "Claim or CarePlan"
