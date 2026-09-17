# 在宅急症收案評估問卷 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症收案評估問卷**

## Questionnaire: 在宅急症收案評估問卷 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/Questionnaire/hah-intake-assessment | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:HAHIntakeAssessment |

 
本 IG 定義的收案資料交換表單；正式計畫條件須依實際採用的版本評估。 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "hah-intake-assessment",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"]
  },
  "url" : "http://ltc-ig.fhir.tw/Questionnaire/hah-intake-assessment",
  "version" : "1.1.0",
  "name" : "HAHIntakeAssessment",
  "title" : "在宅急症收案評估",
  "status" : "active",
  "experimental" : false,
  "subjectType" : ["Patient"],
  "date" : "2026-09-17T17:33:17+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "本 IG 定義的收案資料交換表單；正式計畫條件須依實際採用的版本評估。",
  "item" : [{
    "linkId" : "criteria",
    "text" : "評估依據的計畫名稱與版本",
    "type" : "string",
    "required" : true
  },
  {
    "linkId" : "home-safety",
    "text" : "居家環境與設備可行性",
    "type" : "string",
    "required" : true
  },
  {
    "linkId" : "caregiver-support",
    "text" : "照顧者支援與照護能力",
    "type" : "string",
    "required" : true
  },
  {
    "linkId" : "decision",
    "text" : "收案建議",
    "type" : "choice",
    "required" : true,
    "answerValueSet" : "http://ltc-ig.fhir.tw/ValueSet/hah-eligibility"
  },
  {
    "linkId" : "reason",
    "text" : "不建議收案或待確認的原因",
    "type" : "string",
    "required" : false
  }]
}

```
