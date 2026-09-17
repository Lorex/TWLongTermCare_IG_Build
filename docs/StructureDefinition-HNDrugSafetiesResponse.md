# 居家護理－藥物安全性評估表單 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－藥物安全性評估表單**

## Resource Profile: 居家護理－藥物安全性評估表單 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNDrugSafetiesResponse | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNDrugSafetiesResponse |

 
記錄藥物安全性評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。 

**Usages:**

* Examples for this Profile: [QuestionnaireResponse/hn-drugsafeties-example](QuestionnaireResponse-hn-drugsafeties-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNDrugSafetiesResponse.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNDrugSafetiesResponse.csv), [Excel](StructureDefinition-HNDrugSafetiesResponse.xlsx), [Schematron](StructureDefinition-HNDrugSafetiesResponse.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNDrugSafetiesResponse",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNDrugSafetiesResponse",
  "version" : "1.1.0",
  "name" : "HNDrugSafetiesResponse",
  "title" : "居家護理－藥物安全性評估表單",
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
  "description" : "記錄藥物安全性評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。",
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
        "key" : "hn-drugsafeties-1",
        "severity" : "error",
        "human" : "暫存填是時，表單狀態必須為 in-progress。",
        "expression" : "item.where(linkId='IsTemporary').answer.value.ofType(Coding).where(code='cb5141d3d19e9').exists() implies status='in-progress'",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNDrugSafetiesResponse"
      },
      {
        "key" : "hn-drugsafeties-2",
        "severity" : "error",
        "human" : "暫存填否時，表單狀態必須為 completed 或 amended。",
        "expression" : "item.where(linkId='IsTemporary').answer.value.ofType(Coding).where(code='c0c70665b6eb6').exists() implies (status='completed' or status='amended')",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNDrugSafetiesResponse"
      },
      {
        "key" : "hn-drugsafeties-3",
        "severity" : "error",
        "human" : "缺少評估問題時應說明無法評估原因。",
        "expression" : "item.where(linkId='Questions').empty() implies item.where(linkId='Statement').answer.value.exists()",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNDrugSafetiesResponse"
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
      "patternCanonical" : "http://ltc-ig.fhir.tw/Questionnaire/hn-drugsafeties"
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
      "min" : 2
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
      "id" : "QuestionnaireResponse.item:Statement",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "Statement",
      "short" : "無法評估原因或備註",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Statement.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "Statement"
    },
    {
      "id" : "QuestionnaireResponse.item:Statement.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Statement.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 500
    },
    {
      "id" : "QuestionnaireResponse.item:Statement.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "Questions",
      "short" : "評估項目",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "Questions"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item",
      "path" : "QuestionnaireResponse.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q1b200653",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q1b200653",
      "short" : "是否有長期使用藥物",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q1b200653.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Questions.q1b200653"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q1b200653.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q1b200653.item",
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
      "id" : "QuestionnaireResponse.item:Questions.item:q1b200653.item:Answer",
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
      "id" : "QuestionnaireResponse.item:Questions.item:q1b200653.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Questions.q1b200653.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q1b200653.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q1b200653.item:Answer.answer.value[x]",
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
      "id" : "QuestionnaireResponse.item:Questions.item:q1b200653.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q1b200653.item:Statement1",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Statement1",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q1b200653.item:Statement1.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Questions.q1b200653.Statement1"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q1b200653.item:Statement1.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q1b200653.item:Statement1.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q1b200653.item:Statement1.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qb5202c4c",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "qb5202c4c",
      "short" : "目前使用中的藥物種類",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qb5202c4c.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Questions.qb5202c4c"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qb5202c4c.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qb5202c4c.item",
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
      "id" : "QuestionnaireResponse.item:Questions.item:qb5202c4c.item:Answer",
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
      "id" : "QuestionnaireResponse.item:Questions.item:qb5202c4c.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Questions.qb5202c4c.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qb5202c4c.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qb5202c4c.item:Answer.answer.value[x]",
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
      "id" : "QuestionnaireResponse.item:Questions.item:qb5202c4c.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qb5202c4c.item:Statement1",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Statement1",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qb5202c4c.item:Statement1.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Questions.qb5202c4c.Statement1"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qb5202c4c.item:Statement1.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qb5202c4c.item:Statement1.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qb5202c4c.item:Statement1.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q023931ae",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q023931ae",
      "short" : "使用精神用藥",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q023931ae.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Questions.q023931ae"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q023931ae.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q023931ae.item",
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
      "id" : "QuestionnaireResponse.item:Questions.item:q023931ae.item:Answer",
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
      "id" : "QuestionnaireResponse.item:Questions.item:q023931ae.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Questions.q023931ae.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q023931ae.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q023931ae.item:Answer.answer.value[x]",
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
      "id" : "QuestionnaireResponse.item:Questions.item:q023931ae.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q023931ae.item:Statement1",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Statement1",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q023931ae.item:Statement1.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Questions.q023931ae.Statement1"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q023931ae.item:Statement1.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q023931ae.item:Statement1.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q023931ae.item:Statement1.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qc7a63c2d",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "qc7a63c2d",
      "short" : "使用止痛用藥",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qc7a63c2d.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Questions.qc7a63c2d"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qc7a63c2d.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qc7a63c2d.item",
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
      "id" : "QuestionnaireResponse.item:Questions.item:qc7a63c2d.item:Answer",
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
      "id" : "QuestionnaireResponse.item:Questions.item:qc7a63c2d.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Questions.qc7a63c2d.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qc7a63c2d.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qc7a63c2d.item:Answer.answer.value[x]",
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
      "id" : "QuestionnaireResponse.item:Questions.item:qc7a63c2d.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qc7a63c2d.item:Statement1",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Statement1",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qc7a63c2d.item:Statement1.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Questions.qc7a63c2d.Statement1"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qc7a63c2d.item:Statement1.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qc7a63c2d.item:Statement1.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qc7a63c2d.item:Statement1.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q0482b7eb",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q0482b7eb",
      "short" : "是否存在多重用藥問題",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q0482b7eb.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Questions.q0482b7eb"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q0482b7eb.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q0482b7eb.item",
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
      "id" : "QuestionnaireResponse.item:Questions.item:q0482b7eb.item:Answer",
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
      "id" : "QuestionnaireResponse.item:Questions.item:q0482b7eb.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Questions.q0482b7eb.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q0482b7eb.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q0482b7eb.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-523a43c4a46a"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q0482b7eb.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q0482b7eb.item:Statement1",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Statement1",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q0482b7eb.item:Statement1.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Questions.q0482b7eb.Statement1"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q0482b7eb.item:Statement1.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q0482b7eb.item:Statement1.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q0482b7eb.item:Statement1.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qc67400fe",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "qc67400fe",
      "short" : "目前是否使用有自行購藥(電台、他人介紹..等非醫療院所取得)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qc67400fe.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Questions.qc67400fe"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qc67400fe.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qc67400fe.item",
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
      "id" : "QuestionnaireResponse.item:Questions.item:qc67400fe.item:Answer",
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
      "id" : "QuestionnaireResponse.item:Questions.item:qc67400fe.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Questions.qc67400fe.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qc67400fe.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qc67400fe.item:Answer.answer.value[x]",
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
      "id" : "QuestionnaireResponse.item:Questions.item:qc67400fe.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qc67400fe.item:Statement1",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Statement1",
      "short" : "補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qc67400fe.item:Statement1.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Questions.qc67400fe.Statement1"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qc67400fe.item:Statement1.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qc67400fe.item:Statement1.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qc67400fe.item:Statement1.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:DrugInUses",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "DrugInUses",
      "short" : "使用中的藥物",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:DrugInUses.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "DrugInUses"
    },
    {
      "id" : "QuestionnaireResponse.item:DrugInUses.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:DrugInUses.item",
      "path" : "QuestionnaireResponse.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 4
    },
    {
      "id" : "QuestionnaireResponse.item:DrugInUses.item:Name",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Name",
      "short" : "藥物品項",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:DrugInUses.item:Name.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "DrugInUses.Name"
    },
    {
      "id" : "QuestionnaireResponse.item:DrugInUses.item:Name.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:DrugInUses.item:Name.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 150
    },
    {
      "id" : "QuestionnaireResponse.item:DrugInUses.item:Name.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:DrugInUses.item:Volume",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Volume",
      "short" : "劑量",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:DrugInUses.item:Volume.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "DrugInUses.Volume"
    },
    {
      "id" : "QuestionnaireResponse.item:DrugInUses.item:Volume.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:DrugInUses.item:Volume.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:DrugInUses.item:Volume.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:DrugInUses.item:Frequency",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Frequency",
      "short" : "頻率",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:DrugInUses.item:Frequency.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "DrugInUses.Frequency"
    },
    {
      "id" : "QuestionnaireResponse.item:DrugInUses.item:Frequency.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:DrugInUses.item:Frequency.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:DrugInUses.item:Frequency.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:DrugInUses.item:Purpose",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Purpose",
      "short" : "用途",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:DrugInUses.item:Purpose.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "DrugInUses.Purpose"
    },
    {
      "id" : "QuestionnaireResponse.item:DrugInUses.item:Purpose.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:DrugInUses.item:Purpose.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:DrugInUses.item:Purpose.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:DrugInUses.item:Remark",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Remark",
      "short" : "備註",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:DrugInUses.item:Remark.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "DrugInUses.Remark"
    },
    {
      "id" : "QuestionnaireResponse.item:DrugInUses.item:Remark.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:DrugInUses.item:Remark.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:DrugInUses.item:Remark.item",
      "path" : "QuestionnaireResponse.item.item.item",
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
