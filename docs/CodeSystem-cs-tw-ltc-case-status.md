# 長照 SDK－個案狀態 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 SDK－個案狀態**

## CodeSystem: 長照 SDK－個案狀態 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-case-status | *Version*:1.0.0 |
| Active as of 2026-03-02 | *Computable Name*:CS_TW_LTC_CaseStatus |

 
對應 r1.3：服務中、暫停服務、已結案。使用 FHIR EpisodeOfCare status 對應碼。 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-tw-ltc-case-status",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-case-status",
  "version" : "1.0.0",
  "name" : "CS_TW_LTC_CaseStatus",
  "title" : "長照 SDK－個案狀態",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-02T02:26:08+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "對應 r1.3：服務中、暫停服務、已結案。使用 FHIR EpisodeOfCare status 對應碼。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "active",
    "display" : "服務中"
  },
  {
    "code" : "onhold",
    "display" : "暫停服務"
  },
  {
    "code" : "finished",
    "display" : "已結案"
  }]
}

```
