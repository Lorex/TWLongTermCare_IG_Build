Alias: $TempCodeCS = http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS-Sport
Alias: $ExerciseHistoryVS = http://ltc-ig.fhir.tw/ValueSet/TempCodeVS-Sport

Profile: PASportConditionExerciseHistory
Parent: LTCCondition
Id: PASportConditionExerciseHistory
Title: "運動處方－運動史"
Description: "長照機構住民運動處方的運動史資料，本 Profile 繼承自身體活動量測 (Physical Activity Measure) 的 Sport Data Condition Profile。"

* category 1..1 MS
* category.coding 1..1 MS
* category.coding.system 1..1 MS
* category.coding.system = $TempCodeCS
* category.coding.code 1..1 MS
* category.coding.code = #PhysicalActivity
* code 1..1 MS
* code ^short = "病情、問題或診斷的識別"
* code.coding 1..* MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    ExerciseHistory 1..1 MS
* code.coding[ExerciseHistory] from $ExerciseHistoryVS (required)
* code.coding[ExerciseHistory].system 1..1 MS
* code.coding[ExerciseHistory].system = $SNOMEDCT20240901
* code.coding[ExerciseHistory].code 1..1 MS
* subject 1..1 MS
* subject only Reference(LTCPatient)
* subject.reference 1..1 MS
* subject.reference ^short = "擁有此病情、問題或診斷的住民。[應輸入 Patient Resource ID]"
