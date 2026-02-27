# 長期照顧－AA01照顧計畫擬訂與服務連結問卷回應 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長期照顧－AA01照顧計畫擬訂與服務連結問卷回應**

## Resource Profile: 長期照顧－AA01照顧計畫擬訂與服務連結問卷回應 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseAA01 | *Version*:0.4.1 |
| Active as of 2026-02-28 | *Computable Name*:LTCQuestionnaireResponseAA01 |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現長期照顧情境中 AA01 照顧計畫擬訂與服務連結問卷的回應內容。 

**Usages:**

* Examples for this Profile: [QuestionnaireResponse/ltc-questionnaire-response-aa01-example](QuestionnaireResponse-ltc-questionnaire-response-aa01-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.twltc|current/StructureDefinition/LTCQuestionnaireResponseAA01)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCQuestionnaireResponseAA01.csv), [Excel](StructureDefinition-LTCQuestionnaireResponseAA01.xlsx), [Schematron](StructureDefinition-LTCQuestionnaireResponseAA01.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCQuestionnaireResponseAA01",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseAA01",
  "version" : "0.4.1",
  "name" : "LTCQuestionnaireResponseAA01",
  "title" : "長期照顧－AA01照顧計畫擬訂與服務連結問卷回應",
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
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現長期照顧情境中 AA01 照顧計畫擬訂與服務連結問卷的回應內容。",
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
      "short" : "問卷的參考，即這個回應是針對哪個問卷？",
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.status",
      "path" : "QuestionnaireResponse.status",
      "short" : "問卷回應的狀態",
      "patternCode" : "completed"
    },
    {
      "id" : "QuestionnaireResponse.subject",
      "path" : "QuestionnaireResponse.subject",
      "short" : "問卷回應的主體，即這個問卷回應的適用對象是誰？"
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
      "short" : "問卷回應的填寫者，即這個問卷回應是由誰填寫的？",
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
      "short" : "問卷回應的項目，即這個問卷回應包含哪些填答項目？"
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
