Instance: ltc-condition-need-assistance-example
InstanceOf: LTCCondition
Title: "需要照護協助狀況範例"
Description: "個案需要長期照護協助的狀況範例，用於轉介Bundle中"
Usage: #example

* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* severity.coding.system = "http://snomed.info/sct"
* severity.coding.code = #24484000
* severity.coding.display = "Severe"

* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #160693008
* code.coding.display = "Needs assistance with activities of daily living"
* code.text = "需要日常生活活動協助"

* subject = Reference(ltc-patient-referral-example)
* onsetDateTime = "2024-01-15"
* recordedDate = "2024-09-15"

* note.text = "個案由於身體功能退化，在日常生活活動上需要他人協助，包括洗澡、穿衣、進食等基本活動"
