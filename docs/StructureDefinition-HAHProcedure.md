# 在宅急症－處置紀錄 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症－處置紀錄**

## Resource Profile: 在宅急症－處置紀錄 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HAHProcedure | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HAHProcedure |

 
沿用長照照護活動，記錄抽痰、傷口照護或管路更換等實際處置。給藥事件使用 MedicationAdministration。 

**Usages:**

* Refer to this Profile: [在宅急症－照護計畫](StructureDefinition-HAHCarePlan.md) and [在宅急症－結案與轉銜摘要](StructureDefinition-HAHCompositionSummary.md)
* Examples for this Profile: [Procedure/hah-procedure](Procedure-hah-procedure.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HAHProcedure.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HAHProcedure.csv), [Excel](StructureDefinition-HAHProcedure.xlsx), [Schematron](StructureDefinition-HAHProcedure.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HAHProcedure",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHProcedure",
  "version" : "1.1.0",
  "name" : "HAHProcedure",
  "title" : "在宅急症－處置紀錄",
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
  "description" : "沿用長照照護活動，記錄抽痰、傷口照護或管路更換等實際處置。給藥事件使用 MedicationAdministration。",
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
  "type" : "Procedure",
  "baseDefinition" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCProcedureCareActivity",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Procedure",
      "path" : "Procedure",
      "constraint" : [{
        "key" : "hah-procedure-completed",
        "severity" : "error",
        "human" : "已完成處置應填入實際執行時間或期間。",
        "expression" : "status = 'completed' implies performed.exists()",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHProcedure"
      }]
    },
    {
      "id" : "Procedure.basedOn",
      "path" : "Procedure.basedOn",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHServiceRequest",
        "http://ltc-ig.fhir.tw/StructureDefinition/HAHCarePlan"]
      }]
    },
    {
      "id" : "Procedure.statusReason",
      "path" : "Procedure.statusReason",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.subject",
      "path" : "Procedure.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHPatient"]
      }]
    },
    {
      "id" : "Procedure.encounter",
      "path" : "Procedure.encounter",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHEncounter"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.performer",
      "path" : "Procedure.performer",
      "min" : 1
    }]
  }
}

```
