# 居家護理－共照紀錄問卷 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－共照紀錄問卷**

## Questionnaire: 居家護理－共照紀錄問卷 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/Questionnaire/hn-casedesc | *Version*:1.1.0 |
| Draft as of 2025-12-08 | *Computable Name*:HNCaseDescQuestionnaire |

 
V5.0.16 共照紀錄的問題結構與輸入型態。 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "hn-casedesc",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"]
  },
  "url" : "http://ltc-ig.fhir.tw/Questionnaire/hn-casedesc",
  "version" : "1.1.0",
  "name" : "HNCaseDescQuestionnaire",
  "title" : "居家護理－共照紀錄",
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
  "description" : "V5.0.16 共照紀錄的問題結構與輸入型態。",
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
    "linkId" : "Date",
    "text" : "照護日期",
    "type" : "date",
    "required" : true,
    "repeats" : false
  },
  {
    "linkId" : "Time",
    "text" : "開始時間",
    "type" : "time",
    "required" : true,
    "repeats" : false
  },
  {
    "linkId" : "Time2",
    "text" : "結束時間",
    "type" : "time",
    "required" : true,
    "repeats" : false
  },
  {
    "linkId" : "MedicalName",
    "text" : "共照成員姓名",
    "type" : "string",
    "required" : true,
    "repeats" : false,
    "maxLength" : 50
  },
  {
    "linkId" : "Title",
    "text" : "共照成員職稱",
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
    "linkId" : "Statement",
    "text" : "照護紀錄",
    "type" : "string",
    "required" : true,
    "repeats" : false,
    "maxLength" : 200
  }]
}

```
