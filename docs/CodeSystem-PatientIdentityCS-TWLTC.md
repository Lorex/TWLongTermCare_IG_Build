# 個案身分別代碼 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **個案身分別代碼**

## CodeSystem: 個案身分別代碼 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/PatientIdentityCS-TWLTC | *Version*:1.0.0 |
| Active as of 2024-09-02 | *Computable Name*:PatientIdentityCSTWLTC |

 
個案身分別代碼 

 This Code system is referenced in the content logical definition of the following value sets: 

* [PatientIdentityVSTWLTC](ValueSet-PatientIdentityVS-TWLTC.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "PatientIdentityCS-TWLTC",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/PatientIdentityCS-TWLTC",
  "version" : "1.0.0",
  "name" : "PatientIdentityCSTWLTC",
  "title" : "個案身分別代碼",
  "status" : "active",
  "experimental" : false,
  "date" : "2024-09-02",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "個案身分別代碼",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [{
    "code" : "1",
    "display" : "一般戶",
    "definition" : "一般戶"
  },
  {
    "code" : "2a-1",
    "display" : "社會救助法低收入戶",
    "definition" : "社會救助法低收入戶（未達 1 倍）"
  },
  {
    "code" : "2a-2",
    "display" : "長照低收",
    "definition" : "長照低收（1-1.5 倍）"
  },
  {
    "code" : "3",
    "display" : "長照中低收",
    "definition" : "長照中低收（1.5-2.5 倍）"
  },
  {
    "code" : "4",
    "display" : "榮民",
    "definition" : "榮民"
  },
  {
    "code" : "5",
    "display" : "原住民",
    "definition" : "原住民"
  },
  {
    "code" : "6",
    "display" : "身心障礙",
    "definition" : "領有身心障礙證明（手冊）"
  }]
}

```
