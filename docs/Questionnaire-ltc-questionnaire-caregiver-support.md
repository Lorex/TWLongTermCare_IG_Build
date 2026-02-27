# 主要照護者工作與支持問卷 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **主要照護者工作與支持問卷**

## Questionnaire: 主要照護者工作與支持問卷 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-caregiver-support | *Version*:0.4.1 |
| Active as of 2026-02-28 | *Computable Name*:LTCQuestionnaireCaregiverSupport |



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "ltc-questionnaire-caregiver-support",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"]
  },
  "url" : "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-caregiver-support",
  "version" : "0.4.1",
  "name" : "LTCQuestionnaireCaregiverSupport",
  "status" : "active",
  "date" : "2026-02-28T05:34:23+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "item" : [{
    "linkId" : "K1",
    "text" : "請問您是否與個案同住？",
    "type" : "boolean"
  },
  {
    "linkId" : "K2",
    "text" : "若您有事必須外出，一天之中（二十四小時），請問您可將個案單獨留置家中幾小時沒有問題？",
    "type" : "string"
  },
  {
    "linkId" : "K3",
    "text" : "有無照顧其他失能家人或 3 歲以下幼兒？",
    "type" : "string"
  },
  {
    "linkId" : "K4",
    "text" : "請問您已經照顧個案多久？",
    "type" : "string"
  },
  {
    "linkId" : "K5",
    "text" : "請問您過去 1 個月的健康狀況好不好？",
    "type" : "string"
  },
  {
    "linkId" : "K6",
    "text" : "整體來說，您覺得您生活品質好不好？",
    "type" : "string"
  },
  {
    "linkId" : "K7",
    "text" : "請問您目前有沒有在工作？",
    "type" : "boolean"
  },
  {
    "linkId" : "K8",
    "text" : "請寫出其他有關訪問過程、個案（家屬）期許或其他如虐待、疏忽、需緊急就醫、自費等特殊狀況或問題：",
    "type" : "string"
  }]
}

```
