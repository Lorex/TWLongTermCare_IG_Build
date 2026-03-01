# 長照 SDK－核定額度－金流欄位 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 SDK－核定額度－金流欄位**

## CodeSystem: 長照 SDK－核定額度－金流欄位 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-benefit-type | *Version*:1.0.0 |
| Active as of 2026-03-02 | *Computable Name*:CS_TW_LTC_BenefitType |

 
此 CodeSystem 定義長照 SDK 核定額度中的金流欄位代碼。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VS_TW_LTC_BenefitType](ValueSet-vs-tw-ltc-benefit-type.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-tw-ltc-benefit-type",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-benefit-type",
  "version" : "1.0.0",
  "name" : "CS_TW_LTC_BenefitType",
  "title" : "長照 SDK－核定額度－金流欄位",
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
  "description" : "此 CodeSystem 定義長照 SDK 核定額度中的金流欄位代碼。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "total",
    "display" : "總額度"
  },
  {
    "code" : "subsidy",
    "display" : "補助額度"
  },
  {
    "code" : "copay",
    "display" : "部分負擔"
  },
  {
    "code" : "copay-rate",
    "display" : "部分負擔比率(%)"
  }]
}

```
