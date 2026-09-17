# 居家護理－身體評估評估表單 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－身體評估評估表單**

## Resource Profile: 居家護理－身體評估評估表單 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNBodyEvaluationsResponse | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNBodyEvaluationsResponse |

 
記錄身體評估評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。 

**Usages:**

* Examples for this Profile: [QuestionnaireResponse/hn-bodyevaluations-example](QuestionnaireResponse-hn-bodyevaluations-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNBodyEvaluationsResponse.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNBodyEvaluationsResponse.csv), [Excel](StructureDefinition-HNBodyEvaluationsResponse.xlsx), [Schematron](StructureDefinition-HNBodyEvaluationsResponse.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNBodyEvaluationsResponse",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNBodyEvaluationsResponse",
  "version" : "1.1.0",
  "name" : "HNBodyEvaluationsResponse",
  "title" : "居家護理－身體評估評估表單",
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
  "description" : "記錄身體評估評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "QuestionnaireResponse",
  "baseDefinition" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponse",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "QuestionnaireResponse",
      "path" : "QuestionnaireResponse",
      "constraint" : [{
        "key" : "hn-bodyevaluations-1",
        "severity" : "error",
        "human" : "暫存填是時，表單狀態必須為 in-progress。",
        "expression" : "item.where(linkId='IsTemporary').answer.value.ofType(Coding).where(code='cb5141d3d19e9').exists() implies status='in-progress'",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNBodyEvaluationsResponse"
      },
      {
        "key" : "hn-bodyevaluations-2",
        "severity" : "error",
        "human" : "暫存填否時，表單狀態必須為 completed 或 amended。",
        "expression" : "item.where(linkId='IsTemporary').answer.value.ofType(Coding).where(code='c0c70665b6eb6').exists() implies (status='completed' or status='amended')",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNBodyEvaluationsResponse"
      }]
    },
    {
      "id" : "QuestionnaireResponse.extension",
      "path" : "QuestionnaireResponse.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.extension:episode",
      "path" : "QuestionnaireResponse.extension",
      "sliceName" : "episode",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/ExtHNEpisode"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.questionnaire",
      "path" : "QuestionnaireResponse.questionnaire",
      "min" : 1,
      "patternCanonical" : "http://ltc-ig.fhir.tw/Questionnaire/hn-bodyevaluations"
    },
    {
      "id" : "QuestionnaireResponse.item",
      "path" : "QuestionnaireResponse.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 3
    },
    {
      "id" : "QuestionnaireResponse.item:Date",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "Date",
      "short" : "紀錄日期",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Date.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "Date"
    },
    {
      "id" : "QuestionnaireResponse.item:Date.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Date.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:Date.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:NurseID",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "NurseID",
      "short" : "護理人員身分證字號",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:NurseID.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "NurseID"
    },
    {
      "id" : "QuestionnaireResponse.item:NurseID.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:NurseID.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 10
    },
    {
      "id" : "QuestionnaireResponse.item:NurseID.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "BodyQuestions",
      "short" : "評估項目",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "BodyQuestions"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item",
      "path" : "QuestionnaireResponse.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 50
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3d5455cd",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q3d5455cd",
      "short" : "睜眼",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3d5455cd.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.q3d5455cd"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3d5455cd.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3d5455cd.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3d5455cd.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3d5455cd.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q3d5455cd.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3d5455cd.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3d5455cd.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-6380f9a50deb"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3d5455cd.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3d5455cd.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3d5455cd.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q3d5455cd.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3d5455cd.item:MultipleAnswer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3d5455cd.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 1000
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3d5455cd.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3d5455cd.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3d5455cd.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q3d5455cd.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3d5455cd.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3d5455cd.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3d5455cd.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q78be3cfc",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q78be3cfc",
      "short" : "語言",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q78be3cfc.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.q78be3cfc"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q78be3cfc.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q78be3cfc.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q78be3cfc.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q78be3cfc.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q78be3cfc.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q78be3cfc.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q78be3cfc.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d2f289370ed0"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q78be3cfc.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q78be3cfc.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q78be3cfc.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q78be3cfc.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q78be3cfc.item:MultipleAnswer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q78be3cfc.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 1000
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q78be3cfc.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q78be3cfc.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q78be3cfc.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q78be3cfc.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q78be3cfc.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q78be3cfc.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q78be3cfc.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd5d3ea28",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "qd5d3ea28",
      "short" : "運動",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd5d3ea28.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.qd5d3ea28"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd5d3ea28.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd5d3ea28.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd5d3ea28.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd5d3ea28.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.qd5d3ea28.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd5d3ea28.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd5d3ea28.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-784e3567e13b"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd5d3ea28.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd5d3ea28.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd5d3ea28.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.qd5d3ea28.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd5d3ea28.item:MultipleAnswer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd5d3ea28.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 1000
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd5d3ea28.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd5d3ea28.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd5d3ea28.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.qd5d3ea28.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd5d3ea28.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd5d3ea28.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd5d3ea28.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q9999e6f5",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q9999e6f5",
      "short" : "視力",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q9999e6f5.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.q9999e6f5"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q9999e6f5.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q9999e6f5.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q9999e6f5.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q9999e6f5.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q9999e6f5.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q9999e6f5.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q9999e6f5.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-ef4daeacd99a"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q9999e6f5.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q9999e6f5.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q9999e6f5.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q9999e6f5.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q9999e6f5.item:MultipleAnswer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q9999e6f5.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 1000
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q9999e6f5.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q9999e6f5.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q9999e6f5.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q9999e6f5.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q9999e6f5.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q9999e6f5.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q9999e6f5.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcd3cc2c1",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "qcd3cc2c1",
      "short" : "視力-部位",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcd3cc2c1.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.qcd3cc2c1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcd3cc2c1.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcd3cc2c1.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcd3cc2c1.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcd3cc2c1.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.qcd3cc2c1.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcd3cc2c1.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcd3cc2c1.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcd3cc2c1.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcd3cc2c1.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcd3cc2c1.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.qcd3cc2c1.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcd3cc2c1.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-2fd20e6427ff"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcd3cc2c1.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcd3cc2c1.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcd3cc2c1.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.qcd3cc2c1.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcd3cc2c1.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcd3cc2c1.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcd3cc2c1.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q99290406",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q99290406",
      "short" : "視力-影響日常活動",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q99290406.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.q99290406"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q99290406.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q99290406.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q99290406.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q99290406.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q99290406.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q99290406.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q99290406.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q99290406.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q99290406.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q99290406.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q99290406.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q99290406.item:MultipleAnswer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q99290406.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 1000
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q99290406.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q99290406.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q99290406.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q99290406.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q99290406.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q99290406.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q99290406.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q24eedc1b",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q24eedc1b",
      "short" : "視力-輔具",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q24eedc1b.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.q24eedc1b"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q24eedc1b.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q24eedc1b.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q24eedc1b.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q24eedc1b.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q24eedc1b.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q24eedc1b.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q24eedc1b.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-49fe20230ec3"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q24eedc1b.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q24eedc1b.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q24eedc1b.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q24eedc1b.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q24eedc1b.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-afadc3bb2a88"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q24eedc1b.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q24eedc1b.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q24eedc1b.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q24eedc1b.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q24eedc1b.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q24eedc1b.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q24eedc1b.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6215056f",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q6215056f",
      "short" : "聽力",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6215056f.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.q6215056f"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6215056f.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6215056f.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6215056f.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6215056f.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q6215056f.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6215056f.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6215056f.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-ef4daeacd99a"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6215056f.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6215056f.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6215056f.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q6215056f.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6215056f.item:MultipleAnswer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6215056f.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 1000
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6215056f.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6215056f.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6215056f.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q6215056f.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6215056f.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6215056f.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6215056f.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1678a5f1",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q1678a5f1",
      "short" : "聽力-部位",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1678a5f1.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.q1678a5f1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1678a5f1.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1678a5f1.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1678a5f1.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1678a5f1.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q1678a5f1.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1678a5f1.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1678a5f1.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1678a5f1.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1678a5f1.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1678a5f1.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q1678a5f1.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1678a5f1.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-7bc89358fe37"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1678a5f1.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1678a5f1.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1678a5f1.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q1678a5f1.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1678a5f1.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1678a5f1.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1678a5f1.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q93005aaa",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q93005aaa",
      "short" : "聽力-影響日常活動",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q93005aaa.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.q93005aaa"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q93005aaa.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q93005aaa.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q93005aaa.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q93005aaa.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q93005aaa.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q93005aaa.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q93005aaa.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q93005aaa.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q93005aaa.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q93005aaa.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q93005aaa.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q93005aaa.item:MultipleAnswer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q93005aaa.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 1000
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q93005aaa.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q93005aaa.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q93005aaa.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q93005aaa.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q93005aaa.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q93005aaa.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q93005aaa.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q2386d883",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q2386d883",
      "short" : "聽力-輔具",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q2386d883.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.q2386d883"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q2386d883.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q2386d883.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q2386d883.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q2386d883.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q2386d883.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q2386d883.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q2386d883.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-49fe20230ec3"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q2386d883.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q2386d883.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q2386d883.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q2386d883.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q2386d883.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-f0b4522906b6"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q2386d883.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q2386d883.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q2386d883.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q2386d883.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q2386d883.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q2386d883.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q2386d883.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q306e4676",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q306e4676",
      "short" : "溝通",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q306e4676.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.q306e4676"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q306e4676.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q306e4676.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q306e4676.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q306e4676.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q306e4676.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q306e4676.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q306e4676.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-0655870f5454"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q306e4676.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q306e4676.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q306e4676.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q306e4676.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q306e4676.item:MultipleAnswer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q306e4676.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 1000
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q306e4676.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q306e4676.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q306e4676.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q306e4676.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q306e4676.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q306e4676.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q306e4676.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q63b2fbbe",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q63b2fbbe",
      "short" : "溝通-影響日常活動",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q63b2fbbe.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.q63b2fbbe"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q63b2fbbe.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q63b2fbbe.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q63b2fbbe.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q63b2fbbe.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q63b2fbbe.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q63b2fbbe.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q63b2fbbe.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d9301962abbf"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q63b2fbbe.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q63b2fbbe.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q63b2fbbe.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q63b2fbbe.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q63b2fbbe.item:MultipleAnswer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q63b2fbbe.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 1000
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q63b2fbbe.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q63b2fbbe.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q63b2fbbe.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q63b2fbbe.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q63b2fbbe.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q63b2fbbe.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q63b2fbbe.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3288f369",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q3288f369",
      "short" : "說話",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3288f369.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.q3288f369"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3288f369.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3288f369.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3288f369.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3288f369.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q3288f369.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3288f369.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3288f369.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-3330cbe2f937"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3288f369.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3288f369.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3288f369.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q3288f369.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3288f369.item:MultipleAnswer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3288f369.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 1000
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3288f369.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3288f369.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3288f369.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q3288f369.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3288f369.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3288f369.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3288f369.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q14304745",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q14304745",
      "short" : "理解",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q14304745.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.q14304745"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q14304745.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q14304745.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q14304745.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q14304745.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q14304745.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q14304745.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q14304745.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-dc054900d0e6"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q14304745.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q14304745.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q14304745.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q14304745.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q14304745.item:MultipleAnswer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q14304745.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 1000
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q14304745.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q14304745.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q14304745.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q14304745.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q14304745.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q14304745.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q14304745.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q7ca654d9",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q7ca654d9",
      "short" : "口腔外觀",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q7ca654d9.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.q7ca654d9"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q7ca654d9.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q7ca654d9.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q7ca654d9.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q7ca654d9.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q7ca654d9.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q7ca654d9.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q7ca654d9.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-7c98e63372ac"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q7ca654d9.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q7ca654d9.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q7ca654d9.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q7ca654d9.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q7ca654d9.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-415683173294"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q7ca654d9.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q7ca654d9.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q7ca654d9.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q7ca654d9.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q7ca654d9.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q7ca654d9.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q7ca654d9.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q53fb7d09",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q53fb7d09",
      "short" : "特殊進食",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q53fb7d09.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.q53fb7d09"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q53fb7d09.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q53fb7d09.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q53fb7d09.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q53fb7d09.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q53fb7d09.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q53fb7d09.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q53fb7d09.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-49fe20230ec3"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q53fb7d09.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q53fb7d09.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q53fb7d09.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q53fb7d09.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q53fb7d09.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-3435b7eace88"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q53fb7d09.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q53fb7d09.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q53fb7d09.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q53fb7d09.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q53fb7d09.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q53fb7d09.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q53fb7d09.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfcd3bd60",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "qfcd3bd60",
      "short" : "假牙狀況",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfcd3bd60.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.qfcd3bd60"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfcd3bd60.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfcd3bd60.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfcd3bd60.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfcd3bd60.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.qfcd3bd60.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfcd3bd60.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfcd3bd60.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-a051b2c062af"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfcd3bd60.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfcd3bd60.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfcd3bd60.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.qfcd3bd60.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfcd3bd60.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-eee6be407d0e"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfcd3bd60.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfcd3bd60.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfcd3bd60.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.qfcd3bd60.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfcd3bd60.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfcd3bd60.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfcd3bd60.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q7b3136eb",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q7b3136eb",
      "short" : "腹部狀態",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q7b3136eb.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.q7b3136eb"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q7b3136eb.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q7b3136eb.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q7b3136eb.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q7b3136eb.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q7b3136eb.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q7b3136eb.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q7b3136eb.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-b42a51b1139e"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q7b3136eb.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q7b3136eb.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q7b3136eb.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q7b3136eb.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q7b3136eb.item:MultipleAnswer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q7b3136eb.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 1000
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q7b3136eb.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q7b3136eb.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q7b3136eb.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q7b3136eb.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q7b3136eb.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q7b3136eb.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q7b3136eb.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qc0a49d43",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "qc0a49d43",
      "short" : "腸蠕動",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qc0a49d43.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.qc0a49d43"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qc0a49d43.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qc0a49d43.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qc0a49d43.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qc0a49d43.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.qc0a49d43.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qc0a49d43.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qc0a49d43.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-3d4ed1f2575b"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qc0a49d43.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qc0a49d43.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qc0a49d43.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.qc0a49d43.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qc0a49d43.item:MultipleAnswer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qc0a49d43.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 1000
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qc0a49d43.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qc0a49d43.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qc0a49d43.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.qc0a49d43.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qc0a49d43.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qc0a49d43.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qc0a49d43.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd49ab702",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "qd49ab702",
      "short" : "消化狀態",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd49ab702.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.qd49ab702"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd49ab702.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd49ab702.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd49ab702.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd49ab702.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.qd49ab702.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd49ab702.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd49ab702.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-7ce3f119b854"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd49ab702.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd49ab702.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd49ab702.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.qd49ab702.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd49ab702.item:MultipleAnswer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd49ab702.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 1000
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd49ab702.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd49ab702.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd49ab702.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.qd49ab702.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd49ab702.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd49ab702.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd49ab702.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1b2dc66c",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q1b2dc66c",
      "short" : "排便型態",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1b2dc66c.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.q1b2dc66c"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1b2dc66c.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1b2dc66c.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1b2dc66c.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1b2dc66c.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q1b2dc66c.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1b2dc66c.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1b2dc66c.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-7f8a5cfdf9c9"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1b2dc66c.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1b2dc66c.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1b2dc66c.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q1b2dc66c.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1b2dc66c.item:MultipleAnswer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1b2dc66c.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 1000
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1b2dc66c.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1b2dc66c.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1b2dc66c.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q1b2dc66c.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1b2dc66c.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1b2dc66c.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1b2dc66c.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfaaaf47f",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "qfaaaf47f",
      "short" : "排便顏色",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfaaaf47f.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.qfaaaf47f"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfaaaf47f.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfaaaf47f.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfaaaf47f.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfaaaf47f.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.qfaaaf47f.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfaaaf47f.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfaaaf47f.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-a88d0ac6ee1a"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfaaaf47f.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfaaaf47f.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfaaaf47f.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.qfaaaf47f.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfaaaf47f.item:MultipleAnswer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfaaaf47f.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 1000
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfaaaf47f.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfaaaf47f.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfaaaf47f.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.qfaaaf47f.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfaaaf47f.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfaaaf47f.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfaaaf47f.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qbfd21c82",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "qbfd21c82",
      "short" : "排便輔助",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qbfd21c82.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.qbfd21c82"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qbfd21c82.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qbfd21c82.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qbfd21c82.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qbfd21c82.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.qbfd21c82.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qbfd21c82.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qbfd21c82.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-19264db8df7b"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qbfd21c82.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qbfd21c82.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qbfd21c82.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.qbfd21c82.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qbfd21c82.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-0467df08a056"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qbfd21c82.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qbfd21c82.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qbfd21c82.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.qbfd21c82.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qbfd21c82.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qbfd21c82.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qbfd21c82.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q0cdace56",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q0cdace56",
      "short" : "排尿型態",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q0cdace56.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.q0cdace56"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q0cdace56.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q0cdace56.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q0cdace56.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q0cdace56.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q0cdace56.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q0cdace56.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q0cdace56.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-5cb9bbd6d620"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q0cdace56.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q0cdace56.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q0cdace56.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q0cdace56.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q0cdace56.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-b5e899beaa3a"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q0cdace56.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q0cdace56.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q0cdace56.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q0cdace56.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q0cdace56.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q0cdace56.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q0cdace56.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3170f977",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q3170f977",
      "short" : "排尿顏色",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3170f977.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.q3170f977"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3170f977.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3170f977.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3170f977.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3170f977.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q3170f977.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3170f977.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3170f977.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-c0e4f2d08eec"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3170f977.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3170f977.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3170f977.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q3170f977.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3170f977.item:MultipleAnswer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3170f977.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 1000
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3170f977.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3170f977.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3170f977.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q3170f977.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3170f977.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3170f977.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3170f977.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1dddcc0f",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q1dddcc0f",
      "short" : "排尿輔助",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1dddcc0f.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.q1dddcc0f"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1dddcc0f.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1dddcc0f.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1dddcc0f.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1dddcc0f.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q1dddcc0f.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1dddcc0f.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1dddcc0f.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-19264db8df7b"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1dddcc0f.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1dddcc0f.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1dddcc0f.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q1dddcc0f.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1dddcc0f.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-ec686161641f"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1dddcc0f.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1dddcc0f.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1dddcc0f.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q1dddcc0f.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1dddcc0f.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1dddcc0f.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1dddcc0f.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q889a3f5d",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q889a3f5d",
      "short" : "溫度",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q889a3f5d.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.q889a3f5d"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q889a3f5d.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q889a3f5d.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q889a3f5d.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q889a3f5d.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q889a3f5d.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q889a3f5d.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q889a3f5d.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-13d13792ca45"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q889a3f5d.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q889a3f5d.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q889a3f5d.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q889a3f5d.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q889a3f5d.item:MultipleAnswer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q889a3f5d.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 1000
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q889a3f5d.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q889a3f5d.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q889a3f5d.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q889a3f5d.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q889a3f5d.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q889a3f5d.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q889a3f5d.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfbbbe51d",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "qfbbbe51d",
      "short" : "濕度",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfbbbe51d.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.qfbbbe51d"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfbbbe51d.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfbbbe51d.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfbbbe51d.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfbbbe51d.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.qfbbbe51d.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfbbbe51d.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfbbbe51d.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-acfe4f6c5f3a"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfbbbe51d.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfbbbe51d.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfbbbe51d.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.qfbbbe51d.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfbbbe51d.item:MultipleAnswer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfbbbe51d.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 1000
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfbbbe51d.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfbbbe51d.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfbbbe51d.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.qfbbbe51d.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfbbbe51d.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfbbbe51d.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qfbbbe51d.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q2edc1f98",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q2edc1f98",
      "short" : "顏色",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q2edc1f98.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.q2edc1f98"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q2edc1f98.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q2edc1f98.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q2edc1f98.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q2edc1f98.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q2edc1f98.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q2edc1f98.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q2edc1f98.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-ed3fafa578d2"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q2edc1f98.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q2edc1f98.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q2edc1f98.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q2edc1f98.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q2edc1f98.item:MultipleAnswer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q2edc1f98.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 1000
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q2edc1f98.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q2edc1f98.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q2edc1f98.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q2edc1f98.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q2edc1f98.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q2edc1f98.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q2edc1f98.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q0aec089c",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q0aec089c",
      "short" : "水腫級數",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q0aec089c.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.q0aec089c"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q0aec089c.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q0aec089c.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q0aec089c.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q0aec089c.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q0aec089c.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q0aec089c.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q0aec089c.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-49fe20230ec3"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q0aec089c.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q0aec089c.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q0aec089c.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q0aec089c.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q0aec089c.item:MultipleAnswer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q0aec089c.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 1000
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q0aec089c.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q0aec089c.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q0aec089c.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q0aec089c.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q0aec089c.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q0aec089c.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q0aec089c.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q5b3534e0",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q5b3534e0",
      "short" : "水腫等級",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q5b3534e0.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.q5b3534e0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q5b3534e0.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q5b3534e0.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q5b3534e0.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q5b3534e0.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q5b3534e0.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q5b3534e0.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q5b3534e0.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-c93d67023284"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q5b3534e0.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q5b3534e0.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q5b3534e0.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q5b3534e0.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q5b3534e0.item:MultipleAnswer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q5b3534e0.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 1000
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q5b3534e0.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q5b3534e0.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q5b3534e0.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q5b3534e0.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q5b3534e0.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q5b3534e0.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q5b3534e0.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6e6e5811",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q6e6e5811",
      "short" : "完整",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6e6e5811.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.q6e6e5811"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6e6e5811.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6e6e5811.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6e6e5811.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6e6e5811.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q6e6e5811.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6e6e5811.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6e6e5811.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6e6e5811.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6e6e5811.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6e6e5811.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q6e6e5811.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6e6e5811.item:MultipleAnswer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6e6e5811.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 1000
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6e6e5811.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6e6e5811.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6e6e5811.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q6e6e5811.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6e6e5811.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6e6e5811.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6e6e5811.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q4c713f60",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q4c713f60",
      "short" : "左上肢",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q4c713f60.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.q4c713f60"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q4c713f60.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q4c713f60.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q4c713f60.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q4c713f60.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q4c713f60.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q4c713f60.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q4c713f60.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-00697b86a7bc"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q4c713f60.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q4c713f60.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q4c713f60.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q4c713f60.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q4c713f60.item:MultipleAnswer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q4c713f60.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 1000
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q4c713f60.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q4c713f60.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q4c713f60.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q4c713f60.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q4c713f60.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q4c713f60.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q4c713f60.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q43c26e48",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q43c26e48",
      "short" : "右上肢",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q43c26e48.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.q43c26e48"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q43c26e48.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q43c26e48.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q43c26e48.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q43c26e48.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q43c26e48.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q43c26e48.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q43c26e48.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-00697b86a7bc"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q43c26e48.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q43c26e48.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q43c26e48.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q43c26e48.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q43c26e48.item:MultipleAnswer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q43c26e48.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 1000
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q43c26e48.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q43c26e48.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q43c26e48.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q43c26e48.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q43c26e48.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q43c26e48.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q43c26e48.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q9926c640",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q9926c640",
      "short" : "左下肢",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q9926c640.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.q9926c640"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q9926c640.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q9926c640.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q9926c640.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q9926c640.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q9926c640.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q9926c640.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q9926c640.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-00697b86a7bc"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q9926c640.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q9926c640.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q9926c640.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q9926c640.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q9926c640.item:MultipleAnswer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q9926c640.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 1000
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q9926c640.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q9926c640.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q9926c640.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q9926c640.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q9926c640.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q9926c640.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q9926c640.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3f44d138",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q3f44d138",
      "short" : "右下肢",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3f44d138.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.q3f44d138"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3f44d138.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3f44d138.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3f44d138.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3f44d138.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q3f44d138.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3f44d138.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3f44d138.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-00697b86a7bc"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3f44d138.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3f44d138.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3f44d138.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q3f44d138.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3f44d138.item:MultipleAnswer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3f44d138.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 1000
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3f44d138.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3f44d138.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3f44d138.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q3f44d138.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3f44d138.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3f44d138.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3f44d138.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcd675f81",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "qcd675f81",
      "short" : "行動能力問題",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcd675f81.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.qcd675f81"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcd675f81.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcd675f81.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcd675f81.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcd675f81.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.qcd675f81.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcd675f81.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcd675f81.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-1ffa1d5d3bef"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcd675f81.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcd675f81.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcd675f81.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.qcd675f81.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcd675f81.item:MultipleAnswer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcd675f81.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 1000
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcd675f81.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcd675f81.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcd675f81.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.qcd675f81.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcd675f81.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcd675f81.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcd675f81.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3adf788d",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q3adf788d",
      "short" : "肌力-輔具",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3adf788d.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.q3adf788d"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3adf788d.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3adf788d.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3adf788d.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3adf788d.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q3adf788d.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3adf788d.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3adf788d.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-49fe20230ec3"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3adf788d.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3adf788d.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3adf788d.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q3adf788d.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3adf788d.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-1a72d15a5965"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3adf788d.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3adf788d.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3adf788d.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q3adf788d.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3adf788d.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3adf788d.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q3adf788d.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q4ce17519",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q4ce17519",
      "short" : "跌倒",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q4ce17519.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.q4ce17519"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q4ce17519.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q4ce17519.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q4ce17519.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q4ce17519.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q4ce17519.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q4ce17519.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q4ce17519.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-19264db8df7b"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q4ce17519.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q4ce17519.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q4ce17519.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q4ce17519.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q4ce17519.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-3bbfa4b4f8db"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q4ce17519.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q4ce17519.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q4ce17519.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q4ce17519.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q4ce17519.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q4ce17519.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q4ce17519.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcc99d785",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "qcc99d785",
      "short" : "跌倒次數",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcc99d785.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.qcc99d785"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcc99d785.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcc99d785.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcc99d785.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcc99d785.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.qcc99d785.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcc99d785.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcc99d785.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcc99d785.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcc99d785.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcc99d785.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.qcc99d785.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcc99d785.item:MultipleAnswer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcc99d785.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 1000
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcc99d785.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcc99d785.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcc99d785.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.qcc99d785.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcc99d785.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcc99d785.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qcc99d785.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1ea67d8d",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q1ea67d8d",
      "short" : "行為",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1ea67d8d.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.q1ea67d8d"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1ea67d8d.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1ea67d8d.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1ea67d8d.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1ea67d8d.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q1ea67d8d.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1ea67d8d.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1ea67d8d.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-365bfce838bb"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1ea67d8d.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1ea67d8d.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1ea67d8d.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q1ea67d8d.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1ea67d8d.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-46c8866533a0"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1ea67d8d.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1ea67d8d.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1ea67d8d.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q1ea67d8d.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1ea67d8d.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1ea67d8d.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1ea67d8d.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qca5f735b",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "qca5f735b",
      "short" : "睡眠",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qca5f735b.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.qca5f735b"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qca5f735b.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qca5f735b.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qca5f735b.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qca5f735b.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.qca5f735b.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qca5f735b.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qca5f735b.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-ef4daeacd99a"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qca5f735b.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qca5f735b.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qca5f735b.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.qca5f735b.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qca5f735b.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-c34dc3f43d82"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qca5f735b.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qca5f735b.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qca5f735b.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.qca5f735b.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qca5f735b.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qca5f735b.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qca5f735b.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd8db9643",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "qd8db9643",
      "short" : "服用藥物",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd8db9643.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.qd8db9643"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd8db9643.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd8db9643.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd8db9643.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd8db9643.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.qd8db9643.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd8db9643.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd8db9643.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-49fe20230ec3"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd8db9643.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd8db9643.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd8db9643.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.qd8db9643.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd8db9643.item:MultipleAnswer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd8db9643.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 1000
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd8db9643.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd8db9643.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd8db9643.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.qd8db9643.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd8db9643.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd8db9643.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd8db9643.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q65b57fd8",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q65b57fd8",
      "short" : "藥物類別",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q65b57fd8.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.q65b57fd8"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q65b57fd8.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q65b57fd8.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q65b57fd8.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q65b57fd8.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q65b57fd8.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q65b57fd8.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q65b57fd8.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q65b57fd8.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q65b57fd8.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q65b57fd8.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q65b57fd8.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q65b57fd8.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-6d733f47d6f4"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q65b57fd8.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q65b57fd8.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q65b57fd8.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q65b57fd8.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q65b57fd8.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q65b57fd8.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q65b57fd8.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q03fdb3f1",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q03fdb3f1",
      "short" : "服用頻率",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q03fdb3f1.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.q03fdb3f1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q03fdb3f1.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q03fdb3f1.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q03fdb3f1.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q03fdb3f1.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q03fdb3f1.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q03fdb3f1.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q03fdb3f1.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-cf479df80e62"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q03fdb3f1.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q03fdb3f1.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q03fdb3f1.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q03fdb3f1.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q03fdb3f1.item:MultipleAnswer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q03fdb3f1.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 1000
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q03fdb3f1.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q03fdb3f1.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q03fdb3f1.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q03fdb3f1.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q03fdb3f1.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q03fdb3f1.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q03fdb3f1.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd30f4212",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "qd30f4212",
      "short" : "輔助器",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd30f4212.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.qd30f4212"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd30f4212.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd30f4212.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd30f4212.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd30f4212.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.qd30f4212.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd30f4212.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd30f4212.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-49fe20230ec3"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd30f4212.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd30f4212.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd30f4212.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.qd30f4212.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd30f4212.item:MultipleAnswer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd30f4212.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 1000
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd30f4212.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd30f4212.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd30f4212.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.qd30f4212.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd30f4212.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd30f4212.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:qd30f4212.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1355f181",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q1355f181",
      "short" : "有輔助器",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1355f181.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.q1355f181"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1355f181.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1355f181.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1355f181.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1355f181.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q1355f181.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1355f181.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1355f181.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-8aa8b9aed3b2"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1355f181.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1355f181.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1355f181.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q1355f181.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1355f181.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-1c644096303f"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1355f181.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1355f181.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1355f181.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q1355f181.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1355f181.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1355f181.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1355f181.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1c902f78",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q1c902f78",
      "short" : "鼻導管",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1c902f78.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.q1c902f78"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1c902f78.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1c902f78.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1c902f78.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1c902f78.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q1c902f78.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1c902f78.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1c902f78.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1c902f78.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1c902f78.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1c902f78.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q1c902f78.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1c902f78.item:MultipleAnswer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1c902f78.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 1000
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1c902f78.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1c902f78.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1c902f78.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q1c902f78.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1c902f78.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1c902f78.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q1c902f78.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6772dc09",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q6772dc09",
      "short" : "氧氣面罩",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6772dc09.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "BodyQuestions.q6772dc09"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6772dc09.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6772dc09.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6772dc09.item:Answer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Answer",
      "short" : "評估答案",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6772dc09.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q6772dc09.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6772dc09.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6772dc09.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6772dc09.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6772dc09.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "評估多選答案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6772dc09.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q6772dc09.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6772dc09.item:MultipleAnswer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6772dc09.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 1000
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6772dc09.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6772dc09.item:Other",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Other",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6772dc09.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "BodyQuestions.q6772dc09.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6772dc09.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6772dc09.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:BodyQuestions.item:q6772dc09.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:IsTemporary",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "IsTemporary",
      "short" : "是否暫存",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:IsTemporary.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "IsTemporary"
    },
    {
      "id" : "QuestionnaireResponse.item:IsTemporary.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:IsTemporary.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:IsTemporary.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    }]
  }
}

```
