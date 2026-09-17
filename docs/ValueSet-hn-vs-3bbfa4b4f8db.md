# 居家護理－跌倒多選選項 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－跌倒多選選項**

## ValueSet: 居家護理－跌倒多選選項 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/ValueSet/hn-vs-3bbfa4b4f8db | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNAnswerVS3bbfa4b4f8db |
| *Other Identifiers:*OID:2.25.68228807338489623080725366839321364157 | |

 
限定跌倒多選可填入的 V5.0.16 選項。 

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
  "id" : "hn-vs-3bbfa4b4f8db",
  "url" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-3bbfa4b4f8db",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.68228807338489623080725366839321364157"
  }],
  "version" : "1.1.0",
  "name" : "HNAnswerVS3bbfa4b4f8db",
  "title" : "居家護理－跌倒多選選項",
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
  "description" : "限定跌倒多選可填入的 V5.0.16 選項。",
  "compose" : {
    "include" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-answer",
      "concept" : [{
        "code" : "cda5930e53d54"
      },
      {
        "code" : "cb048534d3fd9"
      },
      {
        "code" : "cab1beb07dca5"
      },
      {
        "code" : "c5a42eaf9fc92"
      },
      {
        "code" : "cc4ac57eae311"
      },
      {
        "code" : "c3df338826201"
      },
      {
        "code" : "c9969c0c6a8ce"
      },
      {
        "code" : "cc38d690296e6"
      },
      {
        "code" : "cd2909f1647e7"
      }]
    }]
  }
}

```
