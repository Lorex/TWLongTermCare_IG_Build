# 居家護理－壓力性損傷危險評估邏輯模型 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－壓力性損傷危險評估邏輯模型**

## Logical Model: 居家護理－壓力性損傷危險評估邏輯模型 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNPressureInjuriesModel | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNPressureInjuriesModel |

 
描述居家護理壓力性損傷危險評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 

**Usages:**

* Use this Logical Model: [居家護理－全人評估 API 邏輯模型](StructureDefinition-HNEvaluationAPIModel.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNPressureInjuriesModel.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNPressureInjuriesModel.csv), [Excel](StructureDefinition-HNPressureInjuriesModel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNPressureInjuriesModel",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNPressureInjuriesModel",
  "version" : "1.1.0",
  "name" : "HNPressureInjuriesModel",
  "title" : "居家護理－壓力性損傷危險評估邏輯模型",
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
  "description" : "描述居家護理壓力性損傷危險評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "hn-pressureinjuries-fhir",
    "uri" : "http://ltc-ig.fhir.tw/StructureDefinition/HNPressureInjuriesResponse",
    "name" : "居家護理－壓力性損傷危險評估欄位對應"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ltc-ig.fhir.tw/StructureDefinition/HNPressureInjuriesModel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "HNPressureInjuriesModel",
      "path" : "HNPressureInjuriesModel",
      "short" : "居家護理－壓力性損傷危險評估邏輯模型",
      "definition" : "描述居家護理壓力性損傷危險評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。"
    },
    {
      "id" : "HNPressureInjuriesModel.date",
      "path" : "HNPressureInjuriesModel.date",
      "short" : "紀錄日期",
      "definition" : "紀錄日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-pressureinjuries-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Date')",
        "comment" : "來源欄位／題目：Date"
      }]
    },
    {
      "id" : "HNPressureInjuriesModel.nurseID",
      "path" : "HNPressureInjuriesModel.nurseID",
      "short" : "護理人員身分證字號",
      "definition" : "護理人員身分證字號",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-pressureinjuries-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='NurseID')",
        "comment" : "來源欄位／題目：NurseID"
      }]
    },
    {
      "id" : "HNPressureInjuriesModel.questions",
      "path" : "HNPressureInjuriesModel.questions",
      "short" : "評估項目",
      "definition" : "評估項目",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-pressureinjuries-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions')",
        "comment" : "來源欄位／題目：Questions"
      }]
    },
    {
      "id" : "HNPressureInjuriesModel.questions.q77f132a8",
      "path" : "HNPressureInjuriesModel.questions.q77f132a8",
      "short" : "知覺感受",
      "definition" : "知覺感受",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-pressureinjuries-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q77f132a8')",
        "comment" : "來源欄位／題目：Questions[Question='知覺感受']"
      }]
    },
    {
      "id" : "HNPressureInjuriesModel.questions.q77f132a8.answer",
      "path" : "HNPressureInjuriesModel.questions.q77f132a8.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-66dfb92df102"
      },
      "mapping" : [{
        "identity" : "hn-pressureinjuries-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q77f132a8').item.where(linkId='Questions.q77f132a8.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='知覺感受'].Answer"
      }]
    },
    {
      "id" : "HNPressureInjuriesModel.questions.qb093cea2",
      "path" : "HNPressureInjuriesModel.questions.qb093cea2",
      "short" : "潮溼程度",
      "definition" : "潮溼程度",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-pressureinjuries-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qb093cea2')",
        "comment" : "來源欄位／題目：Questions[Question='潮溼程度']"
      }]
    },
    {
      "id" : "HNPressureInjuriesModel.questions.qb093cea2.answer",
      "path" : "HNPressureInjuriesModel.questions.qb093cea2.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-548098d5ace2"
      },
      "mapping" : [{
        "identity" : "hn-pressureinjuries-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qb093cea2').item.where(linkId='Questions.qb093cea2.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='潮溼程度'].Answer"
      }]
    },
    {
      "id" : "HNPressureInjuriesModel.questions.qda68c82c",
      "path" : "HNPressureInjuriesModel.questions.qda68c82c",
      "short" : "活動能力",
      "definition" : "活動能力",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-pressureinjuries-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qda68c82c')",
        "comment" : "來源欄位／題目：Questions[Question='活動能力']"
      }]
    },
    {
      "id" : "HNPressureInjuriesModel.questions.qda68c82c.answer",
      "path" : "HNPressureInjuriesModel.questions.qda68c82c.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-78444472aa70"
      },
      "mapping" : [{
        "identity" : "hn-pressureinjuries-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qda68c82c').item.where(linkId='Questions.qda68c82c.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='活動能力'].Answer"
      }]
    },
    {
      "id" : "HNPressureInjuriesModel.questions.qb03d6393",
      "path" : "HNPressureInjuriesModel.questions.qb03d6393",
      "short" : "移動能力",
      "definition" : "移動能力",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-pressureinjuries-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qb03d6393')",
        "comment" : "來源欄位／題目：Questions[Question='移動能力']"
      }]
    },
    {
      "id" : "HNPressureInjuriesModel.questions.qb03d6393.answer",
      "path" : "HNPressureInjuriesModel.questions.qb03d6393.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-f466b3393017"
      },
      "mapping" : [{
        "identity" : "hn-pressureinjuries-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qb03d6393').item.where(linkId='Questions.qb03d6393.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='移動能力'].Answer"
      }]
    },
    {
      "id" : "HNPressureInjuriesModel.questions.q68dfbe5f",
      "path" : "HNPressureInjuriesModel.questions.q68dfbe5f",
      "short" : "營養攝取",
      "definition" : "營養攝取",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-pressureinjuries-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q68dfbe5f')",
        "comment" : "來源欄位／題目：Questions[Question='營養攝取']"
      }]
    },
    {
      "id" : "HNPressureInjuriesModel.questions.q68dfbe5f.answer",
      "path" : "HNPressureInjuriesModel.questions.q68dfbe5f.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-9d4f84a14066"
      },
      "mapping" : [{
        "identity" : "hn-pressureinjuries-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q68dfbe5f').item.where(linkId='Questions.q68dfbe5f.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='營養攝取'].Answer"
      }]
    },
    {
      "id" : "HNPressureInjuriesModel.questions.q52107185",
      "path" : "HNPressureInjuriesModel.questions.q52107185",
      "short" : "摩擦力/剪力",
      "definition" : "摩擦力/剪力",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-pressureinjuries-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q52107185')",
        "comment" : "來源欄位／題目：Questions[Question='摩擦力/剪力']"
      }]
    },
    {
      "id" : "HNPressureInjuriesModel.questions.q52107185.answer",
      "path" : "HNPressureInjuriesModel.questions.q52107185.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-bcd0a25d02b9"
      },
      "mapping" : [{
        "identity" : "hn-pressureinjuries-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q52107185').item.where(linkId='Questions.q52107185.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='摩擦力/剪力'].Answer"
      }]
    },
    {
      "id" : "HNPressureInjuriesModel.isTemporary",
      "path" : "HNPressureInjuriesModel.isTemporary",
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
        "identity" : "hn-pressureinjuries-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='IsTemporary')",
        "comment" : "來源欄位／題目：IsTemporary"
      }]
    }]
  }
}

```
