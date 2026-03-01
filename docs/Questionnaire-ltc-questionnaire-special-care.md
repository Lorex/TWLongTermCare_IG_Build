# 特殊複雜照護需要問卷 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **特殊複雜照護需要問卷**

## Questionnaire: 特殊複雜照護需要問卷 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-special-care | *Version*:0.4.1 |
| Active as of 2024-09-01 | *Computable Name*:LTCQuestionnaireSpecialCare |



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "ltc-questionnaire-special-care",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"]
  },
  "url" : "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-special-care",
  "version" : "0.4.1",
  "name" : "LTCQuestionnaireSpecialCare",
  "status" : "active",
  "date" : "2024-09-01",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "item" : [{
    "linkId" : "G1",
    "text" : "疼痛狀況",
    "type" : "string"
  },
  {
    "linkId" : "G1a",
    "text" : "過去 1 個月中，個案身體疼痛的程度？",
    "type" : "string"
  },
  {
    "linkId" : "G2a",
    "text" : "請問個案現在的皮膚狀況？",
    "type" : "string"
  },
  {
    "linkId" : "G2c",
    "text" : "請問皮膚異常的狀況為何？",
    "type" : "string"
  },
  {
    "linkId" : "G3a",
    "text" : "請問個案是否會因關節僵硬受限制，以致影響日常生活功能或造成照顧困難？",
    "type" : "string"
  },
  {
    "linkId" : "G4a",
    "text" : "個案過去 3 個月體重是否減輕？",
    "type" : "string"
  },
  {
    "linkId" : "G4b",
    "text" : "個案身體質量指數（BMI）",
    "type" : "string"
  },
  {
    "linkId" : "G4c",
    "text" : "個案一般的飲食狀況，以週為單位",
    "type" : "string"
  },
  {
    "linkId" : "G4d1",
    "text" : "過去一年中體重減少了 5% 以上？",
    "type" : "string"
  },
  {
    "linkId" : "G4d2",
    "text" : "可以在不用手支撐的狀況下，從椅子上站起來 5 次？",
    "type" : "string"
  },
  {
    "linkId" : "G4d3",
    "text" : "經常有提不起勁來做事的感覺？",
    "type" : "string"
  },
  {
    "linkId" : "G4f",
    "text" : "個案尋求必要醫療時，是否需要服務介入協助？",
    "type" : "string"
  },
  {
    "linkId" : "G5a",
    "text" : "個案目前是否接受進階照顧？",
    "type" : "string"
  },
  {
    "linkId" : "G7",
    "text" : "個案被診斷為失智症後，照顧者是否有接受護理人員或其他專業人員提供下列的教導？",
    "type" : "string"
  },
  {
    "linkId" : "G8a",
    "text" : "請問個案是否能維持坐姿的平衡？（在沒有靠背支撐的狀況下）",
    "type" : "string"
  },
  {
    "linkId" : "G8b",
    "text" : "請問個案是否能維持站立的平衡？",
    "type" : "string"
  },
  {
    "linkId" : "G8c",
    "text" : "在過去 12 個月中，個案有沒有跌倒或摔倒過？",
    "type" : "string"
  },
  {
    "linkId" : "G8d",
    "text" : "你的日常活動是否因擔心跌倒而不做？",
    "type" : "string"
  },
  {
    "linkId" : "G8e",
    "text" : "個案對於危險的認知？",
    "type" : "string"
  }]
}

```
