// Missing Patient instances referenced in other examples

Instance: ltc-patient-cms-example
InstanceOf: LTCPatientCMS
Title: "CMS評估個案範例"
Description: "一個接受CMS評估的長照個案範例"
Usage: #example

* identifier[idCardNumber].use = #official
* identifier[idCardNumber].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[idCardNumber].type.coding.code = #NNxxx
* identifier[idCardNumber].type.coding.display = "National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code"
* identifier[idCardNumber].type.text = "National Person Identifier (TWN)"
* identifier[idCardNumber].system = "http://www.moi.gov.tw"
* identifier[idCardNumber].value = "A123456789"

* identifier[member].use = #official
* identifier[member].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[member].type.coding.code = #PRN
* identifier[member].type.coding.display = "Provider number"
* identifier[member].system = "http://ltc-hospital.tw"
* identifier[member].value = "LTC-12345"

* active = true
* name.use = #official
* name.family = "陳"
* name.given = "明華"
* name.text = "陳明華"

* telecom[0].system = #phone
* telecom[0].value = "02-12345678"
* telecom[0].use = #home

* gender = #female
* birthDate = "1945-08-15"

* address.use = #home
* address.type = #both
* address.text = "台北市信義區信義路五段7號"
* address.line = "信義路五段7號"
* address.city = "台北市"
* address.district = "信義區"
* address.postalCode = "110"
* address.country = "TW"

* maritalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus"
* maritalStatus.coding.code = #M
* maritalStatus.coding.display = "Married"

// Required extensions for LTCPatientCMS
* extension[educationStatus].valueCodeableConcept.coding.system = "http://ltc-ig.fhir.tw/CodeSystem/EducationStatusCS-TWLTC"
* extension[educationStatus].valueCodeableConcept.coding.code = #elementary
* extension[educationStatus].valueCodeableConcept.coding.display = "國小"

* extension[identity].valueCodeableConcept.coding.system = "http://ltc-ig.fhir.tw/CodeSystem/PatientIdentityCS-TWLTC"
* extension[identity].valueCodeableConcept.coding.code = #1
* extension[identity].valueCodeableConcept.coding.display = "一般戶"

* contact.relationship.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0131"
* contact.relationship.coding.code = #C
* contact.relationship.coding.display = "Emergency Contact"
* contact.name.use = #official
* contact.name.family = "陳"
* contact.name.given = "建國"
* contact.name.text = "陳建國"
* contact.telecom.system = #phone
* contact.telecom.value = "0912-345-678"
* contact.telecom.use = #mobile

Instance: ltc-patient-referral-example
InstanceOf: LTCPatientReferral
Title: "轉介個案範例"
Description: "一個需要長照服務轉介的個案範例"
Usage: #example

* identifier[idCardNumber].use = #official
* identifier[idCardNumber].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[idCardNumber].type.coding.code = #NNxxx
* identifier[idCardNumber].type.coding.display = "National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code"
* identifier[idCardNumber].type.text = "National Person Identifier (TWN)"
* identifier[idCardNumber].system = "http://www.moi.gov.tw"
* identifier[idCardNumber].value = "B987654321"

* identifier[member].use = #official
* identifier[member].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[member].type.coding.code = #PRN
* identifier[member].type.coding.display = "Provider number"
* identifier[member].system = "http://ltc-referral-center.tw"
* identifier[member].value = "REF-98765"

* active = true
* name.use = #official
* name.family = "李"
* name.given = "秀芳"
* name.text = "李秀芳"

* telecom[0].system = #phone
* telecom[0].value = "07-98765432"
* telecom[0].use = #home

* gender = #female
* birthDate = "1950-03-22"

* address.use = #home
* address.type = #both
* address.text = "高雄市前鎮區成功二路25號"
* address.line = "成功二路25號"
* address.city = "高雄市"
* address.district = "前鎮區"
* address.postalCode = "806"
* address.country = "TW"

* maritalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus"
* maritalStatus.coding.code = #W
* maritalStatus.coding.display = "Widowed"

// Required extension for LTCPatientReferral
* extension[economyStatus].valueCodeableConcept.coding.system = "http://ltc-ig.fhir.tw/CodeSystem/EconomyStatusCS-TWLTC"
* extension[economyStatus].valueCodeableConcept.coding.code = #barely-maintain
* extension[economyStatus].valueCodeableConcept.coding.display = "勉持"

* contact.relationship.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0131"
* contact.relationship.coding.code = #N
* contact.relationship.coding.display = "Next-of-Kin"
* contact.name.use = #official
* contact.name.family = "李"
* contact.name.given = "志明"
* contact.name.text = "李志明"
* contact.telecom.system = #phone
* contact.telecom.value = "0923-456-789"
* contact.telecom.use = #mobile
