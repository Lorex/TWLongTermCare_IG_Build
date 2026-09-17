# 在宅急症－摘要章節值集 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症－摘要章節值集**

## ValueSet: 在宅急症－摘要章節值集 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/ValueSet/hah-section | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HAHSectionVS |

 
摘要文件中的臨床章節。 

 **References** 

* [在宅急症－結案與轉銜摘要](StructureDefinition-HAHCompositionSummary.md)

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
  "id" : "hah-section",
  "url" : "http://ltc-ig.fhir.tw/ValueSet/hah-section",
  "version" : "1.1.0",
  "name" : "HAHSectionVS",
  "title" : "在宅急症－摘要章節值集",
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
  "description" : "摘要文件中的臨床章節。",
  "compose" : {
    "include" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-document",
      "concept" : [{
        "code" : "course"
      },
      {
        "code" : "problems"
      },
      {
        "code" : "allergies"
      },
      {
        "code" : "medications"
      },
      {
        "code" : "results"
      },
      {
        "code" : "care"
      },
      {
        "code" : "follow-up"
      }]
    }]
  }
}

```
