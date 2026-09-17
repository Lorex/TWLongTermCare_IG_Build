# 居家護理－衰弱評估邏輯模型 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－衰弱評估邏輯模型**

## Logical Model: 居家護理－衰弱評估邏輯模型 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNSOFsModel | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNSOFsModel |

 
描述居家護理衰弱評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 

**Usages:**

* Use this Logical Model: [居家護理－全人評估 API 邏輯模型](StructureDefinition-HNEvaluationAPIModel.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNSOFsModel.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNSOFsModel.csv), [Excel](StructureDefinition-HNSOFsModel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNSOFsModel",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNSOFsModel",
  "version" : "1.1.0",
  "name" : "HNSOFsModel",
  "title" : "居家護理－衰弱評估邏輯模型",
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
  "description" : "描述居家護理衰弱評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "hn-sofs-fhir",
    "uri" : "http://ltc-ig.fhir.tw/StructureDefinition/HNSOFsResponse",
    "name" : "居家護理－衰弱評估欄位對應"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ltc-ig.fhir.tw/StructureDefinition/HNSOFsModel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "HNSOFsModel",
      "path" : "HNSOFsModel",
      "short" : "居家護理－衰弱評估邏輯模型",
      "definition" : "描述居家護理衰弱評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。"
    },
    {
      "id" : "HNSOFsModel.date",
      "path" : "HNSOFsModel.date",
      "short" : "紀錄日期",
      "definition" : "紀錄日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-sofs-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Date')",
        "comment" : "來源欄位／題目：Date"
      }]
    },
    {
      "id" : "HNSOFsModel.nurseID",
      "path" : "HNSOFsModel.nurseID",
      "short" : "護理人員身分證字號",
      "definition" : "護理人員身分證字號",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-sofs-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='NurseID')",
        "comment" : "來源欄位／題目：NurseID"
      }]
    },
    {
      "id" : "HNSOFsModel.statement",
      "path" : "HNSOFsModel.statement",
      "short" : "無法評估原因或備註",
      "definition" : "無法評估原因或備註",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-sofs-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Statement')",
        "comment" : "來源欄位／題目：Statement"
      }]
    },
    {
      "id" : "HNSOFsModel.questions",
      "path" : "HNSOFsModel.questions",
      "short" : "評估項目",
      "definition" : "評估項目",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-sofs-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions')",
        "comment" : "來源欄位／題目：Questions"
      }]
    },
    {
      "id" : "HNSOFsModel.questions.q4e1023eb",
      "path" : "HNSOFsModel.questions.q4e1023eb",
      "short" : "體重減輕",
      "definition" : "體重減輕",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-sofs-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q4e1023eb')",
        "comment" : "來源欄位／題目：Questions[Question='體重減輕']"
      }]
    },
    {
      "id" : "HNSOFsModel.questions.q4e1023eb.answer",
      "path" : "HNSOFsModel.questions.q4e1023eb.answer",
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
        "identity" : "hn-sofs-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q4e1023eb').item.where(linkId='Questions.q4e1023eb.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='體重減輕'].Answer"
      }]
    },
    {
      "id" : "HNSOFsModel.questions.q7e60ea58",
      "path" : "HNSOFsModel.questions.q7e60ea58",
      "short" : "下肢功能",
      "definition" : "下肢功能",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-sofs-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q7e60ea58')",
        "comment" : "來源欄位／題目：Questions[Question='下肢功能']"
      }]
    },
    {
      "id" : "HNSOFsModel.questions.q7e60ea58.answer",
      "path" : "HNSOFsModel.questions.q7e60ea58.answer",
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
        "identity" : "hn-sofs-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q7e60ea58').item.where(linkId='Questions.q7e60ea58.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='下肢功能'].Answer"
      }]
    },
    {
      "id" : "HNSOFsModel.questions.qc604ec89",
      "path" : "HNSOFsModel.questions.qc604ec89",
      "short" : "活力降低",
      "definition" : "活力降低",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-sofs-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qc604ec89')",
        "comment" : "來源欄位／題目：Questions[Question='活力降低']"
      }]
    },
    {
      "id" : "HNSOFsModel.questions.qc604ec89.answer",
      "path" : "HNSOFsModel.questions.qc604ec89.answer",
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
        "identity" : "hn-sofs-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qc604ec89').item.where(linkId='Questions.qc604ec89.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='活力降低'].Answer"
      }]
    },
    {
      "id" : "HNSOFsModel.isTemporary",
      "path" : "HNSOFsModel.isTemporary",
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
        "identity" : "hn-sofs-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='IsTemporary')",
        "comment" : "來源欄位／題目：IsTemporary"
      }]
    }]
  }
}

```
