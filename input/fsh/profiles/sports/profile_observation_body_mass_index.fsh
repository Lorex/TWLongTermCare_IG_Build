Alias: $TWCoreObservationBMI = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-bmi-twcore

Profile: PASportObservationBodyMassIndex
Parent: $TWCoreObservationBMI
Id: PASportObservationBodyMassIndex
Title: "身體組成分析儀－身體質量指數"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之BMI資料。"

* subject 1..1 MS
* performer 0..*

// Example
Instance: pasport-observation-bmi-example
InstanceOf: PASportObservationBodyMassIndex
Title: "身體質量指數測量範例"
Description: "一個BMI測量的範例，展示如何使用 PASportObservationBodyMassIndex Profile 來記錄身體質量指數"
Usage: #example

* status = #final

* category[VSCat].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[VSCat].coding.code = #vital-signs
* category[VSCat].coding.display = "Vital Signs"

* code.coding[BMICode].system = "http://loinc.org"
* code.coding[BMICode].code = #39156-5
* code.coding[BMICode].display = "Body mass index (BMI) [Ratio]"

* subject = Reference(ltc-patient-chen-ming-hui)

* effectiveDateTime = "2024-01-15T08:30:00+08:00"

* performer = Reference(ltc-practitioner-role-nurse-example)

* valueQuantity.value = 23.8
* valueQuantity.unit = "kg/m2"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #kg/m2

* derivedFrom[0] = Reference(pasport-observation-weight-example)
* derivedFrom[1] = Reference(pasport-observation-height-example)

* interpretation.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"
* interpretation.coding.code = #N
* interpretation.coding.display = "Normal"

* note[0].time = "2024-01-15T08:30:00+08:00"
* note[0].text = "BMI值23.8，屬於正常範圍，建議維持目前體重並透過運動增強體能"