Alias: $EducationStatusExt = http://ltc-ig.fhir.tw/StructureDefinition/ExtPatientEducationStatus-TWLTC
Alias: $PatientIdentityExt = http://ltc-ig.fhir.tw/StructureDefinition/ExtPatientIdentity-TWLTC
Alias: $EducationStatusVS-TWLTC = http://ltc-ig.fhir.tw/ValueSet/EducationStatusVS-TWLTC
Alias: $PatientIdentityVS-TWLTC = http://ltc-ig.fhir.tw/ValueSet/PatientIdentityVS-TWLTC


Profile: LTCPatientCMS
Title: "TW Long Term Care Patient for CMS Form"
Parent: LTCPatient
Description: "適用於照顧管理功能量表的長照機構住民基本資料，本 Profile 繼承自 TW Long Term Care Patient，並增加照顧管理評估量表所需的欄位。"

* maritalStatus 1..1 MS
* maritalStatus ^short = "A1. 個案婚姻狀況"

* extension contains $EducationStatusExt named educationStatus 1..1 MS
* extension[educationStatus] ^short = "A2. 個案教育程度"
* extension[educationStatus].valueCodeableConcept 1..1 MS
* extension[educationStatus].valueCodeableConcept ^short = "個案的教育程度代碼"
* extension[educationStatus].valueCodeableConcept from $EducationStatusVS-TWLTC

* extension contains $PatientIdentityExt named identity 1..1 MS
* extension[identity] ^short = "A3. 個案身分別"
* extension[identity].valueCodeableConcept 1..1 MS
* extension[identity].valueCodeableConcept ^short = "個案的身分別代碼"
* extension[identity].valueCodeableConcept from $PatientIdentityVS-TWLTC
 