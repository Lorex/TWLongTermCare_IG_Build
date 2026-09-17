# 居家護理－日常生活功能評估表單 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－日常生活功能評估表單**

## Resource Profile: 居家護理－日常生活功能評估表單 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNADLsResponse | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNADLsResponse |

 
記錄日常生活功能評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。 

**Usages:**

* Examples for this Profile: [QuestionnaireResponse/hn-adls-example](QuestionnaireResponse-hn-adls-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNADLsResponse.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNADLsResponse.csv), [Excel](StructureDefinition-HNADLsResponse.xlsx), [Schematron](StructureDefinition-HNADLsResponse.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNADLsResponse",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNADLsResponse",
  "version" : "1.1.0",
  "name" : "HNADLsResponse",
  "title" : "居家護理－日常生活功能評估表單",
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
  "description" : "記錄日常生活功能評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。",
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
        "key" : "hn-adls-1",
        "severity" : "error",
        "human" : "暫存填是時，表單狀態必須為 in-progress。",
        "expression" : "item.where(linkId='IsTemporary').answer.value.ofType(Coding).where(code='cb5141d3d19e9').exists() implies status='in-progress'",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNADLsResponse"
      },
      {
        "key" : "hn-adls-2",
        "severity" : "error",
        "human" : "暫存填否時，表單狀態必須為 completed 或 amended。",
        "expression" : "item.where(linkId='IsTemporary').answer.value.ofType(Coding).where(code='c0c70665b6eb6').exists() implies (status='completed' or status='amended')",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNADLsResponse"
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
      "patternCanonical" : "http://ltc-ig.fhir.tw/Questionnaire/hn-adls"
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
      "id" : "QuestionnaireResponse.item:Questions",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "Questions",
      "short" : "評估項目",
      "min" : 1,
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
      },
      "min" : 10
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q46787535",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q46787535",
      "short" : "進食",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q46787535.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Questions.q46787535"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q46787535.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q46787535.item",
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
      "id" : "QuestionnaireResponse.item:Questions.item:q46787535.item:Answer",
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
      "id" : "QuestionnaireResponse.item:Questions.item:q46787535.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Questions.q46787535.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q46787535.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q46787535.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-c020bc6f582f"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q46787535.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q0bc7e44d",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q0bc7e44d",
      "short" : "移位",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q0bc7e44d.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Questions.q0bc7e44d"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q0bc7e44d.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q0bc7e44d.item",
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
      "id" : "QuestionnaireResponse.item:Questions.item:q0bc7e44d.item:Answer",
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
      "id" : "QuestionnaireResponse.item:Questions.item:q0bc7e44d.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Questions.q0bc7e44d.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q0bc7e44d.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q0bc7e44d.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-5509cc9b0f4c"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q0bc7e44d.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qb93b932f",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "qb93b932f",
      "short" : "衛生",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qb93b932f.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Questions.qb93b932f"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qb93b932f.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qb93b932f.item",
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
      "id" : "QuestionnaireResponse.item:Questions.item:qb93b932f.item:Answer",
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
      "id" : "QuestionnaireResponse.item:Questions.item:qb93b932f.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Questions.qb93b932f.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qb93b932f.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qb93b932f.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-c1223cdffc0c"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qb93b932f.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q96220a06",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q96220a06",
      "short" : "如廁",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q96220a06.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Questions.q96220a06"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q96220a06.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q96220a06.item",
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
      "id" : "QuestionnaireResponse.item:Questions.item:q96220a06.item:Answer",
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
      "id" : "QuestionnaireResponse.item:Questions.item:q96220a06.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Questions.q96220a06.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q96220a06.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q96220a06.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-5a0da2e50fde"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q96220a06.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q92ee129c",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q92ee129c",
      "short" : "洗澡",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q92ee129c.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Questions.q92ee129c"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q92ee129c.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q92ee129c.item",
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
      "id" : "QuestionnaireResponse.item:Questions.item:q92ee129c.item:Answer",
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
      "id" : "QuestionnaireResponse.item:Questions.item:q92ee129c.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Questions.q92ee129c.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q92ee129c.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q92ee129c.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-3c038851248f"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q92ee129c.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qb8f96793",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "qb8f96793",
      "short" : "走動",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qb8f96793.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Questions.qb8f96793"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qb8f96793.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qb8f96793.item",
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
      "id" : "QuestionnaireResponse.item:Questions.item:qb8f96793.item:Answer",
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
      "id" : "QuestionnaireResponse.item:Questions.item:qb8f96793.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Questions.qb8f96793.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qb8f96793.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qb8f96793.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-9a2ed66b6061"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qb8f96793.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q1cb17d5b",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q1cb17d5b",
      "short" : "樓梯",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q1cb17d5b.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Questions.q1cb17d5b"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q1cb17d5b.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q1cb17d5b.item",
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
      "id" : "QuestionnaireResponse.item:Questions.item:q1cb17d5b.item:Answer",
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
      "id" : "QuestionnaireResponse.item:Questions.item:q1cb17d5b.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Questions.q1cb17d5b.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q1cb17d5b.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q1cb17d5b.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-076f2d014436"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q1cb17d5b.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qd949ce2d",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "qd949ce2d",
      "short" : "穿脫",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qd949ce2d.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Questions.qd949ce2d"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qd949ce2d.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qd949ce2d.item",
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
      "id" : "QuestionnaireResponse.item:Questions.item:qd949ce2d.item:Answer",
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
      "id" : "QuestionnaireResponse.item:Questions.item:qd949ce2d.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Questions.qd949ce2d.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qd949ce2d.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qd949ce2d.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-723d296bd93d"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qd949ce2d.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qfe7de24a",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "qfe7de24a",
      "short" : "大便",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qfe7de24a.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Questions.qfe7de24a"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qfe7de24a.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qfe7de24a.item",
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
      "id" : "QuestionnaireResponse.item:Questions.item:qfe7de24a.item:Answer",
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
      "id" : "QuestionnaireResponse.item:Questions.item:qfe7de24a.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Questions.qfe7de24a.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qfe7de24a.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qfe7de24a.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-8c7bcb320a01"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qfe7de24a.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q13cca4d4",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q13cca4d4",
      "short" : "小便",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q13cca4d4.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Questions.q13cca4d4"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q13cca4d4.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q13cca4d4.item",
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
      "id" : "QuestionnaireResponse.item:Questions.item:q13cca4d4.item:Answer",
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
      "id" : "QuestionnaireResponse.item:Questions.item:q13cca4d4.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Questions.q13cca4d4.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q13cca4d4.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q13cca4d4.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d20974b4a161"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q13cca4d4.item:Answer.item",
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
