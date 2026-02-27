# 地址用途擴展識別碼 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **地址用途擴展識別碼**

## CodeSystem: 地址用途擴展識別碼 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/AddressUseCS-TWLTC | *Version*:0.4.1 |
| Active as of 2024-08-22 | *Computable Name*:AddressUseCSTWLTC |

 
地址用途的擴展識別碼，新增戶籍地與現居地等代碼 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AddressUseVSTWLTC](ValueSet-AddressUseVS-TWLTC.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "AddressUseCS-TWLTC",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/AddressUseCS-TWLTC",
  "version" : "0.4.1",
  "name" : "AddressUseCSTWLTC",
  "title" : "地址用途擴展識別碼",
  "status" : "active",
  "experimental" : false,
  "date" : "2024-08-22",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "地址用途的擴展識別碼，新增戶籍地與現居地等代碼",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "current",
    "display" : "現居地址",
    "definition" : "該人員目前居住的地址。"
  },
  {
    "code" : "residential",
    "display" : "戶籍地址",
    "definition" : "該人員戶籍所在地址。"
  }]
}

```
