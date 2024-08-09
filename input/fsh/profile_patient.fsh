Profile: LTCPatient
Parent: $TWCorePatient
Description: "An example Patient profile"
* birthDate 1..1
* extension contains http://hl7.org/fhir/StructureDefinition/patient-birthPlace named birthPlace 0..1 MS
// * generalPractitioner only Reference(OSAPractitioner)