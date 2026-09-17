# 居家護理－關係選項 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－關係選項**

## ValueSet: 居家護理－關係選項 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/ValueSet/hn-vs-9570830f5a60 | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNAnswerVS9570830f5a60 |
| *Other Identifiers:*OID:2.25.216030153186045269702211193934064705294 | |

 
限定關係可填入的 V5.0.16 選項。 

 **References** 

* [居家護理－個案基本資料邏輯模型](StructureDefinition-HNBaseDataModel.md)
* [居家護理－個案基本資料表單](StructureDefinition-HNBaseDataResponse.md)
* [居家護理－個案基本資料](Questionnaire-hn-basedata.md)

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
  "id" : "hn-vs-9570830f5a60",
  "url" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-9570830f5a60",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.216030153186045269702211193934064705294"
  }],
  "version" : "1.1.0",
  "name" : "HNAnswerVS9570830f5a60",
  "title" : "居家護理－關係選項",
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
  "description" : "限定關係可填入的 V5.0.16 選項。",
  "compose" : {
    "include" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-answer",
      "concept" : [{
        "code" : "c1a6f3904d93f"
      },
      {
        "code" : "c31e267066ca9"
      },
      {
        "code" : "c0fd6889156f2"
      },
      {
        "code" : "cb7488a2d40a3"
      },
      {
        "code" : "cf1d9eb390e4a"
      },
      {
        "code" : "c259b1edd9706"
      },
      {
        "code" : "c219c2f148bce"
      },
      {
        "code" : "cce9f5c3644d3"
      },
      {
        "code" : "c77086e3cdfe5"
      },
      {
        "code" : "c972aabebf1dc"
      },
      {
        "code" : "c9fe7236088bd"
      },
      {
        "code" : "c373d2048cd9f"
      },
      {
        "code" : "cf97066e9b60a"
      },
      {
        "code" : "c677aad1a0ee4"
      },
      {
        "code" : "c7f6e0797d597"
      },
      {
        "code" : "ca6bf98538732"
      },
      {
        "code" : "cb209b0f2bab8"
      },
      {
        "code" : "cd2909f1647e7"
      }]
    }]
  }
}

```
