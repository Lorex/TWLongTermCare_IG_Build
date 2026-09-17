# 居家護理－照護目標 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－照護目標**

## Resource Profile: 居家護理－照護目標 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNGoal | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:HNGoal |

 
沿用長照照顧目標，記錄目標敘述、預期達到日期及是否為主要目標。 

**Usages:**

* Use this Profile: [居家護理－照護計畫交易](StructureDefinition-HNCarePlanTransaction.md)
* Refer to this Profile: [居家護理－照護計畫](StructureDefinition-HNCarePlan.md)
* Examples for this Profile: [Goal/hn-goal-example](Goal-hn-goal-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNGoal.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNGoal.csv), [Excel](StructureDefinition-HNGoal.xlsx), [Schematron](StructureDefinition-HNGoal.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNGoal",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNGoal",
  "version" : "1.1.0",
  "name" : "HNGoal",
  "title" : "居家護理－照護目標",
  "status" : "active",
  "date" : "2026-09-17T17:33:17+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "沿用長照照顧目標，記錄目標敘述、預期達到日期及是否為主要目標。",
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
      "min" : 3
    },
    {
      "id" : "Goal.extension:episode",
      "path" : "Goal.extension",
      "sliceName" : "episode",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/ExtHNEpisode"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Goal.extension:sourceForm",
      "path" : "Goal.extension",
      "sliceName" : "sourceForm",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/ExtHNSourceForm"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Goal.extension:mainTarget",
      "path" : "Goal.extension",
      "sliceName" : "mainTarget",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/ExtHNMainTarget"]
      }],
      "mustSupport" : true
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
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HNPatient"]
      }]
    },
    {
      "id" : "Goal.start[x]",
      "path" : "Goal.start[x]",
      "min" : 1,
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "Goal.target",
      "path" : "Goal.target",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Goal.target.due[x]",
      "path" : "Goal.target.due[x]",
      "min" : 1,
      "type" : [{
        "code" : "date"
      }]
    }]
  }
}

```
