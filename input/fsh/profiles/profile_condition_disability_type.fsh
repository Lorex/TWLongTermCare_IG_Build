Alias: $TWCoreCondition = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Condition-twcore
Alias: $ConditionDisabilityTypeVS = http://ltc-ig.fhir.tw/ValueSet/ConditionDisabilityTypeVS-TWLTC
Alias: $ConditionSeverityVS-TWLTC = http://ltc-ig.fhir.tw/ValueSet/ConditionSeverityVS-TWLTC

Profile: LTCConditionDisabilityType
Parent: LTCCondition
Id: LTCConditionDisabilityType
Title: "長期照顧－身心障礙類型"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Condition Resource，以呈現長照機構住民的身心障礙類型。"

* code 1..1 MS
* code ^short = "障礙類別"
* code from $ConditionDisabilityTypeVS (required)
* code.coding 1..1 MS
* code.coding ^short = "身心障礙別代碼"
* code.coding.system 1..1 MS
* code.coding.system = "http://ltc-ig.fhir.tw/CodeSystem/ConditionDisabilityTypeCS-TWLTC"
* code.coding.code 1..1 MS
* code.coding.code ^short = "身心障礙類型代碼"
* severity 0..1 MS
* severity ^short = "障礙程度"
* severity from $ConditionSeverityVS-TWLTC (required)

// Example
Instance: ltc-condition-disability-type-limb-example
InstanceOf: LTCConditionDisabilityType
Title: "肢體障礙類型範例"
Description: "一個肢體障礙類型的範例，展示如何使用 LTCConditionDisabilityType Profile"
Usage: #example

* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding.code = #active

* verificationStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
* verificationStatus.coding.code = #confirmed

* category[0].coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category[0].coding.code = #problem-list-item
* category[0].coding.display = "Problem List Item"

* code.coding.system = "http://ltc-ig.fhir.tw/CodeSystem/ConditionDisabilityTypeCS-TWLTC"
* code.coding.code = #07
* code.coding.display = "第七類"

* severity.coding.system = "http://snomed.info/sct"
* severity.coding.code = #255604002
* severity.coding.display = "Mild (qualifier value)"

* subject = Reference(ltc-patient-chen-ming-hui)

* onsetDateTime = "2015-08-20"

* recorder = Reference(ltc-practitioner-role-nurse-example)

* note[0].time = "2024-01-15"
* note[0].text = "左下肢功能輕度受限，影響行走功能，持有身心障礙手冊"

* bodySite[0].coding.system = "http://snomed.info/sct"
* bodySite[0].coding.code = #61685007
* bodySite[0].coding.display = "Lower limb structure"
* meta.profile[0] = "http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionDisabilityType"