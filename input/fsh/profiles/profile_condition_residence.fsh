Alias: $TWCoreCondition = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Condition-twcore
Alias: $ReferralConditionResidenceVS = http://ltc-ig.fhir.tw/ValueSet/ReferralConditionResidenceVS-TWLTC

Profile: LTCConditionResidence
Parent: $TWCoreCondition
Id: LTCConditionResidence
Title: "長期照顧－居住狀況"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Condition Resource，以呈現長照機構住民的居住狀況。"

* code 1..1 MS
* code ^short = "居住狀況"
* code from $ReferralConditionResidenceVS (required)
* code.coding 1..1 MS
* code.coding ^short = "居住狀況代碼"
* code.coding.system 1..1 MS
* code.coding.system = "http://ltc-ig.fhir.tw/CodeSystem/ReferralConditionResidenceCS-TWLTC"
* code.coding.code 1..1 MS
* code.coding.code ^short = "個案是否獨居？"

// Example
Instance: ltc-condition-residence-not-alone-example
InstanceOf: LTCConditionResidence
Title: "非獨居狀況範例"
Description: "一個非獨居狀況的範例，展示如何使用 LTCConditionResidence Profile"
Usage: #example

* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding.code = #active

* verificationStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
* verificationStatus.coding.code = #confirmed

* category[0].coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category[0].coding.code = #problem-list-item
* category[0].coding.display = "Problem List Item"

* code.coding.system = "http://ltc-ig.fhir.tw/CodeSystem/ReferralConditionResidenceCS-TWLTC"
* code.coding.code = #not-alone
* code.coding.display = "非獨居"

* subject = Reference(ltc-patient-chen-ming-hui)

* recordedDate = "2024-01-15"

* recorder = Reference(ltc-practitioner-role-nurse-example)

* note[0].time = "2024-01-15"
* note[0].text = "與兒子同住，有家人照顧，居住環境安全"