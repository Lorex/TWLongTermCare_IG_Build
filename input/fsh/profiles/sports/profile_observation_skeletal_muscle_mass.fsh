Alias: $TWCoreSimpleObservation = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-simple-twcore
Alias: $ObservationCategory = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $TempCodeCS = http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS-Sport

Profile: PASportObservationSkeletalMuscleMass
Parent: $TWCoreSimpleObservation
Id: PASportObservationSkeletalMuscleMass
Title: "身體組成分析儀－骨骼肌重"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之骨骼肌重資料。"

* category[twcore] 1..1 MS
* category[twcore].coding 1..1 MS
* category[twcore].coding.system 1..1 MS
* category[twcore].coding.system = $ObservationCategory
* category[twcore].coding.code 1..1 MS
* category[twcore].coding.code = #vital-signs
* category[twcore].coding.display 1..1 MS
* category[twcore].coding.display = "Vital Signs"

* code 1..1 MS
* code ^short = "骨骼肌重"
* code.coding 1..1 MS
* code.coding.system 1..1 MS
* code.coding.system = $TempCodeCS
* code.coding.code 1..1 MS
* code.coding.code = #SMM
* code.coding.display 1..1 MS
* code.coding.display = "骨骼肌重"

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
* valueQuantity.code = #kg

* bodySite 0..1 MS
* bodySite from http://hl7.org/fhir/ValueSet/body-site (extensible)

* method 0..1 MS
* method from http://hl7.org/fhir/ValueSet/observation-methods (extensible)

// Example
Instance: pasport-observation-skeletal-muscle-mass-example
InstanceOf: PASportObservationSkeletalMuscleMass
Title: "骨骼肌重測量範例"
Description: "一個骨骼肌重測量的範例，展示如何使用 PASportObservationSkeletalMuscleMass Profile 來記錄肌肉量變化"
Usage: #example

* status = #final

* category[twcore].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[twcore].coding.code = #vital-signs
* category[twcore].coding.display = "Vital Signs"

* code.coding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS-Sport"
* code.coding.code = #SMM
* code.coding.display = "骨骼肌重"

* subject = Reference(ltc-patient-chen-ming-hui)

* effectiveDateTime = "2024-01-15T08:45:00+08:00"

* performer = Reference(ltc-practitioner-example)

* valueQuantity.value = 20.8
* valueQuantity.unit = "kg"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #kg

* method.coding.system = "http://snomed.info/sct"
* method.coding.code = #702668008
* method.coding.display = "Bioelectrical impedance analysis"

* device.display = "InBody 270 身體組成分析儀"

* interpretation.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"
* interpretation.coding.code = #L
* interpretation.coding.display = "Low"

* note[0].time = "2024-01-15T08:45:00+08:00"
* note[0].text = "骨骼肌重20.8公斤，略低於年齡標準。建議增加阻力訓練以提升肌肉量，預防肌少症"

* referenceRange[0].low.value = 22.0
* referenceRange[0].low.unit = "kg"
* referenceRange[0].low.system = "http://unitsofmeasure.org"
* referenceRange[0].low.code = #kg
* referenceRange[0].high.value = 27.0
* referenceRange[0].high.unit = "kg"
* referenceRange[0].high.system = "http://unitsofmeasure.org"
* referenceRange[0].high.code = #kg
* referenceRange[0].text = "65歲女性正常範圍"

* component[0].code.coding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS-Sport"
* component[0].code.coding.code = #SMI
* component[0].code.coding.display = "骨骼肌指數"
* component[0].valueQuantity.value = 7.6
* component[0].valueQuantity.unit = "kg/m2"
* component[0].valueQuantity.system = "http://unitsofmeasure.org"
* component[0].valueQuantity.code = #kg/m2