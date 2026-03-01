Extension: ExtTWLTCExportEvaId
Id: Ext-TW-LTC-Export-EvaId
Title: "長照 SDK－評估案號（EVA_ID）"
Description: "此 Extension 用於表示長照 SDK 的評估案號（EVA_ID），適用於 Claim 或 CarePlan 資源。"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-Export-EvaId"
* ^status = #active
* ^context[0].type = #element
* ^context[=].expression = "Claim"
* ^context[+].type = #element
* ^context[=].expression = "CarePlan"
* value[x] only string
* value[x] 1..1 MS
