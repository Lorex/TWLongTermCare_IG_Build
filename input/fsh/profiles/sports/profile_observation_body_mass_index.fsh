Alias: $TWCoreObservationBMI = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-bmi-twcore

Profile: PASportObservationBodyMassIndex
Parent: $TWCoreObservationBMI
Id: PASportObservationBodyMassIndex
Title: "身體組成分析儀－身體質量指數"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之BMI資料。"

* subject 1..1 MS
* performer 0..*