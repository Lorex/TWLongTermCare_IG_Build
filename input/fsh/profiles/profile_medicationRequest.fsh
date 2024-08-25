Alias: $TWCoreMedicationRequest = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/MedicationRequest-twcore

Profile: LTCMedicationRequest
Parent: $TWCoreMedicationRequest
Id: MedicationRequest-twltc
Title: "TW Long Term Care MedicationRequest"
Description: "長期照顧藥物處方內容"

* medication[x] 1..1 MS
* subject 1..1 MS
* subject.reference 1..1 MS
* subject.reference ^short = "服用藥物的住民"