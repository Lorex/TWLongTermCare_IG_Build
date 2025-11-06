Profile: OperationOutcomeTWLTCCheck
Id: OperationOutcome-TW-LTC-Check
Parent: OperationOutcome
Title: "長照 SDK－跨月檢核結果（QP_O）"
Description: "跨月金額/月份檢核之錯誤旗標與訊息，亦可對應到 ClaimResponse.error。"
* issue 1..*
* issue.severity 1..1
* issue.code 1..1
* issue.details 0..1
* issue.diagnostics 0..1
* extension contains
    ExtTWLTCExportCaseNo named caseNo 0..1 and
    ExtTWLTCExportYYYMMROC named yyyymm 0..*
