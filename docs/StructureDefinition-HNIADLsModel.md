# 居家護理－工具性日常生活活動功能評估邏輯模型 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－工具性日常生活活動功能評估邏輯模型**

## Logical Model: 居家護理－工具性日常生活活動功能評估邏輯模型 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNIADLsModel | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNIADLsModel |

 
描述居家護理工具性日常生活活動功能評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 

**Usages:**

* Use this Logical Model: [居家護理－全人評估 API 邏輯模型](StructureDefinition-HNEvaluationAPIModel.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNIADLsModel.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNIADLsModel.csv), [Excel](StructureDefinition-HNIADLsModel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNIADLsModel",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNIADLsModel",
  "version" : "1.1.0",
  "name" : "HNIADLsModel",
  "title" : "居家護理－工具性日常生活活動功能評估邏輯模型",
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
  "description" : "描述居家護理工具性日常生活活動功能評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "hn-iadls-fhir",
    "uri" : "http://ltc-ig.fhir.tw/StructureDefinition/HNIADLsResponse",
    "name" : "居家護理－工具性日常生活活動功能評估欄位對應"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ltc-ig.fhir.tw/StructureDefinition/HNIADLsModel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "HNIADLsModel",
      "path" : "HNIADLsModel",
      "short" : "居家護理－工具性日常生活活動功能評估邏輯模型",
      "definition" : "描述居家護理工具性日常生活活動功能評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。"
    },
    {
      "id" : "HNIADLsModel.date",
      "path" : "HNIADLsModel.date",
      "short" : "紀錄日期",
      "definition" : "紀錄日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-iadls-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Date')",
        "comment" : "來源欄位／題目：Date"
      }]
    },
    {
      "id" : "HNIADLsModel.nurseID",
      "path" : "HNIADLsModel.nurseID",
      "short" : "護理人員身分證字號",
      "definition" : "護理人員身分證字號",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-iadls-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='NurseID')",
        "comment" : "來源欄位／題目：NurseID"
      }]
    },
    {
      "id" : "HNIADLsModel.questions",
      "path" : "HNIADLsModel.questions",
      "short" : "評估項目",
      "definition" : "評估項目",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-iadls-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions')",
        "comment" : "來源欄位／題目：Questions"
      }]
    },
    {
      "id" : "HNIADLsModel.questions.q588e1a8f",
      "path" : "HNIADLsModel.questions.q588e1a8f",
      "short" : "購物",
      "definition" : "購物",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-iadls-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q588e1a8f')",
        "comment" : "來源欄位／題目：Questions[Question='購物']"
      }]
    },
    {
      "id" : "HNIADLsModel.questions.q588e1a8f.answer",
      "path" : "HNIADLsModel.questions.q588e1a8f.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-cbfa2194bae7"
      },
      "mapping" : [{
        "identity" : "hn-iadls-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q588e1a8f').item.where(linkId='Questions.q588e1a8f.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='購物'].Answer"
      }]
    },
    {
      "id" : "HNIADLsModel.questions.q1652b964",
      "path" : "HNIADLsModel.questions.q1652b964",
      "short" : "家務",
      "definition" : "家務",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-iadls-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q1652b964')",
        "comment" : "來源欄位／題目：Questions[Question='家務']"
      }]
    },
    {
      "id" : "HNIADLsModel.questions.q1652b964.answer",
      "path" : "HNIADLsModel.questions.q1652b964.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-b455f8b9ce05"
      },
      "mapping" : [{
        "identity" : "hn-iadls-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q1652b964').item.where(linkId='Questions.q1652b964.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='家務'].Answer"
      }]
    },
    {
      "id" : "HNIADLsModel.questions.qd5905863",
      "path" : "HNIADLsModel.questions.qd5905863",
      "short" : "理財",
      "definition" : "理財",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-iadls-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qd5905863')",
        "comment" : "來源欄位／題目：Questions[Question='理財']"
      }]
    },
    {
      "id" : "HNIADLsModel.questions.qd5905863.answer",
      "path" : "HNIADLsModel.questions.qd5905863.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-41cb9f76208c"
      },
      "mapping" : [{
        "identity" : "hn-iadls-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qd5905863').item.where(linkId='Questions.qd5905863.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='理財'].Answer"
      }]
    },
    {
      "id" : "HNIADLsModel.questions.qdb0b2a30",
      "path" : "HNIADLsModel.questions.qdb0b2a30",
      "short" : "備食",
      "definition" : "備食",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-iadls-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qdb0b2a30')",
        "comment" : "來源欄位／題目：Questions[Question='備食']"
      }]
    },
    {
      "id" : "HNIADLsModel.questions.qdb0b2a30.answer",
      "path" : "HNIADLsModel.questions.qdb0b2a30.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-15ba9c15ead1"
      },
      "mapping" : [{
        "identity" : "hn-iadls-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qdb0b2a30').item.where(linkId='Questions.qdb0b2a30.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='備食'].Answer"
      }]
    },
    {
      "id" : "HNIADLsModel.questions.q578f5fe3",
      "path" : "HNIADLsModel.questions.q578f5fe3",
      "short" : "交通",
      "definition" : "交通",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-iadls-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q578f5fe3')",
        "comment" : "來源欄位／題目：Questions[Question='交通']"
      }]
    },
    {
      "id" : "HNIADLsModel.questions.q578f5fe3.answer",
      "path" : "HNIADLsModel.questions.q578f5fe3.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-543807b1d856"
      },
      "mapping" : [{
        "identity" : "hn-iadls-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q578f5fe3').item.where(linkId='Questions.q578f5fe3.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='交通'].Answer"
      }]
    },
    {
      "id" : "HNIADLsModel.questions.q7177787c",
      "path" : "HNIADLsModel.questions.q7177787c",
      "short" : "電話",
      "definition" : "電話",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-iadls-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q7177787c')",
        "comment" : "來源欄位／題目：Questions[Question='電話']"
      }]
    },
    {
      "id" : "HNIADLsModel.questions.q7177787c.answer",
      "path" : "HNIADLsModel.questions.q7177787c.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-fa9ab3cef6b1"
      },
      "mapping" : [{
        "identity" : "hn-iadls-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q7177787c').item.where(linkId='Questions.q7177787c.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='電話'].Answer"
      }]
    },
    {
      "id" : "HNIADLsModel.questions.qbd97434e",
      "path" : "HNIADLsModel.questions.qbd97434e",
      "short" : "洗衣",
      "definition" : "洗衣",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-iadls-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qbd97434e')",
        "comment" : "來源欄位／題目：Questions[Question='洗衣']"
      }]
    },
    {
      "id" : "HNIADLsModel.questions.qbd97434e.answer",
      "path" : "HNIADLsModel.questions.qbd97434e.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-3435e7a5a84d"
      },
      "mapping" : [{
        "identity" : "hn-iadls-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qbd97434e').item.where(linkId='Questions.qbd97434e.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='洗衣'].Answer"
      }]
    },
    {
      "id" : "HNIADLsModel.questions.q62f790cc",
      "path" : "HNIADLsModel.questions.q62f790cc",
      "short" : "服藥",
      "definition" : "服藥",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-iadls-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q62f790cc')",
        "comment" : "來源欄位／題目：Questions[Question='服藥']"
      }]
    },
    {
      "id" : "HNIADLsModel.questions.q62f790cc.answer",
      "path" : "HNIADLsModel.questions.q62f790cc.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-1c0dbbd93870"
      },
      "mapping" : [{
        "identity" : "hn-iadls-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q62f790cc').item.where(linkId='Questions.q62f790cc.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='服藥'].Answer"
      }]
    },
    {
      "id" : "HNIADLsModel.isTemporary",
      "path" : "HNIADLsModel.isTemporary",
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
        "identity" : "hn-iadls-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='IsTemporary')",
        "comment" : "來源欄位／題目：IsTemporary"
      }]
    }]
  }
}

```
