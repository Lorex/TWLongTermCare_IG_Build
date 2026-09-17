# 居家護理－跌倒危險性評估邏輯模型 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－跌倒危險性評估邏輯模型**

## Logical Model: 居家護理－跌倒危險性評估邏輯模型 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNFallRisksModel | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNFallRisksModel |

 
描述居家護理跌倒危險性評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 

**Usages:**

* Use this Logical Model: [居家護理－全人評估 API 邏輯模型](StructureDefinition-HNEvaluationAPIModel.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNFallRisksModel.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNFallRisksModel.csv), [Excel](StructureDefinition-HNFallRisksModel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNFallRisksModel",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNFallRisksModel",
  "version" : "1.1.0",
  "name" : "HNFallRisksModel",
  "title" : "居家護理－跌倒危險性評估邏輯模型",
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
  "description" : "描述居家護理跌倒危險性評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "hn-fallrisks-fhir",
    "uri" : "http://ltc-ig.fhir.tw/StructureDefinition/HNFallRisksResponse",
    "name" : "居家護理－跌倒危險性評估欄位對應"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ltc-ig.fhir.tw/StructureDefinition/HNFallRisksModel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "HNFallRisksModel",
      "path" : "HNFallRisksModel",
      "short" : "居家護理－跌倒危險性評估邏輯模型",
      "definition" : "描述居家護理跌倒危險性評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。"
    },
    {
      "id" : "HNFallRisksModel.date",
      "path" : "HNFallRisksModel.date",
      "short" : "紀錄日期",
      "definition" : "紀錄日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-fallrisks-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Date')",
        "comment" : "來源欄位／題目：Date"
      }]
    },
    {
      "id" : "HNFallRisksModel.nurseID",
      "path" : "HNFallRisksModel.nurseID",
      "short" : "護理人員身分證字號",
      "definition" : "護理人員身分證字號",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-fallrisks-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='NurseID')",
        "comment" : "來源欄位／題目：NurseID"
      }]
    },
    {
      "id" : "HNFallRisksModel.questions",
      "path" : "HNFallRisksModel.questions",
      "short" : "評估項目",
      "definition" : "評估項目",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-fallrisks-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions')",
        "comment" : "來源欄位／題目：Questions"
      }]
    },
    {
      "id" : "HNFallRisksModel.questions.q2f552b4a",
      "path" : "HNFallRisksModel.questions.q2f552b4a",
      "short" : "年紀65歲以上",
      "definition" : "年紀65歲以上",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-fallrisks-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q2f552b4a')",
        "comment" : "來源欄位／題目：Questions[Question='年紀65歲以上']"
      }]
    },
    {
      "id" : "HNFallRisksModel.questions.q2f552b4a.answer",
      "path" : "HNFallRisksModel.questions.q2f552b4a.answer",
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
        "identity" : "hn-fallrisks-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q2f552b4a').item.where(linkId='Questions.q2f552b4a.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='年紀65歲以上'].Answer"
      }]
    },
    {
      "id" : "HNFallRisksModel.questions.q2f552b4a.options",
      "path" : "HNFallRisksModel.questions.q2f552b4a.options",
      "short" : "多選答案",
      "definition" : "多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-fallrisks-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q2f552b4a').item.where(linkId='Questions.q2f552b4a.Options')",
        "comment" : "來源欄位／題目：Questions[Question='年紀65歲以上'].Options"
      }]
    },
    {
      "id" : "HNFallRisksModel.questions.q2f552b4a.other",
      "path" : "HNFallRisksModel.questions.q2f552b4a.other",
      "short" : "其他用藥說明",
      "definition" : "其他用藥說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-fallrisks-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q2f552b4a').item.where(linkId='Questions.q2f552b4a.Other')",
        "comment" : "來源欄位／題目：Questions[Question='年紀65歲以上'].Other"
      }]
    },
    {
      "id" : "HNFallRisksModel.questions.q463dc41d",
      "path" : "HNFallRisksModel.questions.q463dc41d",
      "short" : "過去一年內曾跌倒",
      "definition" : "過去一年內曾跌倒",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-fallrisks-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q463dc41d')",
        "comment" : "來源欄位／題目：Questions[Question='過去一年內曾跌倒']"
      }]
    },
    {
      "id" : "HNFallRisksModel.questions.q463dc41d.answer",
      "path" : "HNFallRisksModel.questions.q463dc41d.answer",
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
        "identity" : "hn-fallrisks-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q463dc41d').item.where(linkId='Questions.q463dc41d.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='過去一年內曾跌倒'].Answer"
      }]
    },
    {
      "id" : "HNFallRisksModel.questions.q463dc41d.options",
      "path" : "HNFallRisksModel.questions.q463dc41d.options",
      "short" : "多選答案",
      "definition" : "多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-fallrisks-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q463dc41d').item.where(linkId='Questions.q463dc41d.Options')",
        "comment" : "來源欄位／題目：Questions[Question='過去一年內曾跌倒'].Options"
      }]
    },
    {
      "id" : "HNFallRisksModel.questions.q463dc41d.other",
      "path" : "HNFallRisksModel.questions.q463dc41d.other",
      "short" : "其他用藥說明",
      "definition" : "其他用藥說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-fallrisks-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q463dc41d').item.where(linkId='Questions.q463dc41d.Other')",
        "comment" : "來源欄位／題目：Questions[Question='過去一年內曾跌倒'].Other"
      }]
    },
    {
      "id" : "HNFallRisksModel.questions.qd680c277",
      "path" : "HNFallRisksModel.questions.qd680c277",
      "short" : "最近意識/認知出現異常",
      "definition" : "最近意識/認知出現異常",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-fallrisks-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qd680c277')",
        "comment" : "來源欄位／題目：Questions[Question='最近意識/認知出現異常']"
      }]
    },
    {
      "id" : "HNFallRisksModel.questions.qd680c277.answer",
      "path" : "HNFallRisksModel.questions.qd680c277.answer",
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
        "identity" : "hn-fallrisks-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qd680c277').item.where(linkId='Questions.qd680c277.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='最近意識/認知出現異常'].Answer"
      }]
    },
    {
      "id" : "HNFallRisksModel.questions.qd680c277.options",
      "path" : "HNFallRisksModel.questions.qd680c277.options",
      "short" : "多選答案",
      "definition" : "多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-fallrisks-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qd680c277').item.where(linkId='Questions.qd680c277.Options')",
        "comment" : "來源欄位／題目：Questions[Question='最近意識/認知出現異常'].Options"
      }]
    },
    {
      "id" : "HNFallRisksModel.questions.qd680c277.other",
      "path" : "HNFallRisksModel.questions.qd680c277.other",
      "short" : "其他用藥說明",
      "definition" : "其他用藥說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-fallrisks-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qd680c277').item.where(linkId='Questions.qd680c277.Other')",
        "comment" : "來源欄位／題目：Questions[Question='最近意識/認知出現異常'].Other"
      }]
    },
    {
      "id" : "HNFallRisksModel.questions.qc1c1fb2c",
      "path" : "HNFallRisksModel.questions.qc1c1fb2c",
      "short" : "活動功能異常",
      "definition" : "活動功能異常",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-fallrisks-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qc1c1fb2c')",
        "comment" : "來源欄位／題目：Questions[Question='活動功能異常']"
      }]
    },
    {
      "id" : "HNFallRisksModel.questions.qc1c1fb2c.answer",
      "path" : "HNFallRisksModel.questions.qc1c1fb2c.answer",
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
        "identity" : "hn-fallrisks-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qc1c1fb2c').item.where(linkId='Questions.qc1c1fb2c.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='活動功能異常'].Answer"
      }]
    },
    {
      "id" : "HNFallRisksModel.questions.qc1c1fb2c.options",
      "path" : "HNFallRisksModel.questions.qc1c1fb2c.options",
      "short" : "多選答案",
      "definition" : "多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-fallrisks-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qc1c1fb2c').item.where(linkId='Questions.qc1c1fb2c.Options')",
        "comment" : "來源欄位／題目：Questions[Question='活動功能異常'].Options"
      }]
    },
    {
      "id" : "HNFallRisksModel.questions.qc1c1fb2c.other",
      "path" : "HNFallRisksModel.questions.qc1c1fb2c.other",
      "short" : "其他用藥說明",
      "definition" : "其他用藥說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-fallrisks-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qc1c1fb2c').item.where(linkId='Questions.qc1c1fb2c.Other')",
        "comment" : "來源欄位／題目：Questions[Question='活動功能異常'].Other"
      }]
    },
    {
      "id" : "HNFallRisksModel.questions.q603c2de9",
      "path" : "HNFallRisksModel.questions.q603c2de9",
      "short" : "體能虛弱",
      "definition" : "體能虛弱",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-fallrisks-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q603c2de9')",
        "comment" : "來源欄位／題目：Questions[Question='體能虛弱']"
      }]
    },
    {
      "id" : "HNFallRisksModel.questions.q603c2de9.answer",
      "path" : "HNFallRisksModel.questions.q603c2de9.answer",
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
        "identity" : "hn-fallrisks-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q603c2de9').item.where(linkId='Questions.q603c2de9.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='體能虛弱'].Answer"
      }]
    },
    {
      "id" : "HNFallRisksModel.questions.q603c2de9.options",
      "path" : "HNFallRisksModel.questions.q603c2de9.options",
      "short" : "多選答案",
      "definition" : "多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-fallrisks-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q603c2de9').item.where(linkId='Questions.q603c2de9.Options')",
        "comment" : "來源欄位／題目：Questions[Question='體能虛弱'].Options"
      }]
    },
    {
      "id" : "HNFallRisksModel.questions.q603c2de9.other",
      "path" : "HNFallRisksModel.questions.q603c2de9.other",
      "short" : "其他用藥說明",
      "definition" : "其他用藥說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-fallrisks-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q603c2de9').item.where(linkId='Questions.q603c2de9.Other')",
        "comment" : "來源欄位／題目：Questions[Question='體能虛弱'].Other"
      }]
    },
    {
      "id" : "HNFallRisksModel.questions.qbf720dbc",
      "path" : "HNFallRisksModel.questions.qbf720dbc",
      "short" : "知覺障礙",
      "definition" : "知覺障礙",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-fallrisks-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qbf720dbc')",
        "comment" : "來源欄位／題目：Questions[Question='知覺障礙']"
      }]
    },
    {
      "id" : "HNFallRisksModel.questions.qbf720dbc.answer",
      "path" : "HNFallRisksModel.questions.qbf720dbc.answer",
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
        "identity" : "hn-fallrisks-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qbf720dbc').item.where(linkId='Questions.qbf720dbc.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='知覺障礙'].Answer"
      }]
    },
    {
      "id" : "HNFallRisksModel.questions.qbf720dbc.options",
      "path" : "HNFallRisksModel.questions.qbf720dbc.options",
      "short" : "多選答案",
      "definition" : "多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-fallrisks-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qbf720dbc').item.where(linkId='Questions.qbf720dbc.Options')",
        "comment" : "來源欄位／題目：Questions[Question='知覺障礙'].Options"
      }]
    },
    {
      "id" : "HNFallRisksModel.questions.qbf720dbc.other",
      "path" : "HNFallRisksModel.questions.qbf720dbc.other",
      "short" : "其他用藥說明",
      "definition" : "其他用藥說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-fallrisks-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qbf720dbc').item.where(linkId='Questions.qbf720dbc.Other')",
        "comment" : "來源欄位／題目：Questions[Question='知覺障礙'].Other"
      }]
    },
    {
      "id" : "HNFallRisksModel.questions.q6fa60520",
      "path" : "HNFallRisksModel.questions.q6fa60520",
      "short" : "暈眩/低血壓",
      "definition" : "暈眩/低血壓",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-fallrisks-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q6fa60520')",
        "comment" : "來源欄位／題目：Questions[Question='暈眩/低血壓']"
      }]
    },
    {
      "id" : "HNFallRisksModel.questions.q6fa60520.answer",
      "path" : "HNFallRisksModel.questions.q6fa60520.answer",
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
        "identity" : "hn-fallrisks-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q6fa60520').item.where(linkId='Questions.q6fa60520.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='暈眩/低血壓'].Answer"
      }]
    },
    {
      "id" : "HNFallRisksModel.questions.q6fa60520.options",
      "path" : "HNFallRisksModel.questions.q6fa60520.options",
      "short" : "多選答案",
      "definition" : "多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-fallrisks-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q6fa60520').item.where(linkId='Questions.q6fa60520.Options')",
        "comment" : "來源欄位／題目：Questions[Question='暈眩/低血壓'].Options"
      }]
    },
    {
      "id" : "HNFallRisksModel.questions.q6fa60520.other",
      "path" : "HNFallRisksModel.questions.q6fa60520.other",
      "short" : "其他用藥說明",
      "definition" : "其他用藥說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-fallrisks-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q6fa60520').item.where(linkId='Questions.q6fa60520.Other')",
        "comment" : "來源欄位／題目：Questions[Question='暈眩/低血壓'].Other"
      }]
    },
    {
      "id" : "HNFallRisksModel.questions.qe6e35ded",
      "path" : "HNFallRisksModel.questions.qe6e35ded",
      "short" : "使用藥物",
      "definition" : "使用藥物",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-fallrisks-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qe6e35ded')",
        "comment" : "來源欄位／題目：Questions[Question='使用藥物']"
      }]
    },
    {
      "id" : "HNFallRisksModel.questions.qe6e35ded.answer",
      "path" : "HNFallRisksModel.questions.qe6e35ded.answer",
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
        "identity" : "hn-fallrisks-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qe6e35ded').item.where(linkId='Questions.qe6e35ded.Answer')",
        "comment" : "來源欄位／題目：Questions[Question='使用藥物'].Answer"
      }]
    },
    {
      "id" : "HNFallRisksModel.questions.qe6e35ded.options",
      "path" : "HNFallRisksModel.questions.qe6e35ded.options",
      "short" : "多選答案",
      "definition" : "多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-fallrisks-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qe6e35ded').item.where(linkId='Questions.qe6e35ded.Options')",
        "comment" : "來源欄位／題目：Questions[Question='使用藥物'].Options"
      }]
    },
    {
      "id" : "HNFallRisksModel.questions.qe6e35ded.other",
      "path" : "HNFallRisksModel.questions.qe6e35ded.other",
      "short" : "其他用藥說明",
      "definition" : "其他用藥說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-fallrisks-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qe6e35ded').item.where(linkId='Questions.qe6e35ded.Other')",
        "comment" : "來源欄位／題目：Questions[Question='使用藥物'].Other"
      }]
    },
    {
      "id" : "HNFallRisksModel.isTemporary",
      "path" : "HNFallRisksModel.isTemporary",
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
        "identity" : "hn-fallrisks-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='IsTemporary')",
        "comment" : "來源欄位／題目：IsTemporary"
      }]
    }]
  }
}

```
