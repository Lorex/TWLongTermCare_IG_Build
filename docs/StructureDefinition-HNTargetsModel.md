# 居家護理－照護計畫目標邏輯模型 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－照護計畫目標邏輯模型**

## Logical Model: 居家護理－照護計畫目標邏輯模型 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNTargetsModel | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNTargetsModel |

 
描述居家護理照護計畫目標的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 

**Usages:**

* Use this Logical Model: [居家護理－照護計畫 API 邏輯模型](StructureDefinition-HNCarePlanAPIModel.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNTargetsModel.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNTargetsModel.csv), [Excel](StructureDefinition-HNTargetsModel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNTargetsModel",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNTargetsModel",
  "version" : "1.1.0",
  "name" : "HNTargetsModel",
  "title" : "居家護理－照護計畫目標邏輯模型",
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
  "description" : "描述居家護理照護計畫目標的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "hn-targets-fhir",
    "uri" : "http://ltc-ig.fhir.tw/StructureDefinition/HNTargetsResponse",
    "name" : "居家護理－照護計畫目標欄位對應"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ltc-ig.fhir.tw/StructureDefinition/HNTargetsModel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "HNTargetsModel",
      "path" : "HNTargetsModel",
      "short" : "居家護理－照護計畫目標邏輯模型",
      "definition" : "描述居家護理照護計畫目標的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。"
    },
    {
      "id" : "HNTargetsModel.caseID",
      "path" : "HNTargetsModel.caseID",
      "short" : "個案身分證字號",
      "definition" : "個案身分證字號",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-targets-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='CaseID')",
        "comment" : "來源欄位／題目：CaseID"
      }]
    },
    {
      "id" : "HNTargetsModel.endDate",
      "path" : "HNTargetsModel.endDate",
      "short" : "收案日期",
      "definition" : "收案日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-targets-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='EndDate')",
        "comment" : "來源欄位／題目：EndDate"
      }]
    },
    {
      "id" : "HNTargetsModel.summaryCreateDate",
      "path" : "HNTargetsModel.summaryCreateDate",
      "short" : "需求摘要評估日期",
      "definition" : "需求摘要評估日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-targets-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='SummaryCreateDate')",
        "comment" : "來源欄位／題目：SummaryCreateDate"
      }]
    },
    {
      "id" : "HNTargetsModel.summary",
      "path" : "HNTargetsModel.summary",
      "short" : "需求摘要項目",
      "definition" : "需求摘要項目",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-targets-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Summary')",
        "comment" : "來源欄位／題目：Summary"
      }]
    },
    {
      "id" : "HNTargetsModel.summaryAnswer",
      "path" : "HNTargetsModel.summaryAnswer",
      "short" : "需求摘要備註",
      "definition" : "需求摘要備註",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-targets-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='SummaryAnswer')",
        "comment" : "來源欄位／題目：SummaryAnswer"
      }]
    },
    {
      "id" : "HNTargetsModel.targetStatement",
      "path" : "HNTargetsModel.targetStatement",
      "short" : "目標描述",
      "definition" : "目標描述",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-targets-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='TargetStatement')",
        "comment" : "來源欄位／題目：TargetStatement"
      }]
    },
    {
      "id" : "HNTargetsModel.targetCreateDate",
      "path" : "HNTargetsModel.targetCreateDate",
      "short" : "目標建立日期",
      "definition" : "目標建立日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-targets-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='TargetCreateDate')",
        "comment" : "來源欄位／題目：TargetCreateDate"
      }]
    },
    {
      "id" : "HNTargetsModel.targetStatement2",
      "path" : "HNTargetsModel.targetStatement2",
      "short" : "目標補充說明",
      "definition" : "目標補充說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-targets-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='TargetStatement2')",
        "comment" : "來源欄位／題目：TargetStatement2"
      }]
    },
    {
      "id" : "HNTargetsModel.estimatedDate",
      "path" : "HNTargetsModel.estimatedDate",
      "short" : "預期達到日期",
      "definition" : "預期達到日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-targets-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='EstimatedDate')",
        "comment" : "來源欄位／題目：EstimatedDate"
      }]
    },
    {
      "id" : "HNTargetsModel.isMainTarget",
      "path" : "HNTargetsModel.isMainTarget",
      "short" : "是否主要目標",
      "definition" : "是否主要目標",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "hn-targets-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='IsMainTarget')",
        "comment" : "來源欄位／題目：IsMainTarget"
      }]
    },
    {
      "id" : "HNTargetsModel.nurseID",
      "path" : "HNTargetsModel.nurseID",
      "short" : "建立護理人員身分證字號",
      "definition" : "建立護理人員身分證字號",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-targets-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='NurseID')",
        "comment" : "來源欄位／題目：NurseID"
      }]
    }]
  }
}

```
