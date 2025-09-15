Alias: $TWCoreRelatedPerson = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/RelatedPerson-twcore
Alias: $RelationshipTypeVS-TWLTC = http://ltc-ig.fhir.tw/ValueSet/RelationshipTypeVS-TWLTC
Alias: $ExtensionRelatedPersonIsPrimary = http://ltc-ig.fhir.tw/StructureDefinition/ExtRelatedPersonIsPrimary-TWLTC

Profile: LTCRelatedPerson
Parent: $TWCoreRelatedPerson
Id: LTCRelatedPerson
Title: "長期照顧－關係人"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 RelatedPerson Resource，以呈現住民的關係人，包含家屬、照顧者、法定代理人等與住民有關的人員資料。"

* active 1..1 MS
* active ^short = "是否為生效中的關係人"
* patient 1..1 MS
* patient ^short = "關聯的住民"
* patient only Reference(LTCPatient)
* patient.reference 1..1 MS
* patient.reference ^short = "關聯的住民。[應輸入 Patient Resource ID]"
* relationship 1..1 MS
* relationship ^short = "關係人與住民的關係"
* relationship from $RelationshipTypeVS-TWLTC
* name 1..1 MS
* name ^short = "關係人姓名"
* name.text 1..1 MS
* name.text ^short = "關係人的全名。[應輸入關係人中文全名]"
* telecom 0..* MS
* telecom ^short = "關係人聯絡方式"
* telecom.value 1..1 MS
* telecom.value ^short = "實際的聯絡方式之細節。[應輸入聯絡電話]"
* address 0..1 MS
* address ^short = "關係人地址"
* address.use 0..1 MS
* address.use ^short = "關係人地址的用途"
* address.text 1..1 MS
* address.text ^short = "關係人的地址。[應輸入完整地址]"
* extension contains $ExtensionRelatedPersonIsPrimary named isPrimary 0..1 MS
* extension[isPrimary] ^short = "是否為主要照顧者"
* extension[isPrimary].valueBoolean 1..1 MS
* extension[isPrimary].valueBoolean ^short = "是否為主要照顧者 [ true: 是 / false: 否，該關係人為次要照顧者 ]"

// Example
Instance: ltc-related-person-primary-caregiver-example
InstanceOf: LTCRelatedPerson
Title: "主要照顧者範例"
Description: "一個主要照顧者的範例，展示如何使用 LTCRelatedPerson Profile"
Usage: #example

* active = true

* patient = Reference(ltc-patient-chen-ming-hui)

* relationship.coding.system = "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
* relationship.coding.code = #CHILD
* relationship.coding.display = "child"

* name.use = #usual
* name.text = "陳志強"
* name.family = "陳"
* name.given[0] = "志強"

* telecom[0].system = #phone
* telecom[0].use = #mobile
* telecom[0].value = "0987654321"

* telecom[1].system = #phone
* telecom[1].use = #home
* telecom[1].value = "02-27031234"

* gender = #male

* address.use = #home
* address.text = "台北市大安區仁愛路三段55號8樓"
* address.line = "仁愛路三段55號8樓"
* address.city = "大安區"
* address.state = "台北市"
* address.postalCode = "10657"
* address.country = "TW"

* extension[isPrimary].valueBoolean = true