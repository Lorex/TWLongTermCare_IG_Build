Alias: $TWCoreCondition = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Condition-twcore
Alias: $ConditionDisabilityVS = http://ltc-ig.fhir.tw/ValueSet-ConditionDisabilityVS-TWLTC

Profile: LTCConditionDisability
Parent: LTCCondition
Id: LTCConditionDisability
Title: "TW Long Term Care Condition Disability"
Description: "長照機構住民的身心障礙手冊資料"

* code 1..1 MS
* code ^short = "問題類別"
* code from $ConditionDisabilityVS (required)
* code.coding 1..1 MS
* code.coding ^short = "領有身心障礙手冊的代碼"
* code.coding.system 1..1 MS
* code.coding.system = "http://ltc-ig.fhir.tw/Codesystem-ConditionDisabilityCS-TWLTC"
* code.coding.code 1..1 MS
* code.coding.code ^short = "身心障礙持有狀態代碼"