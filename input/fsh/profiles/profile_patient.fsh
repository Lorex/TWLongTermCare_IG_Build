Alias:  $TWCorePatient = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Patient-twcore
Alias: $AddressUseVSTWLTC = http://ltc-ig.fhir.tw/ValueSet/AddressUseVS-TWLTC
Alias: $EconomyStatusExt = http://ltc-ig.fhir.tw/StructureDefinition/EconomyStatusExt-TWLTC

Profile: LTCPatient
Title: "TW Long Term Care Patient"
Parent: $TWCorePatient
Description: "長照機構住民基本資料，用以表述長照機構住民的基本資料。"
* identifier 1..4 MS
* identifier.value 1..1 MS
* identifier.value ^short = "住民唯一識別碼。[應擇一填入身分證字號／護照號碼／居留證號碼／長照機構住民代號]"
* name 1..* MS
* name ^short = "住民姓名"
* name.text 1..1 MS
* name.text ^short = "住民的全名"
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
* address contains
    current 0..1 MS and
    residential 0..1 MS
* address[current] 0..1 MS
* address[current] ^short = "使用郵政規範表達住民的現居地址"
* address[current].use 1..1 MS
* address[current].use = #current
* address[current].text 1..1 MS
* address[current].text ^short = "住民的現居地址。[應輸入完整地址]"
* address[residential] 0..1 MS 
* address[residential] ^short = "使用郵政規範表達住民的戶籍地址"
* address[residential].use 1..1 MS
* address[residential].use = #residential
* address[residential].text 1..1 MS
* address[residential].text ^short = "住民的戶籍地址。[應輸入完整地址]"
* address.use ^short = "住民地址的用途"
* address.use from $AddressUseVSTWLTC
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

// * extension contains http://hl7.org/fhir/StructureDefinition/patient-birthPlace named birthPlace 0..1 MS
// * generalPractitioner only Reference(OSAPractitioner)