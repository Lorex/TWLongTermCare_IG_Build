# 關係類型擴展代碼 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **關係類型擴展代碼**

## CodeSystem: 關係類型擴展代碼 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/RelationshipTypeCS-TWLTC | *Version*:0.4.1 |
| Active as of 2024-09-02 | *Computable Name*:RelationshipTypeCSTWLTC |

 
關係人與個案的關係類型擴展代碼，新增孫媳婦、孫女婿、聘用看護-本國籍、聘用看護-外國籍等代碼 

 This Code system is referenced in the content logical definition of the following value sets: 

* [RelationshipTypeVSTWLTC](ValueSet-RelationshipTypeVS-TWLTC.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "RelationshipTypeCS-TWLTC",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/RelationshipTypeCS-TWLTC",
  "version" : "0.4.1",
  "name" : "RelationshipTypeCSTWLTC",
  "title" : "關係類型擴展代碼",
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
  "description" : "關係人與個案的關係類型擴展代碼，新增孫媳婦、孫女婿、聘用看護-本國籍、聘用看護-外國籍等代碼",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "GDAUINLAW",
    "display" : "孫媳婦",
    "definition" : "孫媳婦"
  },
  {
    "code" : "GSONINLAW",
    "display" : "孫女婿",
    "definition" : "孫女婿"
  },
  {
    "code" : "CGIVERDOM",
    "display" : "聘用看護-本國籍",
    "definition" : "聘用看護-本國籍"
  },
  {
    "code" : "CGIVERFOR",
    "display" : "聘用看護-外國籍",
    "definition" : "聘用看護-外國籍"
  }]
}

```
