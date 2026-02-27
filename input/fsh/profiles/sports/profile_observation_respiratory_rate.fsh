Alias: $TWCoreObservationVitalSigns = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-vitalSigns-twcore
Alias: $LOINC = http://loinc.org

Profile: PASportObservationRespiratoryRate
Parent: $TWCoreObservationVitalSigns
Id: PASportObservationRespiratoryRate
Title: "基礎生理量測－呼吸速率"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現基礎生理量測中涉及之呼吸速率資料。"

* code 1..1 MS
* code ^short = "呼吸速率"
* code.coding 1..1 MS
* code.coding.system 1..1 MS
* code.coding.system = $LOINC
* code.coding.code 1..1 MS
* code.coding.code = #9279-1
* code.coding.display 1..1 MS
* code.coding.display = "Respiratory rate"

* subject 1..1 MS
* subject ^short = "量測對象"
* subject only Reference(LTCPatient)
* subject.reference 1..1 MS
* subject.reference ^short = "量測對象。[應輸入 Patient Resource ID]"

* performer 0..1 MS
* performer ^short = "量測人員"
* performer only Reference(LTCPractitioner)
* performer.reference 1..1 MS
* performer.reference ^short = "量測人員。[應輸入 Practitioner Resource ID]"

* valueQuantity 1..1 MS
* valueQuantity ^short = "檢驗檢查的實際結果"
* valueQuantity.value 1..1 MS
* valueQuantity.value ^short = "數值"
* valueQuantity.unit 1..1 MS
* valueQuantity.unit ^short = "單位"
* valueQuantity.system 1..1 MS
* valueQuantity.system = "http://unitsofmeasure.org"

* bodySite 0..1 MS
* bodySite from http://hl7.org/fhir/ValueSet/body-site (extensible)

* method 0..1 MS
* method from http://hl7.org/fhir/ValueSet/observation-methods (extensible)

// Example
Instance: pasport-observation-respiratory-rate-example
InstanceOf: PASportObservationRespiratoryRate
Title: "呼吸速率測量範例"
Description: "一個呼吸速率測量的範例，展示如何使用 PASportObservationRespiratoryRate Profile 來記錄呼吸速率資料"
Usage: #example

* status = #final

* category[VSCat].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[VSCat].coding.code = #vital-signs
* category[VSCat].coding.display = "Vital Signs"

* code.coding.system = "http://loinc.org"
* code.coding.code = #9279-1
* code.coding.display = "Respiratory rate"

* subject = Reference(ltc-patient-chen-ming-hui)

* effectiveDateTime = "2024-01-15T08:45:00+08:00"

* performer = Reference(ltc-practitioner-example)

* valueQuantity.value = 18
* valueQuantity.unit = "/min"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #/min
