Instance: ltc-condition-need-assistance-example
InstanceOf: LTCConditionNeed
Title: "需要照護協助狀況範例"
Description: "個案需要長期照護協助的狀況範例，用於轉介Bundle中"
Usage: #example

* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* category.coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* category.coding.code = #problem-list-item
* severity.coding.system = "http://snomed.info/sct"
* severity.coding.code = #24484000
* severity.coding.display = "Severe"

* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #296391000000100
* code.coding.display = "Needs assistance with shaving (finding)"
* code.text = "需要協助刮鬍"

* subject = Reference(ltc-patient-referral-example)
* onsetDateTime = "2024-01-15"
* recordedDate = "2024-09-15"

* note.text = "個案由於身體功能退化，在日常生活活動上需要他人協助，包括洗澡、穿衣、進食等基本活動"
