# 長期照顧－AA02照顧管理追蹤問卷回覆 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長期照顧－AA02照顧管理追蹤問卷回覆**

## Resource Profile: 長期照顧－AA02照顧管理追蹤問卷回覆 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseAA02 | *Version*:0.4.1 |
| Active as of 2026-02-28 | *Computable Name*:LTCQuestionnaireResponseAA02 |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現 AA02 照顧管理追蹤問卷的回覆內容。 

**Usages:**

* Examples for this Profile: [QuestionnaireResponse/ltc-questionnaire-response-aa02-example](QuestionnaireResponse-ltc-questionnaire-response-aa02-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.twltc|current/StructureDefinition/LTCQuestionnaireResponseAA02)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCQuestionnaireResponseAA02.csv), [Excel](StructureDefinition-LTCQuestionnaireResponseAA02.xlsx), [Schematron](StructureDefinition-LTCQuestionnaireResponseAA02.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCQuestionnaireResponseAA02",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseAA02",
  "version" : "0.4.1",
  "name" : "LTCQuestionnaireResponseAA02",
  "title" : "長期照顧－AA02照顧管理追蹤問卷回覆",
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
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現 AA02 照顧管理追蹤問卷的回覆內容。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "QuestionnaireResponse",
  "baseDefinition" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponse",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "QuestionnaireResponse",
      "path" : "QuestionnaireResponse"
    },
    {
      "id" : "QuestionnaireResponse.questionnaire",
      "path" : "QuestionnaireResponse.questionnaire",
      "short" : "這份回覆對應的問卷",
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.status",
      "path" : "QuestionnaireResponse.status",
      "short" : "問卷回覆狀態",
      "patternCode" : "completed"
    },
    {
      "id" : "QuestionnaireResponse.subject.reference",
      "path" : "QuestionnaireResponse.subject.reference",
      "short" : "問卷回應的主體。[應輸入 Patient Resource ID]"
    },
    {
      "id" : "QuestionnaireResponse.authored",
      "path" : "QuestionnaireResponse.authored",
      "short" : "問卷回應的填寫日期時間"
    },
    {
      "id" : "QuestionnaireResponse.author",
      "path" : "QuestionnaireResponse.author",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitionerRole"]
      }]
    },
    {
      "id" : "QuestionnaireResponse.author.reference",
      "path" : "QuestionnaireResponse.author.reference",
      "short" : "問卷回應的填寫者。[應輸入 Practitioner Resource ID]"
    },
    {
      "id" : "QuestionnaireResponse.item",
      "path" : "QuestionnaireResponse.item",
      "short" : "照顧管理問卷回覆的內容"
    },
    {
      "id" : "QuestionnaireResponse.item.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "short" : "問題的唯一識別碼"
    },
    {
      "id" : "QuestionnaireResponse.item.text",
      "path" : "QuestionnaireResponse.item.text",
      "short" : "問題的內容描述"
    },
    {
      "id" : "QuestionnaireResponse.item.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "short" : "問題的回覆"
    },
    {
      "id" : "QuestionnaireResponse.item.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "回覆的內容"
    }]
  }
}

```
