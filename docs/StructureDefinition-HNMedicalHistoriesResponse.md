# 居家護理－疾病史評估表單 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－疾病史評估表單**

## Resource Profile: 居家護理－疾病史評估表單 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNMedicalHistoriesResponse | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNMedicalHistoriesResponse |

 
記錄疾病史評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。 

**Usages:**

* Examples for this Profile: [QuestionnaireResponse/hn-medicalhistories-example](QuestionnaireResponse-hn-medicalhistories-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNMedicalHistoriesResponse.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNMedicalHistoriesResponse.csv), [Excel](StructureDefinition-HNMedicalHistoriesResponse.xlsx), [Schematron](StructureDefinition-HNMedicalHistoriesResponse.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNMedicalHistoriesResponse",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNMedicalHistoriesResponse",
  "version" : "1.1.0",
  "name" : "HNMedicalHistoriesResponse",
  "title" : "居家護理－疾病史評估表單",
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
  "description" : "記錄疾病史評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。",
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
        "key" : "hn-medicalhistories-1",
        "severity" : "error",
        "human" : "暫存填是時，表單狀態必須為 in-progress。",
        "expression" : "item.where(linkId='IsTemporary').answer.value.ofType(Coding).where(code='cb5141d3d19e9').exists() implies status='in-progress'",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNMedicalHistoriesResponse"
      },
      {
        "key" : "hn-medicalhistories-2",
        "severity" : "error",
        "human" : "暫存填否時，表單狀態必須為 completed 或 amended。",
        "expression" : "item.where(linkId='IsTemporary').answer.value.ofType(Coding).where(code='c0c70665b6eb6').exists() implies (status='completed' or status='amended')",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNMedicalHistoriesResponse"
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
      "patternCanonical" : "http://ltc-ig.fhir.tw/Questionnaire/hn-medicalhistories"
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
      "min" : 4
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
      "id" : "QuestionnaireResponse.item:AnsOther_1",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "AnsOther_1",
      "short" : "主要診斷",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:AnsOther_1.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "AnsOther_1"
    },
    {
      "id" : "QuestionnaireResponse.item:AnsOther_1.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:AnsOther_1.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 500
    },
    {
      "id" : "QuestionnaireResponse.item:AnsOther_1.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:AnsOther_2",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "AnsOther_2",
      "short" : "次要診斷",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:AnsOther_2.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "AnsOther_2"
    },
    {
      "id" : "QuestionnaireResponse.item:AnsOther_2.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:AnsOther_2.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 500
    },
    {
      "id" : "QuestionnaireResponse.item:AnsOther_2.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "MedicalHistoryQuestions",
      "short" : "評估項目",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "MedicalHistoryQuestions"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item",
      "path" : "QuestionnaireResponse.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 14
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q32e5fad7",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q32e5fad7",
      "short" : "心臟問題(只包含心臟)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q32e5fad7.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "MedicalHistoryQuestions.q32e5fad7"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q32e5fad7.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q32e5fad7.item",
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
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q32e5fad7.item:Answer",
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
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q32e5fad7.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "MedicalHistoryQuestions.q32e5fad7.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q32e5fad7.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q32e5fad7.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d782d810cfdd"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q32e5fad7.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q32e5fad7.item:Statement",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Statement",
      "short" : "備註",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q32e5fad7.item:Statement.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "MedicalHistoryQuestions.q32e5fad7.Statement"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q32e5fad7.item:Statement.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q32e5fad7.item:Statement.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q32e5fad7.item:Statement.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qbeda0dd8",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "qbeda0dd8",
      "short" : "周邊血管系統問題(包括高血壓)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qbeda0dd8.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "MedicalHistoryQuestions.qbeda0dd8"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qbeda0dd8.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qbeda0dd8.item",
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
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qbeda0dd8.item:Answer",
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
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qbeda0dd8.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "MedicalHistoryQuestions.qbeda0dd8.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qbeda0dd8.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qbeda0dd8.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d782d810cfdd"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qbeda0dd8.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qbeda0dd8.item:Statement",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Statement",
      "short" : "備註",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qbeda0dd8.item:Statement.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "MedicalHistoryQuestions.qbeda0dd8.Statement"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qbeda0dd8.item:Statement.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qbeda0dd8.item:Statement.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qbeda0dd8.item:Statement.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q628b2adc",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q628b2adc",
      "short" : "造血系統問題(貧血、血球、淋巴、骨髓、脾臟等)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q628b2adc.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "MedicalHistoryQuestions.q628b2adc"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q628b2adc.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q628b2adc.item",
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
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q628b2adc.item:Answer",
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
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q628b2adc.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "MedicalHistoryQuestions.q628b2adc.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q628b2adc.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q628b2adc.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d782d810cfdd"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q628b2adc.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q628b2adc.item:Statement",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Statement",
      "short" : "備註",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q628b2adc.item:Statement.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "MedicalHistoryQuestions.q628b2adc.Statement"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q628b2adc.item:Statement.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q628b2adc.item:Statement.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q628b2adc.item:Statement.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q7e61f4f9",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q7e61f4f9",
      "short" : "呼吸系統問題(肺部、支氣管、氣管及抽菸狀況)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q7e61f4f9.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "MedicalHistoryQuestions.q7e61f4f9"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q7e61f4f9.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q7e61f4f9.item",
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
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q7e61f4f9.item:Answer",
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
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q7e61f4f9.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "MedicalHistoryQuestions.q7e61f4f9.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q7e61f4f9.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q7e61f4f9.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d782d810cfdd"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q7e61f4f9.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q7e61f4f9.item:Statement",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Statement",
      "short" : "備註",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q7e61f4f9.item:Statement.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "MedicalHistoryQuestions.q7e61f4f9.Statement"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q7e61f4f9.item:Statement.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q7e61f4f9.item:Statement.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q7e61f4f9.item:Statement.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q958e3479",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q958e3479",
      "short" : "眼耳鼻喉問題",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q958e3479.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "MedicalHistoryQuestions.q958e3479"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q958e3479.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q958e3479.item",
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
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q958e3479.item:Answer",
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
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q958e3479.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "MedicalHistoryQuestions.q958e3479.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q958e3479.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q958e3479.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d782d810cfdd"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q958e3479.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q958e3479.item:Statement",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Statement",
      "short" : "備註",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q958e3479.item:Statement.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "MedicalHistoryQuestions.q958e3479.Statement"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q958e3479.item:Statement.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q958e3479.item:Statement.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q958e3479.item:Statement.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q5713fd48",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q5713fd48",
      "short" : "上消化道問題(食道、胃、十二指腸)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q5713fd48.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "MedicalHistoryQuestions.q5713fd48"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q5713fd48.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q5713fd48.item",
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
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q5713fd48.item:Answer",
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
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q5713fd48.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "MedicalHistoryQuestions.q5713fd48.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q5713fd48.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q5713fd48.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d782d810cfdd"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q5713fd48.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q5713fd48.item:Statement",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Statement",
      "short" : "備註",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q5713fd48.item:Statement.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "MedicalHistoryQuestions.q5713fd48.Statement"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q5713fd48.item:Statement.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q5713fd48.item:Statement.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q5713fd48.item:Statement.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q486b7939",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q486b7939",
      "short" : "下消化道問題(小腸、大腸、直腸)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q486b7939.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "MedicalHistoryQuestions.q486b7939"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q486b7939.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q486b7939.item",
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
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q486b7939.item:Answer",
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
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q486b7939.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "MedicalHistoryQuestions.q486b7939.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q486b7939.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q486b7939.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d782d810cfdd"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q486b7939.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q486b7939.item:Statement",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Statement",
      "short" : "備註",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q486b7939.item:Statement.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "MedicalHistoryQuestions.q486b7939.Statement"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q486b7939.item:Statement.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q486b7939.item:Statement.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q486b7939.item:Statement.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qb7ad0283",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "qb7ad0283",
      "short" : "肝膽胰臟問題",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qb7ad0283.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "MedicalHistoryQuestions.qb7ad0283"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qb7ad0283.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qb7ad0283.item",
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
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qb7ad0283.item:Answer",
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
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qb7ad0283.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "MedicalHistoryQuestions.qb7ad0283.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qb7ad0283.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qb7ad0283.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d782d810cfdd"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qb7ad0283.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qb7ad0283.item:Statement",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Statement",
      "short" : "備註",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qb7ad0283.item:Statement.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "MedicalHistoryQuestions.qb7ad0283.Statement"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qb7ad0283.item:Statement.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qb7ad0283.item:Statement.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qb7ad0283.item:Statement.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qc62d7017",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "qc62d7017",
      "short" : "腎臟問題",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qc62d7017.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "MedicalHistoryQuestions.qc62d7017"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qc62d7017.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qc62d7017.item",
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
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qc62d7017.item:Answer",
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
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qc62d7017.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "MedicalHistoryQuestions.qc62d7017.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qc62d7017.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qc62d7017.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d782d810cfdd"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qc62d7017.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qc62d7017.item:Statement",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Statement",
      "short" : "備註",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qc62d7017.item:Statement.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "MedicalHistoryQuestions.qc62d7017.Statement"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qc62d7017.item:Statement.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qc62d7017.item:Statement.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qc62d7017.item:Statement.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qa92ba1d3",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "qa92ba1d3",
      "short" : "其他泌尿生殖系統問題(輸尿管、尿道、膀胱、攝護腺、其他生殖系統問題)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qa92ba1d3.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "MedicalHistoryQuestions.qa92ba1d3"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qa92ba1d3.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qa92ba1d3.item",
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
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qa92ba1d3.item:Answer",
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
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qa92ba1d3.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "MedicalHistoryQuestions.qa92ba1d3.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qa92ba1d3.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qa92ba1d3.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d782d810cfdd"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qa92ba1d3.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qa92ba1d3.item:Statement",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Statement",
      "short" : "備註",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qa92ba1d3.item:Statement.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "MedicalHistoryQuestions.qa92ba1d3.Statement"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qa92ba1d3.item:Statement.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qa92ba1d3.item:Statement.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qa92ba1d3.item:Statement.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q48138ed7",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q48138ed7",
      "short" : "肌肉骨骼皮膚問題",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q48138ed7.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "MedicalHistoryQuestions.q48138ed7"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q48138ed7.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q48138ed7.item",
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
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q48138ed7.item:Answer",
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
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q48138ed7.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "MedicalHistoryQuestions.q48138ed7.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q48138ed7.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q48138ed7.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d782d810cfdd"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q48138ed7.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q48138ed7.item:Statement",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Statement",
      "short" : "備註",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q48138ed7.item:Statement.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "MedicalHistoryQuestions.q48138ed7.Statement"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q48138ed7.item:Statement.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q48138ed7.item:Statement.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q48138ed7.item:Statement.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q24f8809f",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q24f8809f",
      "short" : "神經系統問題(腦部、脊髓、周邊神經等、不包含失智症)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q24f8809f.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "MedicalHistoryQuestions.q24f8809f"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q24f8809f.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q24f8809f.item",
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
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q24f8809f.item:Answer",
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
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q24f8809f.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "MedicalHistoryQuestions.q24f8809f.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q24f8809f.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q24f8809f.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d782d810cfdd"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q24f8809f.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q24f8809f.item:Statement",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Statement",
      "short" : "備註",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q24f8809f.item:Statement.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "MedicalHistoryQuestions.q24f8809f.Statement"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q24f8809f.item:Statement.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q24f8809f.item:Statement.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q24f8809f.item:Statement.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qe34cc85c",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "qe34cc85c",
      "short" : "內分泌、感染與代謝問題(包含糖尿病、甲狀腺、肥胖、乳房異常、感染性疾病與毒藥物問題)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qe34cc85c.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "MedicalHistoryQuestions.qe34cc85c"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qe34cc85c.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qe34cc85c.item",
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
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qe34cc85c.item:Answer",
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
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qe34cc85c.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "MedicalHistoryQuestions.qe34cc85c.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qe34cc85c.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qe34cc85c.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d782d810cfdd"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qe34cc85c.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qe34cc85c.item:Statement",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Statement",
      "short" : "備註",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qe34cc85c.item:Statement.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "MedicalHistoryQuestions.qe34cc85c.Statement"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qe34cc85c.item:Statement.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qe34cc85c.item:Statement.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:qe34cc85c.item:Statement.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q2c808271",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "q2c808271",
      "short" : "情緒與行為問題(包括憂鬱、焦慮、激躁、急性混亂、瞻妄及失智症等問題)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q2c808271.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "MedicalHistoryQuestions.q2c808271"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q2c808271.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q2c808271.item",
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
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q2c808271.item:Answer",
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
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q2c808271.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "MedicalHistoryQuestions.q2c808271.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q2c808271.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q2c808271.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-d782d810cfdd"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q2c808271.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q2c808271.item:Statement",
      "path" : "QuestionnaireResponse.item.item.item",
      "sliceName" : "Statement",
      "short" : "備註",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q2c808271.item:Statement.linkId",
      "path" : "QuestionnaireResponse.item.item.item.linkId",
      "patternString" : "MedicalHistoryQuestions.q2c808271.Statement"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q2c808271.item:Statement.answer",
      "path" : "QuestionnaireResponse.item.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q2c808271.item:Statement.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:MedicalHistoryQuestions.item:q2c808271.item:Statement.item",
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
