Alias: $TWCoreObsercationVitalSigns = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-vitalSigns-twcore

Profile: LTCObservationVitalSigns
Parent: $TWCoreObsercationVitalSigns
Id: LTCObservationVitalSigns
Title: "TW Long Term Care Observation Vital Signs"
Description: "長照機構住民的生命徵象資料"

* code ^short = "量測的生命徵象項目"
* subject ^short = "此生命徵象資料的量測對象"
* value[x] ^short = "生命徵象量測值" 