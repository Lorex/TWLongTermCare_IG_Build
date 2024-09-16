<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile MedicationAdministration
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:MedicationAdministration</sch:title>
    <sch:rule context="f:MedicationAdministration">
      <sch:assert test="count(f:dosage) &gt;= 1">dosage: minimum cardinality of 'dosage' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationAdministration/f:dosage</sch:title>
    <sch:rule context="f:MedicationAdministration/f:dosage">
      <sch:assert test="count(f:route) &gt;= 1">route: minimum cardinality of 'route' is 1</sch:assert>
      <sch:assert test="count(f:dose) &gt;= 1">dose: minimum cardinality of 'dose' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
