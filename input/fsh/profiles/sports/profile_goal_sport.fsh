Alias: $Goal = http://hl7.org/fhir/StructureDefinition/Goal
Alias: $TempCodeCS = http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS-Sport
Profile: PASportGoal
Parent: $Goal
Id: PASportGoal
Title: "運動處方－運動目標"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Goal Resource，以呈現運動處方中涉及之運動目標內容。"

* identifier 1..* MS
* identifier.system 1..1 MS
* identifier.value 1..1
* lifecycleStatus 1..1 MS
* category 1..* MS
* category.coding 1..1 MS
* category.coding.system 1..1 MS
* category.coding.system = $TempCodeCS
* category.coding.code 1..1 MS
* category.coding.code = #PhysicalActivity
* description 1..1 MS
* description.text 1..1 MS
* subject 1..1 MS
* subject only Reference(LTCPatient)
* target ^slicing.discriminator[0].type = #value
* target ^slicing.discriminator[0].path = "measure.coding.code"
* target ^slicing.discriminator[1].type = #value
* target ^slicing.discriminator[1].path = "measure.coding.system"
* target ^slicing.ordered = false
* target ^slicing.rules = #open
* target 1..* MS
* target contains
    step 1..1 MS
* target[step].measure 1..1 MS
* target[step].measure.coding 1..1 MS
* target[step].measure.coding.system 1..1 MS
* target[step].measure.coding.system = "http://loinc.org"
* target[step].measure.coding.code 1..1 MS
* target[step].measure.coding.code = #41950-7
* target[step].measure.coding.display 0..1 MS
* target[step].measure.coding.display = "Number of steps in 24 hour Measured"
* target[step].detail[x] 1..1 MS

* target[step].detail[x] ^slicing.discriminator[0].type = #type
* target[step].detail[x] ^slicing.discriminator[0].path = "$this"
* target[step].detail[x] ^slicing.ordered = false
* target[step].detail[x] ^slicing.rules = #open
* target[step].detail[x] contains 
    detailQuantity 1..1 MS
* target[step].detail[x][detailQuantity] only Quantity
* target[step].detail[x][detailQuantity].value 1..1 MS
* target[step].detail[x][detailQuantity].value only decimal
* target[step].detail[x][detailQuantity].unit 1..1 MS
* target[step].detail[x][detailQuantity].unit only string
* target[step].detail[x][detailQuantity].unit = "steps per day"
* target[step].detail[x][detailQuantity].system 1..1 MS
* target[step].detail[x][detailQuantity].system = "http://unitsofmeasure.org" (exactly)
* target[step].detail[x][detailQuantity].code 1..1 MS
* target[step].detail[x][detailQuantity].code = #/d

// Example
Instance: pasport-goal-walking-steps-example
InstanceOf: PASportGoal
Title: "運動目標－步行步數範例"
Description: "一個運動目標的範例，展示如何使用 PASportGoal Profile 來表示每日步行步數目標"
Usage: #example

* identifier.system = "http://ltc-ig.fhir.tw/goal-id"
* identifier.value = "goal-walking-2024-001"

* lifecycleStatus = #active

* category.coding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS-Sport"
* category.coding.code = #PhysicalActivity
* category.coding.display = "Physical Activity"

* description.text = "患者每日步行步數目標：達到每日8000步，促進心血管健康和肌肉力量"

* subject = Reference(ltc-patient-chen-ming-hui)

* startDate = "2024-01-15"
* statusDate = "2024-01-15"

* target[step].measure.coding.system = "http://loinc.org"
* target[step].measure.coding.code = #41950-7
* target[step].measure.coding.display = "Number of steps in 24 hour Measured"

* target[step].detailQuantity.value = 8000
* target[step].detailQuantity.unit = "steps per day"
* target[step].detailQuantity.system = "http://unitsofmeasure.org"
* target[step].detailQuantity.code = #/d

* target[step].dueDate = "2024-04-15"

* note[0].time = "2024-01-15"
* note[0].text = "考慮患者目前體能狀況，設定循序漸進的步數目標，最終達到每日8000步"