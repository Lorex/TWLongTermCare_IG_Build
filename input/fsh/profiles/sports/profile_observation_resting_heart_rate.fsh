Alias: $TWCoreSimpleObservation = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-simple-twcore
Alias: $ObservationCategory = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $LOINC = http://loinc.org

Profile: PASportObservationRestingHeartRate
Parent: $TWCoreSimpleObservation
Id: PASportObservationRestingHeartRate
Title: "基礎生理量測－安靜心率"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現基礎生理量測中涉及之安靜心率資料。"

* category[twcore] 1..1 MS
* category[twcore].coding 1..1 MS
* category[twcore].coding.system 1..1 MS
* category[twcore].coding.system = $ObservationCategory
* category[twcore].coding.code 1..1 MS
* category[twcore].coding.code = #vital-signs
* category[twcore].coding.display 1..1 MS
* category[twcore].coding.display = "Vital Signs"

* code 1..1 MS
* code ^short = "安靜心率"
* code.coding 1..* MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    HeartRateCode 1..1 MS and
    RestingHeartRateCode 1..1 MS
* code.coding[HeartRateCode] ^patternCoding.system = $LOINC
* code.coding[HeartRateCode] ^patternCoding.code = #8867-4
* code.coding[HeartRateCode].system 1..1 MS
* code.coding[HeartRateCode].system = $LOINC
* code.coding[HeartRateCode].code 1..1 MS
* code.coding[HeartRateCode].code = #8867-4
* code.coding[HeartRateCode].display 1..1 MS
* code.coding[HeartRateCode].display = "Heart rate"
* code.coding[RestingHeartRateCode] ^patternCoding.system = $LOINC
* code.coding[RestingHeartRateCode] ^patternCoding.code = #40443-4
* code.coding[RestingHeartRateCode].system 1..1 MS
* code.coding[RestingHeartRateCode].system = $LOINC
* code.coding[RestingHeartRateCode].code 1..1 MS
* code.coding[RestingHeartRateCode].code = #40443-4
* code.coding[RestingHeartRateCode].display 1..1 MS
* code.coding[RestingHeartRateCode].display = "Heart rate --resting"

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
* valueQuantity.code = #/min

* bodySite 0..1 MS
* bodySite from http://hl7.org/fhir/ValueSet/body-site (extensible)

* method 0..1 MS
* method from http://hl7.org/fhir/ValueSet/observation-methods (extensible)

// Example
Instance: pasport-observation-resting-heart-rate-example
InstanceOf: PASportObservationRestingHeartRate
Title: "安靜心率測量範例"
Description: "一個安靜心率測量的範例，展示如何使用 PASportObservationRestingHeartRate Profile 來記錄安靜心率資料"
Usage: #example

* status = #final

* category[twcore].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[twcore].coding.code = #vital-signs
* category[twcore].coding.display = "Vital Signs"

* code.coding[HeartRateCode].system = "http://loinc.org"
* code.coding[HeartRateCode].code = #8867-4
* code.coding[HeartRateCode].display = "Heart rate"

* code.coding[RestingHeartRateCode].system = "http://loinc.org"
* code.coding[RestingHeartRateCode].code = #40443-4
* code.coding[RestingHeartRateCode].display = "Heart rate --resting"

* subject = Reference(ltc-patient-chen-ming-hui)

* effectiveDateTime = "2024-01-15T08:45:00+08:00"

* performer = Reference(ltc-practitioner-example)

* valueQuantity.value = 68
* valueQuantity.unit = "/min"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #/min
