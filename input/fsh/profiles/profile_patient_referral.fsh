Alias:  $TWCorePatient = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Patient-twcore
Alias: $AddressUseVS-TWLTC = http://ltc-ig.fhir.tw/ValueSet/AddressUseVS-TWLTC
Alias: $EconomyStatusExt = http://ltc-ig.fhir.tw/StructureDefinition/ExtPatientEconomyStatus-TWLTC
Alias: $EconomyStatusVS-TWLTC = http://ltc-ig.fhir.tw/ValueSet/EconomyStatusVS-TWLTC

Profile: LTCPatientReferral
Title: "轉介單－個案基本資料"
Parent: LTCPatient
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Patient Resource，以呈現適用於長期照護管理中心個案服務初篩表/轉介單的長照機構住民基本資料。"
* extension contains $EconomyStatusExt named economyStatus 1..1 MS
* extension[economyStatus] ^short = "住民的經濟狀況"
* extension[economyStatus].valueCodeableConcept 1..1 MS
* extension[economyStatus].valueCodeableConcept ^short = "住民的經濟狀況代碼"
* extension[economyStatus].valueCodeableConcept from $EconomyStatusVS-TWLTC

// * extension contains http://hl7.org/fhir/StructureDefinition/patient-birthPlace named birthPlace 0..1 MS
// * generalPractitioner only Reference(OSAPractitioner)

// Example
Instance: ltc-patient-referral-chen-ming-hui-example
InstanceOf: LTCPatientReferral
Title: "轉介單住民範例"
Description: "一個轉介單住民的範例，展示如何使用 LTCPatientReferral Profile"
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

* extension[economyStatus].valueCodeableConcept.coding.system = "http://ltc-ig.fhir.tw/CodeSystem/EconomyStatusCS-TWLTC"
* extension[economyStatus].valueCodeableConcept.coding.code = #middle-income
* extension[economyStatus].valueCodeableConcept.coding.display = "中等收入戶"

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