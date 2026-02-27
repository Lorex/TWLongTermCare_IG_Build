# 個案身心障礙類型代碼（新制） - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **個案身心障礙類型代碼（新制）**

## CodeSystem: 個案身心障礙類型代碼（新制） 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/ConditionDisabilityTypeCS-TWLTC | *Version*:0.4.1 |
| Active as of 2024-09-02 | *Computable Name*:ConditionDisabilityTypeCSTWLTC |

 
用於表述個案的身心障礙類型代碼（新制）。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ConditionDisabilityTypeVSTWLTC](ValueSet-ConditionDisabilityTypeVS-TWLTC.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ConditionDisabilityTypeCS-TWLTC",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/ConditionDisabilityTypeCS-TWLTC",
  "version" : "0.4.1",
  "name" : "ConditionDisabilityTypeCSTWLTC",
  "title" : "個案身心障礙類型代碼（新制）",
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
  "description" : "用於表述個案的身心障礙類型代碼（新制）。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 11,
  "concept" : [{
    "code" : "01",
    "display" : "第一類",
    "definition" : "神經系統構造及精神、心智功能"
  },
  {
    "code" : "02",
    "display" : "第二類",
    "definition" : "眼、耳及相關構造與感官功能及疼痛"
  },
  {
    "code" : "03",
    "display" : "第三類",
    "definition" : "涉及聲音與言語構造及其功能"
  },
  {
    "code" : "04",
    "display" : "第四類",
    "definition" : "循環、造血、免疫與呼吸系統構造及其功能"
  },
  {
    "code" : "05",
    "display" : "第五類",
    "definition" : "消化、新陳代謝與內分泌系統相關構造及其功能"
  },
  {
    "code" : "06",
    "display" : "第六類",
    "definition" : "泌尿與生殖系統相關構造及其功能"
  },
  {
    "code" : "07",
    "display" : "第七類",
    "definition" : "神經、肌肉、骨骼之移動相關構造及其功能"
  },
  {
    "code" : "08",
    "display" : "第八類",
    "definition" : "皮膚與相關構造及其功能"
  },
  {
    "code" : "09",
    "display" : "第九類",
    "definition" : "罕見疾病"
  },
  {
    "code" : "10",
    "display" : "第十類",
    "definition" : "其他類"
  },
  {
    "code" : "11",
    "display" : "第十一類",
    "definition" : "發展遲緩類"
  }]
}

```
