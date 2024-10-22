Alias: $TWCoreSimpleObservation = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-simple-twcore
Alias: $ObservationCategory = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $SportTrainingVS = http://ltc-ig.fhir.tw/ValueSet/SportTrainingVS-Sport
Alias: $SportTrainingCS = http://ltc-ig.fhir.tw/CodeSystem/SportTrainingCS-Sport

Profile: PASportObservationWeightTraining
Parent: $TWCoreSimpleObservation
Id: PASportObservationWeightTraining
Title: "運動項目－重量訓練"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現運動項目中涉及之重量訓練資料。"

* category[twcore] 1..1 MS
* category[twcore].coding 1..1 MS
* category[twcore].coding.system 1..1 MS
* category[twcore].coding.system = $ObservationCategory
* category[twcore].coding.code 1..1 MS
* category[twcore].coding.code = #activity
* category[twcore].coding.display 1..1 MS
* category[twcore].coding.display = "Activity"
* code 1..1 MS
* code.coding 1..*
* code.coding.system 1..1 MS
* code.coding.system = $LOINC
* code.coding.code 1..1 MS
* code.coding.code = #LA11839-0
* code.coding.display 1..1 MS
* code.coding.display = "Weights"
* valueCodeableConcept 1..1 MS
* valueCodeableConcept.coding 0..1
* valueCodeableConcept.coding.system 1..1 MS
* valueCodeableConcept.coding.code 1..1 MS
* valueCodeableConcept.coding.display 1..1 MS
* valueCodeableConcept.text 0..1 MS

* bodySite 0..1 MS
* bodySite from http://hl7.org/fhir/ValueSet/body-site (extensible)
* method 0..1 MS
* method from http://hl7.org/fhir/ValueSet/observation-methods (extensible)

* subject 1..1 MS
* subject ^short = "量測對象"
* subject only Reference(LTCPatient)
* subject.reference 1..1 MS
* subject.reference ^short = "量測對象。[應輸入 Patient Resource ID]"
* performer 0..1
* performer ^short = "量測人員"
* performer only Reference(LTCPractitioner)
* performer.reference 1..1 MS
* performer.reference ^short = "量測人員。[應輸入 Practitioner Resource ID]"

* component 3..* MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code.coding.code"
* component ^slicing.rules = #open
* component ^slicing.description = "重量訓練應紀錄訓練重量、組數、次數等資料，故此 Resource 至少有 3 個 component"
* component ^slicing.ordered = false
* component contains
    Weight 1..1 MS and
    Sets 1..1 MS and
    Completed 1..1 MS
* component[Weight] ^short = "訓練重量"
* component[Weight].code 1..1 MS
* component[Weight].code ^short = "訓練重量代碼"
* component[Weight].code.coding 1..1 MS
* component[Weight].code.coding.system 1..1 MS
* component[Weight].code.coding.system = $SportTrainingCS
* component[Weight].code.coding.code 1..1 MS
* component[Weight].code.coding.code = #training-wt
* component[Weight].code.coding.display 1..1 MS
* component[Weight].code.coding.display = "訓練重量"
* component[Weight].valueQuantity 0..1 MS
* component[Weight].valueQuantity.value 1..1 MS
* component[Weight].valueQuantity.unit 1..1 MS
* component[Weight].valueQuantity.system 1..1 MS
* component[Weight].valueQuantity.system = "http://unitsofmeasure.org"
* component[Weight].valueQuantity.code 1..1 MS
* component[Weight].valueQuantity.code = #kg

* component[Sets] ^short = "訓練組數"
* component[Sets].code 1..1 MS
* component[Sets].code ^short = "重量訓練組數"
* component[Sets].code.coding 1..1 MS
* component[Sets].code.coding.system 1..1 MS
* component[Sets].code.coding.system = $SportTrainingCS
* component[Sets].code.coding.code 1..1 MS
* component[Sets].code.coding.code = #sets
* component[Sets].code.coding.display 1..1 MS
* component[Sets].code.coding.display = "訓練組數"
* component[Sets].value[x] 1..1 MS
* component[Sets].value[x] only Quantity

* component[Completed] ^short = "次數"
* component[Completed].code 1..1 MS
* component[Completed].code ^short = "運動達成次數代碼"
* component[Completed].code.coding 1..1 MS
* component[Completed].code.coding.system 1..1 MS
* component[Completed].code.coding.system = $LOINC
* component[Completed].code.coding.code 1..1 MS
* component[Completed].code.coding.code = #100298-9
* component[Completed].code.coding.display 1..1 MS
* component[Completed].code.coding.display = "Repetition count"
* component[Completed].value[x] 1..1 MS
* component[Completed].value[x] only Quantity
