# 在宅急症－訪視方式代碼 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症－訪視方式代碼**

## CodeSystem: 在宅急症－訪視方式代碼 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/hah-visit-mode | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HAHVisitModeCS |

 
記錄實際提供診療或評估的方式。單純排程或通知不算完成訪視。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [在宅急症－訪視方式值集](ValueSet-hah-visit-mode.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "hah-visit-mode",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/hah-visit-mode",
  "version" : "1.1.0",
  "name" : "HAHVisitModeCS",
  "title" : "在宅急症－訪視方式代碼",
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
  "description" : "記錄實際提供診療或評估的方式。單純排程或通知不算完成訪視。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "in-person",
    "display" : "實地訪視",
    "definition" : "人員到個案照護地點提供服務。"
  },
  {
    "code" : "video",
    "display" : "視訊診療",
    "definition" : "以同步視訊進行診療或評估。"
  },
  {
    "code" : "telephone",
    "display" : "電話評估",
    "definition" : "以電話進行有臨床內容的評估。"
  }]
}

```
