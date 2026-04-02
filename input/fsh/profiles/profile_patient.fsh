Alias: $TWCorePatient = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Patient-twcore

Profile: DentalPatient
Parent: $TWCorePatient
Id: Patient-twdental
Title: "牙醫－病人"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Patient Resource，以呈現牙醫病人的資料。"

* . ^short = "牙醫病人的基本資料"
* identifier 1..* MS
* identifier ^short = "身份識別碼"

* active 1..1 MS
* active ^short = "基本資料是否使用中"

* name 1..* MS
* name ^short = "姓名"
* name.text 1..1 MS
* name.text ^short = "完整姓名"

* gender 1..1 MS
* gender ^short = "性別"

* birthDate 1..1 MS
* birthDate ^short = "出生日期"

* telecom 0..* MS
* telecom ^short = "聯絡方式"
* telecom.value 1..1 MS
* telecom.value ^short = "聯絡方式細節"

* address 0..* MS
* address ^short = "地址"
* address.text 0..1
* address.text ^short = "地址文字"

* maritalStatus 0..1 MS
* maritalStatus ^short = "婚姻狀態"

* photo 0..* MS
* photo ^short = "病人影像"

* contact 0..* MS
* contact ^short = "緊急聯絡人"
* contact.relationship 0..*
* contact.relationship ^short = "關係"
* contact.name 0..1
* contact.name ^short = "姓名"
* contact.telecom 0..*
* contact.telecom ^short = "聯絡方式"

* communication 0..* MS
* communication ^short = "溝通語言"
* communication.language 1..1 MS
* communication.language ^short = "語言"

* managingOrganization 0..1 MS
* managingOrganization ^short = "保管機構"

Instance: Dental-patient-example
InstanceOf: DentalPatient
Usage: #example
Title: "牙醫－病人範例"
Description: "此範例展示如何使用 DentalPatient Profile 來呈現牙醫病人的資料。"
* identifier[0].system = "http://www.moi.gov.tw/id"
* identifier[0].type = http://terminology.hl7.org/CodeSystem/v2-0203#NI
* identifier[0].type.text = "National unique individual identifier"
* identifier[0].value = "A123456789"
* identifier[1].system = "https://dental-ig.fhir.tw/identifier/medical-record"
* identifier[1].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR
* identifier[1].type.text = "Medical record number"
* identifier[1].value = "MR-20250101-001"
* active = true
* name.text = "王大明"
* name.use = #official
* gender = #male
* birthDate = "1990-01-15"
* telecom[0].system = #phone
* telecom[0].value = "0912-345-678"
* address.text = "台北市信義區市民大道五段123號"
* maritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#M "Married"
* contact.relationship = http://terminology.hl7.org/CodeSystem/v2-0131#C "Emergency Contact"
* contact.name.text = "王美美"
* contact.telecom.system = #phone
* contact.telecom.value = "0923-456-789"
* communication.language = urn:ietf:bcp:47#zh-TW
* communication.language.text = "Chinese (Taiwan)"
* managingOrganization = Reference(Organization/Dental-organization-example)
