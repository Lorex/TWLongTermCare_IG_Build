Alias:  $TWCorePatient = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Patient-twcore
Alias: $AddressUseVS-TWLTC = http://ltc-ig.fhir.tw/ValueSet-AddressUseVS-TWLTC
Alias: $EconomyStatusExt = http://ltc-ig.fhir.tw/StructureDefinition-ExtensionPatientEconomyStatus-TWLTC

Profile: LTCPatientReferral
Title: "TW Long Term Care Patient for Referral Form"
Parent: LTCPatient
Description: "適用於長期照護管理中心個案服務初篩表/轉介單的長照機構住民基本資料，本 Profile 繼承自 TW Long Term Care Patient，並增加轉介單所需的欄位。"
* extension contains $EconomyStatusExt named economyStatus 1..1 MS
* extension[economyStatus] ^short = "住民的經濟狀況"
* extension[economyStatus].valueCodeableConcept 1..1 MS
* extension[economyStatus].valueCodeableConcept ^short = "住民的經濟狀況代碼"
* extension[economyStatus].valueCodeableConcept from $EconomyStatusExt

// * extension contains http://hl7.org/fhir/StructureDefinition/patient-birthPlace named birthPlace 0..1 MS
// * generalPractitioner only Reference(OSAPractitioner)