# 居家護理－藥物安全性評估問卷 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－藥物安全性評估問卷**

## Questionnaire: 居家護理－藥物安全性評估問卷 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/Questionnaire/hn-drugsafeties | *Version*:1.1.0 |
| Draft as of 2025-12-08 | *Computable Name*:HNDrugSafetiesQuestionnaire |

 
V5.0.16 藥物安全性評估的問題結構與輸入型態。 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "hn-drugsafeties",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"]
  },
  "url" : "http://ltc-ig.fhir.tw/Questionnaire/hn-drugsafeties",
  "version" : "1.1.0",
  "name" : "HNDrugSafetiesQuestionnaire",
  "title" : "居家護理－藥物安全性評估",
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
  "description" : "V5.0.16 藥物安全性評估的問題結構與輸入型態。",
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
      "linkId" : "Questions.q1b200653",
      "text" : "是否有長期使用藥物",
      "type" : "group",
      "required" : false,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.q1b200653.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-49fe20230ec3"
      },
      {
        "linkId" : "Questions.q1b200653.Statement1",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "Questions.qb5202c4c",
      "text" : "目前使用中的藥物種類",
      "type" : "group",
      "required" : false,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.qb5202c4c.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-19264db8df7b"
      },
      {
        "linkId" : "Questions.qb5202c4c.Statement1",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "Questions.q023931ae",
      "text" : "使用精神用藥",
      "type" : "group",
      "required" : false,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.q023931ae.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-19264db8df7b"
      },
      {
        "linkId" : "Questions.q023931ae.Statement1",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "Questions.qc7a63c2d",
      "text" : "使用止痛用藥",
      "type" : "group",
      "required" : false,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.qc7a63c2d.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-19264db8df7b"
      },
      {
        "linkId" : "Questions.qc7a63c2d.Statement1",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "Questions.q0482b7eb",
      "text" : "是否存在多重用藥問題",
      "type" : "group",
      "required" : false,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.q0482b7eb.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-523a43c4a46a"
      },
      {
        "linkId" : "Questions.q0482b7eb.Statement1",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    },
    {
      "linkId" : "Questions.qc67400fe",
      "text" : "目前是否使用有自行購藥(電台、他人介紹..等非醫療院所取得)",
      "type" : "group",
      "required" : false,
      "repeats" : false,
      "item" : [{
        "linkId" : "Questions.qc67400fe.Answer",
        "text" : "評估答案",
        "type" : "choice",
        "required" : false,
        "repeats" : false,
        "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-19264db8df7b"
      },
      {
        "linkId" : "Questions.qc67400fe.Statement1",
        "text" : "補充說明",
        "type" : "string",
        "required" : false,
        "repeats" : false,
        "maxLength" : 100
      }]
    }]
  },
  {
    "linkId" : "DrugInUses",
    "text" : "使用中的藥物",
    "type" : "group",
    "required" : false,
    "repeats" : true,
    "item" : [{
      "linkId" : "DrugInUses.Name",
      "text" : "藥物品項",
      "type" : "string",
      "required" : true,
      "repeats" : false,
      "maxLength" : 150
    },
    {
      "linkId" : "DrugInUses.Volume",
      "text" : "劑量",
      "type" : "string",
      "required" : true,
      "repeats" : false,
      "maxLength" : 100
    },
    {
      "linkId" : "DrugInUses.Frequency",
      "text" : "頻率",
      "type" : "string",
      "required" : true,
      "repeats" : false,
      "maxLength" : 100
    },
    {
      "linkId" : "DrugInUses.Purpose",
      "text" : "用途",
      "type" : "string",
      "required" : true,
      "repeats" : false,
      "maxLength" : 100
    },
    {
      "linkId" : "DrugInUses.Remark",
      "text" : "備註",
      "type" : "string",
      "required" : false,
      "repeats" : false,
      "maxLength" : 100
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
