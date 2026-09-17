# 居家護理－需求摘要邏輯模型 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－需求摘要邏輯模型**

## Logical Model: 居家護理－需求摘要邏輯模型 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNCaseSummaryModel | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNCaseSummaryModel |

 
描述居家護理需求摘要的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 

**Usages:**

* Use this Logical Model: [居家護理－需求摘要 API 邏輯模型](StructureDefinition-HNCaseSummaryAPIModel.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNCaseSummaryModel.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNCaseSummaryModel.csv), [Excel](StructureDefinition-HNCaseSummaryModel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNCaseSummaryModel",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCaseSummaryModel",
  "version" : "1.1.0",
  "name" : "HNCaseSummaryModel",
  "title" : "居家護理－需求摘要邏輯模型",
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
  "description" : "描述居家護理需求摘要的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "hn-casesummary-fhir",
    "uri" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCaseSummaryResponse",
    "name" : "居家護理－需求摘要欄位對應"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCaseSummaryModel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "HNCaseSummaryModel",
      "path" : "HNCaseSummaryModel",
      "short" : "居家護理－需求摘要邏輯模型",
      "definition" : "描述居家護理需求摘要的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。"
    },
    {
      "id" : "HNCaseSummaryModel.caseID",
      "path" : "HNCaseSummaryModel.caseID",
      "short" : "個案身分證字號",
      "definition" : "個案身分證字號",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-casesummary-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='CaseID')",
        "comment" : "來源欄位／題目：CaseID"
      }]
    },
    {
      "id" : "HNCaseSummaryModel.endDate",
      "path" : "HNCaseSummaryModel.endDate",
      "short" : "收案日期",
      "definition" : "收案日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-casesummary-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='EndDate')",
        "comment" : "來源欄位／題目：EndDate"
      }]
    },
    {
      "id" : "HNCaseSummaryModel.date",
      "path" : "HNCaseSummaryModel.date",
      "short" : "紀錄日期",
      "definition" : "紀錄日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-casesummary-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Date')",
        "comment" : "來源欄位／題目：Date"
      }]
    },
    {
      "id" : "HNCaseSummaryModel.nurseID",
      "path" : "HNCaseSummaryModel.nurseID",
      "short" : "護理人員身分證字號",
      "definition" : "護理人員身分證字號",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-casesummary-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='NurseID')",
        "comment" : "來源欄位／題目：NurseID"
      }]
    },
    {
      "id" : "HNCaseSummaryModel.summary",
      "path" : "HNCaseSummaryModel.summary",
      "short" : "問題列表與摘要",
      "definition" : "問題列表與摘要",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-casesummary-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Summary')",
        "comment" : "來源欄位／題目：Summary"
      }]
    },
    {
      "id" : "HNCaseSummaryModel.summary.questionType",
      "path" : "HNCaseSummaryModel.summary.questionType",
      "short" : "需求類型",
      "definition" : "需求類型",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-bc943cb432ce"
      },
      "mapping" : [{
        "identity" : "hn-casesummary-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Summary').item.where(linkId='Summary.QuestionType')",
        "comment" : "來源欄位／題目：Summary.QuestionType"
      }]
    },
    {
      "id" : "HNCaseSummaryModel.summary.question",
      "path" : "HNCaseSummaryModel.summary.question",
      "short" : "需求項目",
      "definition" : "需求項目。其他類型可自訂項目；以原摘要文字比對。",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-casesummary-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Summary').item.where(linkId='Summary.Question')",
        "comment" : "來源欄位／題目：Summary.Question"
      }]
    },
    {
      "id" : "HNCaseSummaryModel.summary.answer",
      "path" : "HNCaseSummaryModel.summary.answer",
      "short" : "需求摘要備註",
      "definition" : "需求摘要備註",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-casesummary-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Summary').item.where(linkId='Summary.Answer')",
        "comment" : "來源欄位／題目：Summary.Answer"
      }]
    }]
  }
}

```
