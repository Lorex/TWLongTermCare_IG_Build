# 居家護理－人員緊急事件問卷 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－人員緊急事件問卷**

## Questionnaire: 居家護理－人員緊急事件問卷 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/Questionnaire/hn-staffegy | *Version*:1.1.0 |
| Draft as of 2025-12-08 | *Computable Name*:HNStaffEgyQuestionnaire |

 
V5.0.16 人員緊急事件的問題結構與輸入型態。 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "hn-staffegy",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"]
  },
  "url" : "http://ltc-ig.fhir.tw/Questionnaire/hn-staffegy",
  "version" : "1.1.0",
  "name" : "HNStaffEgyQuestionnaire",
  "title" : "居家護理－人員緊急事件",
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
  "description" : "V5.0.16 人員緊急事件的問題結構與輸入型態。",
  "item" : [{
    "linkId" : "Title",
    "text" : "工作人員職稱",
    "type" : "group",
    "required" : true,
    "repeats" : false,
    "item" : [{
      "linkId" : "Title.Value",
      "text" : "選項",
      "type" : "choice",
      "required" : true,
      "repeats" : false,
      "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-94d2d2fdf018"
    },
    {
      "linkId" : "Title.Other",
      "text" : "補充說明",
      "type" : "string",
      "required" : false,
      "repeats" : false,
      "maxLength" : 100
    }]
  },
  {
    "linkId" : "Name",
    "text" : "工作人員姓名",
    "type" : "string",
    "required" : true,
    "repeats" : false,
    "maxLength" : 50
  },
  {
    "linkId" : "IDNo",
    "text" : "人員身分證字號",
    "type" : "string",
    "required" : true,
    "repeats" : false,
    "maxLength" : 10
  },
  {
    "linkId" : "EmergencyType",
    "text" : "緊急事件類型",
    "type" : "group",
    "required" : true,
    "repeats" : false,
    "item" : [{
      "linkId" : "EmergencyType.Value",
      "text" : "選項",
      "type" : "choice",
      "required" : true,
      "repeats" : false,
      "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-6892f4f30c24"
    },
    {
      "linkId" : "EmergencyType.Other",
      "text" : "補充說明",
      "type" : "string",
      "required" : false,
      "repeats" : false,
      "maxLength" : 100
    }]
  },
  {
    "linkId" : "Date",
    "text" : "發生日期",
    "type" : "date",
    "required" : true,
    "repeats" : false
  },
  {
    "linkId" : "Time",
    "text" : "發生時間",
    "type" : "time",
    "required" : true,
    "repeats" : false
  },
  {
    "linkId" : "Reason",
    "text" : "發生原因",
    "type" : "string",
    "required" : true,
    "repeats" : false,
    "maxLength" : 100
  },
  {
    "linkId" : "Description",
    "text" : "事件敘述",
    "type" : "string",
    "required" : true,
    "repeats" : false,
    "maxLength" : 200
  },
  {
    "linkId" : "Process",
    "text" : "通報及處理過程",
    "type" : "string",
    "required" : true,
    "repeats" : false,
    "maxLength" : 200
  },
  {
    "linkId" : "Report",
    "text" : "檢討紀錄",
    "type" : "string",
    "required" : true,
    "repeats" : false,
    "maxLength" : 200
  },
  {
    "linkId" : "CreateID",
    "text" : "建立機構代碼",
    "type" : "string",
    "required" : true,
    "repeats" : false,
    "maxLength" : 10
  }]
}

```
