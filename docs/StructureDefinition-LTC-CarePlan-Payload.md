# 長照 SDK－照顧計畫（不含輔具） - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 SDK－照顧計畫（不含輔具）**

## Resource Profile: 長照 SDK－照顧計畫（不含輔具） 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTC-CarePlan-Payload | *Version*:1.0.0 |
| Draft as of 2026-03-02 | *Computable Name*:LTCCarePlanPayload |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 CarePlan Resource，以呈現長照 SDK 回傳之照顧計畫，包含服務項目代碼、金額、數量及頻率等資料。 

**Usages:**

* Derived from this Profile: [長照 SDK－照顧計畫（CS100）](StructureDefinition-LTC-CarePlan-CS100.md)
* Use this Profile: [長照 SDK－回傳包（4合1）](StructureDefinition-LTC-Bundle-Payload.md)
* Refer to this Profile: [個案總查詢（CS100 對應版）Case Summary](StructureDefinition-LTC-Composition-CS100.md)
* Examples for this Profile: [CarePlan/ltc-careplan-cs100-example](CarePlan-ltc-careplan-cs100-example.md) and [CarePlan/ltc-careplan-sdk-example](CarePlan-ltc-careplan-sdk-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTC-CarePlan-Payload)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTC-CarePlan-Payload.csv), [Excel](StructureDefinition-LTC-CarePlan-Payload.xlsx), [Schematron](StructureDefinition-LTC-CarePlan-Payload.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTC-CarePlan-Payload",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTC-CarePlan-Payload",
  "version" : "1.0.0",
  "name" : "LTCCarePlanPayload",
  "title" : "長照 SDK－照顧計畫（不含輔具）",
  "status" : "draft",
  "date" : "2026-03-02T02:26:08+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 CarePlan Resource，以呈現長照 SDK 回傳之照顧計畫，包含服務項目代碼、金額、數量及頻率等資料。",
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
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "CarePlan",
  "baseDefinition" : "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/CarePlan-twcore",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "CarePlan.intent",
      "path" : "CarePlan.intent",
      "patternCode" : "plan"
    },
    {
      "id" : "CarePlan.subject",
      "path" : "CarePlan.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPatient"]
      }]
    },
    {
      "id" : "CarePlan.period",
      "path" : "CarePlan.period",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity",
      "path" : "CarePlan.activity",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity.detail",
      "path" : "CarePlan.activity.detail",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity.detail.extension",
      "path" : "CarePlan.activity.detail.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "CarePlan.activity.detail.extension:unitPrice",
      "path" : "CarePlan.activity.detail.extension",
      "sliceName" : "unitPrice",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-UnitPrice"]
      }]
    },
    {
      "id" : "CarePlan.activity.detail.code",
      "path" : "CarePlan.activity.detail.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity.detail.scheduled[x]",
      "path" : "CarePlan.activity.detail.scheduled[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "type" : [{
        "code" : "Timing"
      },
      {
        "code" : "string"
      }]
    },
    {
      "id" : "CarePlan.activity.detail.scheduled[x]:scheduledTiming",
      "path" : "CarePlan.activity.detail.scheduled[x]",
      "sliceName" : "scheduledTiming",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Timing"
      }]
    }]
  }
}

```
