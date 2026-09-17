# 居家護理－運動選項 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－運動選項**

## ValueSet: 居家護理－運動選項 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/ValueSet/hn-vs-784e3567e13b | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNAnswerVS784e3567e13b |
| *Other Identifiers:*OID:2.25.191759364976976914167729176552811933132 | |

 
限定運動可填入的 V5.0.16 選項。 

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
  "id" : "hn-vs-784e3567e13b",
  "url" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-784e3567e13b",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.191759364976976914167729176552811933132"
  }],
  "version" : "1.1.0",
  "name" : "HNAnswerVS784e3567e13b",
  "title" : "居家護理－運動選項",
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
  "description" : "限定運動可填入的 V5.0.16 選項。",
  "compose" : {
    "include" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-answer",
      "concept" : [{
        "code" : "ce7f6c011776e"
      },
      {
        "code" : "cef2d127de37b"
      },
      {
        "code" : "c4b227777d4dd"
      },
      {
        "code" : "c4e07408562be"
      },
      {
        "code" : "cd4735e3a265e"
      },
      {
        "code" : "c6b86b273ff34"
      }]
    }]
  }
}

```
