Alias: $EducationStatusExt = http://ltc-ig.fhir.tw/StructureDefinition/ExtPatientEducationStatus-TWLTC
Alias: $PatientIdentityExt = http://ltc-ig.fhir.tw/StructureDefinition/ExtPatientIdentity-TWLTC
Alias: $EducationStatusVS-TWLTC = http://ltc-ig.fhir.tw/ValueSet/EducationStatusVS-TWLTC
Alias: $PatientIdentityVS-TWLTC = http://ltc-ig.fhir.tw/ValueSet/PatientIdentityVS-TWLTC

Profile: LTCPatientCMS
Title: "照顧管理評估量表－個案基本資料"
Parent: LTCPatient
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Patient Resource，以呈現適用於照顧管理評估量表的長照機構住民基本資料。"

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
 