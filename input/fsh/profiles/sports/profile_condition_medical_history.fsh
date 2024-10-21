Profile: PASportsConditionMedicalHistory
Parent: LTCCondition
Id: PASportsConditionMedicalHistory
Title: "運動處方－病史"
Description: "長照機構住民運動處方的病史資料，本 Profile 繼承自身體活動量測 (Physical Activity Measure) 的 Sport Data Condition Profile。"

* category 1..1 MS
* category.coding 1..1 MS
* category.coding.system 1..1 MS
* category.coding.system = "http://loinc.org"
* category.coding.code 1..1 MS
* category.coding.code = #10164-2
* category.coding.display = "History of medical condition"
