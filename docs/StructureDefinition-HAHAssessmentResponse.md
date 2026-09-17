# 在宅急症－收案評估回覆 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症－收案評估回覆**

## Resource Profile: 在宅急症－收案評估回覆 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HAHAssessmentResponse | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HAHAssessmentResponse |

 
記錄評估依據、居家環境、照顧者支援與收案建議。此為本 IG 的交換表單，不宣稱為健保署官方收案表。 

**Usages:**

* Refer to this Profile: [在宅急症－結案與轉銜摘要](StructureDefinition-HAHCompositionSummary.md)
* Examples for this Profile: [QuestionnaireResponse/hah-assessment](QuestionnaireResponse-hah-assessment.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HAHAssessmentResponse.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HAHAssessmentResponse.csv), [Excel](StructureDefinition-HAHAssessmentResponse.xlsx), [Schematron](StructureDefinition-HAHAssessmentResponse.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HAHAssessmentResponse",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHAssessmentResponse",
  "version" : "1.1.0",
  "name" : "HAHAssessmentResponse",
  "title" : "在宅急症－收案評估回覆",
  "status" : "draft",
  "date" : "2026-09-17T17:33:17+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "記錄評估依據、居家環境、照顧者支援與收案建議。此為本 IG 的交換表單，不宣稱為健保署官方收案表。",
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
      "path" : "QuestionnaireResponse",
      "constraint" : [{
        "key" : "hah-assessment-completed",
        "severity" : "error",
        "human" : "已完成或修訂的評估，四項必要題目都應有答案。",
        "expression" : "(status = 'completed' or status = 'amended') implies item.where(linkId = 'criteria' or linkId = 'home-safety' or linkId = 'caregiver-support' or linkId = 'decision').all(answer.value.exists())",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHAssessmentResponse"
      },
      {
        "key" : "hah-assessment-reason",
        "severity" : "error",
        "human" : "不建議收案或待確認時應填寫原因。",
        "expression" : "item.where(linkId='decision').answer.value.ofType(Coding).where(code='ineligible' or code='pending').exists() implies item.where(linkId='reason').answer.value.exists()",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHAssessmentResponse"
      }]
    },
    {
      "id" : "QuestionnaireResponse.extension",
      "path" : "QuestionnaireResponse.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.extension:episode",
      "path" : "QuestionnaireResponse.extension",
      "sliceName" : "episode",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/ExtHAHEpisode"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.questionnaire",
      "path" : "QuestionnaireResponse.questionnaire",
      "min" : 1,
      "patternCanonical" : "http://ltc-ig.fhir.tw/Questionnaire/hah-intake-assessment|1.1.0"
    },
    {
      "id" : "QuestionnaireResponse.subject",
      "path" : "QuestionnaireResponse.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHPatient"]
      }]
    },
    {
      "id" : "QuestionnaireResponse.author",
      "path" : "QuestionnaireResponse.author",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitionerRole"]
      }]
    },
    {
      "id" : "QuestionnaireResponse.item",
      "path" : "QuestionnaireResponse.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 4
    },
    {
      "id" : "QuestionnaireResponse.item.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item.answer.item",
      "path" : "QuestionnaireResponse.item.answer.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:criteria",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "criteria",
      "short" : "評估所依據的計畫名稱與版本",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:criteria.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "criteria"
    },
    {
      "id" : "QuestionnaireResponse.item:criteria.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:homeSafety",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "homeSafety",
      "short" : "居家環境與設備可行性評估",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:homeSafety.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "home-safety"
    },
    {
      "id" : "QuestionnaireResponse.item:homeSafety.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:caregiverSupport",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "caregiverSupport",
      "short" : "照顧者支援與照護能力",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:caregiverSupport.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "caregiver-support"
    },
    {
      "id" : "QuestionnaireResponse.item:caregiverSupport.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:decision",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "decision",
      "short" : "收案建議",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:decision.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "decision"
    },
    {
      "id" : "QuestionnaireResponse.item:decision.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hah-eligibility"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:reason",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "reason",
      "short" : "不建議收案或待確認的原因",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:reason.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "reason"
    },
    {
      "id" : "QuestionnaireResponse.item:reason.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
