# 轉介單管路狀況代碼 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **轉介單管路狀況代碼**

## CodeSystem: 轉介單管路狀況代碼 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/ReferralConditionTubeCS-TWLTC | *Version*:0.4.1 |
| Active as of 2024-08-25 | *Computable Name*:ReferralConditionTubeCSTWLTC |

 
用於表述轉介單的狀況代碼，包含身心障礙手冊、管路、壓傷、居住狀況、看護、主要問題及需求等。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ReferralConditionTubeVSTWLTC](ValueSet-ReferralConditionTubeVS-TWLTC.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ReferralConditionTubeCS-TWLTC",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/ReferralConditionTubeCS-TWLTC",
  "version" : "0.4.1",
  "name" : "ReferralConditionTubeCSTWLTC",
  "title" : "轉介單管路狀況代碼",
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
  "description" : "用於表述轉介單的狀況代碼，包含身心障礙手冊、管路、壓傷、居住狀況、看護、主要問題及需求等。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "no-tube",
    "display" : "無管路",
    "definition" : "個案無管路。"
  },
  {
    "code" : "nasogastric-tube",
    "display" : "鼻胃管",
    "definition" : "個案使用鼻胃管。"
  },
  {
    "code" : "tracheostomy",
    "display" : "氣切",
    "definition" : "個案使用氣切管。"
  },
  {
    "code" : "catheter",
    "display" : "導尿管",
    "definition" : "個案使用導尿管。"
  },
  {
    "code" : "fistula",
    "display" : "造瘻",
    "definition" : "個案使用造瘻管。"
  },
  {
    "code" : "other",
    "display" : "其他",
    "definition" : "個案使用其他管路。"
  }]
}

```
