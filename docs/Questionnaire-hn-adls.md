# 居家護理－日常生活功能評估問卷 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－日常生活功能評估問卷**

## Questionnaire: 居家護理－日常生活功能評估問卷 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/Questionnaire/hn-adls | *Version*:1.1.0 |
| Draft as of 2025-12-08 | *Computable Name*:HNADLsQuestionnaire |

 
V5.0.16 日常生活功能評估的問題結構與輸入型態。 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "hn-adls",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"]
  },
  "url" : "http://ltc-ig.fhir.tw/Questionnaire/hn-adls",
  "version" : "1.1.0",
  "name" : "HNADLsQuestionnaire",
  "title" : "居家護理－日常生活功能評估",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-12-08",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "V5.0.16 日常生活功能評估的問題結構與輸入型態。",
  "item" : [{
    "linkId" : "Date",
    "text" : "紀錄日期",
    "type" : "date",
    "required" : true,
    "repeats" : false
  },
  {
    "linkId" : "NurseID",
    "text" : "護理人員身分證字號",
    "type" : "string",
    "required" : true,
    "repeats" : false,
    "maxLength" : 10
  },
  {
    "linkId" : "Questions",
    "text" : "評估項目",
    "type" : "group",
    "required" : true,
    "repeats" : false,
    "item" : [{
      "linkId" : "Questions.q46787535",
      "text" : "進食",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.q46787535.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-c020bc6f582f"
      }]
    },
    {
      "linkId" : "Questions.q0bc7e44d",
      "text" : "移位",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.q0bc7e44d.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-5509cc9b0f4c"
      }]
    },
    {
      "linkId" : "Questions.qb93b932f",
      "text" : "衛生",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.qb93b932f.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-c1223cdffc0c"
      }]
    },
    {
      "linkId" : "Questions.q96220a06",
      "text" : "如廁",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.q96220a06.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-5a0da2e50fde"
      }]
    },
    {
      "linkId" : "Questions.q92ee129c",
      "text" : "洗澡",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.q92ee129c.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-3c038851248f"
      }]
    },
    {
      "linkId" : "Questions.qb8f96793",
      "text" : "走動",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.qb8f96793.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-9a2ed66b6061"
      }]
    },
    {
      "linkId" : "Questions.q1cb17d5b",
      "text" : "樓梯",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.q1cb17d5b.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-076f2d014436"
      }]
    },
    {
      "linkId" : "Questions.qd949ce2d",
      "text" : "穿脫",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.qd949ce2d.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-723d296bd93d"
      }]
    },
    {
      "linkId" : "Questions.qfe7de24a",
      "text" : "大便",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.qfe7de24a.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-8c7bcb320a01"
      }]
    },
    {
      "linkId" : "Questions.q13cca4d4",
      "text" : "小便",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.q13cca4d4.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d20974b4a161"
      }]
    }]
  },
  {
    "linkId" : "IsTemporary",
    "text" : "是否暫存",
    "type" : "choice",
    "required" : false,
    "repeats" : false,
    "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
  }]
}

```
