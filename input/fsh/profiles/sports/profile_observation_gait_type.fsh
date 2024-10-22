Alias: $TWCoreSimpleObservation = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-simple-twcore
Alias: $ObservationCategory = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $GaitCycleCS = http://ltc-ig.fhir.tw/CodeSystem/GaitCycleCS-Sport
Alias: $GaitTypeVS = http://ltc-ig.fhir.tw/ValueSet/GaitTypeVS-Sport
Alias: $SNOMED = http://snomed.info/sct

Profile: PASportObservationGaitType
Parent: $TWCoreSimpleObservation
Id: PASportObservationGaitType
Title: "穿戴裝置－步態分析"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現穿戴裝置中涉及之步態分析資料。"

* category[twcore] 1..1 MS
* category[twcore].coding 1..1 MS
* category[twcore].coding.system 1..1 MS
* category[twcore].coding.system = $ObservationCategory
* category[twcore].coding.code 1..1 MS
* category[twcore].coding.code = #activity
* category[twcore].coding.display 1..1 MS
* category[twcore].coding.display = "Activity"
* code 1..1 MS
* code.coding 1..1 MS
* code.coding.system 1..1 MS
* code.coding.system = $SNOMED
* code.coding.code 1..1 MS
* code.coding.code = #298302000
* code.coding.display 1..1 MS
* code.coding.display = "Finding of gait"
* subject 1..1 MS
* subject ^short = "量測對象"
* subject only Reference(LTCPatient)
* subject.reference 1..1 MS
* subject.reference ^short = "量測對象。[應輸入 Patient Resource ID]"
* performer 0..1
* performer ^short = "量測人員"
* performer only Reference(LTCPractitioner)
* performer.reference 1..1 MS
* performer.reference ^short = "量測人員。[應輸入 Practitioner Resource ID]"
* bodySite 1..1 MS
* bodySite from http://hl7.org/fhir/ValueSet/body-site (extensible)
* method 0..1
* method from http://hl7.org/fhir/ValueSet/observation-methods (extensible)
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from $GaitTypeVS (required)
* component 3..* MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code.coding.code"
* component ^slicing.rules = #open
* component ^slicing.description = "步態分析分為正常百分比、內側百分比、外側百分比，故此 Resource 至少有 3 個 component"
* component ^slicing.ordered = false
* component contains
    normal 1..1 MS and
    medial 1..1 MS and
    lateral 1..1 MS
* component[normal] ^short = "正常百分比"
* component[normal].code 1..1 MS
* component[normal].code ^short = "正常步態代碼"
* component[normal].code.coding 1..1 MS
* component[normal].code.coding.system 1..1 MS
* component[normal].code.coding.system = $SNOMED
* component[normal].code.coding.code 1..1 MS
* component[normal].code.coding.code = #811702
* component[normal].code.coding.display 1..1 MS
* component[normal].code.coding.display = "Gait normal"
* component[normal].valueQuantity 0..1 MS
* component[normal].valueQuantity.value 1..1 MS
* component[normal].valueQuantity.unit 1..1 MS
* component[normal].valueQuantity.system 1..1 MS
* component[normal].valueQuantity.system = "http://unitsofmeasure.org"
* component[normal].valueQuantity.code 1..1 MS
* component[normal].valueQuantity.code = #%

* component[medial] ^short = "內側百分比"
* component[medial].code 1..1 MS
* component[medial].code ^short = "內側步態代碼"
* component[medial].code.coding 1..1 MS
* component[medial].code.coding.system 1..1 MS
* component[medial].code.coding.system = $SNOMED
* component[medial].code.coding.code 1..1 MS
* component[medial].code.coding.code = #264739002
* component[medial].code.coding.display 1..1 MS
* component[medial].code.coding.display = "Medial rotation - action"
* component[medial].valueQuantity 0..1 MS
* component[medial].valueQuantity.value 1..1 MS
* component[medial].valueQuantity.unit 1..1 MS
* component[medial].valueQuantity.system 1..1 MS
* component[medial].valueQuantity.system = "http://unitsofmeasure.org"
* component[medial].valueQuantity.code 1..1 MS
* component[medial].valueQuantity.code = #%

* component[lateral] ^short = "外側百分比"
* component[lateral].code 1..1 MS
* component[lateral].code ^short = "外側步態代碼"
* component[lateral].code.coding 1..1 MS
* component[lateral].code.coding.system 1..1 MS
* component[lateral].code.coding.system = $SNOMED
* component[lateral].code.coding.code 1..1 MS
* component[lateral].code.coding.code = #264730003
* component[lateral].code.coding.display 1..1 MS
* component[lateral].code.coding.display = "Lateral rotation - action"
* component[lateral].valueQuantity 0..1 MS
* component[lateral].valueQuantity.value 1..1 MS
* component[lateral].valueQuantity.unit 1..1 MS
* component[lateral].valueQuantity.system 1..1 MS
* component[lateral].valueQuantity.system = "http://unitsofmeasure.org"
* component[lateral].valueQuantity.code 1..1 MS
* component[lateral].valueQuantity.code = #%
