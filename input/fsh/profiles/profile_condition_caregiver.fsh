Alias: $TWCoreCondition = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Condition-twcore
Alias: $ReferralConditionCaregiverVS = http://ltc-ig.fhir.tw/ValueSet/ReferralConditionCaregiverVS-TWLTC

Profile: LTCConditionCaregiver
Parent: $TWCoreCondition
Id: LTCConditionCaregiver
Title: "長期照顧－看護狀況"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Condition Resource，以呈現長期照顧情境中住民的看護狀況資料。"

* code 1..1 MS
* code ^short = "看護狀況"
* code from $ReferralConditionCaregiverVS (required)
* code.coding 1..1 MS
* code.coding ^short = "看護狀況代碼"
* code.coding.system 1..1 MS
* code.coding.system = "http://ltc-ig.fhir.tw/ValueSet/ReferralConditionCaregiverVS-TWLTC"
* code.coding.code 1..1 MS
* code.coding.code ^short = "個案是否有看護？"
* note 0..1 MS
* note ^short = "看護狀況與類別備註，應填寫本國籍人力工時（小時/天）及外國籍人數"

Invariant: LTCConditionCaregiver-1
Description: "The Condition.note SHALL be present if the Condition.code is 'http://ltc-ig.fhir.tw/ValueSet/ReferralConditionCaregiverVS-TWLTC|caregiver'."
Expression: "code.coding.code = 'caregiver' implies note.exists()"
Severity: #error
XPath: "f:code/f:coding[f:system/@value='http://ltc-ig.fhir.tw/ValueSet/ReferralConditionCaregiverVS-TWLTC']/f:code/@value = 'caregiver' implies f:note"

