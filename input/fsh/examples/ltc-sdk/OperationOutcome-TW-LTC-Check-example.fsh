Instance: OperationOutcome-TW-LTC-Check-example
InstanceOf: OperationOutcomeTWLTCCheck
Title: "照管QP_O—跨月檢核（示例）"
Usage: #example
* extension[caseNo].valueString = "111301921"
* extension[yyyymm][0].valueString = "11406"
* extension[yyyymm][+].valueString = "11407"
* issue[+].severity = #warning
* issue[=].code = #business-rule
* issue[=].details.text = "跨月金額差異偏高"
* issue[=].diagnostics = "PRICE_ERR=true；ERR_MSG=『與上月差異 > 30%』"
