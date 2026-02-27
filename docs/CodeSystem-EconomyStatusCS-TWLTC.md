# 經濟狀況代碼 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **經濟狀況代碼**

## CodeSystem: 經濟狀況代碼 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/EconomyStatusCS-TWLTC | *Version*:0.4.1 |
| Active as of 2024-08-25 | *Computable Name*:EconomyStatusCSTWLTC |

 
用於表述個案的經濟狀況，在長照機構住民經濟狀況 Extension 中使用。 此代碼比照警政署偵查筆錄制式格式之選項進行設計。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [EconomyStatusVSTWLTC](ValueSet-EconomyStatusVS-TWLTC.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "EconomyStatusCS-TWLTC",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/EconomyStatusCS-TWLTC",
  "version" : "0.4.1",
  "name" : "EconomyStatusCSTWLTC",
  "title" : "經濟狀況代碼",
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
  "description" : "用於表述個案的經濟狀況，在長照機構住民經濟狀況 Extension 中使用。\n此代碼比照警政署偵查筆錄制式格式之選項進行設計。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "poor",
    "display" : "貧寒",
    "definition" : "個案經濟狀況為貧寒。"
  },
  {
    "code" : "barely-maintain",
    "display" : "勉持",
    "definition" : "個案經濟狀況為勉持。"
  },
  {
    "code" : "well-off",
    "display" : "小康",
    "definition" : "個案經濟狀況為小康。"
  },
  {
    "code" : "middle-class",
    "display" : "中產",
    "definition" : "個案經濟狀況為中產。"
  },
  {
    "code" : "wealthy",
    "display" : "富裕",
    "definition" : "個案經濟狀況為富裕。"
  }]
}

```
