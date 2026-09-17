# 居家護理－依日期查詢處理結果 API 邏輯模型 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－依日期查詢處理結果 API 邏輯模型**

## Logical Model: 居家護理－依日期查詢處理結果 API 邏輯模型 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNGetLogAPIModel | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNGetLogAPIModel |

 
描述依日期查詢處理結果 API 的請求資料。來源為 V5.0.16 印刷頁 139，所有 API 採 POST。SecretKey 僅用於傳輸驗證，不存入 FHIR。 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNGetLogAPIModel.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNGetLogAPIModel.csv), [Excel](StructureDefinition-HNGetLogAPIModel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNGetLogAPIModel",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNGetLogAPIModel",
  "version" : "1.1.0",
  "name" : "HNGetLogAPIModel",
  "title" : "居家護理－依日期查詢處理結果 API 邏輯模型",
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
  "description" : "描述依日期查詢處理結果 API 的請求資料。來源為 V5.0.16 印刷頁 139，所有 API 採 POST。SecretKey 僅用於傳輸驗證，不存入 FHIR。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "hn-getlog-request",
    "uri" : "http://ltc-ig.fhir.tw/StructureDefinition/HNAPITask",
    "name" : "居家護理－日期查詢參數對應"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ltc-ig.fhir.tw/StructureDefinition/HNGetLogAPIModel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "HNGetLogAPIModel",
      "path" : "HNGetLogAPIModel",
      "short" : "居家護理－依日期查詢處理結果 API 邏輯模型",
      "definition" : "描述依日期查詢處理結果 API 的請求資料。來源為 V5.0.16 印刷頁 139，所有 API 採 POST。SecretKey 僅用於傳輸驗證，不存入 FHIR。"
    },
    {
      "id" : "HNGetLogAPIModel.agency",
      "path" : "HNGetLogAPIModel.agency",
      "short" : "機構識別",
      "definition" : "填入 AGENCY_ID 對應的機構識別。",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }],
      "mapping" : [{
        "identity" : "hn-getlog-request",
        "map" : "Task.requester.resolve().identifier",
        "comment" : "標頭 AGENCY_ID 指定的機構。"
      }]
    },
    {
      "id" : "HNGetLogAPIModel.startDate",
      "path" : "HNGetLogAPIModel.startDate",
      "short" : "取得資料起始日",
      "definition" : "原 API start_date 採 yyyy/MM/dd。",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-getlog-request",
        "map" : "Task.input.where(type.coding.code='start-date').valueDate",
        "comment" : "來源 start_date 由 yyyy/MM/dd 轉為 FHIR date。"
      }]
    },
    {
      "id" : "HNGetLogAPIModel.endDate",
      "path" : "HNGetLogAPIModel.endDate",
      "short" : "取得資料結束日",
      "definition" : "原 API end_date 採 yyyy/MM/dd；未填時為起始日隔天。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-getlog-request",
        "map" : "Task.input.where(type.coding.code='end-date').valueDate",
        "comment" : "來源 end_date 由 yyyy/MM/dd 轉為 FHIR date；省略時保留省略。"
      }]
    }]
  }
}

```
