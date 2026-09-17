# 居家護理－照護計畫措施邏輯模型 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－照護計畫措施邏輯模型**

## Logical Model: 居家護理－照護計畫措施邏輯模型 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNMeasuresModel | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNMeasuresModel |

 
描述居家護理照護計畫措施的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 

**Usages:**

* Use this Logical Model: [居家護理－照護計畫 API 邏輯模型](StructureDefinition-HNCarePlanAPIModel.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNMeasuresModel.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNMeasuresModel.csv), [Excel](StructureDefinition-HNMeasuresModel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNMeasuresModel",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNMeasuresModel",
  "version" : "1.1.0",
  "name" : "HNMeasuresModel",
  "title" : "居家護理－照護計畫措施邏輯模型",
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
  "description" : "描述居家護理照護計畫措施的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "hn-measures-fhir",
    "uri" : "http://ltc-ig.fhir.tw/StructureDefinition/HNMeasuresResponse",
    "name" : "居家護理－照護計畫措施欄位對應"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ltc-ig.fhir.tw/StructureDefinition/HNMeasuresModel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "HNMeasuresModel",
      "path" : "HNMeasuresModel",
      "short" : "居家護理－照護計畫措施邏輯模型",
      "definition" : "描述居家護理照護計畫措施的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。"
    },
    {
      "id" : "HNMeasuresModel.caseID",
      "path" : "HNMeasuresModel.caseID",
      "short" : "個案身分證字號",
      "definition" : "個案身分證字號",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-measures-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='CaseID')",
        "comment" : "來源欄位／題目：CaseID"
      }]
    },
    {
      "id" : "HNMeasuresModel.endDate",
      "path" : "HNMeasuresModel.endDate",
      "short" : "收案日期",
      "definition" : "收案日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-measures-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='EndDate')",
        "comment" : "來源欄位／題目：EndDate"
      }]
    },
    {
      "id" : "HNMeasuresModel.summaryCreateDate",
      "path" : "HNMeasuresModel.summaryCreateDate",
      "short" : "需求摘要評估日期",
      "definition" : "需求摘要評估日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-measures-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='SummaryCreateDate')",
        "comment" : "來源欄位／題目：SummaryCreateDate"
      }]
    },
    {
      "id" : "HNMeasuresModel.summary",
      "path" : "HNMeasuresModel.summary",
      "short" : "需求摘要項目",
      "definition" : "需求摘要項目",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-measures-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Summary')",
        "comment" : "來源欄位／題目：Summary"
      }]
    },
    {
      "id" : "HNMeasuresModel.summaryAnswer",
      "path" : "HNMeasuresModel.summaryAnswer",
      "short" : "需求摘要備註",
      "definition" : "需求摘要備註",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-measures-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='SummaryAnswer')",
        "comment" : "來源欄位／題目：SummaryAnswer"
      }]
    },
    {
      "id" : "HNMeasuresModel.targetStatement",
      "path" : "HNMeasuresModel.targetStatement",
      "short" : "目標描述",
      "definition" : "目標描述",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-measures-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='TargetStatement')",
        "comment" : "來源欄位／題目：TargetStatement"
      }]
    },
    {
      "id" : "HNMeasuresModel.measureCreateDate",
      "path" : "HNMeasuresModel.measureCreateDate",
      "short" : "措施建立日期",
      "definition" : "措施建立日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-measures-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MeasureCreateDate')",
        "comment" : "來源欄位／題目：MeasureCreateDate"
      }]
    },
    {
      "id" : "HNMeasuresModel.measureContent",
      "path" : "HNMeasuresModel.measureContent",
      "short" : "措施內容",
      "definition" : "措施內容",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-measures-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MeasureContent')",
        "comment" : "來源欄位／題目：MeasureContent"
      }]
    },
    {
      "id" : "HNMeasuresModel.nurseID",
      "path" : "HNMeasuresModel.nurseID",
      "short" : "建立護理人員身分證字號",
      "definition" : "建立護理人員身分證字號",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-measures-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='NurseID')",
        "comment" : "來源欄位／題目：NurseID"
      }]
    },
    {
      "id" : "HNMeasuresModel.measureStopDate",
      "path" : "HNMeasuresModel.measureStopDate",
      "short" : "停止日期",
      "definition" : "停止日期",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-measures-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MeasureStopDate')",
        "comment" : "來源欄位／題目：MeasureStopDate"
      }]
    },
    {
      "id" : "HNMeasuresModel.measureStopContent",
      "path" : "HNMeasuresModel.measureStopContent",
      "short" : "停止原因",
      "definition" : "停止原因",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-measures-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MeasureStopContent')",
        "comment" : "來源欄位／題目：MeasureStopContent"
      }]
    },
    {
      "id" : "HNMeasuresModel.measureStopNurseID",
      "path" : "HNMeasuresModel.measureStopNurseID",
      "short" : "停止護理人員身分證字號",
      "definition" : "停止護理人員身分證字號",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-measures-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='MeasureStopNurseID')",
        "comment" : "來源欄位／題目：MeasureStopNurseID"
      }]
    }]
  }
}

```
