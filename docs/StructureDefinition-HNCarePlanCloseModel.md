# 居家護理－照護計畫結案邏輯模型 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－照護計畫結案邏輯模型**

## Logical Model: 居家護理－照護計畫結案邏輯模型 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNCarePlanCloseModel | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNCarePlanCloseModel |

 
描述居家護理照護計畫結案的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 

**Usages:**

* Use this Logical Model: [居家護理－照護計畫結案 API 邏輯模型](StructureDefinition-HNCarePlanCloseAPIModel.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNCarePlanCloseModel.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNCarePlanCloseModel.csv), [Excel](StructureDefinition-HNCarePlanCloseModel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNCarePlanCloseModel",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCarePlanCloseModel",
  "version" : "1.1.0",
  "name" : "HNCarePlanCloseModel",
  "title" : "居家護理－照護計畫結案邏輯模型",
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
  "description" : "描述居家護理照護計畫結案的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "hn-careplanclose-fhir",
    "uri" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCarePlanCloseResponse",
    "name" : "居家護理－照護計畫結案欄位對應"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCarePlanCloseModel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "HNCarePlanCloseModel",
      "path" : "HNCarePlanCloseModel",
      "short" : "居家護理－照護計畫結案邏輯模型",
      "definition" : "描述居家護理照護計畫結案的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。"
    },
    {
      "id" : "HNCarePlanCloseModel.caseID",
      "path" : "HNCarePlanCloseModel.caseID",
      "short" : "個案身分證字號",
      "definition" : "個案身分證字號",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-careplanclose-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='CaseID')",
        "comment" : "來源欄位／題目：CaseID"
      }]
    },
    {
      "id" : "HNCarePlanCloseModel.endDate",
      "path" : "HNCarePlanCloseModel.endDate",
      "short" : "收案日期",
      "definition" : "收案日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-careplanclose-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='EndDate')",
        "comment" : "來源欄位／題目：EndDate"
      }]
    },
    {
      "id" : "HNCarePlanCloseModel.summaryCreateDate",
      "path" : "HNCarePlanCloseModel.summaryCreateDate",
      "short" : "需求摘要評估日期",
      "definition" : "需求摘要評估日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-careplanclose-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='SummaryCreateDate')",
        "comment" : "來源欄位／題目：SummaryCreateDate"
      }]
    },
    {
      "id" : "HNCarePlanCloseModel.summary",
      "path" : "HNCarePlanCloseModel.summary",
      "short" : "需求摘要項目",
      "definition" : "需求摘要項目",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-careplanclose-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Summary')",
        "comment" : "來源欄位／題目：Summary"
      }]
    },
    {
      "id" : "HNCarePlanCloseModel.summaryAnswer",
      "path" : "HNCarePlanCloseModel.summaryAnswer",
      "short" : "需求摘要備註",
      "definition" : "需求摘要備註",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-careplanclose-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='SummaryAnswer')",
        "comment" : "來源欄位／題目：SummaryAnswer"
      }]
    },
    {
      "id" : "HNCarePlanCloseModel.targetStatement",
      "path" : "HNCarePlanCloseModel.targetStatement",
      "short" : "目標描述",
      "definition" : "目標描述",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-careplanclose-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='TargetStatement')",
        "comment" : "來源欄位／題目：TargetStatement"
      }]
    },
    {
      "id" : "HNCarePlanCloseModel.targetCreateDate",
      "path" : "HNCarePlanCloseModel.targetCreateDate",
      "short" : "目標建立日期",
      "definition" : "目標建立日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-careplanclose-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='TargetCreateDate')",
        "comment" : "來源欄位／題目：TargetCreateDate"
      }]
    },
    {
      "id" : "HNCarePlanCloseModel.closeDate",
      "path" : "HNCarePlanCloseModel.closeDate",
      "short" : "結案日期",
      "definition" : "結案日期",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-careplanclose-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='CloseDate')",
        "comment" : "來源欄位／題目：CloseDate"
      }]
    },
    {
      "id" : "HNCarePlanCloseModel.closeID",
      "path" : "HNCarePlanCloseModel.closeID",
      "short" : "結案護理人員身分證字號",
      "definition" : "結案護理人員身分證字號",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-careplanclose-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='CloseID')",
        "comment" : "來源欄位／題目：CloseID"
      }]
    }]
  }
}

```
