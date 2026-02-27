# 教育程度代碼 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **教育程度代碼**

## CodeSystem: 教育程度代碼 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/EducationStatusCS-TWLTC | *Version*:0.4.1 |
| Active as of 2024-09-02 | *Computable Name*:EducationStatusCSTWLTC |

 
用於表述個案的教育程度，在長照機構住民教育程度 Extension 中使用。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [EducationStatusVSTWLTC](ValueSet-EducationStatusVS-TWLTC.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "EducationStatusCS-TWLTC",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/EducationStatusCS-TWLTC",
  "version" : "0.4.1",
  "name" : "EducationStatusCSTWLTC",
  "title" : "教育程度代碼",
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
  "description" : "用於表述個案的教育程度，在長照機構住民教育程度 Extension 中使用。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 12,
  "concept" : [{
    "code" : "illiterate",
    "display" : "不識字",
    "definition" : "個案教育程度為不識字。"
  },
  {
    "code" : "literate",
    "display" : "識字",
    "definition" : "個案教育程度為識字，但未受正規教育（含私塾）。"
  },
  {
    "code" : "elementary",
    "display" : "國小",
    "definition" : "個案教育程度為國小。"
  },
  {
    "code" : "junior",
    "display" : "國中",
    "definition" : "個案教育程度為國中。"
  },
  {
    "code" : "senior",
    "display" : "高中（職）",
    "definition" : "個案教育程度為高中（職）。"
  },
  {
    "code" : "special-elementary",
    "display" : "特教班-國小",
    "definition" : "個案教育程度為特教班-國小。"
  },
  {
    "code" : "special-junior",
    "display" : "特教班-國中",
    "definition" : "個案教育程度為特教班-國中。"
  },
  {
    "code" : "special-senior",
    "display" : "特教班-高中職",
    "definition" : "個案教育程度為特教班-高中職。"
  },
  {
    "code" : "vocational",
    "display" : "五專",
    "definition" : "個案教育程度為五專。"
  },
  {
    "code" : "college",
    "display" : "大學（二三專）",
    "definition" : "個案教育程度為大學（二三專）。"
  },
  {
    "code" : "postgraduate",
    "display" : "研究所以上",
    "definition" : "個案教育程度為研究所以上。"
  },
  {
    "code" : "other",
    "display" : "其他",
    "definition" : "個案教育程度為其他。"
  }]
}

```
