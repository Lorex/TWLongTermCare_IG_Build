Alias:  $TWCorePatient = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Patient-twcore
Alias: $AddressUseVSTWLTC = http://ltc-ig.fhir.tw/ValueSet/AddressUseVS-TWLTC
Alias: $EducationStatusVSTWLTC = http://ltc-ig.fhir.tw/ValueSet/EducationStatusVS-TWLTC

Profile: LTCPatientCMS
Title: "TW Long Term Care Patient for CMS Form"
Parent: LTCPatient
Description: "適用於照顧管理工量表的長照機構住民基本資料，本 Profile 繼承自 TW Long Term Care Patient，並增加照顧管理評估量表所需的欄位。"

* maritalStatus 1..1 MS
* maritalStatus ^short = "A1. 個案婚姻狀況"

* extension contains $EducationStatusVSTWLTC named educationStatus 0..1 MS
* extension[educationStatus] ^short = "A2. 個案教育程度"
* extension[educationStatus].valueCodeableConcept 1..1 MS
* extension[educationStatus].valueCodeableConcept ^short = "個案的教育程度代碼"
* extension[educationStatus].valueCodeableConcept from $EducationStatusVSTWLTC

// * extension contains $EconomyStatusExt named economyStatus 0..1 MS
// * extension[economyStatus] ^short = "住民的經濟狀況"
// * extension[economyStatus].valueCodeableConcept 1..1 MS
// * extension[economyStatus].valueCodeableConcept ^short = "住民的經濟狀況代碼"

// * extension contains http://hl7.org/fhir/StructureDefinition/patient-birthPlace named birthPlace 0..1 MS
// * generalPractitioner only Reference(OSAPractitioner)