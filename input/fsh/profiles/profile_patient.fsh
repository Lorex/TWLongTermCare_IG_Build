Alias: $TWCorePatient = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Patient-twcore
Alias: $LTCAddress = http://ltc-ig.fhir.tw/StructureDefinition/Address-TWLTC


Profile: LTCPatient
Title: "TWLTC Patient"
Parent: $TWCorePatient
Description: "長照機構住民基本資料，用以表述長照機構住民的基本資料。"
* identifier 1..4 MS
* identifier.value 1..1 MS
* identifier.value ^short = "住民唯一識別碼。[應擇一填入身分證字號／護照號碼／居留證號碼／長照機構住民代號]"
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
* address only $LTCAddress
* address 1..2 MS
* address ^short = "使用郵政規範表達住民的現居地址"
* address.text 1..1 MS
* address.text ^short = "住民的現居地址。[應輸入完整地址]"
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