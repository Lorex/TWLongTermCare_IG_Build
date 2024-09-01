Alias:  $TWCorePatient = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Patient-twcore
Alias: $AddressUseVS = http://ltc-ig.fhir.tw/ValueSet/AddressUseVS-TWLTC
Alias: $EconomyStatusExt = http://ltc-ig.fhir.tw/StructureDefinition/EconomyStatusExt-TWLTC

Profile: LTCPatientCMS
Title: "TW Long Term Care Patient for CMS Form"
Parent: LTCPatient
Description: "適用於照顧管理工量表的長照機構住民基本資料，本 Profile 繼承自 TW Long Term Care Patient，並增加照顧管理評估量表所需的欄位。"
// * extension contains $EconomyStatusExt named economyStatus 0..1 MS
// * extension[economyStatus] ^short = "住民的經濟狀況"
// * extension[economyStatus].valueCodeableConcept 1..1 MS
// * extension[economyStatus].valueCodeableConcept ^short = "住民的經濟狀況代碼"

// * extension contains http://hl7.org/fhir/StructureDefinition/patient-birthPlace named birthPlace 0..1 MS
// * generalPractitioner only Reference(OSAPractitioner)