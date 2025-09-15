Alias: $EducationStatusExt = http://ltc-ig.fhir.tw/StructureDefinition/ExtPatientEducationStatus-TWLTC
Alias: $PatientIdentityExt = http://ltc-ig.fhir.tw/StructureDefinition/ExtPatientIdentity-TWLTC
Alias: $EducationStatusVS-TWLTC = http://ltc-ig.fhir.tw/ValueSet/EducationStatusVS-TWLTC
Alias: $PatientIdentityVS-TWLTC = http://ltc-ig.fhir.tw/ValueSet/PatientIdentityVS-TWLTC

Profile: LTCPatientCMS
Title: "照顧管理評估量表－個案基本資料"
Parent: LTCPatient
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Patient Resource，以呈現適用於照顧管理評估量表的長照機構住民基本資料。"

* maritalStatus 1..1 MS
* maritalStatus ^short = "A1. 個案婚姻狀況"

* extension contains $EducationStatusExt named educationStatus 1..1 MS
* extension[educationStatus] ^short = "A2. 個案教育程度"
* extension[educationStatus].valueCodeableConcept 1..1 MS
* extension[educationStatus].valueCodeableConcept ^short = "個案的教育程度代碼"
* extension[educationStatus].valueCodeableConcept from $EducationStatusVS-TWLTC

* extension contains $PatientIdentityExt named identity 1..1 MS
* extension[identity] ^short = "A3. 個案身分別"
* extension[identity].valueCodeableConcept 1..1 MS
* extension[identity].valueCodeableConcept ^short = "個案的身分別代碼"
* extension[identity].valueCodeableConcept from $PatientIdentityVS-TWLTC

// Example
Instance: ltc-patient-cms-chen-ming-hui-example
InstanceOf: LTCPatientCMS
Title: "照顧管理評估量表住民範例"
Description: "一個照顧管理評估量表住民的範例，展示如何使用 LTCPatientCMS Profile"
Usage: #example

* identifier[idCardNumber].use = #official
* identifier[idCardNumber].type = $IdType#NNxxx "National Person Identifier"
* identifier[idCardNumber].system = "http://www.moi.gov.tw"
* identifier[idCardNumber].value = "A123456789"

* identifier[member].use = #official
* identifier[member].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[member].type.coding.code = #PRN
* identifier[member].type.coding.display = "Provider Number"
* identifier[member].system = "http://www.ankang-ltc.tw"
* identifier[member].value = "R2024001"

* active = true

* name[official].use = #official
* name[official].text = "Chen Ming Hui"

* name[usual].use = #usual
* name[usual].text = "陳明慧"

* telecom[0].system = #phone
* telecom[0].use = #mobile
* telecom[0].value = "0912345678"

* gender = #female

* birthDate = "1945-03-15"

* maritalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus"
* maritalStatus.coding.code = #W
* maritalStatus.coding.display = "Widowed"
* maritalStatus.text = "喪偶"

* extension[educationStatus].valueCodeableConcept.coding.system = "http://ltc-ig.fhir.tw/CodeSystem/EducationStatusCS-TWLTC"
* extension[educationStatus].valueCodeableConcept.coding.code = #elementary
* extension[educationStatus].valueCodeableConcept.coding.display = "國小"

* extension[identity].valueCodeableConcept.coding.system = "http://ltc-ig.fhir.tw/CodeSystem/PatientIdentityCS-TWLTC"
* extension[identity].valueCodeableConcept.coding.code = #1
* extension[identity].valueCodeableConcept.coding.display = "一般戶"

* address[home].use = #home
* address[home].text = "新北市中和區安康路二段123號3樓301室"
* address[home].line = "安康路二段123號3樓301室"
* address[home].city = "中和區"
* address[home].state = "新北市"
* address[home].postalCode = "23511"
* address[home].country = "TW"

* address[billing].use = #billing
* address[billing].text = "台北市大安區和平東路二段76號2樓"
* address[billing].line = "和平東路二段76號2樓"
* address[billing].city = "大安區"
* address[billing].state = "台北市"
* address[billing].postalCode = "10663"
* address[billing].country = "TW"

* contact[0].relationship = http://terminology.hl7.org/CodeSystem/v2-0131#N "Next-of-Kin"
* contact[0].name.use = #usual
* contact[0].name.text = "陳志強"
* contact[0].telecom[0].system = #phone
* contact[0].telecom[0].use = #mobile
* contact[0].telecom[0].value = "0987654321"

* managingOrganization = Reference(ltc-organization-example)
 