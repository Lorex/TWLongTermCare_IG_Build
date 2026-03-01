# 轉介單看護狀況代碼 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **轉介單看護狀況代碼**

## CodeSystem: 轉介單看護狀況代碼 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/ReferralConditionCaregiverCS-TWLTC | *Version*:1.0.0 |
| Active as of 2024-08-25 | *Computable Name*:ReferralConditionCaregiverCSTWLTC |

 
用於表述個案雇用看護的狀況。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ReferralConditionCaregiverVSTWLTC](ValueSet-ReferralConditionCaregiverVS-TWLTC.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ReferralConditionCaregiverCS-TWLTC",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/ReferralConditionCaregiverCS-TWLTC",
  "version" : "1.0.0",
  "name" : "ReferralConditionCaregiverCSTWLTC",
  "title" : "轉介單看護狀況代碼",
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
  "description" : "用於表述個案雇用看護的狀況。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "no-caregiver",
    "display" : "無看護",
    "definition" : "個案無雇用看護。"
  },
  {
    "code" : "caregiver",
    "display" : "有看護",
    "definition" : "個案有雇用看護。"
  }]
}

```
