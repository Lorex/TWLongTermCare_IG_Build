<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile QuestionnaireResponse
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:QuestionnaireResponse</sch:title>
    <sch:rule context="f:QuestionnaireResponse">
      <sch:assert test="count(f:questionnaire) &gt;= 1">questionnaire: minimum cardinality of 'questionnaire' is 1</sch:assert>
      <sch:assert test="count(f:subject) &gt;= 1">subject: minimum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:authored) &gt;= 1">authored: minimum cardinality of 'authored' is 1</sch:assert>
      <sch:assert test="count(f:author) &gt;= 1">author: minimum cardinality of 'author' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:QuestionnaireResponse/f:item</sch:title>
    <sch:rule context="f:QuestionnaireResponse/f:item">
      <sch:assert test="count(f:answer) &lt;= 0">answer: maximum cardinality of 'answer' is 0</sch:assert>
      <sch:assert test="count(f:answer) &gt;= 1">answer: minimum cardinality of 'answer' is 1</sch:assert>
      <sch:assert test="count(f:answer) &lt;= 1">answer: maximum cardinality of 'answer' is 1</sch:assert>
      <sch:assert test="count(f:item) &lt;= 0">item: maximum cardinality of 'item' is 0</sch:assert>
      <sch:assert test="count(f:answer) &gt;= 1">answer: minimum cardinality of 'answer' is 1</sch:assert>
      <sch:assert test="count(f:answer) &lt;= 1">answer: maximum cardinality of 'answer' is 1</sch:assert>
      <sch:assert test="count(f:item) &lt;= 0">item: maximum cardinality of 'item' is 0</sch:assert>
      <sch:assert test="count(f:answer) &lt;= 0">answer: maximum cardinality of 'answer' is 0</sch:assert>
      <sch:assert test="count(f:answer) &gt;= 1">answer: minimum cardinality of 'answer' is 1</sch:assert>
      <sch:assert test="count(f:answer) &lt;= 1">answer: maximum cardinality of 'answer' is 1</sch:assert>
      <sch:assert test="count(f:item) &lt;= 0">item: maximum cardinality of 'item' is 0</sch:assert>
      <sch:assert test="count(f:answer) &gt;= 1">answer: minimum cardinality of 'answer' is 1</sch:assert>
      <sch:assert test="count(f:answer) &lt;= 1">answer: maximum cardinality of 'answer' is 1</sch:assert>
      <sch:assert test="count(f:item) &lt;= 0">item: maximum cardinality of 'item' is 0</sch:assert>
      <sch:assert test="count(f:answer) &gt;= 1">answer: minimum cardinality of 'answer' is 1</sch:assert>
      <sch:assert test="count(f:answer) &lt;= 1">answer: maximum cardinality of 'answer' is 1</sch:assert>
      <sch:assert test="count(f:item) &lt;= 0">item: maximum cardinality of 'item' is 0</sch:assert>
      <sch:assert test="count(f:answer) &gt;= 1">answer: minimum cardinality of 'answer' is 1</sch:assert>
      <sch:assert test="count(f:answer) &lt;= 1">answer: maximum cardinality of 'answer' is 1</sch:assert>
      <sch:assert test="count(f:item) &lt;= 0">item: maximum cardinality of 'item' is 0</sch:assert>
      <sch:assert test="count(f:answer) &gt;= 1">answer: minimum cardinality of 'answer' is 1</sch:assert>
      <sch:assert test="count(f:answer) &lt;= 1">answer: maximum cardinality of 'answer' is 1</sch:assert>
      <sch:assert test="count(f:item) &lt;= 0">item: maximum cardinality of 'item' is 0</sch:assert>
      <sch:assert test="count(f:answer) &gt;= 1">answer: minimum cardinality of 'answer' is 1</sch:assert>
      <sch:assert test="count(f:answer) &lt;= 1">answer: maximum cardinality of 'answer' is 1</sch:assert>
      <sch:assert test="count(f:item) &lt;= 0">item: maximum cardinality of 'item' is 0</sch:assert>
      <sch:assert test="count(f:answer) &gt;= 1">answer: minimum cardinality of 'answer' is 1</sch:assert>
      <sch:assert test="count(f:answer) &lt;= 1">answer: maximum cardinality of 'answer' is 1</sch:assert>
      <sch:assert test="count(f:item) &lt;= 0">item: maximum cardinality of 'item' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:QuestionnaireResponse/f:item/f:item</sch:title>
    <sch:rule context="f:QuestionnaireResponse/f:item/f:item">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:linkId) &gt;= 1">linkId: minimum cardinality of 'linkId' is 1</sch:assert>
      <sch:assert test="count(f:linkId) &lt;= 1">linkId: maximum cardinality of 'linkId' is 1</sch:assert>
      <sch:assert test="count(f:definition) &lt;= 1">definition: maximum cardinality of 'definition' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:linkId) &gt;= 1">linkId: minimum cardinality of 'linkId' is 1</sch:assert>
      <sch:assert test="count(f:linkId) &lt;= 1">linkId: maximum cardinality of 'linkId' is 1</sch:assert>
      <sch:assert test="count(f:definition) &lt;= 1">definition: maximum cardinality of 'definition' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:answer) &gt;= 1">answer: minimum cardinality of 'answer' is 1</sch:assert>
      <sch:assert test="count(f:answer) &lt;= 1">answer: maximum cardinality of 'answer' is 1</sch:assert>
      <sch:assert test="count(f:item) &lt;= 0">item: maximum cardinality of 'item' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:linkId) &gt;= 1">linkId: minimum cardinality of 'linkId' is 1</sch:assert>
      <sch:assert test="count(f:linkId) &lt;= 1">linkId: maximum cardinality of 'linkId' is 1</sch:assert>
      <sch:assert test="count(f:definition) &lt;= 1">definition: maximum cardinality of 'definition' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:answer) &lt;= 1">answer: maximum cardinality of 'answer' is 1</sch:assert>
      <sch:assert test="count(f:item) &lt;= 0">item: maximum cardinality of 'item' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:linkId) &gt;= 1">linkId: minimum cardinality of 'linkId' is 1</sch:assert>
      <sch:assert test="count(f:linkId) &lt;= 1">linkId: maximum cardinality of 'linkId' is 1</sch:assert>
      <sch:assert test="count(f:definition) &lt;= 1">definition: maximum cardinality of 'definition' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:linkId) &gt;= 1">linkId: minimum cardinality of 'linkId' is 1</sch:assert>
      <sch:assert test="count(f:linkId) &lt;= 1">linkId: maximum cardinality of 'linkId' is 1</sch:assert>
      <sch:assert test="count(f:definition) &lt;= 1">definition: maximum cardinality of 'definition' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:answer) &gt;= 1">answer: minimum cardinality of 'answer' is 1</sch:assert>
      <sch:assert test="count(f:answer) &lt;= 1">answer: maximum cardinality of 'answer' is 1</sch:assert>
      <sch:assert test="count(f:item) &lt;= 0">item: maximum cardinality of 'item' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:linkId) &gt;= 1">linkId: minimum cardinality of 'linkId' is 1</sch:assert>
      <sch:assert test="count(f:linkId) &lt;= 1">linkId: maximum cardinality of 'linkId' is 1</sch:assert>
      <sch:assert test="count(f:definition) &lt;= 1">definition: maximum cardinality of 'definition' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:answer) &lt;= 1">answer: maximum cardinality of 'answer' is 1</sch:assert>
      <sch:assert test="count(f:item) &lt;= 0">item: maximum cardinality of 'item' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:QuestionnaireResponse/f:item/f:item/f:answer</sch:title>
    <sch:rule context="f:QuestionnaireResponse/f:item/f:item/f:answer">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:QuestionnaireResponse/f:item/f:answer</sch:title>
    <sch:rule context="f:QuestionnaireResponse/f:item/f:answer">
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
