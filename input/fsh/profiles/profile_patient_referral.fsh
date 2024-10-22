Alias:  $TWCorePatient = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Patient-twcore
Alias: $AddressUseVS-TWLTC = http://ltc-ig.fhir.tw/ValueSet/AddressUseVS-TWLTC
Alias: $EconomyStatusExt = http://ltc-ig.fhir.tw/StructureDefinition/ExtPatientEconomyStatus-TWLTC
Alias: $EconomyStatusVS-TWLTC = http://ltc-ig.fhir.tw/ValueSet/EconomyStatusVS-TWLTC

Profile: LTCPatientReferral
Title: "轉介單－個案基本資料"
Parent: LTCPatient
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Patient Resource，以呈現適用於長期照護管理中心個案服務初篩表/轉介單的長照機構住民基本資料。"
* extension contains $EconomyStatusExt named economyStatus 1..1 MS
* extension[economyStatus] ^short = "住民的經濟狀況"
* extension[economyStatus].valueCodeableConcept 1..1 MS
* extension[economyStatus].valueCodeableConcept ^short = "住民的經濟狀況代碼"
* extension[economyStatus].valueCodeableConcept from $EconomyStatusVS-TWLTC

// * extension contains http://hl7.org/fhir/StructureDefinition/patient-birthPlace named birthPlace 0..1 MS
// * generalPractitioner only Reference(OSAPractitioner)