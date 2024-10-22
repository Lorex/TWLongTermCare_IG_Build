Alias: $TWCoreSimpleObservation = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-simple-twcore
Alias: $ObservationCategory = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $GaitCycleCS = http://ltc-ig.fhir.tw/CodeSystem/GaitCycleCS-Sport
Alias: $SNOMED = http://snomed.info/sct

Profile: PASportObservationGaitCycle
Parent: $TWCoreSimpleObservation
Id: PASportObservationGaitCycle
Title: "穿戴裝置－步態週期"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現穿戴裝置中涉及之步態週期資料。"

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
* code.coding.code = #363837002
* code.coding.display 1..1 MS
* code.coding.display = "Measure of gait"
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
* component 1..2 MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code.coding.code"
* component ^slicing.rules = #open
* component ^slicing.description = "步態週期分為支撐期(stance phase)和擺動期(swing phase)，故此 Resource 至少有兩個 component"
* component ^slicing.ordered = false
* component contains
    stance 1..1 MS and
    swing 1..1 MS
* component[stance].code 1..1 MS
* component[stance].code.coding 1..1 MS
* component[stance].code.coding.system 1..1 MS
* component[stance].code.coding.system = $GaitCycleCS
* component[stance].code.coding.code 1..1 MS
* component[stance].code.coding.code = #1
* component[stance].code.coding.display 1..1 MS
* component[stance].code.coding.display = "支撐期(stance phase)"
* component[stance].valueQuantity 0..1 MS
* component[stance].valueQuantity.value 1..1 MS
* component[stance].valueQuantity.unit 1..1 MS
* component[stance].valueQuantity.system 1..1 MS
* component[stance].valueQuantity.system = "http://unitsofmeasure.org"
* component[stance].valueQuantity.code 1..1 MS
* component[stance].valueQuantity.code = #%

* component[swing].code 1..1 MS
* component[swing].code.coding 1..1 MS
* component[swing].code.coding.system 1..1 MS
* component[swing].code.coding.system = $GaitCycleCS
* component[swing].code.coding.code 1..1 MS
* component[swing].code.coding.code = #2
* component[swing].code.coding.display 1..1 MS
* component[swing].code.coding.display = "擺動期(swing phase)"
* component[swing].valueQuantity 0..1 MS
* component[swing].valueQuantity.value 1..1 MS
* component[swing].valueQuantity.unit 1..1 MS
* component[swing].valueQuantity.system 1..1 MS
* component[swing].valueQuantity.system = "http://unitsofmeasure.org"
* component[swing].valueQuantity.code 1..1 MS
* component[swing].valueQuantity.code = #%
