# 長照 SDK－個案狀態 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 SDK－個案狀態**

## ValueSet: 長照 SDK－個案狀態 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-case-status | *Version*:1.0.0 |
| Active as of 2026-04-03 | *Computable Name*:VS_TW_LTC_CaseStatus |

 
此 ValueSet 用於表示長照 SDK 中個案的狀態，使用 FHIR EpisodeOfCare status 對應碼：active（服務中）、onhold（暫停服務）、finished（已結案）。 

 **References** 

* [長照 SDK－長照案件](StructureDefinition-LTC-EpisodeOfCare-Payload.md)

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
  "id" : "vs-tw-ltc-case-status",
  "url" : "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-case-status",
  "version" : "1.0.0",
  "name" : "VS_TW_LTC_CaseStatus",
  "title" : "長照 SDK－個案狀態",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-04-03T21:17:06+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 ValueSet 用於表示長照 SDK 中個案的狀態，使用 FHIR EpisodeOfCare status 對應碼：active（服務中）、onhold（暫停服務）、finished（已結案）。",
  "compose" : {
    "include" : [{
      "system" : "http://hl7.org/fhir/episode-of-care-status",
      "concept" : [{
        "code" : "active",
        "display" : "Active"
      },
      {
        "code" : "onhold",
        "display" : "On Hold"
      },
      {
        "code" : "finished",
        "display" : "Finished"
      }]
    }]
  }
}

```
