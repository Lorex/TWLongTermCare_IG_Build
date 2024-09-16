Alias: $TWCoreCondition = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Condition-twcore
Alias: $ReferralConditionTubeVS = http://ltc-ig.fhir.tw/ValueSet-ReferralConditionTubeVS-TWLTC

Profile: LTCConditionTube
Parent: $TWCoreCondition
Id: LTCConditionTube
Title: "TW Long Term Care Condition Tube"
Description: "長照機構住民的管路資料"

* code 1..1 MS
* code ^short = "管路裝設狀況與類別"
* code from $ReferralConditionTubeVS (required)
* code.coding 1..1 MS
* code.coding ^short = "管路裝設狀況與類別代碼"
* code.coding.system 1..1 MS
* code.coding.system = "http://ltc-ig.fhir.tw/ValueSet-ReferralConditionTubeVS-TWLTC"
* code.coding.code 1..1 MS
* code.coding.code ^short = "管路裝設狀況與類別代碼，如果代碼為 other，則需填寫備註以描述管路使用情況"
* note 0..1 MS
* note ^short = "管路裝設狀況與類別備註"

Invariant: LTCConditionTube-1
Description: "The Condition.note SHALL be present if the Condition.code is 'http://ltc-ig.fhir.tw/ValueSet-ReferralConditionTubeVS-TWLTC|other'."
Expression: "code.coding.code = 'other' implies note.exists()"
Severity: #error
XPath: "f:code/f:coding[f:system/@value='http://ltc-ig.fhir.tw/ValueSet-ReferralConditionTubeVS-TWLTC']/f:code/@value = 'other' implies f:note"

