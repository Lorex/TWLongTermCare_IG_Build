# 長照 SDK－評估核定摘要欄位碼 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 SDK－評估核定摘要欄位碼**

## ValueSet: 長照 SDK－評估核定摘要欄位碼 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-assessment-component | *Version*:1.0.0 |
| Active as of 2026-03-01 | *Computable Name*:VS_TW_LTC_AssessmentComponent |

 
此 ValueSet 用於表示長照 SDK 評估核定摘要的欄位碼。 

 **References** 

* [長照 SDK－評估核定摘要（Observation）](StructureDefinition-LTC-Observation-Assessment-CS100.md)

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
  "id" : "vs-tw-ltc-assessment-component",
  "url" : "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-assessment-component",
  "version" : "1.0.0",
  "name" : "VS_TW_LTC_AssessmentComponent",
  "title" : "長照 SDK－評估核定摘要欄位碼",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-01T19:25:35+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 ValueSet 用於表示長照 SDK 評估核定摘要的欄位碼。",
  "compose" : {
    "include" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-assessment-component"
    }]
  }
}

```
