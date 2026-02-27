Instance: twcore-organization-hospital-aa12-example
InstanceOf: TWCoreOrganization
Title: "長期照護醫師意見書醫院範例 (AA12)"
Description: "一個長期照護醫師意見書的醫院範例，展示如何使用 TWCoreOrganization Profile"
Usage: #example

* identifier[0].system = "https://www.nhi.gov.tw"
* identifier[0].value = "1234567890"
* identifier[0].use = #official

* identifier[1].system = "https://www.mohw.gov.tw"
* identifier[1].value = "HOSP001"
* identifier[1].use = #official

* name = "台北市立聯合醫院"

* type[0].coding.system = "http://terminology.hl7.org/CodeSystem/organization-type"
* type[0].coding.code = #prov
* type[0].coding.display = "Healthcare Provider"

* telecom[0].system = #phone
* telecom[0].value = "02-25553000"
* telecom[0].use = #work

* telecom[1].system = #email
* telecom[1].value = "info@tpech.gov.tw"
* telecom[1].use = #work

* address.text = "台北市大同區鄭州路145號"
* address.line[0] = "鄭州路145號"
* address.city = "台北市"
* address.district = "大同區"
* address.postalCode = "103"
* address.country = "TW"

* contact[0].purpose.coding.system = "http://terminology.hl7.org/CodeSystem/contactentity-type"
* contact[0].purpose.coding.code = #ADMIN
* contact[0].purpose.coding.display = "Administrative"
* contact[0].name.text = "行政部門"
* contact[0].telecom.system = #phone
* contact[0].telecom.value = "02-25553000"
* contact[0].telecom.use = #work
