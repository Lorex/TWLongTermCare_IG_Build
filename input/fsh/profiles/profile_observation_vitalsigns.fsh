Alias: $TWCoreObsercationVitalSigns = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-vitalSigns-twcore

Profile: LTCObservationVitalSigns
Parent: $TWCoreObsercationVitalSigns
Id: LTCObservationVitalSigns
Title: "長期照顧－生命體徵"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現長照機構住民的生命體徵資料。"

* code ^short = "量測的生命體徵項目"
* subject ^short = "此生命體徵資料的量測對象"
* value[x] ^short = "生命體徵量測值"

// Example
Instance: ltc-observation-blood-pressure-example
InstanceOf: LTCObservationVitalSigns
Title: "血壓量測範例"
Description: "一個血壓量測的範例，展示如何使用 LTCObservationVitalSigns Profile"
Usage: #example

* status = #final

* category[VSCat].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[VSCat].coding.code = #vital-signs
* category[VSCat].coding.display = "Vital Signs"

* code.coding.system = "http://loinc.org"
* code.coding.code = #85354-9
* code.coding.display = "Blood pressure panel with all children optional"
* code.text = "血壓"

* subject = Reference(ltc-patient-chen-ming-hui)

* effectiveDateTime = "2024-01-15T09:00:00+08:00"

* performer[0] = Reference(ltc-practitioner-role-nurse-example)

* component[0].code.coding.system = "http://loinc.org"
* component[0].code.coding.code = #8480-6
* component[0].code.coding.display = "Systolic blood pressure"
* component[0].valueQuantity.value = 135
* component[0].valueQuantity.unit = "mmHg"
* component[0].valueQuantity.system = "http://unitsofmeasure.org"
* component[0].valueQuantity.code = #mm[Hg]

* component[1].code.coding.system = "http://loinc.org"
* component[1].code.coding.code = #8462-4
* component[1].code.coding.display = "Diastolic blood pressure"
* component[1].valueQuantity.value = 85
* component[1].valueQuantity.unit = "mmHg"
* component[1].valueQuantity.system = "http://unitsofmeasure.org"
* component[1].valueQuantity.code = #mm[Hg] 