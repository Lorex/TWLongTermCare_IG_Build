Alias: $TWCoreCondition = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Condition-twcore
Alias: $ConditionDisabilityTypeaVS = http://ltc-ig.fhir.tw/ValueSet-ConditionDisabilityTypeaVS-TWLTC
Alias: $ConditionSeverityVS-TWLTC = http://ltc-ig.fhir.tw/ValueSet-ConditionSeverityVS-TWLTC

Profile: LTCConditionDisabilityType
Parent: LTCCondition
Id: LTCConditionDisabilityType
Title: "TW Long Term Care Condition Disability Type"
Description: "長照機構住民的身心障礙類型資料"

* code 1..1 MS
* code ^short = "障礙類別"
* code from $ConditionDisabilityTypeaVS (required)
* code.coding 1..1 MS
* code.coding ^short = "身心障礙別代碼"
* code.coding.system 1..1 MS
* code.coding.system = "http://ltc-ig.fhir.tw/ValueSet-ConditionDisabilityTypeaVS-TWLTC"
* code.coding.code 1..1 MS
* code.coding.code ^short = "身心障礙類型代碼"
* severity 0..1 MS
* severity ^short = "障礙程度"
* severity from $ConditionSeverityVS-TWLTC (required)