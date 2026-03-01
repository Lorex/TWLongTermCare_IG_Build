# 個案身心障礙手冊持有狀態代碼 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **個案身心障礙手冊持有狀態代碼**

## CodeSystem: 個案身心障礙手冊持有狀態代碼 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/ConditionDisabilityCS-TWLTC | *Version*:1.0.0 |
| Active as of 2024-08-25 | *Computable Name*:ConditionDisabilityCSTWLTC |

 
用於表述個案的身心障礙手冊持有狀態代碼。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ConditionDisabilityVSTWLTC](ValueSet-ConditionDisabilityVS-TWLTC.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ConditionDisabilityCS-TWLTC",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/ConditionDisabilityCS-TWLTC",
  "version" : "1.0.0",
  "name" : "ConditionDisabilityCSTWLTC",
  "title" : "個案身心障礙手冊持有狀態代碼",
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
  "description" : "用於表述個案的身心障礙手冊持有狀態代碼。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "no-disability-handbook",
    "display" : "無身心障礙手冊",
    "definition" : "個案無身心障礙手冊。"
  },
  {
    "code" : "disability-handbook",
    "display" : "有身心障礙手冊",
    "definition" : "個案有身心障礙手冊，新舊制不分或未知。"
  },
  {
    "code" : "disability-handbook-new",
    "display" : "有身心障礙手冊－新制",
    "definition" : "個案有身心障礙手冊，為新制。"
  },
  {
    "code" : "disability-handbook-legacy",
    "display" : "有身心障礙手冊－舊制",
    "definition" : "個案有身心障礙手冊，為舊制。"
  }]
}

```
