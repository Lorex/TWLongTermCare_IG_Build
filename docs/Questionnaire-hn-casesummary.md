# 居家護理－需求摘要問卷 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－需求摘要問卷**

## Questionnaire: 居家護理－需求摘要問卷 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/Questionnaire/hn-casesummary | *Version*:1.1.0 |
| Draft as of 2025-12-08 | *Computable Name*:HNCaseSummaryQuestionnaire |

 
V5.0.16 需求摘要的問題結構與輸入型態。 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "hn-casesummary",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"]
  },
  "url" : "http://ltc-ig.fhir.tw/Questionnaire/hn-casesummary",
  "version" : "1.1.0",
  "name" : "HNCaseSummaryQuestionnaire",
  "title" : "居家護理－需求摘要",
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
  "description" : "V5.0.16 需求摘要的問題結構與輸入型態。",
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
    "linkId" : "Summary",
    "text" : "問題列表與摘要",
    "type" : "group",
    "required" : true,
    "repeats" : false,
    "item" : [{
      "linkId" : "Summary.QuestionType",
      "text" : "需求類型",
      "type" : "choice",
      "required" : true,
      "repeats" : false,
      "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-bc943cb432ce"
    },
    {
      "linkId" : "Summary.Question",
      "text" : "需求項目",
      "type" : "string",
      "required" : true,
      "repeats" : false
    },
    {
      "linkId" : "Summary.Answer",
      "text" : "需求摘要備註",
      "type" : "string",
      "required" : false,
      "repeats" : false,
      "maxLength" : 100
    }]
  }]
}

```
