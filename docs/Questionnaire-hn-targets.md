# 居家護理－照護計畫目標問卷 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－照護計畫目標問卷**

## Questionnaire: 居家護理－照護計畫目標問卷 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/Questionnaire/hn-targets | *Version*:1.1.0 |
| Draft as of 2025-12-08 | *Computable Name*:HNTargetsQuestionnaire |

 
V5.0.16 照護計畫目標的問題結構與輸入型態。 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "hn-targets",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"]
  },
  "url" : "http://ltc-ig.fhir.tw/Questionnaire/hn-targets",
  "version" : "1.1.0",
  "name" : "HNTargetsQuestionnaire",
  "title" : "居家護理－照護計畫目標",
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
  "description" : "V5.0.16 照護計畫目標的問題結構與輸入型態。",
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
    "linkId" : "TargetCreateDate",
    "text" : "目標建立日期",
    "type" : "date",
    "required" : true,
    "repeats" : false
  },
  {
    "linkId" : "TargetStatement2",
    "text" : "目標補充說明",
    "type" : "string",
    "required" : false,
    "repeats" : false,
    "maxLength" : 100
  },
  {
    "linkId" : "EstimatedDate",
    "text" : "預期達到日期",
    "type" : "date",
    "required" : true,
    "repeats" : false
  },
  {
    "linkId" : "IsMainTarget",
    "text" : "是否主要目標",
    "type" : "boolean",
    "required" : true,
    "repeats" : false
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
