Extension: ExtTWLTCExportYYYMMROC
Id: Ext-TW-LTC-Export-YYYMM-ROC
Title: "長照 SDK－民國年月（YYYMM）"
Description: "此 Extension 用於表示長照 SDK 的民國年月（YYYMM 格式），適用於 Claim、ClaimResponse 或 OperationOutcome 資源。"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-Export-YYYMM-ROC"
* ^status = #active
* ^context.type = #element
* ^context.expression = "OperationOutcome"
* value[x] only string
* value[x] 1..1 MS
