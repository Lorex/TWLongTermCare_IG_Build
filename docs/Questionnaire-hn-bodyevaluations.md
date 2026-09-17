# 居家護理－身體評估評估問卷 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－身體評估評估問卷**

## Questionnaire: 居家護理－身體評估評估問卷 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/Questionnaire/hn-bodyevaluations | *Version*:1.1.0 |
| Draft as of 2025-12-08 | *Computable Name*:HNBodyEvaluationsQuestionnaire |

 
V5.0.16 身體評估評估的問題結構與輸入型態。 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "hn-bodyevaluations",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"]
  },
  "url" : "http://ltc-ig.fhir.tw/Questionnaire/hn-bodyevaluations",
  "version" : "1.1.0",
  "name" : "HNBodyEvaluationsQuestionnaire",
  "title" : "居家護理－身體評估評估",
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
  "description" : "V5.0.16 身體評估評估的問題結構與輸入型態。",
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
    "linkId" : "BodyQuestions",
    "text" : "評估項目",
    "type" : "group",
    "required" : true,
    "repeats" : false,
    "item" : [{
      "linkId" : "BodyQuestions.q3d5455cd",
      "text" : "睜眼",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.q3d5455cd.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-6380f9a50deb"
      },
      {
        "linkId" : "BodyQuestions.q3d5455cd.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 1000
      },
      {
        "linkId" : "BodyQuestions.q3d5455cd.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.q78be3cfc",
      "text" : "語言",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.q78be3cfc.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d2f289370ed0"
      },
      {
        "linkId" : "BodyQuestions.q78be3cfc.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 1000
      },
      {
        "linkId" : "BodyQuestions.q78be3cfc.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.qd5d3ea28",
      "text" : "運動",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.qd5d3ea28.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-784e3567e13b"
      },
      {
        "linkId" : "BodyQuestions.qd5d3ea28.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 1000
      },
      {
        "linkId" : "BodyQuestions.qd5d3ea28.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.q9999e6f5",
      "text" : "視力",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.q9999e6f5.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-ef4daeacd99a"
      },
      {
        "linkId" : "BodyQuestions.q9999e6f5.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 1000
      },
      {
        "linkId" : "BodyQuestions.q9999e6f5.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.qcd3cc2c1",
      "text" : "視力-部位",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.qcd3cc2c1.Answer",
        "text" : "評估答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      },
      {
        "linkId" : "BodyQuestions.qcd3cc2c1.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "choice",
        "required" : false,
        "repeats" : true,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-2fd20e6427ff"
      },
      {
        "linkId" : "BodyQuestions.qcd3cc2c1.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.q99290406",
      "text" : "視力-影響日常活動",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.q99290406.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
      },
      {
        "linkId" : "BodyQuestions.q99290406.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 1000
      },
      {
        "linkId" : "BodyQuestions.q99290406.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.q24eedc1b",
      "text" : "視力-輔具",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.q24eedc1b.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-49fe20230ec3"
      },
      {
        "linkId" : "BodyQuestions.q24eedc1b.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "choice",
        "required" : false,
        "repeats" : true,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-afadc3bb2a88"
      },
      {
        "linkId" : "BodyQuestions.q24eedc1b.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.q6215056f",
      "text" : "聽力",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.q6215056f.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-ef4daeacd99a"
      },
      {
        "linkId" : "BodyQuestions.q6215056f.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 1000
      },
      {
        "linkId" : "BodyQuestions.q6215056f.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.q1678a5f1",
      "text" : "聽力-部位",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.q1678a5f1.Answer",
        "text" : "評估答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      },
      {
        "linkId" : "BodyQuestions.q1678a5f1.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "choice",
        "required" : false,
        "repeats" : true,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-7bc89358fe37"
      },
      {
        "linkId" : "BodyQuestions.q1678a5f1.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.q93005aaa",
      "text" : "聽力-影響日常活動",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.q93005aaa.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
      },
      {
        "linkId" : "BodyQuestions.q93005aaa.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 1000
      },
      {
        "linkId" : "BodyQuestions.q93005aaa.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.q2386d883",
      "text" : "聽力-輔具",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.q2386d883.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-49fe20230ec3"
      },
      {
        "linkId" : "BodyQuestions.q2386d883.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "choice",
        "required" : false,
        "repeats" : true,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-f0b4522906b6"
      },
      {
        "linkId" : "BodyQuestions.q2386d883.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.q306e4676",
      "text" : "溝通",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.q306e4676.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-0655870f5454"
      },
      {
        "linkId" : "BodyQuestions.q306e4676.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 1000
      },
      {
        "linkId" : "BodyQuestions.q306e4676.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.q63b2fbbe",
      "text" : "溝通-影響日常活動",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.q63b2fbbe.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d9301962abbf"
      },
      {
        "linkId" : "BodyQuestions.q63b2fbbe.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 1000
      },
      {
        "linkId" : "BodyQuestions.q63b2fbbe.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.q3288f369",
      "text" : "說話",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.q3288f369.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-3330cbe2f937"
      },
      {
        "linkId" : "BodyQuestions.q3288f369.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 1000
      },
      {
        "linkId" : "BodyQuestions.q3288f369.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.q14304745",
      "text" : "理解",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.q14304745.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-dc054900d0e6"
      },
      {
        "linkId" : "BodyQuestions.q14304745.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 1000
      },
      {
        "linkId" : "BodyQuestions.q14304745.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.q7ca654d9",
      "text" : "口腔外觀",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.q7ca654d9.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-7c98e63372ac"
      },
      {
        "linkId" : "BodyQuestions.q7ca654d9.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "choice",
        "required" : false,
        "repeats" : true,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-415683173294"
      },
      {
        "linkId" : "BodyQuestions.q7ca654d9.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.q53fb7d09",
      "text" : "特殊進食",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.q53fb7d09.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-49fe20230ec3"
      },
      {
        "linkId" : "BodyQuestions.q53fb7d09.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "choice",
        "required" : false,
        "repeats" : true,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-3435b7eace88"
      },
      {
        "linkId" : "BodyQuestions.q53fb7d09.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.qfcd3bd60",
      "text" : "假牙狀況",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.qfcd3bd60.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-a051b2c062af"
      },
      {
        "linkId" : "BodyQuestions.qfcd3bd60.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "choice",
        "required" : false,
        "repeats" : true,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-eee6be407d0e"
      },
      {
        "linkId" : "BodyQuestions.qfcd3bd60.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.q7b3136eb",
      "text" : "腹部狀態",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.q7b3136eb.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-b42a51b1139e"
      },
      {
        "linkId" : "BodyQuestions.q7b3136eb.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 1000
      },
      {
        "linkId" : "BodyQuestions.q7b3136eb.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.qc0a49d43",
      "text" : "腸蠕動",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.qc0a49d43.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-3d4ed1f2575b"
      },
      {
        "linkId" : "BodyQuestions.qc0a49d43.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 1000
      },
      {
        "linkId" : "BodyQuestions.qc0a49d43.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.qd49ab702",
      "text" : "消化狀態",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.qd49ab702.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-7ce3f119b854"
      },
      {
        "linkId" : "BodyQuestions.qd49ab702.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 1000
      },
      {
        "linkId" : "BodyQuestions.qd49ab702.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.q1b2dc66c",
      "text" : "排便型態",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.q1b2dc66c.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-7f8a5cfdf9c9"
      },
      {
        "linkId" : "BodyQuestions.q1b2dc66c.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 1000
      },
      {
        "linkId" : "BodyQuestions.q1b2dc66c.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.qfaaaf47f",
      "text" : "排便顏色",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.qfaaaf47f.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-a88d0ac6ee1a"
      },
      {
        "linkId" : "BodyQuestions.qfaaaf47f.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 1000
      },
      {
        "linkId" : "BodyQuestions.qfaaaf47f.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.qbfd21c82",
      "text" : "排便輔助",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.qbfd21c82.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-19264db8df7b"
      },
      {
        "linkId" : "BodyQuestions.qbfd21c82.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "choice",
        "required" : false,
        "repeats" : true,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-0467df08a056"
      },
      {
        "linkId" : "BodyQuestions.qbfd21c82.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.q0cdace56",
      "text" : "排尿型態",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.q0cdace56.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-5cb9bbd6d620"
      },
      {
        "linkId" : "BodyQuestions.q0cdace56.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "choice",
        "required" : false,
        "repeats" : true,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-b5e899beaa3a"
      },
      {
        "linkId" : "BodyQuestions.q0cdace56.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.q3170f977",
      "text" : "排尿顏色",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.q3170f977.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-c0e4f2d08eec"
      },
      {
        "linkId" : "BodyQuestions.q3170f977.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 1000
      },
      {
        "linkId" : "BodyQuestions.q3170f977.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.q1dddcc0f",
      "text" : "排尿輔助",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.q1dddcc0f.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-19264db8df7b"
      },
      {
        "linkId" : "BodyQuestions.q1dddcc0f.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "choice",
        "required" : false,
        "repeats" : true,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-ec686161641f"
      },
      {
        "linkId" : "BodyQuestions.q1dddcc0f.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.q889a3f5d",
      "text" : "溫度",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.q889a3f5d.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-13d13792ca45"
      },
      {
        "linkId" : "BodyQuestions.q889a3f5d.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 1000
      },
      {
        "linkId" : "BodyQuestions.q889a3f5d.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.qfbbbe51d",
      "text" : "濕度",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.qfbbbe51d.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-acfe4f6c5f3a"
      },
      {
        "linkId" : "BodyQuestions.qfbbbe51d.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 1000
      },
      {
        "linkId" : "BodyQuestions.qfbbbe51d.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.q2edc1f98",
      "text" : "顏色",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.q2edc1f98.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-ed3fafa578d2"
      },
      {
        "linkId" : "BodyQuestions.q2edc1f98.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 1000
      },
      {
        "linkId" : "BodyQuestions.q2edc1f98.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.q0aec089c",
      "text" : "水腫級數",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.q0aec089c.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-49fe20230ec3"
      },
      {
        "linkId" : "BodyQuestions.q0aec089c.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 1000
      },
      {
        "linkId" : "BodyQuestions.q0aec089c.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.q5b3534e0",
      "text" : "水腫等級",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.q5b3534e0.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-c93d67023284"
      },
      {
        "linkId" : "BodyQuestions.q5b3534e0.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 1000
      },
      {
        "linkId" : "BodyQuestions.q5b3534e0.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.q6e6e5811",
      "text" : "完整",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.q6e6e5811.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
      },
      {
        "linkId" : "BodyQuestions.q6e6e5811.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 1000
      },
      {
        "linkId" : "BodyQuestions.q6e6e5811.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.q4c713f60",
      "text" : "左上肢",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.q4c713f60.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-00697b86a7bc"
      },
      {
        "linkId" : "BodyQuestions.q4c713f60.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 1000
      },
      {
        "linkId" : "BodyQuestions.q4c713f60.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.q43c26e48",
      "text" : "右上肢",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.q43c26e48.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-00697b86a7bc"
      },
      {
        "linkId" : "BodyQuestions.q43c26e48.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 1000
      },
      {
        "linkId" : "BodyQuestions.q43c26e48.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.q9926c640",
      "text" : "左下肢",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.q9926c640.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-00697b86a7bc"
      },
      {
        "linkId" : "BodyQuestions.q9926c640.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 1000
      },
      {
        "linkId" : "BodyQuestions.q9926c640.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.q3f44d138",
      "text" : "右下肢",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.q3f44d138.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-00697b86a7bc"
      },
      {
        "linkId" : "BodyQuestions.q3f44d138.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 1000
      },
      {
        "linkId" : "BodyQuestions.q3f44d138.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.qcd675f81",
      "text" : "行動能力問題",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.qcd675f81.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-1ffa1d5d3bef"
      },
      {
        "linkId" : "BodyQuestions.qcd675f81.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 1000
      },
      {
        "linkId" : "BodyQuestions.qcd675f81.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.q3adf788d",
      "text" : "肌力-輔具",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.q3adf788d.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-49fe20230ec3"
      },
      {
        "linkId" : "BodyQuestions.q3adf788d.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "choice",
        "required" : false,
        "repeats" : true,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-1a72d15a5965"
      },
      {
        "linkId" : "BodyQuestions.q3adf788d.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.q4ce17519",
      "text" : "跌倒",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.q4ce17519.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-19264db8df7b"
      },
      {
        "linkId" : "BodyQuestions.q4ce17519.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "choice",
        "required" : false,
        "repeats" : true,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-3bbfa4b4f8db"
      },
      {
        "linkId" : "BodyQuestions.q4ce17519.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.qcc99d785",
      "text" : "跌倒次數",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.qcc99d785.Answer",
        "text" : "評估答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      },
      {
        "linkId" : "BodyQuestions.qcc99d785.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 1000
      },
      {
        "linkId" : "BodyQuestions.qcc99d785.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.q1ea67d8d",
      "text" : "行為",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.q1ea67d8d.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-365bfce838bb"
      },
      {
        "linkId" : "BodyQuestions.q1ea67d8d.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "choice",
        "required" : false,
        "repeats" : true,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-46c8866533a0"
      },
      {
        "linkId" : "BodyQuestions.q1ea67d8d.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.qca5f735b",
      "text" : "睡眠",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.qca5f735b.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-ef4daeacd99a"
      },
      {
        "linkId" : "BodyQuestions.qca5f735b.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "choice",
        "required" : false,
        "repeats" : true,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-c34dc3f43d82"
      },
      {
        "linkId" : "BodyQuestions.qca5f735b.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.qd8db9643",
      "text" : "服用藥物",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.qd8db9643.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-49fe20230ec3"
      },
      {
        "linkId" : "BodyQuestions.qd8db9643.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 1000
      },
      {
        "linkId" : "BodyQuestions.qd8db9643.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.q65b57fd8",
      "text" : "藥物類別",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.q65b57fd8.Answer",
        "text" : "評估答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      },
      {
        "linkId" : "BodyQuestions.q65b57fd8.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "choice",
        "required" : false,
        "repeats" : true,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-6d733f47d6f4"
      },
      {
        "linkId" : "BodyQuestions.q65b57fd8.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.q03fdb3f1",
      "text" : "服用頻率",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.q03fdb3f1.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-cf479df80e62"
      },
      {
        "linkId" : "BodyQuestions.q03fdb3f1.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 1000
      },
      {
        "linkId" : "BodyQuestions.q03fdb3f1.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.qd30f4212",
      "text" : "輔助器",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.qd30f4212.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-49fe20230ec3"
      },
      {
        "linkId" : "BodyQuestions.qd30f4212.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 1000
      },
      {
        "linkId" : "BodyQuestions.qd30f4212.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.q1355f181",
      "text" : "有輔助器",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.q1355f181.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-8aa8b9aed3b2"
      },
      {
        "linkId" : "BodyQuestions.q1355f181.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "choice",
        "required" : false,
        "repeats" : true,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-1c644096303f"
      },
      {
        "linkId" : "BodyQuestions.q1355f181.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.q1c902f78",
      "text" : "鼻導管",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.q1c902f78.Answer",
        "text" : "評估答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      },
      {
        "linkId" : "BodyQuestions.q1c902f78.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 1000
      },
      {
        "linkId" : "BodyQuestions.q1c902f78.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "BodyQuestions.q6772dc09",
      "text" : "氧氣面罩",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "BodyQuestions.q6772dc09.Answer",
        "text" : "評估答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      },
      {
        "linkId" : "BodyQuestions.q6772dc09.MultipleAnswer",
        "text" : "評估多選答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 1000
      },
      {
        "linkId" : "BodyQuestions.q6772dc09.Other",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
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
