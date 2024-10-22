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