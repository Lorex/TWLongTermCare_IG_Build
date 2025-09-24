Alias: $TWCorePractitioner = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Practitioner-twcore

Profile: LTCPractitioner
Title: "長期照顧－照顧服務提供者"
Parent: $TWCorePractitioner
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Practitioner Resource，以呈現照顧服務提供者的資料。這裡的照顧服務提供者係指醫事人員、照顧服務員、其他經過專業訓練的照顧服務提供者，領域包含但不限於長期照顧與運動。"

* identifier 1..* MS
* identifier ^short = "照顧服務提供者的身分識別碼"
* name 1..* MS
* name ^short = "照顧服務提供者的姓名"

// Example
Instance: ltc-practitioner-nurse-example
InstanceOf: LTCPractitioner
Title: "長期照顧護理師範例"
Description: "一個長期照顧護理師的範例，展示如何使用 LTCPractitioner Profile"
Usage: #example

* identifier[0].use = #official
* identifier[0].type = $IdType#PRN "Provider Number"
* identifier[0].system = "http://example.org/fhir/NamingSystem/practitioner-id"
* identifier[0].value = "N123456789"

* active = true

* name[0].use = #official
* name[0].family = "王"
* name[0].given[0] = "美玲"
* name[0].text = "王美玲"

* telecom[0].system = #phone
* telecom[0].use = #work
* telecom[0].value = "02-29412345"

* telecom[1].system = #email
* telecom[1].use = #work
* telecom[1].value = "meiling.wang@ltc-center.tw"

* gender = #female

* qualification[0].identifier.system = "http://example.org/fhir/NamingSystem/nursing-license"
* qualification[0].identifier.value = "護理執照123456"
* qualification[0].code.coding.system = "http://snomed.info/sct"
* qualification[0].code.coding.code = #224535009
* qualification[0].code.coding.display = "Registered nurse"