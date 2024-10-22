Alias: $TWCoreSimpleObservation = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-simple-twcore
Alias: $ObservationCategory = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $TempCodeCS = http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS-Sport

Profile: PASportObservationObesityDegree
Parent: $TWCoreSimpleObservation
Id: PASportObservationObesityDegree
Title: "身體組成分析儀－肥胖度"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之肥胖度資料。"

* category[twcore] 1..1 MS
* category[twcore].coding 1..1 MS
* category[twcore].coding.system 1..1 MS
* category[twcore].coding.system = $ObservationCategory
* category[twcore].coding.code 1..1 MS
* category[twcore].coding.code = #vital-signs
* category[twcore].coding.display 1..1 MS
* category[twcore].coding.display = "Vital Signs"

* code 1..1 MS
* code ^short = "肥胖度"
* code.coding 1..1 MS
* code.coding.system 1..1 MS
* code.coding.system = $LOINC
* code.coding.code 1..1 MS
* code.coding.code = #ObesityDegree
* code.coding.display 1..1 MS
* code.coding.display = "肥胖度"

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
