Profile: LTCOperationOutcomeCheck
Id: LTC-OperationOutcome-Check
Parent: OperationOutcome
Title: "長照 SDK－跨月檢核結果（QP_O）"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 OperationOutcome Resource，以呈現長照 SDK 跨月金額與月份檢核之錯誤旗標與訊息。"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/LTC-OperationOutcome-Check"
* ^version = "0.1.0"
* ^status = #draft
* issue 1..*
* issue.severity 1..1
* issue.code 1..1
* issue.details 0..1
* issue.diagnostics 0..1
* extension contains
    ExtTWLTCExportCaseNo named caseNo 0..1 and
    ExtTWLTCExportYYYMMROC named yyyymm 0..*
