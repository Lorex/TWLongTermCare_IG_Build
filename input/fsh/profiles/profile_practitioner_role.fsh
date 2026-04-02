Alias: $TWCorePractitionerRole = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/PractitionerRole-twcore
Alias: $TWCorePractitioner = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Practitioner-twcore
Alias: $TWCoreOrganization = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Organization-twcore

Profile: DentalPractitionerRole
Parent: $TWCorePractitionerRole
Id: PractitionerRole-twdental
Title: "牙醫－醫事人員角色"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 PractitionerRole Resource，以呈現牙醫師在特定機構中的角色資料。"

* . ^short = "牙醫師在特定機構中的角色資料"
* practitioner only Reference($TWCorePractitioner)
* practitioner 1..1 MS
* practitioner ^short = "關聯的牙醫師"

* organization only Reference($TWCoreOrganization)
* organization 1..1 MS
* organization ^short = "關聯的機構"

* code 1..* MS
* code ^short = "角色代碼"

* specialty 0..* MS
* specialty ^short = "專科別"

* location 0..* MS
* location ^short = "執業地點"

* telecom 0..* MS
* telecom ^short = "聯絡方式"
* telecom.value 1..1 MS
* telecom.value ^short = "電話號碼/電子郵件"

* availableTime 0..* MS
* availableTime ^short = "可看診時段"
* availableTime.daysOfWeek 0..* MS
* availableTime.availableStartTime 0..1 MS
* availableTime.availableEndTime 0..1 MS

Instance: Dental-practitionerrole-example
InstanceOf: DentalPractitionerRole
Usage: #example
Title: "牙醫－醫事人員角色範例"
Description: "此範例展示如何使用 DentalPractitionerRole Profile 來呈現牙醫師的角色資料。"

* practitioner = Reference(Practitioner/Dental-practitioner-example)
* organization = Reference(Organization/Dental-organization-example)
* code = http://terminology.hl7.org/CodeSystem/practitioner-role#doctor
* specialty = http://snomed.info/sct#722163006 "Dentistry"
* telecom[0].system = #phone
* telecom[0].value = "02-12345678#123"
* availableTime[0].daysOfWeek[0] = #mon
* availableTime[0].daysOfWeek[1] = #tue
* availableTime[0].daysOfWeek[2] = #wed
* availableTime[0].availableStartTime = "09:00:00"
* availableTime[0].availableEndTime = "17:00:00" 