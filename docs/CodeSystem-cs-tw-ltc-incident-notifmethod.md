# 長照 SDK－異常紀錄－通報方式 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 SDK－異常紀錄－通報方式**

## CodeSystem: 長照 SDK－異常紀錄－通報方式 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-incident-notifmethod | *Version*:1.0.0 |
| Active as of 2026-04-02 | *Computable Name*:CS_TW_LTC_Incident_NotificationMethod |

 
表單『通報方式』多選。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VS_TW_LTC_Incident_NotificationMethod](ValueSet-vs-tw-ltc-incident-notifmethod.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-tw-ltc-incident-notifmethod",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-incident-notifmethod",
  "version" : "1.0.0",
  "name" : "CS_TW_LTC_Incident_NotificationMethod",
  "title" : "長照 SDK－異常紀錄－通報方式",
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
  "description" : "表單『通報方式』多選。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [{
    "code" : "phone",
    "display" : "電話"
  },
  {
    "code" : "inperson",
    "display" : "當面"
  },
  {
    "code" : "fax",
    "display" : "傳真"
  },
  {
    "code" : "org",
    "display" : "機構"
  },
  {
    "code" : "family",
    "display" : "家屬"
  },
  {
    "code" : "cgportal",
    "display" : "CG通報"
  },
  {
    "code" : "other",
    "display" : "其他"
  }]
}

```
