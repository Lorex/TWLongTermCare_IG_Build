// Missing Practitioner instance referenced in sports examples

Instance: ltc-practitioner-example
InstanceOf: LTCPractitioner
Title: "長照醫事人員範例"
Description: "一個執行長照服務和運動處方的醫事人員範例"
Usage: #example

* identifier[medicalLicenseNumber].use = #official
* identifier[medicalLicenseNumber].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[medicalLicenseNumber].type.coding.code = #MD
* identifier[medicalLicenseNumber].system = "http://example.org/fhir/NamingSystem/hospital-license"
* identifier[medicalLicenseNumber].value = "KMD12345"

* active = true
* name.use = #official
* name.family = "王"
* name.given = "美玲"
* name.text = "王美玲"

* telecom[0].system = #phone
* telecom[0].value = "02-87654321"
* telecom[0].use = #work

* telecom[1].system = #email
* telecom[1].value = "meiling.wang@ltc-hospital.tw"
* telecom[1].use = #work

* address.use = #work
* address.type = #both
* address.text = "台北市大安區復興南路二段201號"
* address.line = "復興南路二段201號"
* address.city = "台北市"
* address.district = "大安區"
* address.postalCode = "106"
* address.country = "TW"

* gender = #female
* birthDate = "1975-06-10"