# 長照 SDK－服務活動代碼 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 SDK－服務活動代碼**

## CodeSystem: 長照 SDK－服務活動代碼 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-service-activity | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:CS_TW_LTC_ServiceActivity |
| *Other Identifiers:*OID:2.25.21072938616033997982953682109239736427 | |

 
此 CodeSystem 定義長照照管服務活動紀錄所使用之代碼。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [長照 SDK－服務活動](ValueSet-vs-tw-ltc-service-activity.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-tw-ltc-service-activity",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-service-activity",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.21072938616033997982953682109239736427"
  }],
  "version" : "1.1.0",
  "name" : "CS_TW_LTC_ServiceActivity",
  "title" : "長照 SDK－服務活動代碼",
  "status" : "active",
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
  "description" : "此 CodeSystem 定義長照照管服務活動紀錄所使用之代碼。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 1,
  "concept" : [{
    "code" : "TEL",
    "display" : "電話訪視/關懷"
  }]
}

```
