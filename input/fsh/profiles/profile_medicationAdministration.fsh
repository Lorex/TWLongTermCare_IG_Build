Alias: $TWCoreMedication = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Medication-twcore
Alias: $MedicationAdministration = http://hl7.org/fhir/StructureDefinition/MedicationAdministration

Profile: LTCMedicationAdministration
Parent: $MedicationAdministration
Id: LTCMedicationAdministration
Title: "長期照顧－用藥資料"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 MedicationAdministration Resource，以呈現長照機構住民的用藥資料。"

* status 1..1 MS
* status ^short = "用藥狀態。[應填入：in-progress / not-done / on-hold / completed / entered-in-error / stopped / unknown]"
* status from http://hl7.org/fhir/ValueSet/medication-admin-status (required)
* medication[x] 1..1 MS
* medication[x] ^short = "住民使用的藥物。[應填入藥名]"
* medicationCodeableConcept MS
* medicationCodeableConcept ^short = "住民使用的藥物代碼"
* medicationCodeableConcept from http://hl7.org/fhir/ValueSet/medication-codes
* medicationReference MS
* medicationReference ^short = "住民使用的藥物參考。[應填入 Medication Reference 資料]"
* subject 1..1 MS
* subject ^short = "服用此藥物的住民"
* effectiveDateTime 1..1 MS
* effectiveDateTime ^short = "服用此藥物的日期時間。[應填入日期與時間]"
* dosage 1..1 MS
* dosage ^short = "服用此藥物的劑量"
* dosage.route 1..1 MS
* dosage.route ^short = "服用此藥物的途徑。[應填入途徑]"
* dosage.route from http://hl7.org/fhir/ValueSet/route-codes
* dosage.dose 1..1 MS
* dosage.dose ^short = "服用此藥物的劑量。[應填入劑量]"

// Example
Instance: ltc-medication-administration-metformin-example
InstanceOf: LTCMedicationAdministration
Title: "糖尿病藥物給藥範例"
Description: "一個糖尿病藥物給藥的範例，展示如何使用 LTCMedicationAdministration Profile"
Usage: #example

* status = #completed

* medicationCodeableConcept.coding.system = "http://www.whocc.no/atc"
* medicationCodeableConcept.coding.code = #A10BA02
* medicationCodeableConcept.coding.display = "metformin"
* medicationCodeableConcept.text = "美福明 (Metformin)"

* subject = Reference(ltc-patient-chen-ming-hui)

* effectiveDateTime = "2024-01-15T08:00:00+08:00"

* performer[0].actor = Reference(ltc-practitioner-role-nurse-example)

* dosage.route.coding.system = "http://snomed.info/sct"
* dosage.route.coding.code = #26643006
* dosage.route.coding.display = "Oral route"
* dosage.route.text = "口服"

* dosage.dose.value = 500
* dosage.dose.unit = "mg"
* dosage.dose.system = "http://unitsofmeasure.org"
* dosage.dose.code = #mg

* note[0].time = "2024-01-15T08:00:00+08:00"
* note[0].text = "住民按時服藥，無不良反應"