<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile CoverageEligibilityResponse
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:CoverageEligibilityResponse</sch:title>
    <sch:rule context="f:CoverageEligibilityResponse">
      <sch:assert test="count(f:purpose) &lt;= 1">purpose: maximum cardinality of 'purpose' is 1</sch:assert>
      <sch:assert test="count(f:insurance) &gt;= 1">insurance: minimum cardinality of 'insurance' is 1</sch:assert>
      <sch:assert test="count(f:insurance) &lt;= 1">insurance: maximum cardinality of 'insurance' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:CoverageEligibilityResponse/f:insurance</sch:title>
    <sch:rule context="f:CoverageEligibilityResponse/f:insurance">
      <sch:assert test="count(f:item) &gt;= 1">item: minimum cardinality of 'item' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:CoverageEligibilityResponse/f:insurance/f:item</sch:title>
    <sch:rule context="f:CoverageEligibilityResponse/f:insurance/f:item">
      <sch:assert test="count(f:category) &gt;= 1">category: minimum cardinality of 'category' is 1</sch:assert>
      <sch:assert test="count(f:benefit) &gt;= 3">benefit: minimum cardinality of 'benefit' is 3</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
