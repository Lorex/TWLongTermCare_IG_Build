# 長照 SDK－服務別（核定用） - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 SDK－服務別（核定用）**

## CodeSystem: 長照 SDK－服務別（核定用） 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-service-group | *Version*:1.0.0 |
| Active as of 2026-04-03 | *Computable Name*:CS_TW_LTC_ServiceGroup |

 
此 CodeSystem 定義長照 SDK 中的服務別（核定用）代碼。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VS_TW_LTC_ServiceGroup](ValueSet-vs-tw-ltc-service-group.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-tw-ltc-service-group",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-service-group",
  "version" : "1.0.0",
  "name" : "CS_TW_LTC_ServiceGroup",
  "title" : "長照 SDK－服務別（核定用）",
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
  "description" : "此 CodeSystem 定義長照 SDK 中的服務別（核定用）代碼。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "care-pro",
    "display" : "照顧及專業服務"
  },
  {
    "code" : "transport",
    "display" : "交通接送服務"
  },
  {
    "code" : "respite",
    "display" : "喘息服務"
  },
  {
    "code" : "assistive",
    "display" : "輔具服務"
  }]
}

```
