# 居家護理－健康紀錄評估問卷 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－健康紀錄評估問卷**

## Questionnaire: 居家護理－健康紀錄評估問卷 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/Questionnaire/hn-healthyhabits | *Version*:1.1.0 |
| Draft as of 2025-12-08 | *Computable Name*:HNHealthyHabitsQuestionnaire |

 
V5.0.16 健康紀錄評估的問題結構與輸入型態。 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "hn-healthyhabits",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"]
  },
  "url" : "http://ltc-ig.fhir.tw/Questionnaire/hn-healthyhabits",
  "version" : "1.1.0",
  "name" : "HNHealthyHabitsQuestionnaire",
  "title" : "居家護理－健康紀錄評估",
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
  "description" : "V5.0.16 健康紀錄評估的問題結構與輸入型態。",
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
    "linkId" : "IsSmoking",
    "text" : "吸菸狀態",
    "type" : "choice",
    "required" : true,
    "repeats" : false,
    "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-85c814c9b8ba"
  },
  {
    "linkId" : "IsAlcohol",
    "text" : "飲酒狀態",
    "type" : "choice",
    "required" : true,
    "repeats" : false,
    "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-5f96e05811ec"
  },
  {
    "linkId" : "IsBetelNut",
    "text" : "嚼食檳榔狀態",
    "type" : "choice",
    "required" : true,
    "repeats" : false,
    "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-a5f17d46becb"
  },
  {
    "linkId" : "QuitSmoking",
    "text" : "戒菸年數",
    "type" : "decimal",
    "required" : false,
    "repeats" : false
  },
  {
    "linkId" : "BeforeSmoking",
    "text" : "戒菸前吸菸年數",
    "type" : "decimal",
    "required" : false,
    "repeats" : false
  },
  {
    "linkId" : "SmokingYear",
    "text" : "吸菸年數",
    "type" : "decimal",
    "required" : false,
    "repeats" : false
  },
  {
    "linkId" : "QuitAlcohol",
    "text" : "戒酒年數",
    "type" : "decimal",
    "required" : false,
    "repeats" : false
  },
  {
    "linkId" : "BeforequitAlcohol",
    "text" : "戒酒前飲酒年數",
    "type" : "decimal",
    "required" : false,
    "repeats" : false
  },
  {
    "linkId" : "AlcoholYear",
    "text" : "飲酒年數",
    "type" : "decimal",
    "required" : false,
    "repeats" : false
  },
  {
    "linkId" : "QuitBetelNut",
    "text" : "戒檳榔年數",
    "type" : "decimal",
    "required" : false,
    "repeats" : false
  },
  {
    "linkId" : "BeforequitBetelNut",
    "text" : "戒除前嚼食檳榔年數",
    "type" : "decimal",
    "required" : false,
    "repeats" : false
  },
  {
    "linkId" : "BetelNutYear",
    "text" : "嚼食檳榔年數",
    "type" : "decimal",
    "required" : false,
    "repeats" : false
  },
  {
    "linkId" : "IsAllergy",
    "text" : "食物過敏",
    "type" : "choice",
    "required" : true,
    "repeats" : false,
    "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-19264db8df7b"
  },
  {
    "linkId" : "Allergy_Desc",
    "text" : "食物過敏說明",
    "type" : "string",
    "required" : false,
    "repeats" : false,
    "maxLength" : 500
  },
  {
    "linkId" : "IsAllergyDrug",
    "text" : "藥物過敏",
    "type" : "choice",
    "required" : true,
    "repeats" : false,
    "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-19264db8df7b"
  },
  {
    "linkId" : "AllergyDrug_Desc",
    "text" : "藥物過敏說明",
    "type" : "string",
    "required" : false,
    "repeats" : false,
    "maxLength" : 500
  },
  {
    "linkId" : "Vaccination",
    "text" : "疫苗紀錄",
    "type" : "group",
    "required" : true,
    "repeats" : false,
    "item" : [{
      "linkId" : "Vaccination.Answer",
      "text" : "是否接種",
      "type" : "choice",
      "required" : true,
      "repeats" : false,
      "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-19264db8df7b"
    },
    {
      "linkId" : "Vaccination.MultipleAnswer",
      "text" : "疫苗種類",
      "type" : "string",
      "required" : false,
      "repeats" : false,
      "maxLength" : 1000
    },
    {
      "linkId" : "Vaccination.Other",
      "text" : "接種年份",
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
