# 長期照護醫師意見書問卷回覆 (AA12) - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長期照護醫師意見書問卷回覆 (AA12)**

## Resource Profile: 長期照護醫師意見書問卷回覆 (AA12) 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseAA12 | *Version*:1.0.0 |
| Active as of 2026-03-02 | *Computable Name*:LTCQuestionnaireResponseAA12 |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現長期照護醫師意見書的問卷回覆內容。 

**Usages:**

* Examples for this Profile: [QuestionnaireResponse/ltc-questionnaire-response-aa12-example](QuestionnaireResponse-ltc-questionnaire-response-aa12-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTCQuestionnaireResponseAA12)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCQuestionnaireResponseAA12.csv), [Excel](StructureDefinition-LTCQuestionnaireResponseAA12.xlsx), [Schematron](StructureDefinition-LTCQuestionnaireResponseAA12.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCQuestionnaireResponseAA12",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseAA12",
  "version" : "1.0.0",
  "name" : "LTCQuestionnaireResponseAA12",
  "title" : "長期照護醫師意見書問卷回覆 (AA12)",
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
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現長期照護醫師意見書的問卷回覆內容。",
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
      "short" : "這個問卷回覆所回答的醫師意見書問卷",
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.status",
      "path" : "QuestionnaireResponse.status",
      "short" : "問卷回覆的狀態",
      "patternCode" : "completed"
    },
    {
      "id" : "QuestionnaireResponse.subject",
      "path" : "QuestionnaireResponse.subject",
      "short" : "問卷回覆的適用主體（申請者）"
    },
    {
      "id" : "QuestionnaireResponse.subject.reference",
      "path" : "QuestionnaireResponse.subject.reference",
      "short" : "申請者的 Patient Resource ID"
    },
    {
      "id" : "QuestionnaireResponse.authored",
      "path" : "QuestionnaireResponse.authored",
      "short" : "醫師意見書的填寫日期"
    },
    {
      "id" : "QuestionnaireResponse.author",
      "path" : "QuestionnaireResponse.author",
      "short" : "醫師意見書的填寫者（執業醫師）",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner"]
      }]
    },
    {
      "id" : "QuestionnaireResponse.author.reference",
      "path" : "QuestionnaireResponse.author.reference",
      "short" : "執業醫師的 PractitionerRole Resource ID"
    },
    {
      "id" : "QuestionnaireResponse.item",
      "path" : "QuestionnaireResponse.item",
      "short" : "醫師意見書問卷回覆的內容"
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
