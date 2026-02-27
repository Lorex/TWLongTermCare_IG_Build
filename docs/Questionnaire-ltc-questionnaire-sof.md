# SOF問卷 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SOF問卷**

## Questionnaire: SOF問卷 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-sof | *Version*:0.4.1 |
| Active as of 2026-02-28 | *Computable Name*:LTCQuestionnaireSOF |



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "ltc-questionnaire-sof",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"]
  },
  "url" : "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-sof",
  "version" : "0.4.1",
  "name" : "LTCQuestionnaireSOF",
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
    "linkId" : "sof-1",
    "text" : "體重減輕",
    "type" : "boolean"
  },
  {
    "linkId" : "sof-2",
    "text" : "下肢功能",
    "type" : "boolean"
  },
  {
    "linkId" : "sof-3",
    "text" : "精力降低",
    "type" : "boolean"
  }]
}

```
