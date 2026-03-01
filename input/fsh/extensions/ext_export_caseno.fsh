Extension: ExtTWLTCExportCaseNo
Id: Ext-TW-LTC-Export-CaseNo
Title: "長照 SDK－案件編號（CASENO）"
Description: "此 Extension 用於表示長照 SDK 的案件編號（CASENO），適用於 Claim、CarePlan、Communication 或 OperationOutcome 資源。"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-Export-CaseNo"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "OperationOutcome"
* ^context[1].type = #element
* ^context[1].expression = "Communication"
* value[x] only string
* value[x] 1..1 MS
