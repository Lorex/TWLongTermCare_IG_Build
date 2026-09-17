# 居家護理－照護計畫評值紀錄邏輯模型 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－照護計畫評值紀錄邏輯模型**

## Logical Model: 居家護理－照護計畫評值紀錄邏輯模型 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNEvaluationsModel | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNEvaluationsModel |

 
描述居家護理照護計畫評值紀錄的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 

**Usages:**

* Use this Logical Model: [居家護理－照護計畫 API 邏輯模型](StructureDefinition-HNCarePlanAPIModel.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNEvaluationsModel.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNEvaluationsModel.csv), [Excel](StructureDefinition-HNEvaluationsModel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNEvaluationsModel",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNEvaluationsModel",
  "version" : "1.1.0",
  "name" : "HNEvaluationsModel",
  "title" : "居家護理－照護計畫評值紀錄邏輯模型",
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
  "description" : "描述居家護理照護計畫評值紀錄的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "hn-evaluations-fhir",
    "uri" : "http://ltc-ig.fhir.tw/StructureDefinition/HNEvaluationsResponse",
    "name" : "居家護理－照護計畫評值紀錄欄位對應"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ltc-ig.fhir.tw/StructureDefinition/HNEvaluationsModel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "HNEvaluationsModel",
      "path" : "HNEvaluationsModel",
      "short" : "居家護理－照護計畫評值紀錄邏輯模型",
      "definition" : "描述居家護理照護計畫評值紀錄的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。"
    },
    {
      "id" : "HNEvaluationsModel.caseID",
      "path" : "HNEvaluationsModel.caseID",
      "short" : "個案身分證字號",
      "definition" : "個案身分證字號",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-evaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='CaseID')",
        "comment" : "來源欄位／題目：CaseID"
      }]
    },
    {
      "id" : "HNEvaluationsModel.endDate",
      "path" : "HNEvaluationsModel.endDate",
      "short" : "收案日期",
      "definition" : "收案日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-evaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='EndDate')",
        "comment" : "來源欄位／題目：EndDate"
      }]
    },
    {
      "id" : "HNEvaluationsModel.summaryCreateDate",
      "path" : "HNEvaluationsModel.summaryCreateDate",
      "short" : "需求摘要評估日期",
      "definition" : "需求摘要評估日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-evaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='SummaryCreateDate')",
        "comment" : "來源欄位／題目：SummaryCreateDate"
      }]
    },
    {
      "id" : "HNEvaluationsModel.summary",
      "path" : "HNEvaluationsModel.summary",
      "short" : "需求摘要項目",
      "definition" : "需求摘要項目",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-evaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Summary')",
        "comment" : "來源欄位／題目：Summary"
      }]
    },
    {
      "id" : "HNEvaluationsModel.summaryAnswer",
      "path" : "HNEvaluationsModel.summaryAnswer",
      "short" : "需求摘要備註",
      "definition" : "需求摘要備註",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-evaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='SummaryAnswer')",
        "comment" : "來源欄位／題目：SummaryAnswer"
      }]
    },
    {
      "id" : "HNEvaluationsModel.targetStatement",
      "path" : "HNEvaluationsModel.targetStatement",
      "short" : "目標描述",
      "definition" : "目標描述",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-evaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='TargetStatement')",
        "comment" : "來源欄位／題目：TargetStatement"
      }]
    },
    {
      "id" : "HNEvaluationsModel.evaluationDate",
      "path" : "HNEvaluationsModel.evaluationDate",
      "short" : "紀錄日期",
      "definition" : "紀錄日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-evaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='EvaluationDate')",
        "comment" : "來源欄位／題目：EvaluationDate"
      }]
    },
    {
      "id" : "HNEvaluationsModel.evaluationContent",
      "path" : "HNEvaluationsModel.evaluationContent",
      "short" : "評值紀錄",
      "definition" : "評值紀錄",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-evaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='EvaluationContent')",
        "comment" : "來源欄位／題目：EvaluationContent"
      }]
    },
    {
      "id" : "HNEvaluationsModel.nurseID",
      "path" : "HNEvaluationsModel.nurseID",
      "short" : "建立護理人員身分證字號",
      "definition" : "建立護理人員身分證字號",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-evaluations-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='NurseID')",
        "comment" : "來源欄位／題目：NurseID"
      }]
    }]
  }
}

```
