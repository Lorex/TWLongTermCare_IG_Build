Alias: $TWCoreOrganization = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Organization-twcore

Profile: LTCOrganization
Parent: $TWCoreOrganization
Id: Organization-twltc
Title: "長期照顧－機構"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Organization Resource，以呈現機構的資料。這裡的機構包含但不限於醫院、診所、長照機構、社區服務單位等。"

* . ^short = "機構的資訊"
* identifier.value 1..1 MS
* type 1..1 MS
* type ^short = "機構類型"
* name 1..1 MS
* name ^short = "機構名稱"
* telecom 0..* MS
* telecom.value 0..1
* address 0..1 MS
* address.text 0..1
* contact 0..* MS

* identifier.value ^short = "唯一值。[應填入機構代碼]"
* name ^short = "機構名稱。[應填入機構名稱]"
* telecom ^short = "機構聯絡方式。"
* telecom.value ^short = "實際的聯絡方式之細節。[應填入機構電話]"
* address ^short = "機構所在地址。"
* address.text ^short = "地址的文字表述。[應填入機構地址]"

// Example
Instance: ltc-organization-example
InstanceOf: LTCOrganization
Title: "長期照顧機構範例"
Description: "一個長期照顧機構的範例，展示如何使用 LTCOrganization Profile"
Usage: #example

* identifier.use = #usual
* identifier.type = $IdType#PRN "Provider Number"
* identifier.system = "http://www.moi.gov.tw"
* identifier.value = "0131060029"

* active = true

* type = http://terminology.hl7.org/CodeSystem/organization-type#prov "Healthcare Provider"

* name = "新北市私立安康老人長期照顧中心（養護型）"

* telecom[0].system = #phone
* telecom[0].use = #work
* telecom[0].value = "02-29412345"

* telecom[1].system = #fax
* telecom[1].use = #work
* telecom[1].value = "02-29412346"

* address.use = #work
* address.type = #physical
* address.text = "新北市中和區安康路二段123號"
* address.line = "安康路二段123號"
* address.city = "中和區"
* address.state = "新北市"
* address.postalCode = "23511"
* address.country = "TW"

* contact[0].purpose = http://terminology.hl7.org/CodeSystem/contactentity-type#ADMIN "Administrative"
* contact[0].name.use = #official
* contact[0].name.family = "王"
* contact[0].name.given[0] = "志明"
* contact[0].telecom[0].system = #phone
* contact[0].telecom[0].value = "02-29412345"
* contact[0].telecom[0].use = #work