Alias: $Goal = http://hl7.org/fhir/StructureDefinition/Goal

Profile: LTCGoal
Parent: $Goal
Id: LTCGoal
Title: "長期照顧－照顧目標"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Goal Resource，以呈現長期照顧情境中涉及之照顧目標內容。"

* lifecycleStatus 1..1 MS
* lifecycleStatus ^short = "照顧目標的生命週期狀態。[應填入 proposed / planned / accepted / active / on-hold / completed / cancelled / entered-in-error / rejected]"
* description 1..1 MS
* description ^short = "照顧目標的描述"
* description from GoalDescriptionVS-TWLTC (extensible)
* description.coding 1..1 MS
* description.coding ^short = "照顧目標的描述代碼"
* description.coding.system 1..1 MS
* description.coding.system ^short = "照顧目標的描述代碼系統。[應填入 SNOMED CT 或 LOINC 等術語系統的 URL]"
* description.coding.code 1..1 MS
* description.coding.code ^short = "照顧目標的描述代碼。[應填入 SNOMED CT 或 LOINC 等術語系統的代碼]"
* subject 1..1 MS
* subject ^short = "照顧目標的適用主體"
* subject only Reference(LTCPatient)
* subject.reference 1..1 MS
* subject.reference ^short = "照顧目標的適用主體。[應輸入 Patient Resource ID]"
* start[x] 0..1 MS
* start[x] ^short = "照顧的開始日期。[應填入日期或日期時間]"
* target 0..* MS
* target ^short = "照顧的目標"
* target.detail[x] 0..1 MS
* target.detail[x] ^short = "照顧目標的詳細描述。"
* target.due[x] 0..1 MS
* target.due[x] ^short = "照顧目標的預計完成日期。[應填入日期或日期時間]"
* note 0..* MS
* note ^short = "照顧目標的附註"
* expressedBy 0..1 MS
* expressedBy ^short = "照顧目標的提出者"
* expressedBy only Reference(LTCPractitioner or LTCRelatedPerson or LTCPractitionerRole)
* expressedBy.reference 1..1 MS
* expressedBy.reference ^short = "誰提出了這個照顧目標？[應輸入 Practitioner / RelatedPerson / PractitionerRole Resource ID]"

// Example
Instance: ltc-goal-mobility-improvement-example
InstanceOf: LTCGoal
Title: "行動能力改善目標範例"
Description: "一個行動能力改善目標的範例，展示如何使用 LTCGoal Profile"
Usage: #example

* lifecycleStatus = #active

* description.coding.system = "http://snomed.info/sct"
* description.coding.code = #710950005
* description.coding.display = "Progressive mobility (regime/therapy)"
* description.text = "改善住民行動能力"

* subject = Reference(ltc-patient-chen-ming-hui)

* startDate = "2024-01-15"

* target[0].measure.coding.system = "http://snomed.info/sct"
* target[0].measure.coding.code = #82971005
* target[0].measure.coding.display = "Impaired mobility (finding)"
* target[0].detailString = "能夠獨立使用助行器行走50公尺"
* target[0].dueDate = "2024-04-15"

* expressedBy = Reference(ltc-practitioner-role-nurse-example)

* note[0].time = "2024-01-15"
* note[0].text = "住民目前需要部分協助才能行走，期望透過復健訓練達到獨立行走的目標"

