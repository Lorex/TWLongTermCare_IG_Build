Instance: ltc-practitioner-physician-aa12-example
InstanceOf: LTCPractitioner
Title: "長期照護醫師意見書醫師範例 (AA12)"
Description: "一個長期照護醫師意見書的醫師範例，展示如何使用 TWCorePractitioner Profile"
Usage: #example

* identifier[0].system = "https://www.tph.mohw.gov.tw"
* identifier[0].value = "DR001234"
* identifier[0].use = #official

* identifier[1].system = "http://www.immigration.gov.tw"
* identifier[1].value = "A123456789"
* identifier[1].use = #official

* name.text = "王醫師"
* name.family = "王"
* name.given[0] = "志明"
* name.prefix[0] = "Dr."

* telecom[0].system = #phone
* telecom[0].value = "02-23123456"
* telecom[0].use = #work

* telecom[1].system = #email
* telecom[1].value = "dr.wang@hospital.tw"
* telecom[1].use = #work

* gender = #male

* birthDate = "1975-06-15"

* address.text = "台北市中正區重慶南路一段122號"
* address.line[0] = "重慶南路一段122號"
* address.city = "台北市"
* address.district = "中正區"
* address.postalCode = "100"
* address.country = "TW"

* qualification[0].identifier.system = "https://www.mohw.gov.tw"
* qualification[0].identifier.value = "MD123456"
* qualification[0].code.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0360"
* qualification[0].code.coding.code = #MD
* qualification[0].code.coding.display = "Doctor of Medicine"
* qualification[0].period.start = "2000-07-01"
* qualification[0].issuer.display = "台灣大學醫學院"
