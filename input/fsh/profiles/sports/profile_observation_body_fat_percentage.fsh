Alias: $TWCoreSimpleObservation = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-simple-twcore
Alias: $ObservationCategory = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $LOINC = http://loinc.org

Profile: PASportObservationBodyFatPercentage
Parent: $TWCoreSimpleObservation
Id: PASportObservationBodyFatPercentage
Title: "身體組成分析儀－體脂率"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之體脂率資料。"

* category[twcore] 1..1 MS
* category[twcore].coding 1..1 MS
* category[twcore].coding.system 1..1 MS
* category[twcore].coding.system = $ObservationCategory
* category[twcore].coding.code 1..1 MS
* category[twcore].coding.code = #vital-signs
* category[twcore].coding.display 1..1 MS
* category[twcore].coding.display = "Vital Signs"

* code 1..1 MS
* code ^short = "體脂率"
* code.coding 1..1 MS
* code.coding.system 1..1 MS
* code.coding.system = $LOINC
* code.coding.code 1..1 MS
* code.coding.code = #41982-0
* code.coding.display 1..1 MS
* code.coding.display = "Percentage of body fat Measured"

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
* valueQuantity.code = #%

* bodySite 0..1 MS
* bodySite from http://hl7.org/fhir/ValueSet/body-site (extensible)

* method 0..1 MS
* method from http://hl7.org/fhir/ValueSet/observation-methods (extensible)

// Example
Instance: pasport-observation-body-fat-percentage-example
InstanceOf: PASportObservationBodyFatPercentage
Title: "體脂率測量範例"
Description: "一個體脂率測量的範例，展示如何使用 PASportObservationBodyFatPercentage Profile 來記錄身體組成分析"
Usage: #example

* status = #final

* category[twcore].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[twcore].coding.code = #vital-signs
* category[twcore].coding.display = "Vital Signs"

* code.coding.system = "http://loinc.org"
* code.coding.code = #41982-0
* code.coding.display = "Percentage of body fat Measured"

* subject = Reference(ltc-patient-chen-ming-hui)

* effectiveDateTime = "2024-01-15T08:45:00+08:00"

* performer = Reference(ltc-practitioner-example)

* valueQuantity.value = 28.5
* valueQuantity.unit = "%"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #%

* method.coding.system = "http://snomed.info/sct"
* method.coding.code = #702668008
* method.coding.display = "Bioelectrical impedance analysis"

* device.display = "InBody 270 身體組成分析儀"

* interpretation.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"
* interpretation.coding.code = #N
* interpretation.coding.display = "Normal"

* note[0].time = "2024-01-15T08:45:00+08:00"
* note[0].text = "體脂率28.5%，位於女性正常範圍內。建議透過有氧運動和肌力訓練來優化身體組成"

* referenceRange[0].low.value = 21
* referenceRange[0].low.unit = "%"
* referenceRange[0].low.system = "http://unitsofmeasure.org"
* referenceRange[0].low.code = #%
* referenceRange[0].high.value = 33
* referenceRange[0].high.unit = "%"
* referenceRange[0].high.system = "http://unitsofmeasure.org"
* referenceRange[0].high.code = #%
* referenceRange[0].text = "女性正常範圍"