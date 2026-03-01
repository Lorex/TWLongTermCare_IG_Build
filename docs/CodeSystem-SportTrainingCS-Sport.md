# 身體活動量測-重量訓練代碼系統 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **身體活動量測-重量訓練代碼系統**

## CodeSystem: 身體活動量測-重量訓練代碼系統 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/SportTrainingCS-Sport | *Version*:1.0.0 |
| Active as of 2024-06-04 | *Computable Name*:SportTrainingCS |

 
此代碼系統定義重量訓練各個方面的代碼，包括使用的重量、執行的組數以及每組的重複次數。本 CodeSystem 繼承自身體活動量測 IG，後續將配合原始 IG 進行更新。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SportTrainingVSSport](ValueSet-SportTrainingVS-Sport.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "SportTrainingCS-Sport",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/SportTrainingCS-Sport",
  "version" : "1.0.0",
  "name" : "SportTrainingCS",
  "title" : "身體活動量測-重量訓練代碼系統",
  "status" : "active",
  "experimental" : false,
  "date" : "2024-06-04",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此代碼系統定義重量訓練各個方面的代碼，包括使用的重量、執行的組數以及每組的重複次數。本 CodeSystem 繼承自身體活動量測 IG，後續將配合原始 IG 進行更新。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "property" : [{
    "code" : "updateDate",
    "uri" : "http://ltc-ig.fhir.tw/fhir/StructureDefinition/updateDate",
    "description" : "異動日期",
    "type" : "string"
  },
  {
    "code" : "event",
    "uri" : "http://ltc-ig.fhir.tw/fhir/StructureDefinition/event",
    "description" : "異動方式",
    "type" : "string"
  }],
  "concept" : [{
    "code" : "training-wt",
    "display" : "訓練重量",
    "property" : [{
      "code" : "updateDate",
      "valueString" : "2024-06"
    },
    {
      "code" : "event",
      "valueString" : "新增"
    }]
  },
  {
    "code" : "sets",
    "display" : "訓練組數",
    "property" : [{
      "code" : "updateDate",
      "valueString" : "2024-06"
    },
    {
      "code" : "event",
      "valueString" : "新增"
    }]
  }]
}

```
