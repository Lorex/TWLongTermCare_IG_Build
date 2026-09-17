# 居家護理－照護計畫 API 邏輯模型 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－照護計畫 API 邏輯模型**

## Logical Model: 居家護理－照護計畫 API 邏輯模型 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNCarePlanAPIModel | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNCarePlanAPIModel |

 
描述照護計畫 API 的請求資料。來源為 V5.0.16 印刷頁 75–80，所有 API 採 POST。SecretKey 僅用於傳輸驗證，不存入 FHIR。 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNCarePlanAPIModel.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNCarePlanAPIModel.csv), [Excel](StructureDefinition-HNCarePlanAPIModel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNCarePlanAPIModel",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCarePlanAPIModel",
  "version" : "1.1.0",
  "name" : "HNCarePlanAPIModel",
  "title" : "居家護理－照護計畫 API 邏輯模型",
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
  "description" : "描述照護計畫 API 的請求資料。來源為 V5.0.16 印刷頁 75–80，所有 API 採 POST。SecretKey 僅用於傳輸驗證，不存入 FHIR。",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCarePlanAPIModel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "HNCarePlanAPIModel",
      "path" : "HNCarePlanAPIModel",
      "short" : "居家護理－照護計畫 API 邏輯模型",
      "definition" : "描述照護計畫 API 的請求資料。來源為 V5.0.16 印刷頁 75–80，所有 API 採 POST。SecretKey 僅用於傳輸驗證，不存入 FHIR。"
    },
    {
      "id" : "HNCarePlanAPIModel.agency",
      "path" : "HNCarePlanAPIModel.agency",
      "short" : "機構識別",
      "definition" : "填入 AGENCY_ID 對應的機構識別。",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "HNCarePlanAPIModel.dataList",
      "path" : "HNCarePlanAPIModel.dataList",
      "short" : "照護計畫批次",
      "definition" : "目標、措施、評值各至多 100 筆；任一筆失敗時整份檔案不匯入。",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "HNCarePlanAPIModel.dataList.targets",
      "path" : "HNCarePlanAPIModel.dataList.targets",
      "short" : "照護計畫資料",
      "definition" : "照護計畫資料",
      "min" : 0,
      "max" : "100",
      "type" : [{
        "code" : "http://ltc-ig.fhir.tw/StructureDefinition/HNTargetsModel"
      }]
    },
    {
      "id" : "HNCarePlanAPIModel.dataList.measures",
      "path" : "HNCarePlanAPIModel.dataList.measures",
      "short" : "照護計畫資料",
      "definition" : "照護計畫資料",
      "min" : 0,
      "max" : "100",
      "type" : [{
        "code" : "http://ltc-ig.fhir.tw/StructureDefinition/HNMeasuresModel"
      }]
    },
    {
      "id" : "HNCarePlanAPIModel.dataList.evaluations",
      "path" : "HNCarePlanAPIModel.dataList.evaluations",
      "short" : "照護計畫資料",
      "definition" : "照護計畫資料",
      "min" : 0,
      "max" : "100",
      "type" : [{
        "code" : "http://ltc-ig.fhir.tw/StructureDefinition/HNEvaluationsModel"
      }]
    }]
  }
}

```
