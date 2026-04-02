Alias: $TWCoreObservationSimple = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-simple-twcore

Profile: DentalPlaqueObservation
Parent: $TWCoreObservationSimple
Id: Observation-plaque-twdental
Title: "牙醫－牙菌斑檢查"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現牙菌斑檢查的資料。"

* . ^short = "牙菌斑檢查的資料"
* status 1..1 MS
* status ^short = "檢查狀態"
* category 1..* MS
* category ^short = "檢查分類"
* code 1..1 MS
* code ^short = "檢查代碼"
* code.coding.system = "http://dental-ig.fhir.tw/CodeSystem/CS-DentalExamination-twdental"
* code.coding.code = #PLAQUE
* code.coding.display = "牙菌斑檢查"
* subject 1..1 MS
* subject only Reference(DentalPatient)
* subject ^short = "受檢病人"
* encounter 1..1 MS
* encounter only Reference(DentalEncounter)
* encounter ^short = "關聯的就醫事件"
* effectiveDateTime 1..1 MS
* effectiveDateTime ^short = "檢查時間"
* performer 1..* MS
* performer ^short = "執行者"
* valueQuantity 0..1 MS
* valueQuantity ^short = "牙菌斑指數(百分比)"
* valueQuantity.value 0..1 MS
* valueQuantity.unit = "%"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #%
* component 0..* MS
* component ^short = "各牙位的牙菌斑紀錄"
* component.code 1..1 MS
* component.code ^short = "牙位代碼"
* component.valueCodeableConcept 0..1 MS
* component.valueCodeableConcept ^short = "牙菌斑標記"
* component.valueCodeableConcept from http://dental-ig.fhir.tw/ValueSet/VS-PlaqueMark-twdental (required)

Instance: Dental-plaque-observation-example
InstanceOf: DentalPlaqueObservation
Usage: #example
Title: "牙醫－牙菌斑檢查範例"
Description: "此範例展示如何使用 DentalPlaqueObservation Profile 來呈現牙菌斑檢查的資料。"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam "Exam"
* code.coding.system = "http://dental-ig.fhir.tw/CodeSystem/CS-DentalExamination-twdental"
* code.coding.code = #PLAQUE
* code.coding.display = "牙菌斑檢查"
* subject = Reference(Patient/Dental-patient-example)
* encounter = Reference(Encounter/Dental-encounter-example)
* effectiveDateTime = "2025-01-01T09:15:00+08:00"
* performer = Reference(Practitioner/Dental-practitioner-example)
* valueQuantity.value = 25.5
* valueQuantity.unit = "%"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #%
* component[0].code.coding.system = "http://dental-ig.fhir.tw/CodeSystem/CS-ToothNumber-twdental"
* component[0].code.coding.code = #11
* component[0].code.coding.display = "右上正中門齒"
* component[0].valueCodeableConcept = http://dental-ig.fhir.tw/CodeSystem/CS-PlaqueMark-twdental#1 "有牙菌斑"
* component[1].code.coding.system = "http://dental-ig.fhir.tw/CodeSystem/CS-ToothNumber-twdental"
* component[1].code.coding.code = #12
* component[1].code.coding.display = "右上側門齒"
* component[1].valueCodeableConcept = http://dental-ig.fhir.tw/CodeSystem/CS-PlaqueMark-twdental#0 "無牙菌斑"
