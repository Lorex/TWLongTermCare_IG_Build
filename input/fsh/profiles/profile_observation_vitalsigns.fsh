Alias: $TWCoreObsercationVitalSigns = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-vitalSigns-twcore

Profile: LTCObservationVitalSigns
Parent: $TWCoreObsercationVitalSigns
Id: LTCObservationVitalSigns
Title: "長期照顧－生命體徵"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現長照機構住民的生命體徵資料。"

* code ^short = "量測的生命體徵項目"
* subject ^short = "此生命體徵資料的量測對象"
* value[x] ^short = "生命體徵量測值" 