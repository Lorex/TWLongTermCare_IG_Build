Alias: $TWCoreProcedure = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Procedure-twcore

Profile: LTCProcedureCareActivity
Parent: $TWCoreProcedure
Id: LTCProcedureCareActivity
Title: "長期照顧－照護活動"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Procedure Resource，以呈現長照機構住民的照護活動紀錄。"

* status 1..1 MS
* status ^short = "照護活動狀態。[應填入：preparation / in-progress / not-done / on-hold / stopped / completed / entered-in-error / unknown]"
* status from http://hl7.org/fhir/ValueSet/event-status (required)

* code 1..1 MS
* code ^short = "照護活動項目"
* code.coding 1..1 MS
* code.coding.system 1..1 MS
* code.coding.system = "http://snomed.info/sct"
* code.coding.code 1..1 MS
* code.coding.display 1..1 MS

* subject 1..1 MS
* subject ^short = "接受照護活動的住民"
* subject only Reference(LTCPatient)
* subject.reference 1..1 MS
* subject.reference ^short = "接受照護活動的住民。[應輸入 Patient Resource ID]"

* performedDateTime 0..1 MS
* performedDateTime ^short = "照護活動執行的日期時間"

* performer 0..* MS
* performer ^short = "執行照護活動的人員"
* performer.actor only Reference(LTCPractitioner or LTCPractitionerRole or LTCRelatedPerson)
* performer.actor.reference 1..1 MS
* performer.actor.reference ^short = "執行照護活動的人員。[應輸入 Practitioner / PractitionerRole / RelatedPerson Resource ID]"

* reasonCode 0..* MS
* reasonCode ^short = "執行照護活動的原因"

* bodySite 0..* MS
* bodySite ^short = "照護活動涉及的身體部位"

* outcome 0..1 MS
* outcome ^short = "照護活動的結果"

* note 0..* MS
* note ^short = "照護活動的附註"

// Example
Instance: ltc-procedure-bathing-example
InstanceOf: LTCProcedureCareActivity
Title: "沐浴協助範例"
Description: "一個沐浴協助的範例，展示如何使用 LTCProcedureCareActivity Profile"
Usage: #example

* status = #completed

* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #60369001
* code.coding.display = "Bathing patient"
* code.text = "沐浴/擦澡"

* subject = Reference(ltc-patient-chen-ming-hui)

* performedDateTime = "2024-01-15T14:30:00+08:00"

* performer[0].actor = Reference(ltc-practitioner-role-nurse-example)

* note[0].time = "2024-01-15T14:30:00+08:00"
* note[0].text = "住民配合度良好，無特殊狀況"
