Extension: ExtTWLTCExportCaseNo
Id: Ext-TW-LTC-Export-CaseNo
Title: "長照 SDK－案件編號（CASENO）"
Description: "此 Extension 用於表示長照 SDK 的案件編號（CASENO），適用於 Claim、CarePlan、Communication 或 OperationOutcome 資源。"
// * ^url = http://ltc-ig.fhir.tw/StructureDefinition/Ext_TW_LTC_Export_CaseNo
* value[x] only string
* ^context.type = #element
* ^context.expression = "Claim or CarePlan or Communication or OperationOutcome"
