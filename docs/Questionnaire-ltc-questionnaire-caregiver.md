# 照顧者問卷 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **照顧者問卷**

## Questionnaire: 照顧者問卷 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-caregiver | *Version*:0.4.1 |
| Active as of 2026-02-28 | *Computable Name*:LTCQuestionnaireCaregiver |



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "ltc-questionnaire-caregiver",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"]
  },
  "url" : "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-caregiver",
  "version" : "0.4.1",
  "name" : "LTCQuestionnaireCaregiver",
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
    "linkId" : "caregiver-1",
    "text" : "是否有照顧者",
    "type" : "choice",
    "answerOption" : [{
      "valueString" : "否"
    },
    {
      "valueString" : "是，固定"
    },
    {
      "valueString" : "是，無固定"
    }]
  },
  {
    "linkId" : "caregiver-2",
    "text" : "主要照顧者關係",
    "type" : "choice",
    "answerOption" : [{
      "valueCoding" : {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
        "code" : "SPS",
        "display" : "spouse"
      }
    },
    {
      "valueCoding" : {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
        "code" : "CHILD",
        "display" : "child"
      }
    },
    {
      "valueCoding" : {
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0131",
        "code" : "O",
        "display" : "other"
      }
    }]
  }]
}

```
