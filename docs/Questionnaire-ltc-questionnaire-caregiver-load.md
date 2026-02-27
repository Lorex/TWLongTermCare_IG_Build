# 主要照顧者負荷問卷 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **主要照顧者負荷問卷**

## Questionnaire: 主要照顧者負荷問卷 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-caregiver-load | *Version*:0.4.1 |
| Active as of 2026-02-28 | *Computable Name*:LTCQuestionnaireCaregiverLoad |



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "ltc-questionnaire-caregiver-load",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"]
  },
  "url" : "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-caregiver-load",
  "version" : "0.4.1",
  "name" : "LTCQuestionnaireCaregiverLoad",
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
  "item" : [{
    "linkId" : "J01",
    "text" : "睡眠受到干擾",
    "type" : "boolean"
  },
  {
    "linkId" : "J02",
    "text" : "體力上的負荷",
    "type" : "boolean"
  },
  {
    "linkId" : "J03",
    "text" : "需分配時間照顧其他家人",
    "type" : "boolean"
  },
  {
    "linkId" : "J04",
    "text" : "對個案的行為感到困擾",
    "type" : "boolean"
  },
  {
    "linkId" : "J05",
    "text" : "無法承受照顧壓力",
    "type" : "boolean"
  }]
}

```
