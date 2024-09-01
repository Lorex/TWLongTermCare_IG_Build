Alias: $EconomyStatusVSTWLTCTWLTC = http://ltc-ig.fhir.tw/ValueSet/EconomyStatusVS-TWLTC

Extension: ExtensionPatientEconomyStatus
Id: ExtensionPatientEconomyStatus
Title: "長照機構住民經濟狀況"
Description: "此 Extension 用以表述長照機構住民的經濟狀況。"
Context: Patient

* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/EconomyStatusExt-TWLTC"
* ^version = "2024-08-25"
* ^status = #active
* ^context.type = #element
* ^context.expression = "Patient"
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] ^short = "個案的經濟狀況"
* valueCodeableConcept 1..1 MS
* valueCodeableConcept ^short = "個案的經濟狀況代碼"
* valueCodeableConcept from $EconomyStatusVSTWLTCTWLTC
* valueCodeableConcept.coding 1..1 MS
* valueCodeableConcept.coding ^short = "個案的經濟狀況代碼"
* valueCodeableConcept.coding.system 1..1 MS
* valueCodeableConcept.coding.system ^short = "個案的經濟狀況代碼系統。[應填入經濟狀況代碼系統的 URL]"
* valueCodeableConcept.coding.system = "http://ltc-ig.fhir.tw/Codesystem/EconomyStatusCS-TWLTC"
* valueCodeableConcept.coding.code 1..1 MS
* valueCodeableConcept.coding.code ^short = "個案的經濟狀況代碼。[應填入 poor / barely-maintain / well-off / middle-class / wealthy]"
