# 居家護理－疼痛評估邏輯模型 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－疼痛評估邏輯模型**

## Logical Model: 居家護理－疼痛評估邏輯模型 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNPainEvaluationsModel | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNPainEvaluationsModel |

 
描述居家護理疼痛評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 

**Usages:**

* Use this Logical Model: [居家護理－全人評估 API 邏輯模型](StructureDefinition-HNEvaluationAPIModel.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNPainEvaluationsModel.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNPainEvaluationsModel.csv), [Excel](StructureDefinition-HNPainEvaluationsModel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNPainEvaluationsModel",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNPainEvaluationsModel",
  "version" : "1.1.0",
  "name" : "HNPainEvaluationsModel",
  "title" : "居家護理－疼痛評估邏輯模型",
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
  "description" : "描述居家護理疼痛評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "hn-painevaluations-fhir",
    "uri" : "http://ltc-ig.fhir.tw/StructureDefinition/HNPainEvaluationsResponse",
    "name" : "居家護理－疼痛評估欄位對應"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ltc-ig.fhir.tw/StructureDefinition/HNPainEvaluationsModel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "HNPainEvaluationsModel",
      "path" : "HNPainEvaluationsModel",
      "short" : "居家護理－疼痛評估邏輯模型",
      "definition" : "描述居家護理疼痛評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。"
    },
    {
      "id" : "HNPainEvaluationsModel.date",
      "path" : "HNPainEvaluationsModel.date",
      "short" : "紀錄日期",
      "definition" : "紀錄日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-painevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Date')",
        "comment" : "來源欄位／題目：Date"
      }]
    },
    {
      "id" : "HNPainEvaluationsModel.nurseID",
      "path" : "HNPainEvaluationsModel.nurseID",
      "short" : "護理人員身分證字號",
      "definition" : "護理人員身分證字號",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-painevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='NurseID')",
        "comment" : "來源欄位／題目：NurseID"
      }]
    },
    {
      "id" : "HNPainEvaluationsModel.statement",
      "path" : "HNPainEvaluationsModel.statement",
      "short" : "無法評估原因或備註",
      "definition" : "無法評估原因或備註",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-painevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Statement')",
        "comment" : "來源欄位／題目：Statement"
      }]
    },
    {
      "id" : "HNPainEvaluationsModel.scale",
      "path" : "HNPainEvaluationsModel.scale",
      "short" : "言語狀態",
      "definition" : "言語狀態",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-a370027f399e"
      },
      "mapping" : [{
        "identity" : "hn-painevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Scale')",
        "comment" : "來源欄位／題目：Scale"
      }]
    },
    {
      "id" : "HNPainEvaluationsModel.questions",
      "path" : "HNPainEvaluationsModel.questions",
      "short" : "評估項目",
      "definition" : "評估項目",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-painevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions')",
        "comment" : "來源欄位／題目：Questions"
      }]
    },
    {
      "id" : "HNPainEvaluationsModel.questions.qc6065ee9",
      "path" : "HNPainEvaluationsModel.questions.qc6065ee9",
      "short" : "部位",
      "definition" : "部位",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-painevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qc6065ee9')",
        "comment" : "來源欄位／題目：Questions[Question='部位']"
      }]
    },
    {
      "id" : "HNPainEvaluationsModel.questions.qc6065ee9.answer",
      "path" : "HNPainEvaluationsModel.questions.qc6065ee9.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-painevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qc6065ee9').item.where(linkId='Questions.qc6065ee9.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='部位'].Answer"
      }]
    },
    {
      "id" : "HNPainEvaluationsModel.questions.qabb84b45",
      "path" : "HNPainEvaluationsModel.questions.qabb84b45",
      "short" : "分數",
      "definition" : "分數",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-painevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qabb84b45')",
        "comment" : "來源欄位／題目：Questions[Question='分數']"
      }]
    },
    {
      "id" : "HNPainEvaluationsModel.questions.qabb84b45.answer",
      "path" : "HNPainEvaluationsModel.questions.qabb84b45.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-painevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qabb84b45').item.where(linkId='Questions.qabb84b45.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='分數'].Answer"
      }]
    },
    {
      "id" : "HNPainEvaluationsModel.questions.q09558b2c",
      "path" : "HNPainEvaluationsModel.questions.q09558b2c",
      "short" : "時間",
      "definition" : "時間",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-painevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q09558b2c')",
        "comment" : "來源欄位／題目：Questions[Question='時間']"
      }]
    },
    {
      "id" : "HNPainEvaluationsModel.questions.q09558b2c.answer",
      "path" : "HNPainEvaluationsModel.questions.q09558b2c.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-painevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q09558b2c').item.where(linkId='Questions.q09558b2c.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='時間'].Answer"
      }]
    },
    {
      "id" : "HNPainEvaluationsModel.questions.q62ecf378",
      "path" : "HNPainEvaluationsModel.questions.q62ecf378",
      "short" : "性質",
      "definition" : "性質",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-painevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q62ecf378')",
        "comment" : "來源欄位／題目：Questions[Question='性質']"
      }]
    },
    {
      "id" : "HNPainEvaluationsModel.questions.q62ecf378.answer",
      "path" : "HNPainEvaluationsModel.questions.q62ecf378.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-painevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q62ecf378').item.where(linkId='Questions.q62ecf378.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='性質'].Answer"
      }]
    },
    {
      "id" : "HNPainEvaluationsModel.questions.q3ae9ab7d",
      "path" : "HNPainEvaluationsModel.questions.q3ae9ab7d",
      "short" : "備註",
      "definition" : "備註",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-painevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q3ae9ab7d')",
        "comment" : "來源欄位／題目：Questions[Question='備註']"
      }]
    },
    {
      "id" : "HNPainEvaluationsModel.questions.q3ae9ab7d.answer",
      "path" : "HNPainEvaluationsModel.questions.q3ae9ab7d.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-painevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q3ae9ab7d').item.where(linkId='Questions.q3ae9ab7d.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='備註'].Answer"
      }]
    },
    {
      "id" : "HNPainEvaluationsModel.questionsNot",
      "path" : "HNPainEvaluationsModel.questionsNot",
      "short" : "無法言語評估項目",
      "definition" : "無法言語評估項目",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-painevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='QuestionsNot')",
        "comment" : "來源欄位／題目：QuestionsNot"
      }]
    },
    {
      "id" : "HNPainEvaluationsModel.questionsNot.qd14007fb",
      "path" : "HNPainEvaluationsModel.questionsNot.qd14007fb",
      "short" : "呼吸型態",
      "definition" : "呼吸型態",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-painevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='QuestionsNot').item.where(linkId='QuestionsNot.qd14007fb')",
        "comment" : "來源欄位／題目：QuestionsNot[Question='呼吸型態']"
      }]
    },
    {
      "id" : "HNPainEvaluationsModel.questionsNot.qd14007fb.answer",
      "path" : "HNPainEvaluationsModel.questionsNot.qd14007fb.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-painevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='QuestionsNot').item.where(linkId='QuestionsNot.qd14007fb').item.where(linkId='QuestionsNot.qd14007fb.Answer')",
        "comment" : "來源欄位／題目：QuestionsNot[Question='呼吸型態'].Answer"
      }]
    },
    {
      "id" : "HNPainEvaluationsModel.questionsNot.qe42750dd",
      "path" : "HNPainEvaluationsModel.questionsNot.qe42750dd",
      "short" : "不舒服、負向情緒的發聲",
      "definition" : "不舒服、負向情緒的發聲",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-painevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='QuestionsNot').item.where(linkId='QuestionsNot.qe42750dd')",
        "comment" : "來源欄位／題目：QuestionsNot[Question='不舒服、負向情緒的發聲']"
      }]
    },
    {
      "id" : "HNPainEvaluationsModel.questionsNot.qe42750dd.answer",
      "path" : "HNPainEvaluationsModel.questionsNot.qe42750dd.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-painevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='QuestionsNot').item.where(linkId='QuestionsNot.qe42750dd').item.where(linkId='QuestionsNot.qe42750dd.Answer')",
        "comment" : "來源欄位／題目：QuestionsNot[Question='不舒服、負向情緒的發聲'].Answer"
      }]
    },
    {
      "id" : "HNPainEvaluationsModel.questionsNot.q3e683be4",
      "path" : "HNPainEvaluationsModel.questionsNot.q3e683be4",
      "short" : "臉部表情",
      "definition" : "臉部表情",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-painevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='QuestionsNot').item.where(linkId='QuestionsNot.q3e683be4')",
        "comment" : "來源欄位／題目：QuestionsNot[Question='臉部表情']"
      }]
    },
    {
      "id" : "HNPainEvaluationsModel.questionsNot.q3e683be4.answer",
      "path" : "HNPainEvaluationsModel.questionsNot.q3e683be4.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-painevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='QuestionsNot').item.where(linkId='QuestionsNot.q3e683be4').item.where(linkId='QuestionsNot.q3e683be4.Answer')",
        "comment" : "來源欄位／題目：QuestionsNot[Question='臉部表情'].Answer"
      }]
    },
    {
      "id" : "HNPainEvaluationsModel.questionsNot.q463fccdc",
      "path" : "HNPainEvaluationsModel.questionsNot.q463fccdc",
      "short" : "肢體語言",
      "definition" : "肢體語言",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-painevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='QuestionsNot').item.where(linkId='QuestionsNot.q463fccdc')",
        "comment" : "來源欄位／題目：QuestionsNot[Question='肢體語言']"
      }]
    },
    {
      "id" : "HNPainEvaluationsModel.questionsNot.q463fccdc.answer",
      "path" : "HNPainEvaluationsModel.questionsNot.q463fccdc.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-painevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='QuestionsNot').item.where(linkId='QuestionsNot.q463fccdc').item.where(linkId='QuestionsNot.q463fccdc.Answer')",
        "comment" : "來源欄位／題目：QuestionsNot[Question='肢體語言'].Answer"
      }]
    },
    {
      "id" : "HNPainEvaluationsModel.questionsNot.q9f3bcfc5",
      "path" : "HNPainEvaluationsModel.questionsNot.q9f3bcfc5",
      "short" : "可安撫程度",
      "definition" : "可安撫程度",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-painevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='QuestionsNot').item.where(linkId='QuestionsNot.q9f3bcfc5')",
        "comment" : "來源欄位／題目：QuestionsNot[Question='可安撫程度']"
      }]
    },
    {
      "id" : "HNPainEvaluationsModel.questionsNot.q9f3bcfc5.answer",
      "path" : "HNPainEvaluationsModel.questionsNot.q9f3bcfc5.answer",
      "short" : "評估答案",
      "definition" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-painevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='QuestionsNot').item.where(linkId='QuestionsNot.q9f3bcfc5').item.where(linkId='QuestionsNot.q9f3bcfc5.Answer')",
        "comment" : "來源欄位／題目：QuestionsNot[Question='可安撫程度'].Answer"
      }]
    },
    {
      "id" : "HNPainEvaluationsModel.isTemporary",
      "path" : "HNPainEvaluationsModel.isTemporary",
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
        "identity" : "hn-painevaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='IsTemporary')",
        "comment" : "來源欄位／題目：IsTemporary"
      }]
    }]
  }
}

```
