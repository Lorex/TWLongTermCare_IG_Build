Instance: ltc-patient-jane-doe
InstanceOf: LTCPatient
Description: "Example LTC Patient."
* name.family = "Doe"
* name.given[0] = "Jane"
* identifier.use = #usual
* identifier.type = $IdType#MR "Medical Record Number"
* identifier.system = "http://hospital.example.org"
* identifier.value = "1234"
* gender = #female
* birthDate = "1950-01-22"
* extension[birthPlace].valueAddress.state = "MA"

// Instance: osa-bmi-example
// InstanceOf: OSABodyMassIndex
// Description: "Example of OSA BMI value"
// * subject = Reference(osa-patient-jane-doe)
// * status = $ObsStatus#final
// * effectiveDateTime = "2021-09-28"
// * performer = Reference(osa-practitioner-kyle-anydoc)
// * valueQuantity = 32.5 'kg/m2' "kg/m2"

// Instance: osa-practitioner-kyle-anydoc
// InstanceOf: OSAPractitioner
// Description: "Placeholder - will be filled in in Exercise 3"