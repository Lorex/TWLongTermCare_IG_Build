# 居家護理－情緒問題評估問卷 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－情緒問題評估問卷**

## Questionnaire: 居家護理－情緒問題評估問卷 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/Questionnaire/hn-geriatricdepressionscales | *Version*:1.1.0 |
| Draft as of 2025-12-08 | *Computable Name*:HNGeriatricDepressionScalesQuestionnaire |

 
V5.0.16 情緒問題評估的問題結構與輸入型態。 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "hn-geriatricdepressionscales",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"]
  },
  "url" : "http://ltc-ig.fhir.tw/Questionnaire/hn-geriatricdepressionscales",
  "version" : "1.1.0",
  "name" : "HNGeriatricDepressionScalesQuestionnaire",
  "title" : "居家護理－情緒問題評估",
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
  "description" : "V5.0.16 情緒問題評估的問題結構與輸入型態。",
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
      "linkId" : "Questions.qb56906ac",
      "text" : "您對您的生活感到滿意嗎？",
      "type" : "group",
      "required" : false,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.qb56906ac.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
      }]
    },
    {
      "linkId" : "Questions.qb6cee679",
      "text" : "您是否常常感到厭煩？",
      "type" : "group",
      "required" : false,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.qb6cee679.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
      }]
    },
    {
      "linkId" : "Questions.q887c5133",
      "text" : "您是否常常感到無論做什麼都沒有用？",
      "type" : "group",
      "required" : false,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.q887c5133.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
      }]
    },
    {
      "linkId" : "Questions.q4a2bd151",
      "text" : "您是否比較喜歡待在家裡，較不喜歡外出及不喜歡做新的事？",
      "type" : "group",
      "required" : false,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.q4a2bd151.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
      }]
    },
    {
      "linkId" : "Questions.q14debc58",
      "text" : "您是否感覺活得很沒有價值？",
      "type" : "group",
      "required" : false,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.q14debc58.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
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
