Alias: $PatientIdentityVS-TWLTC = http://ltc-ig.fhir.tw/ValueSet-PatientIdentityVS-TWLTC

Extension:  ExtensionPatientIdentityTWLTC
Id: ExtensionPatientIdentity-TWLTC
Title: "個案身分別"
Description: "此 Extension 用以表述個案的身分別。"
Context: Patient

//* ^url = "http://ltc-ig.fhir.tw/StructureDefinition-ExtensionPatientIdentity-TWLTC"
* ^version = "2024-09-02"
* ^status = #active
* ^context.type = #element
* ^context.expression = "Patient"
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] ^short = "個案的身分別"
* valueCodeableConcept 1..1 MS
* valueCodeableConcept ^short = "個案的身分別代碼"
* valueCodeableConcept from $PatientIdentityVS-TWLTC
* valueCodeableConcept.coding 1..1 MS
* valueCodeableConcept.coding ^short = "個案的身分別代碼"
* valueCodeableConcept.coding.system 1..1 MS
* valueCodeableConcept.coding.system ^short = "個案的身分別代碼系統。[應填入身分別代碼系統的 URL]"
* valueCodeableConcept.coding.system = "http://ltc-ig.fhir.tw/Codesystem-PatientIdentityCS-TWLTC"
* valueCodeableConcept.coding.code 1..1 MS
* valueCodeableConcept.coding.code ^short = "個案的身分別代碼。"