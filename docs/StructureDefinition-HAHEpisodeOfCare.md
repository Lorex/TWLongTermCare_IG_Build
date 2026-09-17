# 在宅急症－收案療程 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症－收案療程**

## Resource Profile: 在宅急症－收案療程 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HAHEpisodeOfCare | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HAHEpisodeOfCare |

 
每次收案建立一筆療程，記錄負責機構、期間、診斷與團隊。再次收案建立新的療程，仍參照同一個案。 

**Usages:**

* Use this Profile: [在宅急症－摘要文件 Bundle](StructureDefinition-HAHBundleSummary.md)
* Refer to this Profile: [在宅急症－療程關聯](StructureDefinition-ExtHAHEpisode.md), [在宅急症－結案與轉銜摘要](StructureDefinition-HAHCompositionSummary.md) and [在宅急症－就診基礎](StructureDefinition-HAHEncounter.md)
* Examples for this Profile: [EpisodeOfCare/hah-episode](EpisodeOfCare-hah-episode.md) and [EpisodeOfCare/hah-transfer-episode](EpisodeOfCare-hah-transfer-episode.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HAHEpisodeOfCare.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HAHEpisodeOfCare.csv), [Excel](StructureDefinition-HAHEpisodeOfCare.xlsx), [Schematron](StructureDefinition-HAHEpisodeOfCare.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HAHEpisodeOfCare",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHEpisodeOfCare",
  "version" : "1.1.0",
  "name" : "HAHEpisodeOfCare",
  "title" : "在宅急症－收案療程",
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
  "description" : "每次收案建立一筆療程，記錄負責機構、期間、診斷與團隊。再次收案建立新的療程，仍參照同一個案。",
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "EpisodeOfCare",
  "baseDefinition" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCEpisodeOfCareBase",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "EpisodeOfCare",
      "path" : "EpisodeOfCare",
      "constraint" : [{
        "key" : "hah-episode-finished",
        "severity" : "error",
        "human" : "療程完成時應填寫實際結束時間與結束原因。",
        "expression" : "status = 'finished' implies (period.end.exists() and extension.where(url='http://ltc-ig.fhir.tw/StructureDefinition/ExtHAHOutcome').exists())",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHEpisodeOfCare"
      }]
    },
    {
      "id" : "EpisodeOfCare.extension",
      "path" : "EpisodeOfCare.extension",
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
      "id" : "EpisodeOfCare.extension:outcome",
      "path" : "EpisodeOfCare.extension",
      "sliceName" : "outcome",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/ExtHAHOutcome"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "EpisodeOfCare.identifier",
      "path" : "EpisodeOfCare.identifier",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "EpisodeOfCare.identifier.system",
      "path" : "EpisodeOfCare.identifier.system",
      "min" : 1
    },
    {
      "id" : "EpisodeOfCare.identifier.value",
      "path" : "EpisodeOfCare.identifier.value",
      "min" : 1
    },
    {
      "id" : "EpisodeOfCare.statusHistory",
      "path" : "EpisodeOfCare.statusHistory",
      "mustSupport" : true
    },
    {
      "id" : "EpisodeOfCare.type",
      "path" : "EpisodeOfCare.type",
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-activity",
          "code" : "acute-home"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "EpisodeOfCare.diagnosis",
      "path" : "EpisodeOfCare.diagnosis",
      "mustSupport" : true
    },
    {
      "id" : "EpisodeOfCare.diagnosis.condition",
      "path" : "EpisodeOfCare.diagnosis.condition",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHCondition"]
      }]
    },
    {
      "id" : "EpisodeOfCare.patient",
      "path" : "EpisodeOfCare.patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHPatient"]
      }]
    },
    {
      "id" : "EpisodeOfCare.managingOrganization",
      "path" : "EpisodeOfCare.managingOrganization",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc"]
      }]
    },
    {
      "id" : "EpisodeOfCare.referralRequest",
      "path" : "EpisodeOfCare.referralRequest",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHServiceRequest"]
      }]
    },
    {
      "id" : "EpisodeOfCare.careManager",
      "path" : "EpisodeOfCare.careManager",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitionerRole"]
      }]
    },
    {
      "id" : "EpisodeOfCare.team",
      "path" : "EpisodeOfCare.team",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHCareTeam"]
      }]
    }]
  }
}

```
