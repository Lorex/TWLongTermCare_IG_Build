# 長期照顧－簡易智能狀態測驗回覆 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長期照顧－簡易智能狀態測驗回覆**

## Resource Profile: 長期照顧－簡易智能狀態測驗回覆 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseMMSE | *Version*:1.0.0 |
| Active as of 2026-03-02 | *Computable Name*:LTCQuestionnaireResponseMMSE |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現簡易智能狀態測驗 (MMSE) 的回覆內容。 

**Usages:**

* Examples for this Profile: [QuestionnaireResponse/ltc-questionnaire-response-mmse-complete-example](QuestionnaireResponse-ltc-questionnaire-response-mmse-complete-example.md), [QuestionnaireResponse/ltc-questionnaire-response-mmse-example](QuestionnaireResponse-ltc-questionnaire-response-mmse-example.md) and [QuestionnaireResponse/ltc-questionnaire-response-mmse-impaired-example](QuestionnaireResponse-ltc-questionnaire-response-mmse-impaired-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTCQuestionnaireResponseMMSE)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCQuestionnaireResponseMMSE.csv), [Excel](StructureDefinition-LTCQuestionnaireResponseMMSE.xlsx), [Schematron](StructureDefinition-LTCQuestionnaireResponseMMSE.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCQuestionnaireResponseMMSE",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseMMSE",
  "version" : "1.0.0",
  "name" : "LTCQuestionnaireResponseMMSE",
  "title" : "長期照顧－簡易智能狀態測驗回覆",
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
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現簡易智能狀態測驗 (MMSE) 的回覆內容。",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "QuestionnaireResponse",
      "path" : "QuestionnaireResponse"
    },
    {
      "id" : "QuestionnaireResponse.questionnaire",
      "path" : "QuestionnaireResponse.questionnaire",
      "short" : "這個問卷回覆所回答的問卷。[應填入問卷的 URL]",
      "type" : [{
        "code" : "canonical",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.status",
      "path" : "QuestionnaireResponse.status",
      "short" : "問卷回覆的狀態。[應填入 in-progress / completed / amended / entered-in-error / stopped]",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.subject",
      "path" : "QuestionnaireResponse.subject",
      "short" : "問卷回覆的適用主體",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPatient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.subject.reference",
      "path" : "QuestionnaireResponse.subject.reference",
      "short" : "問卷回覆的適用主體。[應輸入 Patient Resource ID]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.authored",
      "path" : "QuestionnaireResponse.authored",
      "short" : "問卷回覆的填寫日期",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.author",
      "path" : "QuestionnaireResponse.author",
      "short" : "問卷回覆的填寫者",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCRelatedPerson",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCPatient",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitionerRole"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.author.reference",
      "path" : "QuestionnaireResponse.author.reference",
      "short" : "問卷回覆的填寫者。[應輸入 Practitioner / RelatedPerson / Patient / PractitionerRole Resource ID]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.source",
      "path" : "QuestionnaireResponse.source",
      "short" : "誰提供了問卷回覆的資料，意即誰回答了這份問卷",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCRelatedPerson",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCPatient",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitionerRole"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.source.reference",
      "path" : "QuestionnaireResponse.source.reference",
      "short" : "誰提供了問卷回覆的資料。[應輸入 Practitioner / RelatedPerson / Patient / PractitionerRole Resource ID]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item",
      "path" : "QuestionnaireResponse.item",
      "short" : "問卷回覆的內容",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "short" : "問題或量表項目的唯一識別碼。[應填入獨立的編號]",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item.text",
      "path" : "QuestionnaireResponse.item.text",
      "short" : "問題或量表項目的內容描述。[應填入問題或量表項目的內容]",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "short" : "問題或量表項目的回覆",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "short" : "回覆的內容。[應填入回覆的內容]",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item.item",
      "path" : "QuestionnaireResponse.item.item",
      "short" : "問卷的問題或量表項目（用於巢狀問卷）",
      "mustSupport" : true
    }]
  }
}

```
