# 居家護理－照護計畫評值紀錄問卷 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－照護計畫評值紀錄問卷**

## Questionnaire: 居家護理－照護計畫評值紀錄問卷 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/Questionnaire/hn-evaluations | *Version*:1.1.0 |
| Draft as of 2025-12-08 | *Computable Name*:HNEvaluationsQuestionnaire |

 
V5.0.16 照護計畫評值紀錄的問題結構與輸入型態。 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "hn-evaluations",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"]
  },
  "url" : "http://ltc-ig.fhir.tw/Questionnaire/hn-evaluations",
  "version" : "1.1.0",
  "name" : "HNEvaluationsQuestionnaire",
  "title" : "居家護理－照護計畫評值紀錄",
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
  "description" : "V5.0.16 照護計畫評值紀錄的問題結構與輸入型態。",
  "item" : [{
    "linkId" : "CaseID",
    "text" : "個案身分證字號",
    "type" : "string",
    "required" : true,
    "repeats" : false,
    "maxLength" : 10
  },
  {
    "linkId" : "EndDate",
    "text" : "收案日期",
    "type" : "date",
    "required" : true,
    "repeats" : false
  },
  {
    "linkId" : "SummaryCreateDate",
    "text" : "需求摘要評估日期",
    "type" : "date",
    "required" : true,
    "repeats" : false
  },
  {
    "linkId" : "Summary",
    "text" : "需求摘要項目",
    "type" : "string",
    "required" : true,
    "repeats" : false,
    "maxLength" : 100
  },
  {
    "linkId" : "SummaryAnswer",
    "text" : "需求摘要備註",
    "type" : "string",
    "required" : false,
    "repeats" : false,
    "maxLength" : 100
  },
  {
    "linkId" : "TargetStatement",
    "text" : "目標描述",
    "type" : "string",
    "required" : true,
    "repeats" : false,
    "maxLength" : 100
  },
  {
    "linkId" : "EvaluationDate",
    "text" : "紀錄日期",
    "type" : "date",
    "required" : true,
    "repeats" : false
  },
  {
    "linkId" : "EvaluationContent",
    "text" : "評值紀錄",
    "type" : "string",
    "required" : true,
    "repeats" : false,
    "maxLength" : 500
  },
  {
    "linkId" : "NurseID",
    "text" : "建立護理人員身分證字號",
    "type" : "string",
    "required" : true,
    "repeats" : false,
    "maxLength" : 10
  }]
}

```
