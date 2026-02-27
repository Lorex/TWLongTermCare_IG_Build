Alias: $TWCoreObservationVitalSigns = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-vitalSigns-twcore
Alias: $LOINC = http://loinc.org

Profile: LTCObservationVitalSignsPanel
Parent: $TWCoreObservationVitalSigns
Id: LTCObservationVitalSignsPanel
Title: "長期照顧－一組生命徵象檢驗檢查"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現長照機構住民的一組生命徵象檢驗檢查資料。"

* code 1..1 MS
* code ^short = "一組生命徵象檢驗檢查"
* code.coding 1..1 MS
* code.coding.system 1..1 MS
* code.coding.system = $LOINC
* code.coding.code 1..1 MS
* code.coding.code = #85353-1
* code.coding.display 1..1 MS
* code.coding.display = "Vital signs, weight, height, head circumference, oxygen saturation and BMI panel"

* subject 1..1 MS
* subject ^short = "量測對象"
* subject only Reference(LTCPatient)
* subject.reference 1..1 MS
* subject.reference ^short = "量測對象。[應輸入 Patient Resource ID]"

* performer 0..1 MS
* performer ^short = "量測人員"
* performer only Reference(LTCPractitioner)
* performer.reference 1..1 MS
* performer.reference ^short = "量測人員。[應輸入 Practitioner / PractitionerRole Resource ID]"

* hasMember 0..* MS
* hasMember ^short = "生命徵象檢驗檢查的組成項目"
* hasMember only Reference(LTCObservationVitalSigns or LTCObservationVitalSignsPanel)
* hasMember.reference 1..1 MS
* hasMember.reference ^short = "生命徵象檢驗檢查的組成項目。[應輸入對應的 Observation Resource ID]"

* note 0..* MS
* note ^short = "生命徵象檢驗檢查的附註"

// Example
Instance: ltc-observation-vital-signs-panel-example
InstanceOf: LTCObservationVitalSignsPanel
Title: "一組生命徵象檢驗檢查範例"
Description: "一個一組生命徵象檢驗檢查的範例，展示如何使用 LTCObservationVitalSignsPanel Profile"
Usage: #example

* status = #final

* category[VSCat].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[VSCat].coding.code = #vital-signs
* category[VSCat].coding.display = "Vital Signs"

* code.coding.system = "http://loinc.org"
* code.coding.code = #85353-1
* code.coding.display = "Vital signs, weight, height, head circumference, oxygen saturation and BMI panel"
* code.text = "一組生命徵象檢驗檢查"

* subject = Reference(ltc-patient-chen-ming-hui)

* effectiveDateTime = "2024-01-15T08:00:00+08:00"

* performer[0] = Reference(ltc-practitioner-physician-aa12-example)

* hasMember[0] = Reference(ltc-observation-blood-pressure-example)

* note[0].time = "2024-01-15T08:00:00+08:00"
* note[0].text = "生命徵象檢查完成，各項指標均在正常範圍內"
