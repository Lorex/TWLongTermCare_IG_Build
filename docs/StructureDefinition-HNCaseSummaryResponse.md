# 居家護理－需求摘要表單 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－需求摘要表單**

## Resource Profile: 居家護理－需求摘要表單 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNCaseSummaryResponse | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNCaseSummaryResponse |

 
記錄需求摘要的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。 

**Usages:**

* Examples for this Profile: [QuestionnaireResponse/hn-casesummary-example](QuestionnaireResponse-hn-casesummary-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNCaseSummaryResponse.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNCaseSummaryResponse.csv), [Excel](StructureDefinition-HNCaseSummaryResponse.xlsx), [Schematron](StructureDefinition-HNCaseSummaryResponse.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNCaseSummaryResponse",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCaseSummaryResponse",
  "version" : "1.1.0",
  "name" : "HNCaseSummaryResponse",
  "title" : "居家護理－需求摘要表單",
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
  "description" : "記錄需求摘要的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。",
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
      "path" : "QuestionnaireResponse"
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
      "patternCanonical" : "http://ltc-ig.fhir.tw/Questionnaire/hn-casesummary"
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
      "min" : 5
    },
    {
      "id" : "QuestionnaireResponse.item:CaseID",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "CaseID",
      "short" : "個案身分證字號",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:CaseID.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "CaseID"
    },
    {
      "id" : "QuestionnaireResponse.item:CaseID.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:CaseID.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 10
    },
    {
      "id" : "QuestionnaireResponse.item:CaseID.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:EndDate",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "EndDate",
      "short" : "收案日期",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:EndDate.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "EndDate"
    },
    {
      "id" : "QuestionnaireResponse.item:EndDate.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:EndDate.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:EndDate.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
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
      "id" : "QuestionnaireResponse.item:Summary",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "Summary",
      "short" : "問題列表與摘要",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Summary.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "Summary"
    },
    {
      "id" : "QuestionnaireResponse.item:Summary.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Summary.item",
      "path" : "QuestionnaireResponse.item.item",
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
      "id" : "QuestionnaireResponse.item:Summary.item:QuestionType",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "QuestionType",
      "short" : "需求類型",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Summary.item:QuestionType.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Summary.QuestionType"
    },
    {
      "id" : "QuestionnaireResponse.item:Summary.item:QuestionType.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Summary.item:QuestionType.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-bc943cb432ce"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:Summary.item:QuestionType.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Summary.item:Question",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Question",
      "short" : "需求項目",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Summary.item:Question.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Summary.Question"
    },
    {
      "id" : "QuestionnaireResponse.item:Summary.item:Question.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Summary.item:Question.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:Summary.item:Question.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Summary.item:Answer",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Answer",
      "short" : "需求摘要備註",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Summary.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Summary.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:Summary.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Summary.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:Summary.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    }]
  }
}

```
