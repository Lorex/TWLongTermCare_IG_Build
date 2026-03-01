# 轉介單居住狀況代碼 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **轉介單居住狀況代碼**

## CodeSystem: 轉介單居住狀況代碼 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/ReferralConditionResidenceCS-TWLTC | *Version*:1.0.0 |
| Active as of 2024-08-25 | *Computable Name*:ReferralConditionResidenceCSTWLTC |

 
用於表述個案的居住狀況 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ReferralConditionResidenceVSTWLTC](ValueSet-ReferralConditionResidenceVS-TWLTC.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ReferralConditionResidenceCS-TWLTC",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/ReferralConditionResidenceCS-TWLTC",
  "version" : "1.0.0",
  "name" : "ReferralConditionResidenceCSTWLTC",
  "title" : "轉介單居住狀況代碼",
  "status" : "active",
  "experimental" : false,
  "date" : "2024-08-25",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "用於表述個案的居住狀況",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "not-alone",
    "display" : "非獨居",
    "definition" : "個案非獨居。"
  },
  {
    "code" : "alone-managed",
    "display" : "獨居 (社會局列冊管理個案)",
    "definition" : "個案獨居，且社會局列冊管理。"
  },
  {
    "code" : "alone-not-managed",
    "display" : "獨居 (社會局未列冊管理個案)",
    "definition" : "個案獨居，但社會局未列冊管理。"
  }]
}

```
