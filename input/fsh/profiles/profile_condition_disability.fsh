Alias: $TWCoreCondition = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Condition-twcore
Alias: $ConditionDisabilityVS = http://ltc-ig.fhir.tw/ValueSet/ConditionDisabilityVS-TWLTC

Profile: LTCConditionDisability
Parent: LTCCondition
Id: LTCConditionDisability
Title: "長期照顧－身心障礙手冊持有狀態"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Condition Resource，以呈現長照機構住民的身心障礙手冊持有狀態。"

* code 1..1 MS
* code ^short = "問題類別"
* code from $ConditionDisabilityVS (required)
* code.coding 1..1 MS
* code.coding ^short = "領有身心障礙手冊的代碼"
* code.coding.system 1..1 MS
* code.coding.system = "http://ltc-ig.fhir.tw/CodeSystem/ConditionDisabilityCS-TWLTC"
* code.coding.code 1..1 MS
* code.coding.code ^short = "身心障礙持有狀態代碼"

// Example
Instance: ltc-condition-disability-example
InstanceOf: LTCConditionDisability
Title: "身心障礙手冊持有狀態範例"
Description: "一個身心障礙手冊持有狀態的範例，展示如何使用 LTCConditionDisability Profile"
Usage: #example

* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding.code = #active

* verificationStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
* verificationStatus.coding.code = #confirmed

* category[0].coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category[0].coding.code = #problem-list-item
* category[0].coding.display = "Problem List Item"

* code.coding.system = "http://ltc-ig.fhir.tw/CodeSystem/ConditionDisabilityCS-TWLTC"
* code.coding.code = #disability-card-holder
* code.coding.display = "持有身心障礙手冊"

* subject = Reference(ltc-patient-chen-ming-hui)

* onsetDateTime = "2015-08-20"

* recorder = Reference(ltc-practitioner-role-nurse-example)

* note[0].time = "2024-01-15"
* note[0].text = "住民持有身心障礙手冊，類別為肢體障礙輕度"