# 居家護理－情緒問題評估邏輯模型 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－情緒問題評估邏輯模型**

## Logical Model: 居家護理－情緒問題評估邏輯模型 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNGeriatricDepressionScalesModel | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNGeriatricDepressionScalesModel |

 
描述居家護理情緒問題評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 

**Usages:**

* Use this Logical Model: [居家護理－全人評估 API 邏輯模型](StructureDefinition-HNEvaluationAPIModel.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNGeriatricDepressionScalesModel.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNGeriatricDepressionScalesModel.csv), [Excel](StructureDefinition-HNGeriatricDepressionScalesModel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNGeriatricDepressionScalesModel",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNGeriatricDepressionScalesModel",
  "version" : "1.1.0",
  "name" : "HNGeriatricDepressionScalesModel",
  "title" : "居家護理－情緒問題評估邏輯模型",
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
  "description" : "描述居家護理情緒問題評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "hn-geriatricdepressionscales-fhir",
    "uri" : "http://ltc-ig.fhir.tw/StructureDefinition/HNGeriatricDepressionScalesResponse",
    "name" : "居家護理－情緒問題評估欄位對應"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ltc-ig.fhir.tw/StructureDefinition/HNGeriatricDepressionScalesModel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "HNGeriatricDepressionScalesModel",
      "path" : "HNGeriatricDepressionScalesModel",
      "short" : "居家護理－情緒問題評估邏輯模型",
      "definition" : "描述居家護理情緒問題評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。"
    },
    {
      "id" : "HNGeriatricDepressionScalesModel.date",
      "path" : "HNGeriatricDepressionScalesModel.date",
      "short" : "紀錄日期",
      "definition" : "紀錄日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-geriatricdepressionscales-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Date')",
        "comment" : "來源欄位／題目：Date"
      }]
    },
    {
      "id" : "HNGeriatricDepressionScalesModel.nurseID",
      "path" : "HNGeriatricDepressionScalesModel.nurseID",
      "short" : "護理人員身分證字號",
      "definition" : "護理人員身分證字號",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-geriatricdepressionscales-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='NurseID')",
        "comment" : "來源欄位／題目：NurseID"
      }]
    },
    {
      "id" : "HNGeriatricDepressionScalesModel.statement",
      "path" : "HNGeriatricDepressionScalesModel.statement",
      "short" : "無法評估原因或備註",
      "definition" : "無法評估原因或備註",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-geriatricdepressionscales-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Statement')",
        "comment" : "來源欄位／題目：Statement"
      }]
    },
    {
      "id" : "HNGeriatricDepressionScalesModel.questions",
      "path" : "HNGeriatricDepressionScalesModel.questions",
      "short" : "評估項目",
      "definition" : "評估項目",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-geriatricdepressionscales-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions')",
        "comment" : "來源欄位／題目：Questions"
      }]
    },
    {
      "id" : "HNGeriatricDepressionScalesModel.questions.qb56906ac",
      "path" : "HNGeriatricDepressionScalesModel.questions.qb56906ac",
      "short" : "您對您的生活感到滿意嗎？",
      "definition" : "您對您的生活感到滿意嗎？",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-geriatricdepressionscales-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qb56906ac')",
        "comment" : "來源欄位／題目：Questions[Question='您對您的生活感到滿意嗎？']"
      }]
    },
    {
      "id" : "HNGeriatricDepressionScalesModel.questions.qb56906ac.answer",
      "path" : "HNGeriatricDepressionScalesModel.questions.qb56906ac.answer",
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
        "identity" : "hn-geriatricdepressionscales-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qb56906ac').item.where(linkId='Questions.qb56906ac.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='您對您的生活感到滿意嗎？'].Answer"
      }]
    },
    {
      "id" : "HNGeriatricDepressionScalesModel.questions.qb6cee679",
      "path" : "HNGeriatricDepressionScalesModel.questions.qb6cee679",
      "short" : "您是否常常感到厭煩？",
      "definition" : "您是否常常感到厭煩？",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-geriatricdepressionscales-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qb6cee679')",
        "comment" : "來源欄位／題目：Questions[Question='您是否常常感到厭煩？']"
      }]
    },
    {
      "id" : "HNGeriatricDepressionScalesModel.questions.qb6cee679.answer",
      "path" : "HNGeriatricDepressionScalesModel.questions.qb6cee679.answer",
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
        "identity" : "hn-geriatricdepressionscales-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qb6cee679').item.where(linkId='Questions.qb6cee679.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='您是否常常感到厭煩？'].Answer"
      }]
    },
    {
      "id" : "HNGeriatricDepressionScalesModel.questions.q887c5133",
      "path" : "HNGeriatricDepressionScalesModel.questions.q887c5133",
      "short" : "您是否常常感到無論做什麼都沒有用？",
      "definition" : "您是否常常感到無論做什麼都沒有用？",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-geriatricdepressionscales-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q887c5133')",
        "comment" : "來源欄位／題目：Questions[Question='您是否常常感到無論做什麼都沒有用？']"
      }]
    },
    {
      "id" : "HNGeriatricDepressionScalesModel.questions.q887c5133.answer",
      "path" : "HNGeriatricDepressionScalesModel.questions.q887c5133.answer",
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
        "identity" : "hn-geriatricdepressionscales-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q887c5133').item.where(linkId='Questions.q887c5133.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='您是否常常感到無論做什麼都沒有用？'].Answer"
      }]
    },
    {
      "id" : "HNGeriatricDepressionScalesModel.questions.q4a2bd151",
      "path" : "HNGeriatricDepressionScalesModel.questions.q4a2bd151",
      "short" : "您是否比較喜歡待在家裡，較不喜歡外出及不喜歡做新的事？",
      "definition" : "您是否比較喜歡待在家裡，較不喜歡外出及不喜歡做新的事？",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-geriatricdepressionscales-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q4a2bd151')",
        "comment" : "來源欄位／題目：Questions[Question='您是否比較喜歡待在家裡，較不喜歡外出及不喜歡做新的事？']"
      }]
    },
    {
      "id" : "HNGeriatricDepressionScalesModel.questions.q4a2bd151.answer",
      "path" : "HNGeriatricDepressionScalesModel.questions.q4a2bd151.answer",
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
        "identity" : "hn-geriatricdepressionscales-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q4a2bd151').item.where(linkId='Questions.q4a2bd151.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='您是否比較喜歡待在家裡，較不喜歡外出及不喜歡做新的事？'].Answer"
      }]
    },
    {
      "id" : "HNGeriatricDepressionScalesModel.questions.q14debc58",
      "path" : "HNGeriatricDepressionScalesModel.questions.q14debc58",
      "short" : "您是否感覺活得很沒有價值？",
      "definition" : "您是否感覺活得很沒有價值？",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-geriatricdepressionscales-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q14debc58')",
        "comment" : "來源欄位／題目：Questions[Question='您是否感覺活得很沒有價值？']"
      }]
    },
    {
      "id" : "HNGeriatricDepressionScalesModel.questions.q14debc58.answer",
      "path" : "HNGeriatricDepressionScalesModel.questions.q14debc58.answer",
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
        "identity" : "hn-geriatricdepressionscales-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q14debc58').item.where(linkId='Questions.q14debc58.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='您是否感覺活得很沒有價值？'].Answer"
      }]
    },
    {
      "id" : "HNGeriatricDepressionScalesModel.isTemporary",
      "path" : "HNGeriatricDepressionScalesModel.isTemporary",
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
        "identity" : "hn-geriatricdepressionscales-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='IsTemporary')",
        "comment" : "來源欄位／題目：IsTemporary"
      }]
    }]
  }
}

```
