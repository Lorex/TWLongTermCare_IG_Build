Alias: $TWCoreCondition = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Condition-twcore
Alias: $ReferralConditionTubeVS = http://ltc-ig.fhir.tw/ValueSet/ReferralConditionTubeVS-TWLTC

Profile: LTCConditionTube
Parent: $TWCoreCondition
Id: LTCConditionTube
Title: "長期照顧－管路裝設狀況"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Condition Resource，以呈現長照機構住民的管路裝設狀況與類別。"


* code 1..1 MS
* code ^short = "管路裝設狀況與類別"
* code from $ReferralConditionTubeVS (required)
* code.coding 1..1 MS
* code.coding ^short = "管路裝設狀況與類別代碼"
* code.coding.system 1..1 MS
* code.coding.system = "http://ltc-ig.fhir.tw/CodeSystem/ReferralConditionTubeCS-TWLTC"
* code.coding.code 1..1 MS
* code.coding.code ^short = "管路裝設狀況與類別代碼，如果代碼為 other，則需填寫備註以描述管路使用情況"
* note 0..1 MS
* note ^short = "管路裝設狀況與類別備註"

Invariant: LTCConditionTube-1
Description: "The Condition.note SHALL be present if the Condition.code is 'http://ltc-ig.fhir.tw/ValueSet/ReferralConditionTubeVS-TWLTC|other'."
Expression: "code.coding.code = 'other' implies note.exists()"
Severity: #error
XPath: "f:code/f:coding[f:system/@value='http://ltc-ig.fhir.tw/ValueSet/ReferralConditionTubeVS-TWLTC']/f:code/@value = 'other' implies f:note"

// Example
Instance: ltc-condition-tube-nasogastric-example
InstanceOf: LTCConditionTube
Title: "鼻胃管管路狀況範例"
Description: "一個鼻胃管的管路狀況範例，展示如何使用 LTCConditionTube Profile"
Usage: #example

* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* clinicalStatus.coding.code = #active

* verificationStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
* verificationStatus.coding.code = #confirmed

* category[0].coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category[0].coding.code = #problem-list-item
* category[0].coding.display = "Problem List Item"

* code.coding.system = "http://ltc-ig.fhir.tw/CodeSystem/ReferralConditionTubeCS-TWLTC"
* code.coding.code = #nasogastric-tube
* code.coding.display = "鼻胃管"

* subject = Reference(ltc-patient-referral-chen-ming-hui-example)

* onsetDateTime = "2024-01-01"

* recorder = Reference(ltc-practitioner-role-nurse-example)

* note[0].time = "2024-01-15"
* note[0].text = "持續置放鼻胃管，需定期更換"
* meta.profile[0] = "http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionTube"

