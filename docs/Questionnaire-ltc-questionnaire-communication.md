# 溝通表達能力問卷 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **溝通表達能力問卷**

## Questionnaire: 溝通表達能力問卷 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-communication | *Version*:1.0.0 |
| Active as of 2026-03-02 | *Computable Name*:LTCQuestionnaireCommunication |



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "ltc-questionnaire-communication",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"]
  },
  "url" : "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-communication",
  "version" : "1.0.0",
  "name" : "LTCQuestionnaireCommunication",
  "status" : "active",
  "date" : "2026-03-02T02:26:08+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "item" : [{
    "linkId" : "C1",
    "text" : "個案意識狀態",
    "type" : "string"
  },
  {
    "linkId" : "C2",
    "text" : "個案視力",
    "type" : "string"
  },
  {
    "linkId" : "C3",
    "text" : "個案聽力",
    "type" : "string"
  },
  {
    "linkId" : "C4",
    "text" : "個案表達能力",
    "type" : "string"
  },
  {
    "linkId" : "C5",
    "text" : "個案理解能力",
    "type" : "string"
  }]
}

```
