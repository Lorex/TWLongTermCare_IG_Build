Alias: $TWCoreOrganization = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Organization-twcore

Profile: DentalOrganization
Parent: $TWCoreOrganization
Id: Organization-twdental
Title: "牙醫－機構"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Organization Resource，以呈現牙醫機構的資料。"

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

Instance: Dental-organization-example
InstanceOf: DentalOrganization
Usage: #example
Title: "牙醫－機構範例"
Description: "此範例展示如何使用 DentalOrganization Profile 來呈現機構的資料。"
* identifier.value = "A123456789"
* type.coding.system = "http://terminology.hl7.org/CodeSystem/organization-type"
* type.coding.code = #prov
* type.coding.display = "Healthcare Provider"
* name = "幸福牙醫中心"
* telecom.system = #phone
* telecom.value = "02-12345678"
* address.text = "台北市信義區市民大道五段789號"
* contact.name.text = "王主任"
* contact.telecom.system = #phone 
* contact.telecom.value = "0912345678"