# 居家護理－日常生活功能評估邏輯模型 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－日常生活功能評估邏輯模型**

## Logical Model: 居家護理－日常生活功能評估邏輯模型 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNADLsModel | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNADLsModel |

 
描述居家護理日常生活功能評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 

**Usages:**

* Use this Logical Model: [居家護理－全人評估 API 邏輯模型](StructureDefinition-HNEvaluationAPIModel.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNADLsModel.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNADLsModel.csv), [Excel](StructureDefinition-HNADLsModel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNADLsModel",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNADLsModel",
  "version" : "1.1.0",
  "name" : "HNADLsModel",
  "title" : "居家護理－日常生活功能評估邏輯模型",
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
  "description" : "描述居家護理日常生活功能評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "hn-adls-fhir",
    "uri" : "http://ltc-ig.fhir.tw/StructureDefinition/HNADLsResponse",
    "name" : "居家護理－日常生活功能評估欄位對應"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ltc-ig.fhir.tw/StructureDefinition/HNADLsModel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "HNADLsModel",
      "path" : "HNADLsModel",
      "short" : "居家護理－日常生活功能評估邏輯模型",
      "definition" : "描述居家護理日常生活功能評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。"
    },
    {
      "id" : "HNADLsModel.date",
      "path" : "HNADLsModel.date",
      "short" : "紀錄日期",
      "definition" : "紀錄日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-adls-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Date')",
        "comment" : "來源欄位／題目：Date"
      }]
    },
    {
      "id" : "HNADLsModel.nurseID",
      "path" : "HNADLsModel.nurseID",
      "short" : "護理人員身分證字號",
      "definition" : "護理人員身分證字號",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-adls-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='NurseID')",
        "comment" : "來源欄位／題目：NurseID"
      }]
    },
    {
      "id" : "HNADLsModel.questions",
      "path" : "HNADLsModel.questions",
      "short" : "評估項目",
      "definition" : "評估項目",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-adls-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions')",
        "comment" : "來源欄位／題目：Questions"
      }]
    },
    {
      "id" : "HNADLsModel.questions.q46787535",
      "path" : "HNADLsModel.questions.q46787535",
      "short" : "進食",
      "definition" : "進食",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-adls-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q46787535')",
        "comment" : "來源欄位／題目：Questions[Question='進食']"
      }]
    },
    {
      "id" : "HNADLsModel.questions.q46787535.answer",
      "path" : "HNADLsModel.questions.q46787535.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-c020bc6f582f"
      },
      "mapping" : [{
        "identity" : "hn-adls-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q46787535').item.where(linkId='Questions.q46787535.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='進食'].Answer"
      }]
    },
    {
      "id" : "HNADLsModel.questions.q0bc7e44d",
      "path" : "HNADLsModel.questions.q0bc7e44d",
      "short" : "移位",
      "definition" : "移位",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-adls-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q0bc7e44d')",
        "comment" : "來源欄位／題目：Questions[Question='移位']"
      }]
    },
    {
      "id" : "HNADLsModel.questions.q0bc7e44d.answer",
      "path" : "HNADLsModel.questions.q0bc7e44d.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-5509cc9b0f4c"
      },
      "mapping" : [{
        "identity" : "hn-adls-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q0bc7e44d').item.where(linkId='Questions.q0bc7e44d.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='移位'].Answer"
      }]
    },
    {
      "id" : "HNADLsModel.questions.qb93b932f",
      "path" : "HNADLsModel.questions.qb93b932f",
      "short" : "衛生",
      "definition" : "衛生",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-adls-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qb93b932f')",
        "comment" : "來源欄位／題目：Questions[Question='衛生']"
      }]
    },
    {
      "id" : "HNADLsModel.questions.qb93b932f.answer",
      "path" : "HNADLsModel.questions.qb93b932f.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-c1223cdffc0c"
      },
      "mapping" : [{
        "identity" : "hn-adls-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qb93b932f').item.where(linkId='Questions.qb93b932f.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='衛生'].Answer"
      }]
    },
    {
      "id" : "HNADLsModel.questions.q96220a06",
      "path" : "HNADLsModel.questions.q96220a06",
      "short" : "如廁",
      "definition" : "如廁",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-adls-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q96220a06')",
        "comment" : "來源欄位／題目：Questions[Question='如廁']"
      }]
    },
    {
      "id" : "HNADLsModel.questions.q96220a06.answer",
      "path" : "HNADLsModel.questions.q96220a06.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-5a0da2e50fde"
      },
      "mapping" : [{
        "identity" : "hn-adls-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q96220a06').item.where(linkId='Questions.q96220a06.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='如廁'].Answer"
      }]
    },
    {
      "id" : "HNADLsModel.questions.q92ee129c",
      "path" : "HNADLsModel.questions.q92ee129c",
      "short" : "洗澡",
      "definition" : "洗澡",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-adls-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q92ee129c')",
        "comment" : "來源欄位／題目：Questions[Question='洗澡']"
      }]
    },
    {
      "id" : "HNADLsModel.questions.q92ee129c.answer",
      "path" : "HNADLsModel.questions.q92ee129c.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-3c038851248f"
      },
      "mapping" : [{
        "identity" : "hn-adls-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q92ee129c').item.where(linkId='Questions.q92ee129c.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='洗澡'].Answer"
      }]
    },
    {
      "id" : "HNADLsModel.questions.qb8f96793",
      "path" : "HNADLsModel.questions.qb8f96793",
      "short" : "走動",
      "definition" : "走動",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-adls-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qb8f96793')",
        "comment" : "來源欄位／題目：Questions[Question='走動']"
      }]
    },
    {
      "id" : "HNADLsModel.questions.qb8f96793.answer",
      "path" : "HNADLsModel.questions.qb8f96793.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-9a2ed66b6061"
      },
      "mapping" : [{
        "identity" : "hn-adls-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qb8f96793').item.where(linkId='Questions.qb8f96793.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='走動'].Answer"
      }]
    },
    {
      "id" : "HNADLsModel.questions.q1cb17d5b",
      "path" : "HNADLsModel.questions.q1cb17d5b",
      "short" : "樓梯",
      "definition" : "樓梯",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-adls-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q1cb17d5b')",
        "comment" : "來源欄位／題目：Questions[Question='樓梯']"
      }]
    },
    {
      "id" : "HNADLsModel.questions.q1cb17d5b.answer",
      "path" : "HNADLsModel.questions.q1cb17d5b.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-076f2d014436"
      },
      "mapping" : [{
        "identity" : "hn-adls-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q1cb17d5b').item.where(linkId='Questions.q1cb17d5b.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='樓梯'].Answer"
      }]
    },
    {
      "id" : "HNADLsModel.questions.qd949ce2d",
      "path" : "HNADLsModel.questions.qd949ce2d",
      "short" : "穿脫",
      "definition" : "穿脫",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-adls-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qd949ce2d')",
        "comment" : "來源欄位／題目：Questions[Question='穿脫']"
      }]
    },
    {
      "id" : "HNADLsModel.questions.qd949ce2d.answer",
      "path" : "HNADLsModel.questions.qd949ce2d.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-723d296bd93d"
      },
      "mapping" : [{
        "identity" : "hn-adls-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qd949ce2d').item.where(linkId='Questions.qd949ce2d.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='穿脫'].Answer"
      }]
    },
    {
      "id" : "HNADLsModel.questions.qfe7de24a",
      "path" : "HNADLsModel.questions.qfe7de24a",
      "short" : "大便",
      "definition" : "大便",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-adls-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qfe7de24a')",
        "comment" : "來源欄位／題目：Questions[Question='大便']"
      }]
    },
    {
      "id" : "HNADLsModel.questions.qfe7de24a.answer",
      "path" : "HNADLsModel.questions.qfe7de24a.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-8c7bcb320a01"
      },
      "mapping" : [{
        "identity" : "hn-adls-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qfe7de24a').item.where(linkId='Questions.qfe7de24a.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='大便'].Answer"
      }]
    },
    {
      "id" : "HNADLsModel.questions.q13cca4d4",
      "path" : "HNADLsModel.questions.q13cca4d4",
      "short" : "小便",
      "definition" : "小便",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-adls-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q13cca4d4')",
        "comment" : "來源欄位／題目：Questions[Question='小便']"
      }]
    },
    {
      "id" : "HNADLsModel.questions.q13cca4d4.answer",
      "path" : "HNADLsModel.questions.q13cca4d4.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d20974b4a161"
      },
      "mapping" : [{
        "identity" : "hn-adls-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q13cca4d4').item.where(linkId='Questions.q13cca4d4.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='小便'].Answer"
      }]
    },
    {
      "id" : "HNADLsModel.isTemporary",
      "path" : "HNADLsModel.isTemporary",
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
        "identity" : "hn-adls-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='IsTemporary')",
        "comment" : "來源欄位／題目：IsTemporary"
      }]
    }]
  }
}

```
