Alias: $TWCoreEncounter = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Encounter-twcore

Profile: DentalEncounter
Parent: $TWCoreEncounter
Id: Encounter-twdental
Title: "牙醫－就醫事件"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Encounter Resource，以呈現牙醫就醫事件的資料。"

* . ^short = "牙醫就醫事件的資料"
* identifier 1..* MS
* identifier ^short = "就醫事件的識別碼"
* identifier.value 1..1 MS
* identifier.value ^short = "唯一值。[應填入就醫序號]"
* status 1..1 MS
* status ^short = "就醫狀態"
* class 1..1 MS
* class ^short = "就醫類別"
* serviceType 1..1 MS
* serviceType ^short = "就醫科別"
* subject 1..1 MS
* subject only Reference(DentalPatient)
* subject ^short = "病人"
* participant 1..* MS
* participant ^short = "參與者"
* participant.type 1..1 MS
* participant.type ^short = "參與者角色"
* participant.individual 1..1 MS
* participant.individual ^short = "參與的醫事人員"
* period 1..1 MS
* period ^short = "就醫期間"
* period.start 1..1 MS
* period.start ^short = "開始時間"
* reasonCode 0..* MS
* reasonCode ^short = "就醫原因"
* location 0..* MS
* location ^short = "就醫地點"
* serviceProvider 1..1 MS
* serviceProvider only Reference(DentalOrganization)
* serviceProvider ^short = "服務提供機構"

Instance: Dental-encounter-example
InstanceOf: DentalEncounter
Usage: #example
Title: "牙醫－就醫事件範例"
Description: "此範例展示如何使用 DentalEncounter Profile 來呈現就醫事件的資料。"
* identifier.system = "https://dental-ig.fhir.tw/identifier/encounter"
* identifier.value = "ENC-20250101-001"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* serviceType.coding = http://snomed.info/sct#722163006 "Dentistry"
* subject = Reference(Patient/Dental-patient-example)
* participant.type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PPRF "primary performer"
* participant.individual = Reference(Practitioner/Dental-practitioner-example)
* period.start = "2025-01-01T09:00:00+08:00"
* period.end = "2025-01-01T09:30:00+08:00"
* serviceProvider = Reference(Organization/Dental-organization-example)
