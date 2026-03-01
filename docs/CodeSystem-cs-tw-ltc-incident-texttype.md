# 長照 SDK－異常紀錄－文字區塊類型 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 SDK－異常紀錄－文字區塊類型**

## CodeSystem: 長照 SDK－異常紀錄－文字區塊類型 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-incident-texttype | *Version*:1.0.0 |
| Active as of 2026-03-01 | *Computable Name*:CS_TW_LTC_Incident_TextType |

 
區分各段文字（描述、過程、後續處理、改善建議）。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VS_TW_LTC_Incident_TextType](ValueSet-vs-tw-ltc-incident-texttype.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-tw-ltc-incident-texttype",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-incident-texttype",
  "version" : "1.0.0",
  "name" : "CS_TW_LTC_Incident_TextType",
  "title" : "長照 SDK－異常紀錄－文字區塊類型",
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
  "description" : "區分各段文字（描述、過程、後續處理、改善建議）。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "desc",
    "display" : "事件描述"
  },
  {
    "code" : "process",
    "display" : "事件發生過程詳述"
  },
  {
    "code" : "postprocess",
    "display" : "事件發生後處理過程詳述"
  },
  {
    "code" : "advice",
    "display" : "檢討及改善建議"
  }]
}

```
