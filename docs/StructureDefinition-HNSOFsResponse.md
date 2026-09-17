# 居家護理－衰弱評估表單 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－衰弱評估表單**

## Resource Profile: 居家護理－衰弱評估表單 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNSOFsResponse | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNSOFsResponse |

 
記錄衰弱評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。 

**Usages:**

* Examples for this Profile: [QuestionnaireResponse/hn-sofs-example](QuestionnaireResponse-hn-sofs-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNSOFsResponse.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNSOFsResponse.csv), [Excel](StructureDefinition-HNSOFsResponse.xlsx), [Schematron](StructureDefinition-HNSOFsResponse.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNSOFsResponse",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNSOFsResponse",
  "version" : "1.1.0",
  "name" : "HNSOFsResponse",
  "title" : "居家護理－衰弱評估表單",
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
  "description" : "記錄衰弱評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。",
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
        "key" : "hn-sofs-1",
        "severity" : "error",
        "human" : "暫存填是時，表單狀態必須為 in-progress。",
        "expression" : "item.where(linkId='IsTemporary').answer.value.ofType(Coding).where(code='cb5141d3d19e9').exists() implies status='in-progress'",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNSOFsResponse"
      },
      {
        "key" : "hn-sofs-2",
        "severity" : "error",
        "human" : "暫存填否時，表單狀態必須為 completed 或 amended。",
        "expression" : "item.where(linkId='IsTemporary').answer.value.ofType(Coding).where(code='c0c70665b6eb6').exists() implies (status='completed' or status='amended')",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNSOFsResponse"
      },
      {
        "key" : "hn-sofs-3",
        "severity" : "error",
        "human" : "缺少評估問題時應說明無法評估原因。",
        "expression" : "item.where(linkId='Questions').empty() implies item.where(linkId='Statement').answer.value.exists()",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNSOFsResponse"
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
      "patternCanonical" : "http://ltc-ig.fhir.tw/Questionnaire/hn-sofs"
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
      "id" : "QuestionnaireResponse.item:Questions.item:q4e1023eb",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q4e1023eb",
      "short" : "體重減輕",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q4e1023eb.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Questions.q4e1023eb"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q4e1023eb.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q4e1023eb.item",
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
      "id" : "QuestionnaireResponse.item:Questions.item:q4e1023eb.item:Answer",
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
      "id" : "QuestionnaireResponse.item:Questions.item:q4e1023eb.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Questions.q4e1023eb.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q4e1023eb.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q4e1023eb.item:Answer.answer.value[x]",
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
      "id" : "QuestionnaireResponse.item:Questions.item:q4e1023eb.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q7e60ea58",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q7e60ea58",
      "short" : "下肢功能",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q7e60ea58.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Questions.q7e60ea58"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q7e60ea58.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q7e60ea58.item",
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
      "id" : "QuestionnaireResponse.item:Questions.item:q7e60ea58.item:Answer",
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
      "id" : "QuestionnaireResponse.item:Questions.item:q7e60ea58.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Questions.q7e60ea58.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q7e60ea58.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:q7e60ea58.item:Answer.answer.value[x]",
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
      "id" : "QuestionnaireResponse.item:Questions.item:q7e60ea58.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qc604ec89",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "qc604ec89",
      "short" : "活力降低",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qc604ec89.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Questions.qc604ec89"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qc604ec89.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qc604ec89.item",
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
      "id" : "QuestionnaireResponse.item:Questions.item:qc604ec89.item:Answer",
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
      "id" : "QuestionnaireResponse.item:Questions.item:qc604ec89.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "Questions.qc604ec89.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qc604ec89.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Questions.item:qc604ec89.item:Answer.answer.value[x]",
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
      "id" : "QuestionnaireResponse.item:Questions.item:qc604ec89.item:Answer.item",
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
