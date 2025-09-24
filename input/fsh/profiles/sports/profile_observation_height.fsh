Alias: $TWCoreObservationVitalSigns = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-vitalSigns-twcore
Alias: $LOINC = http://loinc.org

Profile: PASportObservationHeight
Parent: $TWCoreObservationVitalSigns
Id: PASportObservationHeight
Title: "基礎生理量測－身高"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現基礎生理量測中涉及之身高資料。"

* code 1..1 MS
* code ^short = "身高"
* code.coding 1..1 MS
* code.coding.system 1..1 MS
* code.coding.system = $LOINC
* code.coding.code 1..1 MS
* code.coding.code = #8302-2
* code.coding.display 1..1 MS
* code.coding.display = "Body height"

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
Instance: pasport-observation-height-example
InstanceOf: PASportObservationHeight
Title: "身高量測範例"
Description: "一個身高量測的範例，展示如何使用 PASportObservationHeight Profile 來記錄身高數據"
Usage: #example

* status = #final

* category[VSCat].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[VSCat].coding.code = #vital-signs
* category[VSCat].coding.display = "Vital Signs"

* code.coding.system = "http://loinc.org"
* code.coding.code = #8302-2
* code.coding.display = "Body height"

* subject = Reference(ltc-patient-chen-ming-hui)

* effectiveDateTime = "2024-01-15T08:15:00+08:00"

* performer = Reference(ltc-practitioner-example)

* valueQuantity.value = 165.8
* valueQuantity.unit = "cm"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #cm

* method.coding.system = "http://snomed.info/sct"
* method.coding.code = #363808001
* method.coding.display = "Measured body weight"

* note[0].time = "2024-01-15T08:15:00+08:00"
* note[0].text = "身高165.8公分，用於計算BMI及設計個人化運動計畫"