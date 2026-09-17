# 在宅急症－照護計畫 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症－照護計畫**

## Resource Profile: 在宅急症－照護計畫 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HAHCarePlan | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HAHCarePlan |

 
沿用長照照顧計畫，串聯本次療程的病情、目標、服務請求及給藥處方。實際執行結果另以臨床資源記錄。 

**Usages:**

* Refer to this Profile: [在宅急症－照會與交班](StructureDefinition-HAHCommunication.md), [在宅急症－結案與轉銜摘要](StructureDefinition-HAHCompositionSummary.md), [在宅急症－處置紀錄](StructureDefinition-HAHProcedure.md) and [在宅急症－照護工作](StructureDefinition-HAHVisitTask.md)
* Examples for this Profile: [CarePlan/hah-plan](CarePlan-hah-plan.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HAHCarePlan.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HAHCarePlan.csv), [Excel](StructureDefinition-HAHCarePlan.xlsx), [Schematron](StructureDefinition-HAHCarePlan.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HAHCarePlan",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHCarePlan",
  "version" : "1.1.0",
  "name" : "HAHCarePlan",
  "title" : "在宅急症－照護計畫",
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
  "description" : "沿用長照照顧計畫，串聯本次療程的病情、目標、服務請求及給藥處方。實際執行結果另以臨床資源記錄。",
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
  "baseDefinition" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCCarePlan",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "CarePlan",
      "path" : "CarePlan"
    },
    {
      "id" : "CarePlan.extension",
      "path" : "CarePlan.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "CarePlan.extension:episode",
      "path" : "CarePlan.extension",
      "sliceName" : "episode",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/ExtHAHEpisode"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.partOf",
      "path" : "CarePlan.partOf",
      "short" : "此計畫所屬的上層計畫"
    },
    {
      "id" : "CarePlan.subject",
      "path" : "CarePlan.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHPatient"]
      }]
    },
    {
      "id" : "CarePlan.encounter",
      "path" : "CarePlan.encounter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHEncounter"]
      }]
    },
    {
      "id" : "CarePlan.addresses",
      "path" : "CarePlan.addresses",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHCondition"]
      }]
    },
    {
      "id" : "CarePlan.goal",
      "path" : "CarePlan.goal",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHGoal"]
      }]
    },
    {
      "id" : "CarePlan.activity.outcomeReference",
      "path" : "CarePlan.activity.outcomeReference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHProcedure",
        "http://ltc-ig.fhir.tw/StructureDefinition/HAHClinicalImpression",
        "http://hl7.org/fhir/StructureDefinition/Observation",
        "http://ltc-ig.fhir.tw/StructureDefinition/HAHMedicationAdministration"]
      }]
    },
    {
      "id" : "CarePlan.activity.reference",
      "path" : "CarePlan.activity.reference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHServiceRequest",
        "http://ltc-ig.fhir.tw/StructureDefinition/HAHMedicationRequest"]
      }]
    }]
  }
}

```
