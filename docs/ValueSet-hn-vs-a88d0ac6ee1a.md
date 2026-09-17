# 居家護理－排便顏色選項 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－排便顏色選項**

## ValueSet: 居家護理－排便顏色選項 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/ValueSet/hn-vs-a88d0ac6ee1a | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNAnswerVSa88d0ac6ee1a |
| *Other Identifiers:*OID:2.25.311446720360817253978083594833910034778 | |

 
限定排便顏色可填入的 V5.0.16 選項。 

 **References** 

* [居家護理－身體評估評估邏輯模型](StructureDefinition-HNBodyEvaluationsModel.md)
* [居家護理－身體評估評估表單](StructureDefinition-HNBodyEvaluationsResponse.md)
* [居家護理－身體評估評估](Questionnaire-hn-bodyevaluations.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "hn-vs-a88d0ac6ee1a",
  "url" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-a88d0ac6ee1a",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.311446720360817253978083594833910034778"
  }],
  "version" : "1.1.0",
  "name" : "HNAnswerVSa88d0ac6ee1a",
  "title" : "居家護理－排便顏色選項",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-17T17:33:17+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "限定排便顏色可填入的 V5.0.16 選項。",
  "compose" : {
    "include" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-answer",
      "concept" : [{
        "code" : "c1ff7ba17989b"
      },
      {
        "code" : "cef6a5ce16e10"
      },
      {
        "code" : "caaa07a78bd6a"
      },
      {
        "code" : "cd2909f1647e7"
      },
      {
        "code" : "cc36b4792cdd2"
      }]
    }]
  }
}

```
