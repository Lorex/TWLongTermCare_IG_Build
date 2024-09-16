Alias: $EducationStatusVS-TWLTC = http://ltc-ig.fhir.tw/ValueSet/EducationStatusVS-TWLTC

Extension:  ExtensionPatientEducationStatusTWLTC
Id: ExtensionPatientEducationStatus-TWLTC
Title: "長照機構住民教育程度"
Description: "此 Extension 用以表述長照機構住民的教育程度。"
Context: Patient

//* ^url = "http://ltc-ig.fhir.tw/StructureDefinition-ExtensionPatientEducationStatus-TWLTC"
* ^version = "2024-09-02"
* ^status = #active
* ^context.type = #element
* ^context.expression = "Patient"
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] ^short = "個案的教育程度"
* valueCodeableConcept 1..1 MS  
* valueCodeableConcept ^short = "個案的教育程度代碼"
* valueCodeableConcept from $EducationStatusVS-TWLTC
* valueCodeableConcept.coding 1..1 MS
* valueCodeableConcept.coding ^short = "個案的教育程度代碼"
* valueCodeableConcept.coding.system 1..1 MS
* valueCodeableConcept.coding.system ^short = "個案的教育程度代碼系統。[應填入教育程度代碼系統的 URL]"
* valueCodeableConcept.coding.system = "http://ltc-ig.fhir.tw/CodeSystem/EducationStatusCS-TWLTC"
* valueCodeableConcept.coding.code 1..1 MS
* valueCodeableConcept.coding.code ^short = "個案的教育程度代碼。[應填入 illiterate / literate / elementary / junior / senior / special-elementary / special-junior / special-senior / vocational / college / postgraduate / other]"