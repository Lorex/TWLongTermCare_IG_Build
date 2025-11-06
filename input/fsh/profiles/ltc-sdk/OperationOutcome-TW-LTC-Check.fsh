Profile: OperationOutcome_TW_LTC_Check
Parent: OperationOutcome
Id: OperationOutcome_TW_LTC_Check
Title: "長照 SDK－跨月檢核結果（QP_O）"
Description: "跨月金額/月份檢核之錯誤旗標與訊息，亦可對應到 ClaimResponse.error。"
* issue 1..*
* issue.severity 1..1
* issue.code 1..1
* issue.details 0..1
* issue.diagnostics 0..1
* extension contains
    Ext_TW_LTC_Export_CaseNo named caseNo 0..1 and
    Ext_TW_LTC_Export_YYYMM_ROC named yyyymm 0..*
