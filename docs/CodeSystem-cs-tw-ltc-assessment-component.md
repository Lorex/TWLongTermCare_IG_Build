# 長照 SDK－評估核定摘要－欄位碼 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 SDK－評估核定摘要－欄位碼**

## CodeSystem: 長照 SDK－評估核定摘要－欄位碼 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-assessment-component | *Version*:1.0.0 |
| Active as of 2026-04-02 | *Computable Name*:CS_TW_LTC_AssessmentComponent |

 
此 CodeSystem 定義長照 SDK 評估核定摘要的欄位碼。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VS_TW_LTC_AssessmentComponent](ValueSet-vs-tw-ltc-assessment-component.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-tw-ltc-assessment-component",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-assessment-component",
  "version" : "1.0.0",
  "name" : "CS_TW_LTC_AssessmentComponent",
  "title" : "長照 SDK－評估核定摘要－欄位碼",
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
  "description" : "此 CodeSystem 定義長照 SDK 評估核定摘要的欄位碼。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "cms-level",
    "display" : "CMS 等級"
  },
  {
    "code" : "welfare-identity",
    "display" : "長照福利身分"
  },
  {
    "code" : "assessment-type",
    "display" : "評估類型"
  },
  {
    "code" : "plan-start",
    "display" : "計畫起始日"
  },
  {
    "code" : "plan-end",
    "display" : "計畫結束日"
  },
  {
    "code" : "approval-status",
    "display" : "核定狀態"
  }]
}

```
