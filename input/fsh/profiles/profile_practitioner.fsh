Alias: $TWCorePractitioner = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Practitioner-twcore

Profile: DentalPractitioner
Parent: $TWCorePractitioner
Id: Practitioner-twdental
Title: "牙醫－醫事人員"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Practitioner Resource，以呈現牙醫師的資料。"

* . ^short = "牙醫師的基本資料"
* identifier 1..* MS
* identifier ^short = "牙醫師的身分識別"
* identifier.value 1..1 MS
* identifier.value ^short = "身分證字號/醫師證書字號"

* name 1..* MS
* name ^short = "牙醫師姓名"
* name.text 1..1 MS
* name.text ^short = "完整姓名"

* telecom 0..* MS
* telecom ^short = "聯絡方式"
* telecom.value 1..1 MS
* telecom.value ^short = "電話號碼/電子郵件"

* gender 1..1 MS
* gender ^short = "性別"

* qualification 1..* MS
* qualification ^short = "專業資格"
* qualification.identifier 1..* MS
* qualification.identifier ^short = "專業證照編號"
* qualification.code 1..1 MS
* qualification.code ^short = "證照類型"
* qualification.period 0..1 MS
* qualification.period ^short = "證照有效期間"

Instance: Dental-practitioner-example
InstanceOf: DentalPractitioner
Usage: #example
Title: "牙醫－醫事人員範例"
Description: "此範例展示如何使用 DentalPractitioner Profile 來呈現牙醫師的資料。"

* identifier[0].system = "http://www.moi.gov.tw/id"
* identifier[0].type = http://terminology.hl7.org/CodeSystem/v2-0203#NI
* identifier[0].type.text = "National unique individual identifier"
* identifier[0].value = "B123456789"
* identifier[1].system = "http://mohw.gov.tw/license"
* identifier[1].type = http://terminology.hl7.org/CodeSystem/v2-0203#MD
* identifier[1].type.text = "Medical License number"
* identifier[1].value = "12345"
* name.text = "李醫師"
* telecom[0].system = #phone
* telecom[0].value = "0934-567-890"
* gender = #female
* qualification[0].identifier[0].system = "http://mohw.gov.tw/dental"
* qualification[0].identifier[0].value = "D12345"
* qualification[0].code = http://terminology.hl7.org/CodeSystem/v2-0360#MD "Doctor of Medicine"
* qualification[0].period.start = "2010-01-01" 