# 居家護理－認知功能評估邏輯模型 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－認知功能評估邏輯模型**

## Logical Model: 居家護理－認知功能評估邏輯模型 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNDementiasModel | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNDementiasModel |

 
描述居家護理認知功能評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 

**Usages:**

* Use this Logical Model: [居家護理－全人評估 API 邏輯模型](StructureDefinition-HNEvaluationAPIModel.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNDementiasModel.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNDementiasModel.csv), [Excel](StructureDefinition-HNDementiasModel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNDementiasModel",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNDementiasModel",
  "version" : "1.1.0",
  "name" : "HNDementiasModel",
  "title" : "居家護理－認知功能評估邏輯模型",
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
  "description" : "描述居家護理認知功能評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "hn-dementias-fhir",
    "uri" : "http://ltc-ig.fhir.tw/StructureDefinition/HNDementiasResponse",
    "name" : "居家護理－認知功能評估欄位對應"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ltc-ig.fhir.tw/StructureDefinition/HNDementiasModel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "HNDementiasModel",
      "path" : "HNDementiasModel",
      "short" : "居家護理－認知功能評估邏輯模型",
      "definition" : "描述居家護理認知功能評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。"
    },
    {
      "id" : "HNDementiasModel.date",
      "path" : "HNDementiasModel.date",
      "short" : "紀錄日期",
      "definition" : "紀錄日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-dementias-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Date')",
        "comment" : "來源欄位／題目：Date"
      }]
    },
    {
      "id" : "HNDementiasModel.nurseID",
      "path" : "HNDementiasModel.nurseID",
      "short" : "護理人員身分證字號",
      "definition" : "護理人員身分證字號",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-dementias-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='NurseID')",
        "comment" : "來源欄位／題目：NurseID"
      }]
    },
    {
      "id" : "HNDementiasModel.statement",
      "path" : "HNDementiasModel.statement",
      "short" : "無法評估原因或備註",
      "definition" : "無法評估原因或備註",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-dementias-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Statement')",
        "comment" : "來源欄位／題目：Statement"
      }]
    },
    {
      "id" : "HNDementiasModel.questions",
      "path" : "HNDementiasModel.questions",
      "short" : "評估項目",
      "definition" : "評估項目",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-dementias-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions')",
        "comment" : "來源欄位／題目：Questions"
      }]
    },
    {
      "id" : "HNDementiasModel.questions.q48174716",
      "path" : "HNDementiasModel.questions.q48174716",
      "short" : "今天是幾年幾月幾日？__年__月__日",
      "definition" : "今天是幾年幾月幾日？__年__月__日",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-dementias-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q48174716')",
        "comment" : "來源欄位／題目：Questions[Question='今天是幾年幾月幾日？__年__月__日']"
      }]
    },
    {
      "id" : "HNDementiasModel.questions.q48174716.answer",
      "path" : "HNDementiasModel.questions.q48174716.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-2a3bd76ba6eb"
      },
      "mapping" : [{
        "identity" : "hn-dementias-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q48174716').item.where(linkId='Questions.q48174716.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='今天是幾年幾月幾日？__年__月__日'].Answer"
      }]
    },
    {
      "id" : "HNDementiasModel.questions.qe97f506c",
      "path" : "HNDementiasModel.questions.qe97f506c",
      "short" : "今天是星期幾？",
      "definition" : "今天是星期幾？",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-dementias-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qe97f506c')",
        "comment" : "來源欄位／題目：Questions[Question='今天是星期幾？']"
      }]
    },
    {
      "id" : "HNDementiasModel.questions.qe97f506c.answer",
      "path" : "HNDementiasModel.questions.qe97f506c.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-2a3bd76ba6eb"
      },
      "mapping" : [{
        "identity" : "hn-dementias-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qe97f506c').item.where(linkId='Questions.qe97f506c.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='今天是星期幾？'].Answer"
      }]
    },
    {
      "id" : "HNDementiasModel.questions.q6128d754",
      "path" : "HNDementiasModel.questions.q6128d754",
      "short" : "這裡是什麼地方？",
      "definition" : "這裡是什麼地方？",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-dementias-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q6128d754')",
        "comment" : "來源欄位／題目：Questions[Question='這裡是什麼地方？']"
      }]
    },
    {
      "id" : "HNDementiasModel.questions.q6128d754.answer",
      "path" : "HNDementiasModel.questions.q6128d754.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-2a3bd76ba6eb"
      },
      "mapping" : [{
        "identity" : "hn-dementias-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q6128d754').item.where(linkId='Questions.q6128d754.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='這裡是什麼地方？'].Answer"
      }]
    },
    {
      "id" : "HNDementiasModel.questions.qe0801d08",
      "path" : "HNDementiasModel.questions.qe0801d08",
      "short" : "你的電話號碼是幾號？",
      "definition" : "你的電話號碼是幾號？",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-dementias-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qe0801d08')",
        "comment" : "來源欄位／題目：Questions[Question='你的電話號碼是幾號？']"
      }]
    },
    {
      "id" : "HNDementiasModel.questions.qe0801d08.answer",
      "path" : "HNDementiasModel.questions.qe0801d08.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-2a3bd76ba6eb"
      },
      "mapping" : [{
        "identity" : "hn-dementias-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qe0801d08').item.where(linkId='Questions.qe0801d08.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='你的電話號碼是幾號？'].Answer"
      }]
    },
    {
      "id" : "HNDementiasModel.questions.qd40595f2",
      "path" : "HNDementiasModel.questions.qd40595f2",
      "short" : "你住在什麼地方？",
      "definition" : "你住在什麼地方？",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-dementias-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qd40595f2')",
        "comment" : "來源欄位／題目：Questions[Question='你住在什麼地方？']"
      }]
    },
    {
      "id" : "HNDementiasModel.questions.qd40595f2.answer",
      "path" : "HNDementiasModel.questions.qd40595f2.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-2a3bd76ba6eb"
      },
      "mapping" : [{
        "identity" : "hn-dementias-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qd40595f2').item.where(linkId='Questions.qd40595f2.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='你住在什麼地方？'].Answer"
      }]
    },
    {
      "id" : "HNDementiasModel.questions.q1ddb5b1c",
      "path" : "HNDementiasModel.questions.q1ddb5b1c",
      "short" : "你幾歲了？",
      "definition" : "你幾歲了？",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-dementias-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q1ddb5b1c')",
        "comment" : "來源欄位／題目：Questions[Question='你幾歲了？']"
      }]
    },
    {
      "id" : "HNDementiasModel.questions.q1ddb5b1c.answer",
      "path" : "HNDementiasModel.questions.q1ddb5b1c.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-2a3bd76ba6eb"
      },
      "mapping" : [{
        "identity" : "hn-dementias-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q1ddb5b1c').item.where(linkId='Questions.q1ddb5b1c.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='你幾歲了？'].Answer"
      }]
    },
    {
      "id" : "HNDementiasModel.questions.q995c979b",
      "path" : "HNDementiasModel.questions.q995c979b",
      "short" : "你的生日是哪一天？",
      "definition" : "你的生日是哪一天？",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-dementias-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q995c979b')",
        "comment" : "來源欄位／題目：Questions[Question='你的生日是哪一天？']"
      }]
    },
    {
      "id" : "HNDementiasModel.questions.q995c979b.answer",
      "path" : "HNDementiasModel.questions.q995c979b.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-2a3bd76ba6eb"
      },
      "mapping" : [{
        "identity" : "hn-dementias-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q995c979b').item.where(linkId='Questions.q995c979b.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='你的生日是哪一天？'].Answer"
      }]
    },
    {
      "id" : "HNDementiasModel.questions.q6df0269a",
      "path" : "HNDementiasModel.questions.q6df0269a",
      "short" : "現任總統是誰？",
      "definition" : "現任總統是誰？",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-dementias-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q6df0269a')",
        "comment" : "來源欄位／題目：Questions[Question='現任總統是誰？']"
      }]
    },
    {
      "id" : "HNDementiasModel.questions.q6df0269a.answer",
      "path" : "HNDementiasModel.questions.q6df0269a.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-2a3bd76ba6eb"
      },
      "mapping" : [{
        "identity" : "hn-dementias-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q6df0269a').item.where(linkId='Questions.q6df0269a.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='現任總統是誰？'].Answer"
      }]
    },
    {
      "id" : "HNDementiasModel.questions.q8a8a8021",
      "path" : "HNDementiasModel.questions.q8a8a8021",
      "short" : "前任總統是誰？",
      "definition" : "前任總統是誰？",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-dementias-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q8a8a8021')",
        "comment" : "來源欄位／題目：Questions[Question='前任總統是誰？']"
      }]
    },
    {
      "id" : "HNDementiasModel.questions.q8a8a8021.answer",
      "path" : "HNDementiasModel.questions.q8a8a8021.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-2a3bd76ba6eb"
      },
      "mapping" : [{
        "identity" : "hn-dementias-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q8a8a8021').item.where(linkId='Questions.q8a8a8021.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='前任總統是誰？'].Answer"
      }]
    },
    {
      "id" : "HNDementiasModel.questions.qb719d7b7",
      "path" : "HNDementiasModel.questions.qb719d7b7",
      "short" : "你媽媽叫什麼名字？",
      "definition" : "你媽媽叫什麼名字？",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-dementias-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qb719d7b7')",
        "comment" : "來源欄位／題目：Questions[Question='你媽媽叫什麼名字？']"
      }]
    },
    {
      "id" : "HNDementiasModel.questions.qb719d7b7.answer",
      "path" : "HNDementiasModel.questions.qb719d7b7.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-2a3bd76ba6eb"
      },
      "mapping" : [{
        "identity" : "hn-dementias-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qb719d7b7').item.where(linkId='Questions.qb719d7b7.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='你媽媽叫什麼名字？'].Answer"
      }]
    },
    {
      "id" : "HNDementiasModel.questions.q295d5a12",
      "path" : "HNDementiasModel.questions.q295d5a12",
      "short" : "從20 減3 開始算，一直減3 減下去。",
      "definition" : "從20 減3 開始算，一直減3 減下去。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-dementias-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q295d5a12')",
        "comment" : "來源欄位／題目：Questions[Question='從20 減3 開始算，一直減3 減下去。']"
      }]
    },
    {
      "id" : "HNDementiasModel.questions.q295d5a12.answer",
      "path" : "HNDementiasModel.questions.q295d5a12.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-2a3bd76ba6eb"
      },
      "mapping" : [{
        "identity" : "hn-dementias-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q295d5a12').item.where(linkId='Questions.q295d5a12.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='從20 減3 開始算，一直減3 減下去。'].Answer"
      }]
    },
    {
      "id" : "HNDementiasModel.isTemporary",
      "path" : "HNDementiasModel.isTemporary",
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
        "identity" : "hn-dementias-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='IsTemporary')",
        "comment" : "來源欄位／題目：IsTemporary"
      }]
    }]
  }
}

```
