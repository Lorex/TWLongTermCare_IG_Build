Alias: $TWCoreObservationVitalSigns = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-vitalSigns-twcore
Alias: $LOINC = http://loinc.org

Profile: PASportObservationHeartRate
Parent: $TWCoreObservationVitalSigns
Id: PASportObservationHeartRate
Title: "基礎生理量測－心率"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現基礎生理量測中涉及之心率資料。"

* code 1..1 MS
* code ^short = "心率"
* code.coding 1..1 MS
* code.coding.system 1..1 MS
* code.coding.system = $LOINC
* code.coding.code 1..1 MS
* code.coding.code = #8867-4
* code.coding.display 1..1 MS
* code.coding.display = "Heart rate"

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
Instance: pasport-observation-heart-rate-example
InstanceOf: PASportObservationHeartRate
Title: "心率量測範例"
Description: "一個心率量測的範例，展示如何使用 PASportObservationHeartRate Profile 來記錄運動前後的心率變化"
Usage: #example

* status = #final

* category[VSCat].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[VSCat].coding.code = #vital-signs
* category[VSCat].coding.display = "Vital Signs"

* code.coding.system = "http://loinc.org"
* code.coding.code = #8867-4
* code.coding.display = "Heart rate"

* subject = Reference(ltc-patient-chen-ming-hui)

* effectiveDateTime = "2024-01-15T09:30:00+08:00"

* performer = Reference(ltc-practitioner-example)

* valueQuantity.value = 72
* valueQuantity.unit = "beats/min"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #/min

* bodySite.coding.system = "http://snomed.info/sct"
* bodySite.coding.code = #368209003
* bodySite.coding.display = "Right upper arm structure"

* method.coding.system = "http://snomed.info/sct"
* method.coding.code = #37931006
* method.coding.display = "Auscultation"

* note[0].time = "2024-01-15T09:30:00+08:00"
* note[0].text = "運動前靜息心率，患者狀態穩定，準備開始進行步行運動"