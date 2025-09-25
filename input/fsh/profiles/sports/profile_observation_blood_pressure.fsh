Alias: $TWCoreObservationBloodPressure = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-bloodPressure-twcore

Profile: PASportObservationBloodPressure
Parent: $TWCoreObservationBloodPressure
Id: PASportObservationBloodPressure
Title: "基礎生理量測－血壓"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現基礎生理量測中涉及之血壓資料。"

* subject 1..1 MS
* performer 0..1

// Example
Instance: pasport-observation-blood-pressure-example
InstanceOf: PASportObservationBloodPressure
Title: "血壓量測範例"
Description: "一個血壓量測的範例，展示如何使用 PASportObservationBloodPressure Profile 來記錄運動前後的血壓變化"
Usage: #example

* status = #final

* category[VSCat].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[VSCat].coding.code = #vital-signs
* category[VSCat].coding.display = "Vital Signs"

* code.coding[BPCode].system = "http://loinc.org"
* code.coding[BPCode].code = #85354-9
* code.coding[BPCode].display = "Blood pressure panel with all children optional"

* subject = Reference(ltc-patient-chen-ming-hui)

* effectiveDateTime = "2024-01-15T09:00:00+08:00"

* performer = Reference(ltc-practitioner-example)

* component[SystolicBP].code.coding[SBPCode].system = "http://loinc.org"
* component[SystolicBP].code.coding[SBPCode].code = #8480-6
* component[SystolicBP].code.coding[SBPCode].display = "Systolic blood pressure"
* component[SystolicBP].valueQuantity.value = 128
* component[SystolicBP].valueQuantity.unit = "mmHg"
* component[SystolicBP].valueQuantity.system = "http://unitsofmeasure.org"
* component[SystolicBP].valueQuantity.code = #mm[Hg]

* component[DiastolicBP].code.coding[DBPCode].system = "http://loinc.org"
* component[DiastolicBP].code.coding[DBPCode].code = #8462-4
* component[DiastolicBP].code.coding[DBPCode].display = "Diastolic blood pressure"
* component[DiastolicBP].valueQuantity.value = 82
* component[DiastolicBP].valueQuantity.unit = "mmHg"
* component[DiastolicBP].valueQuantity.system = "http://unitsofmeasure.org"
* component[DiastolicBP].valueQuantity.code = #mm[Hg]

* bodySite.coding.system = "http://snomed.info/sct"
* bodySite.coding.code = #368208006
* bodySite.coding.display = "Left upper arm structure"

* method.coding.system = "http://snomed.info/sct"
* method.coding.code = #37931006
* method.coding.display = "Auscultation"

* interpretation.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"
* interpretation.coding.code = #N
* interpretation.coding.display = "Normal"

* note[0].time = "2024-01-15T09:00:00+08:00"
* note[0].text = "運動前血壓測量，收縮壓128/舒張壓82mmHg，數值正常，可安全進行運動"