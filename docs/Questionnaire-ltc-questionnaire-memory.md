# 短期記憶力問卷 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **短期記憶力問卷**

## Questionnaire: 短期記憶力問卷 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-memory | *Version*:0.4.1 |
| Active as of 2026-02-28 | *Computable Name*:LTCQuestionnaireMemory |



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "ltc-questionnaire-memory",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"]
  },
  "url" : "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-memory",
  "version" : "0.4.1",
  "name" : "LTCQuestionnaireMemory",
  "status" : "active",
  "date" : "2026-02-28T23:13:53+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "item" : [{
    "linkId" : "D0",
    "text" : "個案短期記憶力回答狀態",
    "type" : "string"
  },
  {
    "linkId" : "D1a",
    "text" : "個案能重複的詞數",
    "type" : "integer"
  },
  {
    "linkId" : "D1b1",
    "text" : "回憶起「襪子」",
    "type" : "string"
  },
  {
    "linkId" : "D1b2",
    "text" : "回憶起「藍色」",
    "type" : "string"
  },
  {
    "linkId" : "D1b3",
    "text" : "回憶起「床鋪」",
    "type" : "string"
  }]
}

```
