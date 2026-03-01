# 居家環境與社會參與問卷 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家環境與社會參與問卷**

## Questionnaire: 居家環境與社會參與問卷 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-society | *Version*:1.0.0 |
| Active as of 2026-03-01 | *Computable Name*:LTCQuestionnaireSociety |



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "ltc-questionnaire-society",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"]
  },
  "url" : "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-society",
  "version" : "1.0.0",
  "name" : "LTCQuestionnaireSociety",
  "status" : "active",
  "date" : "2026-03-01T19:25:35+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "item" : [{
    "linkId" : "H1a",
    "text" : "請問個案目前的居住狀況？",
    "type" : "string"
  },
  {
    "linkId" : "H2a",
    "text" : "請問個案與親朋好友多久會聯絡 1 次，包括見面、通電話或寫信？",
    "type" : "string"
  },
  {
    "linkId" : "H2b",
    "text" : "請問個案目前是否有參與下列的活動？",
    "type" : "string"
  },
  {
    "linkId" : "H2c",
    "text" : "請問個案最近三個月內為了與親友互動、參與活動，是否需要服務介入協助？",
    "type" : "boolean"
  },
  {
    "linkId" : "H2c1",
    "text" : "請問個案最近三個月內為了與親友互動、參與活動，需要協助的方式？",
    "type" : "string"
  },
  {
    "linkId" : "H2c2",
    "text" : "請問個案最近三個月內為了與親友互動、參與活動，需要協助的頻率？",
    "type" : "string"
  }]
}

```
