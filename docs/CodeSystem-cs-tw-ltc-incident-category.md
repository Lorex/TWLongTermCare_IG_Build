# 長照 SDK－異常紀錄－異常類別 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 SDK－異常紀錄－異常類別**

## CodeSystem: 長照 SDK－異常紀錄－異常類別 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-incident-category | *Version*:1.0.0 |
| Active as of 2026-03-01 | *Computable Name*:CS_TW_LTC_Incident_Category |

 
表單『異常類別』多選。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VS_TW_LTC_Incident_Category](ValueSet-vs-tw-ltc-incident-category.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-tw-ltc-incident-category",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-incident-category",
  "version" : "1.0.0",
  "name" : "CS_TW_LTC_Incident_Category",
  "title" : "長照 SDK－異常紀錄－異常類別",
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
  "description" : "表單『異常類別』多選。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 8,
  "concept" : [{
    "code" : "hospitalize",
    "display" : "送醫事件"
  },
  {
    "code" : "careacc",
    "display" : "照顧意外事件"
  },
  {
    "code" : "med",
    "display" : "藥物事件"
  },
  {
    "code" : "security",
    "display" : "治安事件"
  },
  {
    "code" : "injury",
    "display" : "傷害事件"
  },
  {
    "code" : "publicacc",
    "display" : "公共意外"
  },
  {
    "code" : "ethics",
    "display" : "違反專業倫理守則"
  },
  {
    "code" : "other",
    "display" : "其他"
  }]
}

```
