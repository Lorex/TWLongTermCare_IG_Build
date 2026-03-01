# 臨床失智評估量表評估 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **臨床失智評估量表評估**

## Logical Model: 臨床失智評估量表評估 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCCDRAssessmentModel | *Version*:1.0.0 |
| Active as of 2026-03-01 | *Computable Name*:LTCCDRAssessmentModel |
| **Copyright/Legal**: Copyright © 2024 Taiwan Long-Term Care Implementation Guide | |

 
臨床失智評估量表 (Clinical Dementia Rating Scale, CDR) 的邏輯模型，用於失智症分期評估 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTCCDRAssessmentModel)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCCDRAssessmentModel.csv), [Excel](StructureDefinition-LTCCDRAssessmentModel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCCDRAssessmentModel",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCCDRAssessmentModel",
  "version" : "1.0.0",
  "name" : "LTCCDRAssessmentModel",
  "title" : "臨床失智評估量表評估",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-01T19:25:35+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "臨床失智評估量表 (Clinical Dementia Rating Scale, CDR) 的邏輯模型，用於失智症分期評估",
  "copyright" : "Copyright © 2024 Taiwan Long-Term Care Implementation Guide",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCCDRAssessmentModel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "LTCCDRAssessmentModel",
      "path" : "LTCCDRAssessmentModel",
      "short" : "臨床失智評估量表評估",
      "definition" : "臨床失智評估量表 (Clinical Dementia Rating Scale, CDR) 的邏輯模型，用於失智症分期評估"
    },
    {
      "id" : "LTCCDRAssessmentModel.assessmentDate",
      "path" : "LTCCDRAssessmentModel.assessmentDate",
      "short" : "評估日期時間",
      "definition" : "CDR 評估執行的日期時間",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "LTCCDRAssessmentModel.assessor",
      "path" : "LTCCDRAssessmentModel.assessor",
      "short" : "評估者",
      "definition" : "執行 CDR 評估的醫療人員",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner"]
      }]
    },
    {
      "id" : "LTCCDRAssessmentModel.subject",
      "path" : "LTCCDRAssessmentModel.subject",
      "short" : "受評估者",
      "definition" : "接受 CDR 評估的患者",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }]
    },
    {
      "id" : "LTCCDRAssessmentModel.memory",
      "path" : "LTCCDRAssessmentModel.memory",
      "short" : "記憶力評估",
      "definition" : "記憶功能評估",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCCDRAssessmentModel.memory.score",
      "path" : "LTCCDRAssessmentModel.memory.score",
      "short" : "記憶力分數",
      "definition" : "記憶力評估分數 (0-4分)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCCDRAssessmentModel.memory.description",
      "path" : "LTCCDRAssessmentModel.memory.description",
      "short" : "記憶力描述",
      "definition" : "記憶力狀況的詳細描述",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCCDRAssessmentModel.orientation",
      "path" : "LTCCDRAssessmentModel.orientation",
      "short" : "定向感評估",
      "definition" : "時間、地點、人物定向感評估",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCCDRAssessmentModel.orientation.score",
      "path" : "LTCCDRAssessmentModel.orientation.score",
      "short" : "定向感分數",
      "definition" : "定向感評估分數 (0-4分)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCCDRAssessmentModel.orientation.description",
      "path" : "LTCCDRAssessmentModel.orientation.description",
      "short" : "定向感描述",
      "definition" : "定向感狀況的詳細描述",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCCDRAssessmentModel.problemSolving",
      "path" : "LTCCDRAssessmentModel.problemSolving",
      "short" : "解決問題能力評估",
      "definition" : "問題解決和判斷能力評估",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCCDRAssessmentModel.problemSolving.score",
      "path" : "LTCCDRAssessmentModel.problemSolving.score",
      "short" : "解決問題分數",
      "definition" : "解決問題能力評估分數 (0-4分)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCCDRAssessmentModel.problemSolving.description",
      "path" : "LTCCDRAssessmentModel.problemSolving.description",
      "short" : "解決問題描述",
      "definition" : "解決問題能力狀況的詳細描述",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCCDRAssessmentModel.communityActivities",
      "path" : "LTCCDRAssessmentModel.communityActivities",
      "short" : "社區活動能力評估",
      "definition" : "社區參與和社會功能評估",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCCDRAssessmentModel.communityActivities.score",
      "path" : "LTCCDRAssessmentModel.communityActivities.score",
      "short" : "社區活動分數",
      "definition" : "社區活動能力評估分數 (0-4分)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCCDRAssessmentModel.communityActivities.description",
      "path" : "LTCCDRAssessmentModel.communityActivities.description",
      "short" : "社區活動描述",
      "definition" : "社區活動能力狀況的詳細描述",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCCDRAssessmentModel.homeHobbies",
      "path" : "LTCCDRAssessmentModel.homeHobbies",
      "short" : "家居嗜好評估",
      "definition" : "家居生活和嗜好活動評估",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCCDRAssessmentModel.homeHobbies.score",
      "path" : "LTCCDRAssessmentModel.homeHobbies.score",
      "short" : "家居嗜好分數",
      "definition" : "家居嗜好評估分數 (0-4分)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCCDRAssessmentModel.homeHobbies.description",
      "path" : "LTCCDRAssessmentModel.homeHobbies.description",
      "short" : "家居嗜好描述",
      "definition" : "家居嗜好狀況的詳細描述",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCCDRAssessmentModel.selfCare",
      "path" : "LTCCDRAssessmentModel.selfCare",
      "short" : "自我照料評估",
      "definition" : "日常生活自我照料能力評估",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCCDRAssessmentModel.selfCare.score",
      "path" : "LTCCDRAssessmentModel.selfCare.score",
      "short" : "自我照料分數",
      "definition" : "自我照料能力評估分數 (0-4分)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCCDRAssessmentModel.selfCare.description",
      "path" : "LTCCDRAssessmentModel.selfCare.description",
      "short" : "自我照料描述",
      "definition" : "自我照料能力狀況的詳細描述",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCCDRAssessmentModel.totalScore",
      "path" : "LTCCDRAssessmentModel.totalScore",
      "short" : "總分期",
      "definition" : "CDR 評估總分期 (0-5分)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCCDRAssessmentModel.dementiaStage",
      "path" : "LTCCDRAssessmentModel.dementiaStage",
      "short" : "失智分期",
      "definition" : "失智症分期描述",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "LTCCDRAssessmentModel.assessmentNotes",
      "path" : "LTCCDRAssessmentModel.assessmentNotes",
      "short" : "評估備註",
      "definition" : "評估過程中的特殊狀況或備註",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
