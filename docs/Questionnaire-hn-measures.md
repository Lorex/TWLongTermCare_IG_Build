# 居家護理－照護計畫措施問卷 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－照護計畫措施問卷**

## Questionnaire: 居家護理－照護計畫措施問卷 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/Questionnaire/hn-measures | *Version*:1.1.0 |
| Draft as of 2025-12-08 | *Computable Name*:HNMeasuresQuestionnaire |

 
V5.0.16 照護計畫措施的問題結構與輸入型態。 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "hn-measures",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"]
  },
  "url" : "http://ltc-ig.fhir.tw/Questionnaire/hn-measures",
  "version" : "1.1.0",
  "name" : "HNMeasuresQuestionnaire",
  "title" : "居家護理－照護計畫措施",
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
  "description" : "V5.0.16 照護計畫措施的問題結構與輸入型態。",
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
    "linkId" : "MeasureCreateDate",
    "text" : "措施建立日期",
    "type" : "date",
    "required" : true,
    "repeats" : false
  },
  {
    "linkId" : "MeasureContent",
    "text" : "措施內容",
    "type" : "string",
    "required" : true,
    "repeats" : false,
    "maxLength" : 100
  },
  {
    "linkId" : "NurseID",
    "text" : "建立護理人員身分證字號",
    "type" : "string",
    "required" : true,
    "repeats" : false,
    "maxLength" : 10
  },
  {
    "linkId" : "MeasureStopDate",
    "text" : "停止日期",
    "type" : "date",
    "required" : false,
    "repeats" : false
  },
  {
    "linkId" : "MeasureStopContent",
    "text" : "停止原因",
    "type" : "string",
    "required" : false,
    "repeats" : false,
    "maxLength" : 100
  },
  {
    "linkId" : "MeasureStopNurseID",
    "text" : "停止護理人員身分證字號",
    "type" : "string",
    "required" : false,
    "repeats" : false,
    "maxLength" : 10
  }]
}

```
