# 身體活動量測-步態週期 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **身體活動量測-步態週期**

## CodeSystem: 身體活動量測-步態週期 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/GaitCycleCS-Sport | *Version*:1.1.0 |
| Active as of 2024-06-04 | *Computable Name*:GaitCycleCSSport |
| *Other Identifiers:*OID:2.25.207962637999855919469810539042803624695 | |

 
一個步伐的完整過程，從一隻腳接觸地面開始到同一隻腳再次接觸地面結束。這個過程可以分為兩個主要階段：支撐期（stance phase）和擺動期（swing phase）。本 CodeSystem 繼承自身體活動量測 IG，後續將配合原始 IG 進行更新。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [身體活動量測-步態週期值集](ValueSet-GaitCycleVS-Sport.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "GaitCycleCS-Sport",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/GaitCycleCS-Sport",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.207962637999855919469810539042803624695"
  }],
  "version" : "1.1.0",
  "name" : "GaitCycleCSSport",
  "title" : "身體活動量測-步態週期",
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
  "description" : "一個步伐的完整過程，從一隻腳接觸地面開始到同一隻腳再次接觸地面結束。這個過程可以分為兩個主要階段：支撐期（stance phase）和擺動期（swing phase）。本 CodeSystem 繼承自身體活動量測 IG，後續將配合原始 IG 進行更新。",
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
    "code" : "1",
    "display" : "支撐期(stance phase)",
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
    "code" : "2",
    "display" : "擺動期(swing phase)",
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
