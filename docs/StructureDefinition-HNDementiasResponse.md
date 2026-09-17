# 居家護理－認知功能評估表單 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－認知功能評估表單**

## Resource Profile: 居家護理－認知功能評估表單 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNDementiasResponse | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNDementiasResponse |

 
記錄認知功能評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。 

**Usages:**

* Examples for this Profile: [QuestionnaireResponse/hn-dementias-example](QuestionnaireResponse-hn-dementias-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNDementiasResponse.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNDementiasResponse.csv), [Excel](StructureDefinition-HNDementiasResponse.xlsx), [Schematron](StructureDefinition-HNDementiasResponse.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNDementiasResponse",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNDementiasResponse",
  "version" : "1.1.0",
  "name" : "HNDementiasResponse",
  "title" : "居家護理－認知功能評估表單",
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
  "description" : "記錄認知功能評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。",
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
        "key" : "hn-dementias-1",
        "severity" : "error",
        "human" : "暫存填是時，表單狀態必須為 in-progress。",
        "expression" : "item.where(linkId='IsTemporary').answer.value.ofType(Coding).where(code='cb5141d3d19e9').exists() implies status='in-progress'",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNDementiasResponse"
      },
      {
        "key" : "hn-dementias-2",
        "severity" : "error",
        "human" : "暫存填否時，表單狀態必須為 completed 或 amended。",
        "expression" : "item.where(linkId='IsTemporary').answer.value.ofType(Coding).where(code='c0c70665b6eb6').exists() implies (status='completed' or status='amended')",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNDementiasResponse"
      },
      {
        "key" : "hn-dementias-3",
        "severity" : "error",
        "human" : "缺少評估問題時應說明無法評估原因。",
        "expression" : "item.where(linkId='Questions').empty() implies item.where(linkId='Statement').answer.value.exists()",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNDementiasResponse"
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
      "patternCanonical" : "http://ltc-ig.fhir.tw/Questionnaire/hn-dementias"
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
      "id" : "QuestionnaireResponse.item:Questions.item:q48174716",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q48174716",
      "short" : "今天是幾年幾月幾日？__年__月__日",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q48174716.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Questions.q48174716"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q48174716.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q48174716.item",
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
      "id" : "QuestionnaireResponse.item:Questions.item:q48174716.item:Answer",
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
      "id" : "QuestionnaireResponse.item:Questions.item:q48174716.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Questions.q48174716.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q48174716.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q48174716.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-2a3bd76ba6eb"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q48174716.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qe97f506c",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "qe97f506c",
      "short" : "今天是星期幾？",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qe97f506c.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Questions.qe97f506c"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qe97f506c.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qe97f506c.item",
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
      "id" : "QuestionnaireResponse.item:Questions.item:qe97f506c.item:Answer",
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
      "id" : "QuestionnaireResponse.item:Questions.item:qe97f506c.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Questions.qe97f506c.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qe97f506c.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qe97f506c.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-2a3bd76ba6eb"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qe97f506c.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q6128d754",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q6128d754",
      "short" : "這裡是什麼地方？",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q6128d754.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Questions.q6128d754"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q6128d754.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q6128d754.item",
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
      "id" : "QuestionnaireResponse.item:Questions.item:q6128d754.item:Answer",
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
      "id" : "QuestionnaireResponse.item:Questions.item:q6128d754.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Questions.q6128d754.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q6128d754.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q6128d754.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-2a3bd76ba6eb"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q6128d754.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qe0801d08",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "qe0801d08",
      "short" : "你的電話號碼是幾號？",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qe0801d08.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Questions.qe0801d08"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qe0801d08.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qe0801d08.item",
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
      "id" : "QuestionnaireResponse.item:Questions.item:qe0801d08.item:Answer",
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
      "id" : "QuestionnaireResponse.item:Questions.item:qe0801d08.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Questions.qe0801d08.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qe0801d08.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qe0801d08.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-2a3bd76ba6eb"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qe0801d08.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qd40595f2",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "qd40595f2",
      "short" : "你住在什麼地方？",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qd40595f2.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Questions.qd40595f2"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qd40595f2.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qd40595f2.item",
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
      "id" : "QuestionnaireResponse.item:Questions.item:qd40595f2.item:Answer",
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
      "id" : "QuestionnaireResponse.item:Questions.item:qd40595f2.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Questions.qd40595f2.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qd40595f2.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qd40595f2.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-2a3bd76ba6eb"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qd40595f2.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q1ddb5b1c",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q1ddb5b1c",
      "short" : "你幾歲了？",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q1ddb5b1c.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Questions.q1ddb5b1c"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q1ddb5b1c.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q1ddb5b1c.item",
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
      "id" : "QuestionnaireResponse.item:Questions.item:q1ddb5b1c.item:Answer",
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
      "id" : "QuestionnaireResponse.item:Questions.item:q1ddb5b1c.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Questions.q1ddb5b1c.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q1ddb5b1c.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q1ddb5b1c.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-2a3bd76ba6eb"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q1ddb5b1c.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q995c979b",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q995c979b",
      "short" : "你的生日是哪一天？",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q995c979b.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Questions.q995c979b"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q995c979b.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q995c979b.item",
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
      "id" : "QuestionnaireResponse.item:Questions.item:q995c979b.item:Answer",
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
      "id" : "QuestionnaireResponse.item:Questions.item:q995c979b.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Questions.q995c979b.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q995c979b.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q995c979b.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-2a3bd76ba6eb"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q995c979b.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q6df0269a",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q6df0269a",
      "short" : "現任總統是誰？",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q6df0269a.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Questions.q6df0269a"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q6df0269a.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q6df0269a.item",
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
      "id" : "QuestionnaireResponse.item:Questions.item:q6df0269a.item:Answer",
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
      "id" : "QuestionnaireResponse.item:Questions.item:q6df0269a.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Questions.q6df0269a.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q6df0269a.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q6df0269a.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-2a3bd76ba6eb"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q6df0269a.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q8a8a8021",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q8a8a8021",
      "short" : "前任總統是誰？",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q8a8a8021.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Questions.q8a8a8021"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q8a8a8021.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q8a8a8021.item",
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
      "id" : "QuestionnaireResponse.item:Questions.item:q8a8a8021.item:Answer",
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
      "id" : "QuestionnaireResponse.item:Questions.item:q8a8a8021.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Questions.q8a8a8021.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q8a8a8021.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q8a8a8021.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-2a3bd76ba6eb"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q8a8a8021.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qb719d7b7",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "qb719d7b7",
      "short" : "你媽媽叫什麼名字？",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qb719d7b7.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Questions.qb719d7b7"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qb719d7b7.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qb719d7b7.item",
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
      "id" : "QuestionnaireResponse.item:Questions.item:qb719d7b7.item:Answer",
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
      "id" : "QuestionnaireResponse.item:Questions.item:qb719d7b7.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Questions.qb719d7b7.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qb719d7b7.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qb719d7b7.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-2a3bd76ba6eb"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qb719d7b7.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q295d5a12",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q295d5a12",
      "short" : "從20 減3 開始算，一直減3 減下去。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q295d5a12.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Questions.q295d5a12"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q295d5a12.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q295d5a12.item",
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
      "id" : "QuestionnaireResponse.item:Questions.item:q295d5a12.item:Answer",
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
      "id" : "QuestionnaireResponse.item:Questions.item:q295d5a12.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Questions.q295d5a12.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q295d5a12.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q295d5a12.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-2a3bd76ba6eb"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q295d5a12.item:Answer.item",
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
