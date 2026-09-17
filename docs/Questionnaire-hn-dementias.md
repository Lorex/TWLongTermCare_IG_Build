# 居家護理－認知功能評估問卷 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－認知功能評估問卷**

## Questionnaire: 居家護理－認知功能評估問卷 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/Questionnaire/hn-dementias | *Version*:1.1.0 |
| Draft as of 2025-12-08 | *Computable Name*:HNDementiasQuestionnaire |

 
V5.0.16 認知功能評估的問題結構與輸入型態。 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "hn-dementias",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"]
  },
  "url" : "http://ltc-ig.fhir.tw/Questionnaire/hn-dementias",
  "version" : "1.1.0",
  "name" : "HNDementiasQuestionnaire",
  "title" : "居家護理－認知功能評估",
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
  "description" : "V5.0.16 認知功能評估的問題結構與輸入型態。",
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
    "linkId" : "Statement",
    "text" : "無法評估原因或備註",
    "type" : "string",
    "required" : false,
    "repeats" : false,
    "maxLength" : 500
  },
  {
    "linkId" : "Questions",
    "text" : "評估項目",
    "type" : "group",
    "required" : false,
    "repeats" : false,
    "item" : [{
      "linkId" : "Questions.q48174716",
      "text" : "今天是幾年幾月幾日？__年__月__日",
      "type" : "group",
      "required" : false,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.q48174716.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-2a3bd76ba6eb"
      }]
    },
    {
      "linkId" : "Questions.qe97f506c",
      "text" : "今天是星期幾？",
      "type" : "group",
      "required" : false,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.qe97f506c.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-2a3bd76ba6eb"
      }]
    },
    {
      "linkId" : "Questions.q6128d754",
      "text" : "這裡是什麼地方？",
      "type" : "group",
      "required" : false,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.q6128d754.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-2a3bd76ba6eb"
      }]
    },
    {
      "linkId" : "Questions.qe0801d08",
      "text" : "你的電話號碼是幾號？",
      "type" : "group",
      "required" : false,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.qe0801d08.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-2a3bd76ba6eb"
      }]
    },
    {
      "linkId" : "Questions.qd40595f2",
      "text" : "你住在什麼地方？",
      "type" : "group",
      "required" : false,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.qd40595f2.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-2a3bd76ba6eb"
      }]
    },
    {
      "linkId" : "Questions.q1ddb5b1c",
      "text" : "你幾歲了？",
      "type" : "group",
      "required" : false,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.q1ddb5b1c.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-2a3bd76ba6eb"
      }]
    },
    {
      "linkId" : "Questions.q995c979b",
      "text" : "你的生日是哪一天？",
      "type" : "group",
      "required" : false,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.q995c979b.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-2a3bd76ba6eb"
      }]
    },
    {
      "linkId" : "Questions.q6df0269a",
      "text" : "現任總統是誰？",
      "type" : "group",
      "required" : false,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.q6df0269a.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-2a3bd76ba6eb"
      }]
    },
    {
      "linkId" : "Questions.q8a8a8021",
      "text" : "前任總統是誰？",
      "type" : "group",
      "required" : false,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.q8a8a8021.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-2a3bd76ba6eb"
      }]
    },
    {
      "linkId" : "Questions.qb719d7b7",
      "text" : "你媽媽叫什麼名字？",
      "type" : "group",
      "required" : false,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.qb719d7b7.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-2a3bd76ba6eb"
      }]
    },
    {
      "linkId" : "Questions.q295d5a12",
      "text" : "從20 減3 開始算，一直減3 減下去。",
      "type" : "group",
      "required" : false,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.q295d5a12.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-2a3bd76ba6eb"
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
