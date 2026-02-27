Alias: $TWCoreSimpleObservation = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-simple-twcore
Alias: $ObservationCategory = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $SNOMEDCT = http://snomed.info/sct

Profile: PASportObservationBasalMetabolicRate
Parent: $TWCoreSimpleObservation
Id: PASportObservationBasalMetabolicRate
Title: "身體組成分析儀－基礎代謝率"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之基礎代謝率資料。"

* category[twcore] 1..1 MS
* category[twcore].coding 1..1 MS
* category[twcore].coding.system 1..1 MS
* category[twcore].coding.system = $ObservationCategory
* category[twcore].coding.code 1..1 MS
* category[twcore].coding.code = #vital-signs
* category[twcore].coding.display 1..1 MS
* category[twcore].coding.display = "Vital Signs"

* code 1..1 MS
* code ^short = "基礎代謝率"
* code.coding 1..1 MS
* code.coding.system 1..1 MS
* code.coding.system = $SNOMEDCT
* code.coding.code 1..1 MS
* code.coding.code = #165109007
* code.coding.display 1..1 MS
* code.coding.display = "Basal metabolic rate"

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
* valueQuantity.code 1..1 MS
* valueQuantity.code = #kcal

* bodySite 0..1 MS
* bodySite from http://hl7.org/fhir/ValueSet/body-site (extensible)

* method 0..1 MS
* method from http://hl7.org/fhir/ValueSet/observation-methods (extensible)

// Example
Instance: pasport-observation-basal-metabolic-rate-example
InstanceOf: PASportObservationBasalMetabolicRate
Title: "基礎代謝率測量範例"
Description: "一個基礎代謝率測量的範例，展示如何使用 PASportObservationBasalMetabolicRate Profile 來記錄身體組成分析"
Usage: #example

* status = #final

* category[twcore].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[twcore].coding.code = #vital-signs
* category[twcore].coding.display = "Vital Signs"

* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #165109007
* code.coding.display = "Basal metabolic rate"

* subject = Reference(ltc-patient-chen-ming-hui)

* effectiveDateTime = "2024-01-15T08:45:00+08:00"

* performer = Reference(ltc-practitioner-example)

* valueQuantity.value = 1350
* valueQuantity.unit = "kcal"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #kcal
