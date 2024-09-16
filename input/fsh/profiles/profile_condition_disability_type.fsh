Alias: $TWCoreCondition = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Condition-twcore
Alias: $ConditionDisabilityTypeVS = http://ltc-ig.fhir.tw/ValueSet/ConditionDisabilityTypeVS-TWLTC
Alias: $ConditionSeverityVS-TWLTC = http://ltc-ig.fhir.tw/ValueSet/ConditionSeverityVS-TWLTC

Profile: LTCConditionDisabilityType
Parent: LTCCondition
Id: LTCConditionDisabilityType
Title: "TWLTC Condition Disability Type"
Description: "長照機構住民的身心障礙類型資料"

* code 1..1 MS
* code ^short = "障礙類別"
* code from $ConditionDisabilityTypeVS (required)
* code.coding 1..1 MS
* code.coding ^short = "身心障礙別代碼"
* code.coding.system 1..1 MS
* code.coding.system = "http://ltc-ig.fhir.tw/ValueSet/ConditionDisabilityTypeVS-TWLTC"
* code.coding.code 1..1 MS
* code.coding.code ^short = "身心障礙類型代碼"
* severity 0..1 MS
* severity ^short = "障礙程度"
* severity from $ConditionSeverityVS-TWLTC (required)