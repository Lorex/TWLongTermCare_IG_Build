# 長照 SDK－申請來源（暫行） - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 SDK－申請來源（暫行）**

## CodeSystem: 長照 SDK－申請來源（暫行） 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-case-source | *Version*:1.0.0 |
| Active as of 2026-04-02 | *Computable Name*:CS_TW_LTC_Case_Source |

 
申請來源常見分類（待以 Excel 實值更新）。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VS_TW_LTC_Case_Source](ValueSet-vs-tw-ltc-case-source.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-tw-ltc-case-source",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-case-source",
  "version" : "1.0.0",
  "name" : "CS_TW_LTC_Case_Source",
  "title" : "長照 SDK－申請來源（暫行）",
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
  "description" : "申請來源常見分類（待以 Excel 實值更新）。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "hospital-referral",
    "display" : "醫院轉介"
  },
  {
    "code" : "self-apply",
    "display" : "自行申請"
  },
  {
    "code" : "center-referral",
    "display" : "照管中心轉介"
  },
  {
    "code" : "other",
    "display" : "其他"
  }]
}

```
