# 長照 SDK－Composition 章節代碼 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 SDK－Composition 章節代碼**

## CodeSystem: 長照 SDK－Composition 章節代碼 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-section-code | *Version*:1.0.0 |
| Active as of 2026-04-02 | *Computable Name*:CS_TW_LTC_SectionCode |

 
用於長照 Composition 資源中各章節（section）的區段識別代碼。 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-tw-ltc-section-code",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-section-code",
  "version" : "1.0.0",
  "name" : "CS_TW_LTC_SectionCode",
  "title" : "長照 SDK－Composition 章節代碼",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-04-02T13:32:15+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "用於長照 Composition 資源中各章節（section）的區段識別代碼。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "case",
    "display" : "案件資訊"
  },
  {
    "code" : "assessment",
    "display" : "評估核定摘要"
  },
  {
    "code" : "careplan",
    "display" : "照顧計畫"
  },
  {
    "code" : "eligibility",
    "display" : "核定額度"
  },
  {
    "code" : "incidents",
    "display" : "近期異動/通報"
  }]
}

```
