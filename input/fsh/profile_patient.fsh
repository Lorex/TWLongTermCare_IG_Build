Profile: LTCPatient
Parent: $TWCorePatient
Description: "住民基本資料"
* identifier 1..* MS
* name 1..* MS
* birthDate 1..1 MS
* address 1..2 MS
* telecom 1..* MS
// * extension contains http://hl7.org/fhir/StructureDefinition/patient-birthPlace named birthPlace 0..1 MS
// * generalPractitioner only Reference(OSAPractitioner)