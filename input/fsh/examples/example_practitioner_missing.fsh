// Missing Practitioner instance referenced in sports examples

Instance: ltc-practitioner-example
InstanceOf: LTCPractitioner
Title: "長照醫事人員範例"
Description: "一個執行長照服務和運動處方的醫事人員範例"
Usage: #example

* identifier[0].use = #official
* identifier[0].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[0].type.coding.code = #MD
* identifier[0].type.coding.display = "Medical License number"
* identifier[0].system = "http://www.mohw.gov.tw/doctor"
* identifier[0].value = "KMD12345"

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

* qualification[0].identifier.system = "http://www.mohw.gov.tw/license"
* qualification[0].identifier.value = "PT-2005-0123"
* qualification[0].code.coding.system = "http://snomed.info/sct"
* qualification[0].code.coding.code = #36682004
* qualification[0].code.coding.display = "Physiotherapist"
* qualification[0].period.start = "2005-07-15"
* qualification[0].issuer.display = "衛生福利部"

* qualification[1].identifier.system = "http://www.mohw.gov.tw/license"
* qualification[1].identifier.value = "LTC-2010-5678"
* qualification[1].code.coding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* qualification[1].code.coding.code = #long-term-care-specialist
* qualification[1].code.coding.display = "長期照護專科"
* qualification[1].period.start = "2010-03-20"
* qualification[1].issuer.display = "台灣長期照護學會"
