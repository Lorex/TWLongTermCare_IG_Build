# 認知功能與精神狀態問卷 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **認知功能與精神狀態問卷**

## Questionnaire: 認知功能與精神狀態問卷 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-mental | *Version*:1.0.0 |
| Active as of 2026-03-02 | *Computable Name*:LTCQuestionnaireMental |



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "ltc-questionnaire-mental",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"]
  },
  "url" : "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-mental",
  "version" : "1.0.0",
  "name" : "LTCQuestionnaireMental",
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
    "linkId" : "I01",
    "text" : "遊走",
    "type" : "string"
  },
  {
    "linkId" : "I02",
    "text" : "日夜顛倒/作息混亂",
    "type" : "string"
  },
  {
    "linkId" : "I03",
    "text" : "語言攻擊行為",
    "type" : "string"
  },
  {
    "linkId" : "I04",
    "text" : "肢體攻擊行為",
    "type" : "string"
  },
  {
    "linkId" : "I05",
    "text" : "干擾行為",
    "type" : "string"
  },
  {
    "linkId" : "I06",
    "text" : "抗拒照護",
    "type" : "string"
  },
  {
    "linkId" : "I07",
    "text" : "妄想",
    "type" : "string"
  },
  {
    "linkId" : "I08",
    "text" : "幻覺",
    "type" : "string"
  },
  {
    "linkId" : "I09",
    "text" : "恐懼或焦慮",
    "type" : "string"
  },
  {
    "linkId" : "I10",
    "text" : "憂鬱及負性症狀",
    "type" : "string"
  },
  {
    "linkId" : "I11",
    "text" : "自傷行為及自殺（包含意念及行為）",
    "type" : "string"
  },
  {
    "linkId" : "I12",
    "text" : "重複行為",
    "type" : "string"
  },
  {
    "linkId" : "I13",
    "text" : "對物品的攻擊行為",
    "type" : "string"
  },
  {
    "linkId" : "I14",
    "text" : "其他不適當以及不潔行為",
    "type" : "string"
  }]
}

```
