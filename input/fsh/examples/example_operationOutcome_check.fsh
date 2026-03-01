Instance: ltc-operationoutcome-check-example
InstanceOf: LTCOperationOutcomeCheck
Title: "長照－跨月檢核（OperationOutcome）範例"
Description: "長照 SDK 照管QP_O跨月檢核的範例，展示如何使用 OperationOutcome 資源記錄跨月金額檢核結果。"
Usage: #example
* extension[caseNo].valueString = "111301921"
* extension[yyyymm][0].valueString = "11406"
* extension[yyyymm][+].valueString = "11407"
* issue[+].severity = #warning
* issue[=].code = #business-rule
* issue[=].details.text = "跨月金額差異偏高"
* issue[=].diagnostics = "PRICE_ERR=true；ERR_MSG=『與上月差異 > 30%』"
