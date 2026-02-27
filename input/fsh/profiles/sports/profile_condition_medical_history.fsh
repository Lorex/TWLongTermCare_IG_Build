Profile: PASportConditionMedicalHistory
Parent: LTCCondition
Id: PASportConditionMedicalHistory
Title: "運動處方－病史"
Description: "長照機構住民運動處方的病史資料，本 Profile 繼承自身體活動量測 (Physical Activity Measure) 的 Sport Data Condition Profile。"

* category 1..1 MS
* category.coding 1..1 MS
* category.coding.system 1..1 MS
* category.coding.system = "http://loinc.org"
* category.coding.code 1..1 MS
* category.coding.code = #10164-2
* category.coding.display = "History of Present illness Narrative"

// Example
Instance: pasport-condition-medical-history-example
InstanceOf: PASportConditionMedicalHistory
Title: "病史記錄範例"
Description: "一個病史記錄的範例，展示如何使用 PASportConditionMedicalHistory Profile 來記錄患者的病史"
Usage: #example

* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed

* category.coding.system = "http://loinc.org"
* category.coding.code = #10164-2
* category.coding.display = "History of Present illness Narrative"

* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #73211009
* code.coding.display = "Diabetes mellitus"
* code.text = "第二型糖尿病，已控制"

* subject = Reference(ltc-patient-chen-ming-hui)
* recordedDate = "2024-01-15"
