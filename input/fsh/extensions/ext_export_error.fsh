Extension: ExtTWLTCExportError
Id: Ext-TW-LTC-Export-Error
Title: "長照 SDK－錯誤訊息"
Description: "此 Extension 用於表示長照 SDK 回傳的錯誤訊息，適用於 ClaimResponse 或 OperationOutcome.issue。"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-Export-Error"
* ^status = #active
* ^context[0].type = #element
* ^context[=].expression = "ClaimResponse"
* ^context[+].type = #element
* ^context[=].expression = "OperationOutcome"
* value[x] only string
* value[x] 1..1 MS
