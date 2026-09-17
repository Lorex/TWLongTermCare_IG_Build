# 居家護理－身體評估評估邏輯模型 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－身體評估評估邏輯模型**

## Logical Model: 居家護理－身體評估評估邏輯模型 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNBodyEvaluationsModel | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNBodyEvaluationsModel |

 
描述居家護理身體評估評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 

**Usages:**

* Use this Logical Model: [居家護理－全人評估 API 邏輯模型](StructureDefinition-HNEvaluationAPIModel.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNBodyEvaluationsModel.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNBodyEvaluationsModel.csv), [Excel](StructureDefinition-HNBodyEvaluationsModel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNBodyEvaluationsModel",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNBodyEvaluationsModel",
  "version" : "1.1.0",
  "name" : "HNBodyEvaluationsModel",
  "title" : "居家護理－身體評估評估邏輯模型",
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
  "description" : "描述居家護理身體評估評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "hn-bodyevaluations-fhir",
    "uri" : "http://ltc-ig.fhir.tw/StructureDefinition/HNBodyEvaluationsResponse",
    "name" : "居家護理－身體評估評估欄位對應"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ltc-ig.fhir.tw/StructureDefinition/HNBodyEvaluationsModel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "HNBodyEvaluationsModel",
      "path" : "HNBodyEvaluationsModel",
      "short" : "居家護理－身體評估評估邏輯模型",
      "definition" : "描述居家護理身體評估評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。"
    },
    {
      "id" : "HNBodyEvaluationsModel.date",
      "path" : "HNBodyEvaluationsModel.date",
      "short" : "紀錄日期",
      "definition" : "紀錄日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Date')",
        "comment" : "來源欄位／題目：Date"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.nurseID",
      "path" : "HNBodyEvaluationsModel.nurseID",
      "short" : "護理人員身分證字號",
      "definition" : "護理人員身分證字號",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='NurseID')",
        "comment" : "來源欄位／題目：NurseID"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions",
      "path" : "HNBodyEvaluationsModel.bodyQuestions",
      "short" : "評估項目",
      "definition" : "評估項目",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions')",
        "comment" : "來源欄位／題目：BodyQuestions"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q3d5455cd",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q3d5455cd",
      "short" : "睜眼",
      "definition" : "睜眼",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q3d5455cd')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='睜眼']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q3d5455cd.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q3d5455cd.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-6380f9a50deb"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q3d5455cd').item.where(linkId='BodyQuestions.q3d5455cd.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='睜眼'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q3d5455cd.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q3d5455cd.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。以逗號分隔選項；視力與聽力部位使用此欄。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q3d5455cd').item.where(linkId='BodyQuestions.q3d5455cd.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='睜眼'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q3d5455cd.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q3d5455cd.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q3d5455cd').item.where(linkId='BodyQuestions.q3d5455cd.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='睜眼'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q78be3cfc",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q78be3cfc",
      "short" : "語言",
      "definition" : "語言",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q78be3cfc')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='語言']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q78be3cfc.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q78be3cfc.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d2f289370ed0"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q78be3cfc').item.where(linkId='BodyQuestions.q78be3cfc.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='語言'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q78be3cfc.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q78be3cfc.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。以逗號分隔選項；視力與聽力部位使用此欄。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q78be3cfc').item.where(linkId='BodyQuestions.q78be3cfc.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='語言'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q78be3cfc.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q78be3cfc.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q78be3cfc').item.where(linkId='BodyQuestions.q78be3cfc.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='語言'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qd5d3ea28",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qd5d3ea28",
      "short" : "運動",
      "definition" : "運動",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qd5d3ea28')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='運動']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qd5d3ea28.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qd5d3ea28.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-784e3567e13b"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qd5d3ea28').item.where(linkId='BodyQuestions.qd5d3ea28.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='運動'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qd5d3ea28.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qd5d3ea28.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。以逗號分隔選項；視力與聽力部位使用此欄。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qd5d3ea28').item.where(linkId='BodyQuestions.qd5d3ea28.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='運動'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qd5d3ea28.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qd5d3ea28.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qd5d3ea28').item.where(linkId='BodyQuestions.qd5d3ea28.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='運動'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q9999e6f5",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q9999e6f5",
      "short" : "視力",
      "definition" : "視力",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q9999e6f5')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='視力']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q9999e6f5.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q9999e6f5.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-ef4daeacd99a"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q9999e6f5').item.where(linkId='BodyQuestions.q9999e6f5.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='視力'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q9999e6f5.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q9999e6f5.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。來源為逗號分隔字串。FHIR 使用多筆 Coding 答案，回寫時依序以逗號串接。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q9999e6f5').item.where(linkId='BodyQuestions.q9999e6f5.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='視力'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q9999e6f5.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q9999e6f5.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q9999e6f5').item.where(linkId='BodyQuestions.q9999e6f5.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='視力'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qcd3cc2c1",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qcd3cc2c1",
      "short" : "視力-部位",
      "definition" : "視力-部位",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qcd3cc2c1')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='視力-部位']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qcd3cc2c1.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qcd3cc2c1.answer",
      "short" : "評估答案",
      "definition" : "評估答案。本題單選答案留空；填寫多選答案。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qcd3cc2c1').item.where(linkId='BodyQuestions.qcd3cc2c1.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='視力-部位'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qcd3cc2c1.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qcd3cc2c1.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。來源為逗號分隔字串。FHIR 使用多筆 Coding 答案，回寫時依序以逗號串接。",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-2fd20e6427ff"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qcd3cc2c1').item.where(linkId='BodyQuestions.qcd3cc2c1.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='視力-部位'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qcd3cc2c1.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qcd3cc2c1.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qcd3cc2c1').item.where(linkId='BodyQuestions.qcd3cc2c1.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='視力-部位'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q99290406",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q99290406",
      "short" : "視力-影響日常活動",
      "definition" : "視力-影響日常活動",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q99290406')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='視力-影響日常活動']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q99290406.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q99290406.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q99290406').item.where(linkId='BodyQuestions.q99290406.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='視力-影響日常活動'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q99290406.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q99290406.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。以逗號分隔選項；視力與聽力部位使用此欄。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q99290406').item.where(linkId='BodyQuestions.q99290406.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='視力-影響日常活動'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q99290406.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q99290406.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q99290406').item.where(linkId='BodyQuestions.q99290406.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='視力-影響日常活動'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q24eedc1b",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q24eedc1b",
      "short" : "視力-輔具",
      "definition" : "視力-輔具",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q24eedc1b')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='視力-輔具']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q24eedc1b.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q24eedc1b.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-49fe20230ec3"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q24eedc1b').item.where(linkId='BodyQuestions.q24eedc1b.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='視力-輔具'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q24eedc1b.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q24eedc1b.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。來源為逗號分隔字串。FHIR 使用多筆 Coding 答案，回寫時依序以逗號串接。",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-afadc3bb2a88"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q24eedc1b').item.where(linkId='BodyQuestions.q24eedc1b.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='視力-輔具'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q24eedc1b.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q24eedc1b.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q24eedc1b').item.where(linkId='BodyQuestions.q24eedc1b.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='視力-輔具'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q6215056f",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q6215056f",
      "short" : "聽力",
      "definition" : "聽力",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q6215056f')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='聽力']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q6215056f.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q6215056f.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-ef4daeacd99a"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q6215056f').item.where(linkId='BodyQuestions.q6215056f.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='聽力'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q6215056f.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q6215056f.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。以逗號分隔選項；視力與聽力部位使用此欄。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q6215056f').item.where(linkId='BodyQuestions.q6215056f.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='聽力'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q6215056f.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q6215056f.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q6215056f').item.where(linkId='BodyQuestions.q6215056f.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='聽力'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q1678a5f1",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q1678a5f1",
      "short" : "聽力-部位",
      "definition" : "聽力-部位",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1678a5f1')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='聽力-部位']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q1678a5f1.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q1678a5f1.answer",
      "short" : "評估答案",
      "definition" : "評估答案。本題單選答案留空；填寫多選答案。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1678a5f1').item.where(linkId='BodyQuestions.q1678a5f1.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='聽力-部位'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q1678a5f1.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q1678a5f1.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。來源為逗號分隔字串。FHIR 使用多筆 Coding 答案，回寫時依序以逗號串接。",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-7bc89358fe37"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1678a5f1').item.where(linkId='BodyQuestions.q1678a5f1.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='聽力-部位'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q1678a5f1.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q1678a5f1.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1678a5f1').item.where(linkId='BodyQuestions.q1678a5f1.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='聽力-部位'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q93005aaa",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q93005aaa",
      "short" : "聽力-影響日常活動",
      "definition" : "聽力-影響日常活動",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q93005aaa')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='聽力-影響日常活動']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q93005aaa.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q93005aaa.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q93005aaa').item.where(linkId='BodyQuestions.q93005aaa.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='聽力-影響日常活動'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q93005aaa.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q93005aaa.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。以逗號分隔選項；視力與聽力部位使用此欄。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q93005aaa').item.where(linkId='BodyQuestions.q93005aaa.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='聽力-影響日常活動'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q93005aaa.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q93005aaa.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q93005aaa').item.where(linkId='BodyQuestions.q93005aaa.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='聽力-影響日常活動'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q2386d883",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q2386d883",
      "short" : "聽力-輔具",
      "definition" : "聽力-輔具",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q2386d883')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='聽力-輔具']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q2386d883.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q2386d883.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-49fe20230ec3"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q2386d883').item.where(linkId='BodyQuestions.q2386d883.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='聽力-輔具'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q2386d883.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q2386d883.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。來源為逗號分隔字串。FHIR 使用多筆 Coding 答案，回寫時依序以逗號串接。",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-f0b4522906b6"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q2386d883').item.where(linkId='BodyQuestions.q2386d883.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='聽力-輔具'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q2386d883.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q2386d883.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q2386d883').item.where(linkId='BodyQuestions.q2386d883.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='聽力-輔具'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q306e4676",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q306e4676",
      "short" : "溝通",
      "definition" : "溝通",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q306e4676')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='溝通']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q306e4676.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q306e4676.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-0655870f5454"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q306e4676').item.where(linkId='BodyQuestions.q306e4676.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='溝通'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q306e4676.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q306e4676.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。來源為逗號分隔字串。FHIR 使用多筆 Coding 答案，回寫時依序以逗號串接。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q306e4676').item.where(linkId='BodyQuestions.q306e4676.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='溝通'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q306e4676.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q306e4676.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q306e4676').item.where(linkId='BodyQuestions.q306e4676.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='溝通'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q63b2fbbe",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q63b2fbbe",
      "short" : "溝通-影響日常活動",
      "definition" : "溝通-影響日常活動",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q63b2fbbe')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='溝通-影響日常活動']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q63b2fbbe.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q63b2fbbe.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d9301962abbf"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q63b2fbbe').item.where(linkId='BodyQuestions.q63b2fbbe.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='溝通-影響日常活動'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q63b2fbbe.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q63b2fbbe.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。以逗號分隔選項；視力與聽力部位使用此欄。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q63b2fbbe').item.where(linkId='BodyQuestions.q63b2fbbe.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='溝通-影響日常活動'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q63b2fbbe.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q63b2fbbe.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q63b2fbbe').item.where(linkId='BodyQuestions.q63b2fbbe.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='溝通-影響日常活動'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q3288f369",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q3288f369",
      "short" : "說話",
      "definition" : "說話",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q3288f369')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='說話']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q3288f369.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q3288f369.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-3330cbe2f937"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q3288f369').item.where(linkId='BodyQuestions.q3288f369.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='說話'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q3288f369.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q3288f369.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。以逗號分隔選項；視力與聽力部位使用此欄。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q3288f369').item.where(linkId='BodyQuestions.q3288f369.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='說話'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q3288f369.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q3288f369.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q3288f369').item.where(linkId='BodyQuestions.q3288f369.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='說話'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q14304745",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q14304745",
      "short" : "理解",
      "definition" : "理解",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q14304745')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='理解']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q14304745.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q14304745.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-dc054900d0e6"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q14304745').item.where(linkId='BodyQuestions.q14304745.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='理解'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q14304745.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q14304745.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。以逗號分隔選項；視力與聽力部位使用此欄。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q14304745').item.where(linkId='BodyQuestions.q14304745.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='理解'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q14304745.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q14304745.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q14304745').item.where(linkId='BodyQuestions.q14304745.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='理解'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q7ca654d9",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q7ca654d9",
      "short" : "口腔外觀",
      "definition" : "口腔外觀",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q7ca654d9')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='口腔外觀']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q7ca654d9.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q7ca654d9.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-7c98e63372ac"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q7ca654d9').item.where(linkId='BodyQuestions.q7ca654d9.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='口腔外觀'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q7ca654d9.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q7ca654d9.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。來源為逗號分隔字串。FHIR 使用多筆 Coding 答案，回寫時依序以逗號串接。",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-415683173294"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q7ca654d9').item.where(linkId='BodyQuestions.q7ca654d9.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='口腔外觀'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q7ca654d9.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q7ca654d9.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q7ca654d9').item.where(linkId='BodyQuestions.q7ca654d9.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='口腔外觀'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q53fb7d09",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q53fb7d09",
      "short" : "特殊進食",
      "definition" : "特殊進食",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q53fb7d09')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='特殊進食']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q53fb7d09.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q53fb7d09.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-49fe20230ec3"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q53fb7d09').item.where(linkId='BodyQuestions.q53fb7d09.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='特殊進食'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q53fb7d09.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q53fb7d09.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。來源為逗號分隔字串。FHIR 使用多筆 Coding 答案，回寫時依序以逗號串接。",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-3435b7eace88"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q53fb7d09').item.where(linkId='BodyQuestions.q53fb7d09.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='特殊進食'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q53fb7d09.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q53fb7d09.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q53fb7d09').item.where(linkId='BodyQuestions.q53fb7d09.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='特殊進食'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qfcd3bd60",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qfcd3bd60",
      "short" : "假牙狀況",
      "definition" : "假牙狀況",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qfcd3bd60')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='假牙狀況']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qfcd3bd60.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qfcd3bd60.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-a051b2c062af"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qfcd3bd60').item.where(linkId='BodyQuestions.qfcd3bd60.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='假牙狀況'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qfcd3bd60.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qfcd3bd60.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。來源為逗號分隔字串。FHIR 使用多筆 Coding 答案，回寫時依序以逗號串接。",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-eee6be407d0e"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qfcd3bd60').item.where(linkId='BodyQuestions.qfcd3bd60.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='假牙狀況'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qfcd3bd60.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qfcd3bd60.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qfcd3bd60').item.where(linkId='BodyQuestions.qfcd3bd60.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='假牙狀況'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q7b3136eb",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q7b3136eb",
      "short" : "腹部狀態",
      "definition" : "腹部狀態",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q7b3136eb')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='腹部狀態']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q7b3136eb.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q7b3136eb.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-b42a51b1139e"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q7b3136eb').item.where(linkId='BodyQuestions.q7b3136eb.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='腹部狀態'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q7b3136eb.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q7b3136eb.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。以逗號分隔選項；視力與聽力部位使用此欄。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q7b3136eb').item.where(linkId='BodyQuestions.q7b3136eb.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='腹部狀態'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q7b3136eb.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q7b3136eb.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q7b3136eb').item.where(linkId='BodyQuestions.q7b3136eb.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='腹部狀態'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qc0a49d43",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qc0a49d43",
      "short" : "腸蠕動",
      "definition" : "腸蠕動",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qc0a49d43')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='腸蠕動']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qc0a49d43.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qc0a49d43.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-3d4ed1f2575b"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qc0a49d43').item.where(linkId='BodyQuestions.qc0a49d43.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='腸蠕動'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qc0a49d43.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qc0a49d43.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。來源為逗號分隔字串。FHIR 使用多筆 Coding 答案，回寫時依序以逗號串接。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qc0a49d43').item.where(linkId='BodyQuestions.qc0a49d43.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='腸蠕動'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qc0a49d43.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qc0a49d43.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qc0a49d43').item.where(linkId='BodyQuestions.qc0a49d43.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='腸蠕動'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qd49ab702",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qd49ab702",
      "short" : "消化狀態",
      "definition" : "消化狀態",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qd49ab702')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='消化狀態']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qd49ab702.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qd49ab702.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-7ce3f119b854"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qd49ab702').item.where(linkId='BodyQuestions.qd49ab702.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='消化狀態'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qd49ab702.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qd49ab702.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。以逗號分隔選項；視力與聽力部位使用此欄。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qd49ab702').item.where(linkId='BodyQuestions.qd49ab702.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='消化狀態'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qd49ab702.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qd49ab702.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qd49ab702').item.where(linkId='BodyQuestions.qd49ab702.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='消化狀態'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q1b2dc66c",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q1b2dc66c",
      "short" : "排便型態",
      "definition" : "排便型態",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1b2dc66c')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='排便型態']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q1b2dc66c.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q1b2dc66c.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-7f8a5cfdf9c9"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1b2dc66c').item.where(linkId='BodyQuestions.q1b2dc66c.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='排便型態'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q1b2dc66c.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q1b2dc66c.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。以逗號分隔選項；視力與聽力部位使用此欄。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1b2dc66c').item.where(linkId='BodyQuestions.q1b2dc66c.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='排便型態'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q1b2dc66c.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q1b2dc66c.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1b2dc66c').item.where(linkId='BodyQuestions.q1b2dc66c.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='排便型態'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qfaaaf47f",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qfaaaf47f",
      "short" : "排便顏色",
      "definition" : "排便顏色",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qfaaaf47f')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='排便顏色']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qfaaaf47f.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qfaaaf47f.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-a88d0ac6ee1a"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qfaaaf47f').item.where(linkId='BodyQuestions.qfaaaf47f.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='排便顏色'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qfaaaf47f.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qfaaaf47f.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。以逗號分隔選項；視力與聽力部位使用此欄。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qfaaaf47f').item.where(linkId='BodyQuestions.qfaaaf47f.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='排便顏色'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qfaaaf47f.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qfaaaf47f.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qfaaaf47f').item.where(linkId='BodyQuestions.qfaaaf47f.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='排便顏色'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qbfd21c82",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qbfd21c82",
      "short" : "排便輔助",
      "definition" : "排便輔助",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qbfd21c82')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='排便輔助']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qbfd21c82.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qbfd21c82.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-19264db8df7b"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qbfd21c82').item.where(linkId='BodyQuestions.qbfd21c82.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='排便輔助'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qbfd21c82.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qbfd21c82.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。來源為逗號分隔字串。FHIR 使用多筆 Coding 答案，回寫時依序以逗號串接。",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-0467df08a056"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qbfd21c82').item.where(linkId='BodyQuestions.qbfd21c82.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='排便輔助'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qbfd21c82.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qbfd21c82.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qbfd21c82').item.where(linkId='BodyQuestions.qbfd21c82.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='排便輔助'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q0cdace56",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q0cdace56",
      "short" : "排尿型態",
      "definition" : "排尿型態",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q0cdace56')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='排尿型態']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q0cdace56.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q0cdace56.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-5cb9bbd6d620"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q0cdace56').item.where(linkId='BodyQuestions.q0cdace56.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='排尿型態'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q0cdace56.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q0cdace56.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。來源為逗號分隔字串。FHIR 使用多筆 Coding 答案，回寫時依序以逗號串接。",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-b5e899beaa3a"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q0cdace56').item.where(linkId='BodyQuestions.q0cdace56.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='排尿型態'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q0cdace56.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q0cdace56.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q0cdace56').item.where(linkId='BodyQuestions.q0cdace56.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='排尿型態'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q3170f977",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q3170f977",
      "short" : "排尿顏色",
      "definition" : "排尿顏色",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q3170f977')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='排尿顏色']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q3170f977.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q3170f977.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-c0e4f2d08eec"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q3170f977').item.where(linkId='BodyQuestions.q3170f977.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='排尿顏色'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q3170f977.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q3170f977.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。以逗號分隔選項；視力與聽力部位使用此欄。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q3170f977').item.where(linkId='BodyQuestions.q3170f977.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='排尿顏色'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q3170f977.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q3170f977.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q3170f977').item.where(linkId='BodyQuestions.q3170f977.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='排尿顏色'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q1dddcc0f",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q1dddcc0f",
      "short" : "排尿輔助",
      "definition" : "排尿輔助",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1dddcc0f')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='排尿輔助']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q1dddcc0f.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q1dddcc0f.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-19264db8df7b"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1dddcc0f').item.where(linkId='BodyQuestions.q1dddcc0f.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='排尿輔助'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q1dddcc0f.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q1dddcc0f.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。來源為逗號分隔字串。FHIR 使用多筆 Coding 答案，回寫時依序以逗號串接。",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-ec686161641f"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1dddcc0f').item.where(linkId='BodyQuestions.q1dddcc0f.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='排尿輔助'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q1dddcc0f.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q1dddcc0f.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1dddcc0f').item.where(linkId='BodyQuestions.q1dddcc0f.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='排尿輔助'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q889a3f5d",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q889a3f5d",
      "short" : "溫度",
      "definition" : "溫度",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q889a3f5d')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='溫度']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q889a3f5d.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q889a3f5d.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-13d13792ca45"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q889a3f5d').item.where(linkId='BodyQuestions.q889a3f5d.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='溫度'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q889a3f5d.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q889a3f5d.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。以逗號分隔選項；視力與聽力部位使用此欄。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q889a3f5d').item.where(linkId='BodyQuestions.q889a3f5d.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='溫度'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q889a3f5d.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q889a3f5d.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q889a3f5d').item.where(linkId='BodyQuestions.q889a3f5d.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='溫度'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qfbbbe51d",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qfbbbe51d",
      "short" : "濕度",
      "definition" : "濕度",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qfbbbe51d')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='濕度']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qfbbbe51d.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qfbbbe51d.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-acfe4f6c5f3a"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qfbbbe51d').item.where(linkId='BodyQuestions.qfbbbe51d.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='濕度'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qfbbbe51d.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qfbbbe51d.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。以逗號分隔選項；視力與聽力部位使用此欄。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qfbbbe51d').item.where(linkId='BodyQuestions.qfbbbe51d.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='濕度'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qfbbbe51d.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qfbbbe51d.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qfbbbe51d').item.where(linkId='BodyQuestions.qfbbbe51d.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='濕度'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q2edc1f98",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q2edc1f98",
      "short" : "顏色",
      "definition" : "顏色",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q2edc1f98')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='顏色']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q2edc1f98.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q2edc1f98.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-ed3fafa578d2"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q2edc1f98').item.where(linkId='BodyQuestions.q2edc1f98.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='顏色'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q2edc1f98.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q2edc1f98.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。以逗號分隔選項；視力與聽力部位使用此欄。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q2edc1f98').item.where(linkId='BodyQuestions.q2edc1f98.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='顏色'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q2edc1f98.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q2edc1f98.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q2edc1f98').item.where(linkId='BodyQuestions.q2edc1f98.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='顏色'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q0aec089c",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q0aec089c",
      "short" : "水腫級數",
      "definition" : "水腫級數",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q0aec089c')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='水腫級數']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q0aec089c.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q0aec089c.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-49fe20230ec3"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q0aec089c').item.where(linkId='BodyQuestions.q0aec089c.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='水腫級數'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q0aec089c.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q0aec089c.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。以逗號分隔選項；視力與聽力部位使用此欄。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q0aec089c').item.where(linkId='BodyQuestions.q0aec089c.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='水腫級數'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q0aec089c.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q0aec089c.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q0aec089c').item.where(linkId='BodyQuestions.q0aec089c.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='水腫級數'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q5b3534e0",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q5b3534e0",
      "short" : "水腫等級",
      "definition" : "水腫等級",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q5b3534e0')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='水腫等級']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q5b3534e0.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q5b3534e0.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-c93d67023284"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q5b3534e0').item.where(linkId='BodyQuestions.q5b3534e0.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='水腫等級'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q5b3534e0.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q5b3534e0.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。以逗號分隔選項；視力與聽力部位使用此欄。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q5b3534e0').item.where(linkId='BodyQuestions.q5b3534e0.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='水腫等級'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q5b3534e0.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q5b3534e0.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q5b3534e0').item.where(linkId='BodyQuestions.q5b3534e0.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='水腫等級'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q6e6e5811",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q6e6e5811",
      "short" : "完整",
      "definition" : "完整",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q6e6e5811')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='完整']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q6e6e5811.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q6e6e5811.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q6e6e5811').item.where(linkId='BodyQuestions.q6e6e5811.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='完整'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q6e6e5811.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q6e6e5811.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。以逗號分隔選項；視力與聽力部位使用此欄。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q6e6e5811').item.where(linkId='BodyQuestions.q6e6e5811.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='完整'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q6e6e5811.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q6e6e5811.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q6e6e5811').item.where(linkId='BodyQuestions.q6e6e5811.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='完整'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q4c713f60",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q4c713f60",
      "short" : "左上肢",
      "definition" : "左上肢",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q4c713f60')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='左上肢']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q4c713f60.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q4c713f60.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-00697b86a7bc"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q4c713f60').item.where(linkId='BodyQuestions.q4c713f60.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='左上肢'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q4c713f60.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q4c713f60.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。以逗號分隔選項；視力與聽力部位使用此欄。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q4c713f60').item.where(linkId='BodyQuestions.q4c713f60.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='左上肢'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q4c713f60.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q4c713f60.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q4c713f60').item.where(linkId='BodyQuestions.q4c713f60.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='左上肢'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q43c26e48",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q43c26e48",
      "short" : "右上肢",
      "definition" : "右上肢",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q43c26e48')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='右上肢']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q43c26e48.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q43c26e48.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-00697b86a7bc"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q43c26e48').item.where(linkId='BodyQuestions.q43c26e48.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='右上肢'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q43c26e48.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q43c26e48.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。以逗號分隔選項；視力與聽力部位使用此欄。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q43c26e48').item.where(linkId='BodyQuestions.q43c26e48.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='右上肢'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q43c26e48.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q43c26e48.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q43c26e48').item.where(linkId='BodyQuestions.q43c26e48.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='右上肢'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q9926c640",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q9926c640",
      "short" : "左下肢",
      "definition" : "左下肢",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q9926c640')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='左下肢']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q9926c640.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q9926c640.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-00697b86a7bc"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q9926c640').item.where(linkId='BodyQuestions.q9926c640.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='左下肢'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q9926c640.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q9926c640.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。來源為逗號分隔字串。FHIR 使用多筆 Coding 答案，回寫時依序以逗號串接。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q9926c640').item.where(linkId='BodyQuestions.q9926c640.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='左下肢'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q9926c640.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q9926c640.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q9926c640').item.where(linkId='BodyQuestions.q9926c640.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='左下肢'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q3f44d138",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q3f44d138",
      "short" : "右下肢",
      "definition" : "右下肢",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q3f44d138')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='右下肢']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q3f44d138.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q3f44d138.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-00697b86a7bc"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q3f44d138').item.where(linkId='BodyQuestions.q3f44d138.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='右下肢'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q3f44d138.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q3f44d138.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。以逗號分隔選項；視力與聽力部位使用此欄。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q3f44d138').item.where(linkId='BodyQuestions.q3f44d138.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='右下肢'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q3f44d138.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q3f44d138.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q3f44d138').item.where(linkId='BodyQuestions.q3f44d138.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='右下肢'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qcd675f81",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qcd675f81",
      "short" : "行動能力問題",
      "definition" : "行動能力問題",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qcd675f81')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='行動能力問題']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qcd675f81.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qcd675f81.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-1ffa1d5d3bef"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qcd675f81').item.where(linkId='BodyQuestions.qcd675f81.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='行動能力問題'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qcd675f81.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qcd675f81.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。以逗號分隔選項；視力與聽力部位使用此欄。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qcd675f81').item.where(linkId='BodyQuestions.qcd675f81.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='行動能力問題'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qcd675f81.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qcd675f81.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qcd675f81').item.where(linkId='BodyQuestions.qcd675f81.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='行動能力問題'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q3adf788d",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q3adf788d",
      "short" : "肌力-輔具",
      "definition" : "肌力-輔具",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q3adf788d')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='肌力-輔具']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q3adf788d.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q3adf788d.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-49fe20230ec3"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q3adf788d').item.where(linkId='BodyQuestions.q3adf788d.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='肌力-輔具'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q3adf788d.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q3adf788d.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。來源為逗號分隔字串。FHIR 使用多筆 Coding 答案，回寫時依序以逗號串接。",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-1a72d15a5965"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q3adf788d').item.where(linkId='BodyQuestions.q3adf788d.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='肌力-輔具'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q3adf788d.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q3adf788d.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q3adf788d').item.where(linkId='BodyQuestions.q3adf788d.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='肌力-輔具'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q4ce17519",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q4ce17519",
      "short" : "跌倒",
      "definition" : "跌倒",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q4ce17519')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='跌倒']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q4ce17519.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q4ce17519.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-19264db8df7b"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q4ce17519').item.where(linkId='BodyQuestions.q4ce17519.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='跌倒'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q4ce17519.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q4ce17519.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。來源為逗號分隔字串。FHIR 使用多筆 Coding 答案，回寫時依序以逗號串接。",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-3bbfa4b4f8db"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q4ce17519').item.where(linkId='BodyQuestions.q4ce17519.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='跌倒'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q4ce17519.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q4ce17519.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q4ce17519').item.where(linkId='BodyQuestions.q4ce17519.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='跌倒'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qcc99d785",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qcc99d785",
      "short" : "跌倒次數",
      "definition" : "跌倒次數",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qcc99d785')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='跌倒次數']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qcc99d785.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qcc99d785.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qcc99d785').item.where(linkId='BodyQuestions.qcc99d785.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='跌倒次數'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qcc99d785.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qcc99d785.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。以逗號分隔選項；視力與聽力部位使用此欄。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qcc99d785').item.where(linkId='BodyQuestions.qcc99d785.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='跌倒次數'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qcc99d785.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qcc99d785.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qcc99d785').item.where(linkId='BodyQuestions.qcc99d785.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='跌倒次數'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q1ea67d8d",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q1ea67d8d",
      "short" : "行為",
      "definition" : "行為",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1ea67d8d')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='行為']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q1ea67d8d.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q1ea67d8d.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-365bfce838bb"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1ea67d8d').item.where(linkId='BodyQuestions.q1ea67d8d.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='行為'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q1ea67d8d.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q1ea67d8d.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。來源為逗號分隔字串。FHIR 使用多筆 Coding 答案，回寫時依序以逗號串接。",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-46c8866533a0"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1ea67d8d').item.where(linkId='BodyQuestions.q1ea67d8d.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='行為'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q1ea67d8d.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q1ea67d8d.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1ea67d8d').item.where(linkId='BodyQuestions.q1ea67d8d.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='行為'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qca5f735b",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qca5f735b",
      "short" : "睡眠",
      "definition" : "睡眠",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qca5f735b')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='睡眠']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qca5f735b.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qca5f735b.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-ef4daeacd99a"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qca5f735b').item.where(linkId='BodyQuestions.qca5f735b.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='睡眠'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qca5f735b.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qca5f735b.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。來源為逗號分隔字串。FHIR 使用多筆 Coding 答案，回寫時依序以逗號串接。",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-c34dc3f43d82"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qca5f735b').item.where(linkId='BodyQuestions.qca5f735b.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='睡眠'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qca5f735b.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qca5f735b.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qca5f735b').item.where(linkId='BodyQuestions.qca5f735b.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='睡眠'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qd8db9643",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qd8db9643",
      "short" : "服用藥物",
      "definition" : "服用藥物",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qd8db9643')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='服用藥物']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qd8db9643.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qd8db9643.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-49fe20230ec3"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qd8db9643').item.where(linkId='BodyQuestions.qd8db9643.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='服用藥物'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qd8db9643.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qd8db9643.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。以逗號分隔選項；視力與聽力部位使用此欄。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qd8db9643').item.where(linkId='BodyQuestions.qd8db9643.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='服用藥物'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qd8db9643.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qd8db9643.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qd8db9643').item.where(linkId='BodyQuestions.qd8db9643.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='服用藥物'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q65b57fd8",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q65b57fd8",
      "short" : "藥物類別",
      "definition" : "藥物類別",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q65b57fd8')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='藥物類別']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q65b57fd8.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q65b57fd8.answer",
      "short" : "評估答案",
      "definition" : "評估答案。本題單選答案留空；填寫多選答案。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q65b57fd8').item.where(linkId='BodyQuestions.q65b57fd8.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='藥物類別'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q65b57fd8.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q65b57fd8.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。來源為逗號分隔字串。FHIR 使用多筆 Coding 答案，回寫時依序以逗號串接。",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-6d733f47d6f4"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q65b57fd8').item.where(linkId='BodyQuestions.q65b57fd8.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='藥物類別'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q65b57fd8.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q65b57fd8.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q65b57fd8').item.where(linkId='BodyQuestions.q65b57fd8.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='藥物類別'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q03fdb3f1",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q03fdb3f1",
      "short" : "服用頻率",
      "definition" : "服用頻率",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q03fdb3f1')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='服用頻率']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q03fdb3f1.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q03fdb3f1.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-cf479df80e62"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q03fdb3f1').item.where(linkId='BodyQuestions.q03fdb3f1.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='服用頻率'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q03fdb3f1.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q03fdb3f1.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。以逗號分隔選項；視力與聽力部位使用此欄。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q03fdb3f1').item.where(linkId='BodyQuestions.q03fdb3f1.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='服用頻率'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q03fdb3f1.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q03fdb3f1.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q03fdb3f1').item.where(linkId='BodyQuestions.q03fdb3f1.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='服用頻率'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qd30f4212",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qd30f4212",
      "short" : "輔助器",
      "definition" : "輔助器",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qd30f4212')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='輔助器']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qd30f4212.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qd30f4212.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-49fe20230ec3"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qd30f4212').item.where(linkId='BodyQuestions.qd30f4212.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='輔助器'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qd30f4212.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qd30f4212.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。以逗號分隔選項；視力與聽力部位使用此欄。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qd30f4212').item.where(linkId='BodyQuestions.qd30f4212.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='輔助器'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.qd30f4212.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.qd30f4212.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.qd30f4212').item.where(linkId='BodyQuestions.qd30f4212.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='輔助器'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q1355f181",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q1355f181",
      "short" : "有輔助器",
      "definition" : "有輔助器",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1355f181')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='有輔助器']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q1355f181.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q1355f181.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-8aa8b9aed3b2"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1355f181').item.where(linkId='BodyQuestions.q1355f181.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='有輔助器'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q1355f181.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q1355f181.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。來源為逗號分隔字串。FHIR 使用多筆 Coding 答案，回寫時依序以逗號串接。",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-1c644096303f"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1355f181').item.where(linkId='BodyQuestions.q1355f181.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='有輔助器'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q1355f181.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q1355f181.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1355f181').item.where(linkId='BodyQuestions.q1355f181.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='有輔助器'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q1c902f78",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q1c902f78",
      "short" : "鼻導管",
      "definition" : "鼻導管",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1c902f78')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='鼻導管']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q1c902f78.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q1c902f78.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1c902f78').item.where(linkId='BodyQuestions.q1c902f78.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='鼻導管'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q1c902f78.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q1c902f78.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。來源為逗號分隔字串。FHIR 使用多筆 Coding 答案，回寫時依序以逗號串接。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1c902f78').item.where(linkId='BodyQuestions.q1c902f78.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='鼻導管'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q1c902f78.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q1c902f78.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q1c902f78').item.where(linkId='BodyQuestions.q1c902f78.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='鼻導管'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q6772dc09",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q6772dc09",
      "short" : "氧氣面罩",
      "definition" : "氧氣面罩",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q6772dc09')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='氧氣面罩']"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q6772dc09.answer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q6772dc09.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q6772dc09').item.where(linkId='BodyQuestions.q6772dc09.Answer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='氧氣面罩'].Answer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q6772dc09.multipleAnswer",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q6772dc09.multipleAnswer",
      "short" : "評估多選答案",
      "definition" : "評估多選答案。以逗號分隔選項；視力與聽力部位使用此欄。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q6772dc09').item.where(linkId='BodyQuestions.q6772dc09.MultipleAnswer')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='氧氣面罩'].MultipleAnswer"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.bodyQuestions.q6772dc09.other",
      "path" : "HNBodyEvaluationsModel.bodyQuestions.q6772dc09.other",
      "short" : "補充說明",
      "definition" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BodyQuestions').item.where(linkId='BodyQuestions.q6772dc09').item.where(linkId='BodyQuestions.q6772dc09.Other')",
        "comment" : "來源欄位／題目：BodyQuestions[Question='氧氣面罩'].Other"
      }]
    },
    {
      "id" : "HNBodyEvaluationsModel.isTemporary",
      "path" : "HNBodyEvaluationsModel.isTemporary",
      "short" : "是否暫存",
      "definition" : "是否暫存",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
      },
      "mapping" : [{
        "identity" : "hn-bodyevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='IsTemporary')",
        "comment" : "來源欄位／題目：IsTemporary"
      }]
    }]
  }
}

```
