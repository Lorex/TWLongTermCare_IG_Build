# 居家護理－跌倒危險性評估問卷 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－跌倒危險性評估問卷**

## Questionnaire: 居家護理－跌倒危險性評估問卷 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/Questionnaire/hn-fallrisks | *Version*:1.1.0 |
| Draft as of 2025-12-08 | *Computable Name*:HNFallRisksQuestionnaire |

 
V5.0.16 跌倒危險性評估的問題結構與輸入型態。 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "hn-fallrisks",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"]
  },
  "url" : "http://ltc-ig.fhir.tw/Questionnaire/hn-fallrisks",
  "version" : "1.1.0",
  "name" : "HNFallRisksQuestionnaire",
  "title" : "居家護理－跌倒危險性評估",
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
  "description" : "V5.0.16 跌倒危險性評估的問題結構與輸入型態。",
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
      "linkId" : "Questions.q2f552b4a",
      "text" : "年紀65歲以上",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.q2f552b4a.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
      },
      {
        "linkId" : "Questions.q2f552b4a.Options",
        "text" : "多選答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 1000
      },
      {
        "linkId" : "Questions.q2f552b4a.Other",
        "text" : "其他用藥說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "Questions.q463dc41d",
      "text" : "過去一年內曾跌倒",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.q463dc41d.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
      },
      {
        "linkId" : "Questions.q463dc41d.Options",
        "text" : "多選答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 1000
      },
      {
        "linkId" : "Questions.q463dc41d.Other",
        "text" : "其他用藥說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "Questions.qd680c277",
      "text" : "最近意識/認知出現異常",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.qd680c277.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
      },
      {
        "linkId" : "Questions.qd680c277.Options",
        "text" : "多選答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 1000
      },
      {
        "linkId" : "Questions.qd680c277.Other",
        "text" : "其他用藥說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "Questions.qc1c1fb2c",
      "text" : "活動功能異常",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.qc1c1fb2c.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
      },
      {
        "linkId" : "Questions.qc1c1fb2c.Options",
        "text" : "多選答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 1000
      },
      {
        "linkId" : "Questions.qc1c1fb2c.Other",
        "text" : "其他用藥說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "Questions.q603c2de9",
      "text" : "體能虛弱",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.q603c2de9.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
      },
      {
        "linkId" : "Questions.q603c2de9.Options",
        "text" : "多選答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 1000
      },
      {
        "linkId" : "Questions.q603c2de9.Other",
        "text" : "其他用藥說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "Questions.qbf720dbc",
      "text" : "知覺障礙",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.qbf720dbc.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
      },
      {
        "linkId" : "Questions.qbf720dbc.Options",
        "text" : "多選答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 1000
      },
      {
        "linkId" : "Questions.qbf720dbc.Other",
        "text" : "其他用藥說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "Questions.q6fa60520",
      "text" : "暈眩/低血壓",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.q6fa60520.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
      },
      {
        "linkId" : "Questions.q6fa60520.Options",
        "text" : "多選答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 1000
      },
      {
        "linkId" : "Questions.q6fa60520.Other",
        "text" : "其他用藥說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "Questions.qe6e35ded",
      "text" : "使用藥物",
      "type" : "group",
      "required" : true,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.qe6e35ded.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
      },
      {
        "linkId" : "Questions.qe6e35ded.Options",
        "text" : "多選答案",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 1000
      },
      {
        "linkId" : "Questions.qe6e35ded.Other",
        "text" : "其他用藥說明",
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
