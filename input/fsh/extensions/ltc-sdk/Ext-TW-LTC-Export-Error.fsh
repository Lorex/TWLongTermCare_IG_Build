Extension: ExtTWLTCExportError
Id: Ext-TW-LTC-Export-Error
Title: "長照 SDK－錯誤訊息"
Description: "此 Extension 用於表示長照 SDK 回傳的錯誤訊息，適用於 ClaimResponse 或 OperationOutcome.issue。"
// * ^url = http://ltc-ig.fhir.tw/StructureDefinition/Ext_TW_LTC_Export_Error
* value[x] only string
* ^context.type = #element
* ^context.expression = "ClaimResponse or OperationOutcome.issue"
