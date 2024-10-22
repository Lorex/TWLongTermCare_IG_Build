<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile LTCPatient
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Patient</sch:title>
    <sch:rule context="f:Patient">
      <sch:assert test="count(f:extension[@url = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/person-age']) &lt;= 1">extension with URL = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/person-age': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/patient-nationality']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/patient-nationality': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://ltc-ig.fhir.tw/StructureDefinition/ExtPatientEducationStatus-TWLTC']) &gt;= 1">extension with URL = 'http://ltc-ig.fhir.tw/StructureDefinition/ExtPatientEducationStatus-TWLTC': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://ltc-ig.fhir.tw/StructureDefinition/ExtPatientEducationStatus-TWLTC']) &lt;= 1">extension with URL = 'http://ltc-ig.fhir.tw/StructureDefinition/ExtPatientEducationStatus-TWLTC': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://ltc-ig.fhir.tw/StructureDefinition/ExtPatientIdentity-TWLTC']) &gt;= 1">extension with URL = 'http://ltc-ig.fhir.tw/StructureDefinition/ExtPatientIdentity-TWLTC': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://ltc-ig.fhir.tw/StructureDefinition/ExtPatientIdentity-TWLTC']) &lt;= 1">extension with URL = 'http://ltc-ig.fhir.tw/StructureDefinition/ExtPatientIdentity-TWLTC': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:maritalStatus) &gt;= 1">maritalStatus: minimum cardinality of 'maritalStatus' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:identifier</sch:title>
    <sch:rule context="f:Patient/f:identifier">
      <sch:assert test="count(f:type) &gt;= 1">type: minimum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:type) &gt;= 1">type: minimum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:type) &gt;= 1">type: minimum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:type) &gt;= 1">type: minimum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:type) &gt;= 1">type: minimum cardinality of 'type' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:identifier/f:type/f:coding/f:code</sch:title>
    <sch:rule context="f:Patient/f:identifier/f:type/f:coding/f:code">
      <sch:assert test="count(f:extension[@url = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/identifier-suffix']) &lt;= 1">extension with URL = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/identifier-suffix': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:identifier/f:type</sch:title>
    <sch:rule context="f:Patient/f:identifier/f:type">
      <sch:assert test="count(f:coding) &lt;= 1">coding: maximum cardinality of 'coding' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:name</sch:title>
    <sch:rule context="f:Patient/f:name">
      <sch:assert test="count(f:family) &lt;= 0">family: maximum cardinality of 'family' is 0</sch:assert>
      <sch:assert test="count(f:given) &lt;= 0">given: maximum cardinality of 'given' is 0</sch:assert>
      <sch:assert test="count(f:prefix) &lt;= 0">prefix: maximum cardinality of 'prefix' is 0</sch:assert>
      <sch:assert test="count(f:suffix) &lt;= 0">suffix: maximum cardinality of 'suffix' is 0</sch:assert>
      <sch:assert test="count(f:family) &lt;= 0">family: maximum cardinality of 'family' is 0</sch:assert>
      <sch:assert test="count(f:given) &lt;= 0">given: maximum cardinality of 'given' is 0</sch:assert>
      <sch:assert test="count(f:prefix) &lt;= 0">prefix: maximum cardinality of 'prefix' is 0</sch:assert>
      <sch:assert test="count(f:suffix) &lt;= 0">suffix: maximum cardinality of 'suffix' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:address</sch:title>
    <sch:rule context="f:Patient/f:address">
      <sch:assert test="count(f:extension[@url = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-room']) &lt;= 1">extension with URL = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-room': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-floor']) &lt;= 1">extension with URL = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-floor': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-number']) &lt;= 1">extension with URL = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-number': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-alley']) &lt;= 1">extension with URL = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-alley': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-lane']) &lt;= 1">extension with URL = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-lane': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-section']) &lt;= 1">extension with URL = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-section': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-neighborhood']) &lt;= 1">extension with URL = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-neighborhood': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-village']) &lt;= 1">extension with URL = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-village': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-room']) &lt;= 1">extension with URL = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-room': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-floor']) &lt;= 1">extension with URL = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-floor': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-number']) &lt;= 1">extension with URL = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-number': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-alley']) &lt;= 1">extension with URL = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-alley': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-lane']) &lt;= 1">extension with URL = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-lane': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-section']) &lt;= 1">extension with URL = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-section': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-neighborhood']) &lt;= 1">extension with URL = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-neighborhood': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-village']) &lt;= 1">extension with URL = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-village': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:address/f:postalCode</sch:title>
    <sch:rule context="f:Patient/f:address/f:postalCode">
      <sch:assert test="count(f:extension[@url = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-postal-code']) &lt;= 1">extension with URL = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-postal-code': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-postal-code']) &lt;= 1">extension with URL = 'https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/tw-postal-code': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:address/f:postalCode/f:extension/f:value[x]/f:coding 1</sch:title>
    <sch:rule context="f:Patient/f:address/f:postalCode/f:extension/f:value[x]/f:coding">
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
