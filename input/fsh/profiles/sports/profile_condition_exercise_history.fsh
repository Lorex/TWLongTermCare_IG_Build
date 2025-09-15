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
* code.coding[ExerciseHistory].system = $SNOMEDCT
* code.coding[ExerciseHistory].code 1..1 MS
* subject 1..1 MS
* subject only Reference(LTCPatient)
* subject.reference 1..1 MS
* subject.reference ^short = "擁有此病情、問題或診斷的住民。[應輸入 Patient Resource ID]"

// Example
Instance: pasport-condition-exercise-history-example
InstanceOf: PASportConditionExerciseHistory
Title: "運動史記錄範例"
Description: "一個運動史記錄的範例，展示如何使用 PASportConditionExerciseHistory Profile 來記錄患者的運動背景"
Usage: #example

* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active

* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed

* category.coding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS-Sport"
* category.coding.code = #PhysicalActivity
* category.coding.display = "Physical Activity"

* code.coding[ExerciseHistory].system = "http://snomed.info/sct"
* code.coding[ExerciseHistory].code = #229070002
* code.coding[ExerciseHistory].display = "Exercise therapy"

* code.text = "患者過去有規律運動習慣，主要以散步和太極拳為主"

* subject = Reference(ltc-patient-chen-ming-hui)

* recordedDate = "2024-01-15"

* recorder = Reference(ltc-practitioner-role-nurse-example)

* onsetDateTime = "2020-01-01"

* note[0].time = "2024-01-15"
* note[0].text = "患者報告從60歲開始每日早晨散步30分鐘，並參加社區太極拳課程已有4年。近期因關節不適減少運動頻率，希望透過專業指導恢復運動習慣。"

* evidence[0].detail = Reference(pasport-observation-heart-rate-example)