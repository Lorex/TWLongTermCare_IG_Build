# 在宅急症－診斷與照護問題 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症－診斷與照護問題**

## Resource Profile: 在宅急症－診斷與照護問題 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HAHCondition | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HAHCondition |

 
記錄本次急症、共病或照護問題。主次診斷的角色與順位記錄在 Encounter 或 EpisodeOfCare 的 diagnosis。 

**Usages:**

* Refer to this Profile: [在宅急症－照護資料集](StructureDefinition-HAHCareDataset.md), [在宅急症－照護計畫](StructureDefinition-HAHCarePlan.md), [在宅急症－臨床評估](StructureDefinition-HAHClinicalImpression.md), [在宅急症－結案與轉銜摘要](StructureDefinition-HAHCompositionSummary.md)... Show 4 more, [在宅急症－就診基礎](StructureDefinition-HAHEncounter.md), [在宅急症－收案療程](StructureDefinition-HAHEpisodeOfCare.md), [在宅急症－給藥處方](StructureDefinition-HAHMedicationRequest.md) and [在宅急症－服務請求](StructureDefinition-HAHServiceRequest.md)
* Examples for this Profile: [Condition/hah-condition](Condition-hah-condition.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HAHCondition.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HAHCondition.csv), [Excel](StructureDefinition-HAHCondition.xlsx), [Schematron](StructureDefinition-HAHCondition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HAHCondition",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHCondition",
  "version" : "1.1.0",
  "name" : "HAHCondition",
  "title" : "在宅急症－診斷與照護問題",
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
  "description" : "記錄本次急症、共病或照護問題。主次診斷的角色與順位記錄在 Encounter 或 EpisodeOfCare 的 diagnosis。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
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
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Condition",
  "baseDefinition" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCCondition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Condition",
      "path" : "Condition"
    },
    {
      "id" : "Condition.subject",
      "path" : "Condition.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHPatient"]
      }]
    },
    {
      "id" : "Condition.encounter",
      "path" : "Condition.encounter",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHEncounter"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.recordedDate",
      "path" : "Condition.recordedDate",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
