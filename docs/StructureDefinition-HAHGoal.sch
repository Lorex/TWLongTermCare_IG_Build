<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile LTCGoal
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Goal</sch:title>
    <sch:rule context="f:Goal">
      <sch:assert test="count(f:extension[@url = 'http://ltc-ig.fhir.tw/StructureDefinition/ExtHAHEpisode']) &gt;= 1">extension with URL = 'http://ltc-ig.fhir.tw/StructureDefinition/ExtHAHEpisode': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://ltc-ig.fhir.tw/StructureDefinition/ExtHAHEpisode']) &lt;= 1">extension with URL = 'http://ltc-ig.fhir.tw/StructureDefinition/ExtHAHEpisode': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:target) &gt;= 1">target: minimum cardinality of 'target' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Goal/f:description</sch:title>
    <sch:rule context="f:Goal/f:description">
      <sch:assert test="count(f:text) &gt;= 1">text: minimum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Goal/f:target</sch:title>
    <sch:rule context="f:Goal/f:target">
      <sch:assert test="count(f:due[x]) &gt;= 1">due[x]: minimum cardinality of 'due[x]' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
