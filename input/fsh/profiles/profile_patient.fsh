Alias: $TWCorePatient = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Patient-twcore
Alias: $LTCAddress = http://ltc-ig.fhir.tw/StructureDefinition/Address-TWLTC


Profile: LTCPatient
Title: "長期照顧－住民基本資料"
Parent: $TWCorePatient
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Patient Resource，以呈現長照機構住民的基本資料。"
* identifier 1..* MS
* identifier.value 1..1 MS
* identifier.value ^short = "住民唯一識別碼。[應擇一填入身分證字號／護照號碼／居留證號碼／長照機構住民代號]"
* identifier contains
    member 1..1 MS
* identifier[member] ^short = "住民在機構中的身分識別碼"
* identifier[member].use 0..1 MS
* identifier[member].use = #official
* identifier[member].type 1..1 MS
* identifier[member].type.coding 1..1 MS
* identifier[member].type.coding.system 1..1 MS
* identifier[member].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[member].type.coding.code 1..1 MS
* identifier[member].type.coding.code = #PRN
* identifier[member].type.coding.display 0..1 MS
* identifier[member].type.text 0..1 MS
* identifier[member].system 1..1 MS
* identifier[member].system ^short = "住民在機構中的身分識別碼的系統。[應填入機構網址]"
* identifier[member].value 1..1 MS
* identifier[member].value ^short = "住民在機構中的身分識別碼。[應填入機構住民代號]"
* name 1..2 MS
* name[official].use MS
* name[official].use = #official
* name[official] ^short = "住民英文姓名"
* name[official].text 1..1 MS
* name[official].text ^short = "住民的英文全名"
* name[official].text ^definition = "住民的完整姓名，包括姓氏和名字。"
* name[usual].use MS
* name[usual].use = #usual
* name[usual] ^short = "住民中文姓名"
* name[usual].text 1..1 MS
* name[usual].text ^short = "住民的中文全名"
* name[usual].text ^definition = "住民的完整姓名，包括姓氏和名字。"
* telecom 1..* MS
* telecom ^short = "住民聯絡方式"
* telecom.value 1..1 MS
* telecom.value ^short = "實際的聯絡方式之細節。[應輸入聯絡電話]"
* birthDate 1..1 MS
* birthDate ^short = "住民的出生年月日"
* address 1..2 MS
* address ^slicing.discriminator.type = #value
* address ^slicing.discriminator.path = "use"
* address ^slicing.rules = #open
* address ^slicing.description = "Slice based on address.use"
* address ^short = "使用郵政規範表達住民的地址"
* address contains
    home 0..1 MS and
    billing 0..1 MS
* address[home].use = #home
* address[home] ^short = "住民的現居地址"
* address[home].text 1..1 MS
* address[home].text ^short = "住民的現居地址。[應輸入完整地址]"
* address[billing].use = #billing
* address[billing] ^short = "住民的戶籍地址"
* address[billing].text 1..1 MS
* address[billing].text ^short = "住民的戶籍地址。[應輸入完整地址]"
* contact 1..* MS
* contact ^short = "住民的緊急聯絡人"
* contact.relationship 1..1 MS
* contact.relationship ^short = "緊急連絡人與住民的關係"
* contact.name 1..1 MS
* contact.name ^short = "緊急聯絡人姓名"
* contact.name.text 1..1 MS
* contact.name.text ^short = "緊急聯絡人的全名"
* contact.telecom 1..* MS
* contact.telecom ^short = "緊急聯絡人的聯絡方式。[應輸入緊急聯絡人電話]"
* managingOrganization 0..1 MS
* managingOrganization ^short = "住民所屬的長照機構"
* managingOrganization.reference 1..1 MS
* managingOrganization.reference ^short = "住民所屬的長照機構。[應輸入 Organization Resource ID]"
* managingOrganization only Reference(LTCOrganization)