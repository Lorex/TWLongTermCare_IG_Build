Alias: $TWCoreCondition = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Condition-twcore
Alias: $ReferralConditionResidenceVS = http://ltc-ig.fhir.tw/ValueSet/ReferralConditionResidenceVS-TWLTC

Profile: LTCConditionResidence
Parent: $TWCoreCondition
Id: LTCConditionResidence
Title: "TWLTC Condition Residence"
Description: "長照機構住民的居住狀況資料"

* code 1..1 MS
* code ^short = "居住狀況"
* code from $ReferralConditionResidenceVS (required)
* code.coding 1..1 MS
* code.coding ^short = "居住狀況代碼"
* code.coding.system 1..1 MS
* code.coding.system = "http://ltc-ig.fhir.tw/ValueSet/ReferralConditionResidenceVS-TWLTC"
* code.coding.code 1..1 MS
* code.coding.code ^short = "個案是否獨居？"