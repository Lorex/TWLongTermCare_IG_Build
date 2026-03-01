# 轉介單壓傷狀況代碼 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **轉介單壓傷狀況代碼**

## CodeSystem: 轉介單壓傷狀況代碼 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/ReferralConditionCrushCS-TWLTC | *Version*:1.0.0 |
| Active as of 2024-08-25 | *Computable Name*:ReferralConditionCrushCSTWLTC |

 
用於表述個案的壓傷狀況。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ReferralConditionCrushVSTWLTC](ValueSet-ReferralConditionCrushVS-TWLTC.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ReferralConditionCrushCS-TWLTC",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/ReferralConditionCrushCS-TWLTC",
  "version" : "1.0.0",
  "name" : "ReferralConditionCrushCSTWLTC",
  "title" : "轉介單壓傷狀況代碼",
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
  "description" : "用於表述個案的壓傷狀況。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "no-crush",
    "display" : "無壓傷",
    "definition" : "個案無壓傷。"
  },
  {
    "code" : "crush",
    "display" : "壓傷",
    "definition" : "個案有壓傷。"
  }]
}

```
