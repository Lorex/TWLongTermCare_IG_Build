Alias: $TWCoreCondition = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Condition-twcore
Alias: $ReferralConditionCrushVS = http://ltc-ig.fhir.tw/ValueSet/ReferralConditionCrushVS-TWLTC

Profile: LTCConditionCrush
Parent: $TWCoreCondition
Id: LTCConditionCrush
Title: "TW Long Term Care Condition Crush"
Description: "長照機構住民的壓傷資料"

* code 1..1 MS
* code ^short = "壓傷狀況"
* code from $ReferralConditionCrushVS (required)
* code.coding 1..1 MS
* code.coding ^short = "壓傷狀況代碼"
* code.coding.system 1..1 MS
* code.coding.system = "http://ltc-ig.fhir.tw/ValueSet/ReferralConditionCrushVS-TWLTC"
* code.coding.code 1..1 MS
* code.coding.code ^short = "個案是否有壓傷？如果代碼為 crush，則需填寫備註以描述壓傷狀況"
* note 0..1 MS
* note ^short = "壓傷狀況與類別備註，應填寫部位、等級與大小(cm^2)"

Invariant: LTCConditionCrush-1
Description: "The Condition.note SHALL be present if the Condition.code is 'http://ltc-ig.fhir.tw/ValueSet/ReferralConditionCrushVS-TWLTC|crush'."
Expression: "code.coding.code = 'crush' implies note.exists()"
Severity: #error
XPath: "f:code/f:coding[f:system/@value='http://ltc-ig.fhir.tw/ValueSet/ReferralConditionCrushVS-TWLTC']/f:code/@value = 'crush' implies f:note"

