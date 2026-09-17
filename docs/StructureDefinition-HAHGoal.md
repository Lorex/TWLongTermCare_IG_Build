# 在宅急症－照護目標 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症－照護目標**

## Resource Profile: 在宅急症－照護目標 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HAHGoal | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HAHGoal |

 
記錄個案預期達到的結果、期限及評值。照護問題應另記錄於 Condition，不以目標取代問題。 

**Usages:**

* Refer to this Profile: [在宅急症－照護資料集](StructureDefinition-HAHCareDataset.md), [在宅急症－照護計畫](StructureDefinition-HAHCarePlan.md) and [在宅急症－結案與轉銜摘要](StructureDefinition-HAHCompositionSummary.md)
* Examples for this Profile: [Goal/hah-goal](Goal-hah-goal.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HAHGoal.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HAHGoal.csv), [Excel](StructureDefinition-HAHGoal.xlsx), [Schematron](StructureDefinition-HAHGoal.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HAHGoal",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHGoal",
  "version" : "1.1.0",
  "name" : "HAHGoal",
  "title" : "在宅急症－照護目標",
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
  "description" : "記錄個案預期達到的結果、期限及評值。照護問題應另記錄於 Condition，不以目標取代問題。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Goal",
  "baseDefinition" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCGoal",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Goal",
      "path" : "Goal"
    },
    {
      "id" : "Goal.extension",
      "path" : "Goal.extension",
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
      "id" : "Goal.extension:episode",
      "path" : "Goal.extension",
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
      "id" : "Goal.description.coding",
      "path" : "Goal.description.coding",
      "short" : "照護目標代碼。[優先使用既有值集；無適切概念時填入個別照護目標代碼並以 text 說明]"
    },
    {
      "id" : "Goal.description.text",
      "path" : "Goal.description.text",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Goal.subject",
      "path" : "Goal.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHPatient"]
      }]
    },
    {
      "id" : "Goal.target",
      "path" : "Goal.target",
      "min" : 1
    },
    {
      "id" : "Goal.target.due[x]",
      "path" : "Goal.target.due[x]",
      "min" : 1
    },
    {
      "id" : "Goal.outcomeReference",
      "path" : "Goal.outcomeReference",
      "mustSupport" : true
    }]
  }
}

```
