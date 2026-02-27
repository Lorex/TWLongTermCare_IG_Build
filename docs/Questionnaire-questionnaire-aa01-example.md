# 照顧計畫擬訂與服務連結問卷 (AA01) - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **照顧計畫擬訂與服務連結問卷 (AA01)**

## Questionnaire: 照顧計畫擬訂與服務連結問卷 (AA01) 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/Questionnaire/questionnaire-aa01-example | *Version*:0.4.1 |
| Active as of 2026-02-28 | *Computable Name*:AA01 |
| *Other Identifiers:*http://ltc-ig.fhir.tw/questionnaire-id#AA01 | |

 
AA01照顧計畫擬訂與服務連結問卷，用於個案管理師擬定個人化照顧計畫 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "questionnaire-aa01-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"]
  },
  "url" : "http://ltc-ig.fhir.tw/Questionnaire/questionnaire-aa01-example",
  "identifier" : [{
    "system" : "http://ltc-ig.fhir.tw/questionnaire-id",
    "value" : "AA01"
  }],
  "version" : "0.4.1",
  "name" : "AA01",
  "title" : "照顧計畫擬訂與服務連結問卷 (AA01)",
  "status" : "active",
  "date" : "2026-02-28T07:16:04+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "AA01照顧計畫擬訂與服務連結問卷，用於個案管理師擬定個人化照顧計畫",
  "item" : [{
    "linkId" : "planTarget",
    "text" : "計畫目標",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "phoneContactDate",
      "text" : "電聯日期",
      "type" : "dateTime",
      "required" : true
    },
    {
      "linkId" : "homeVisitDate",
      "text" : "家訪日期",
      "type" : "dateTime",
      "required" : true
    },
    {
      "linkId" : "dischargeDate",
      "text" : "出院日期",
      "type" : "dateTime",
      "required" : false
    },
    {
      "linkId" : "coVisitors",
      "text" : "偕同訪視者",
      "type" : "string",
      "repeats" : true
    },
    {
      "linkId" : "caseOverview",
      "text" : "個案概況",
      "type" : "group",
      "required" : true,
      "item" : [{
        "linkId" : "physicalMentalCondition",
        "text" : "身心概況",
        "type" : "text",
        "required" : true
      },
      {
        "linkId" : "economicIncome",
        "text" : "經濟收入",
        "type" : "text",
        "required" : true
      },
      {
        "linkId" : "livingEnvironment",
        "text" : "居住環境",
        "type" : "text",
        "required" : true
      },
      {
        "linkId" : "socialSupport",
        "text" : "社會支持",
        "type" : "text",
        "required" : true
      },
      {
        "linkId" : "other",
        "text" : "其他",
        "type" : "text",
        "required" : false
      },
      {
        "linkId" : "reassessmentValue",
        "text" : "複評評值",
        "type" : "text",
        "required" : true
      }]
    },
    {
      "linkId" : "careGoals",
      "text" : "照顧目標",
      "type" : "text",
      "required" : true
    },
    {
      "linkId" : "discrepancyExplanation",
      "text" : "與照專建議服務項目、問題清單不一致原因說明及未來規劃、後續追蹤計劃等",
      "type" : "text",
      "required" : false
    }]
  },
  {
    "linkId" : "executionPlan",
    "text" : "計畫執行規劃",
    "type" : "group",
    "required" : true,
    "item" : [{
      "linkId" : "approvedServices",
      "text" : "長照服務核定項目、頻率",
      "type" : "group",
      "required" : true,
      "item" : [{
        "linkId" : "bCodeServices",
        "text" : "B碼(輪派/指定○○○單位)",
        "type" : "text",
        "required" : false,
        "repeats" : true
      },
      {
        "linkId" : "cCodeServices",
        "text" : "C碼:(輪派/指定○○○單位)",
        "type" : "text",
        "required" : false,
        "repeats" : true
      },
      {
        "linkId" : "dCodeServices",
        "text" : "D碼",
        "type" : "text",
        "required" : false,
        "repeats" : true
      },
      {
        "linkId" : "eFCodeServices",
        "text" : "E.F碼",
        "type" : "text",
        "required" : false,
        "repeats" : true
      },
      {
        "linkId" : "gCodeServices",
        "text" : "G碼",
        "type" : "text",
        "required" : false,
        "repeats" : true
      },
      {
        "linkId" : "scCodeServices",
        "text" : "SC碼",
        "type" : "text",
        "required" : false,
        "repeats" : true
      },
      {
        "linkId" : "mealServices",
        "text" : "營養餐飲服務: 1日核定○○餐(午/晚餐)",
        "type" : "string",
        "required" : false
      },
      {
        "linkId" : "emergencyServices",
        "text" : "緊急救援服務",
        "type" : "text",
        "required" : false,
        "repeats" : true
      }]
    },
    {
      "linkId" : "otherServices",
      "text" : "轉介其他服務資源",
      "type" : "text",
      "required" : false,
      "repeats" : true
    }]
  },
  {
    "linkId" : "otherNotes",
    "text" : "其他備註",
    "type" : "text",
    "required" : false
  }]
}

```
