# 居家護理－照護計畫 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－照護計畫**

## Resource Profile: 居家護理－照護計畫 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNCarePlan | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:HNCarePlan |

 
沿用長照照顧計畫，串聯需求摘要、目標、措施與評值表單。 

**Usages:**

* Use this Profile: [居家護理－照護計畫交易](StructureDefinition-HNCarePlanTransaction.md)
* Examples for this Profile: [CarePlan/hn-careplan-example](CarePlan-hn-careplan-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNCarePlan.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNCarePlan.csv), [Excel](StructureDefinition-HNCarePlan.xlsx), [Schematron](StructureDefinition-HNCarePlan.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNCarePlan",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNCarePlan",
  "version" : "1.1.0",
  "name" : "HNCarePlan",
  "title" : "居家護理－照護計畫",
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
  "description" : "沿用長照照顧計畫，串聯需求摘要、目標、措施與評值表單。",
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
      "min" : 2
    },
    {
      "id" : "CarePlan.extension:episode",
      "path" : "CarePlan.extension",
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
      "id" : "CarePlan.extension:sourceForm",
      "path" : "CarePlan.extension",
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
      "id" : "CarePlan.subject",
      "path" : "CarePlan.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HNPatient"]
      }]
    },
    {
      "id" : "CarePlan.goal",
      "path" : "CarePlan.goal",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HNGoal"]
      }]
    },
    {
      "id" : "CarePlan.activity.extension",
      "path" : "CarePlan.activity.extension",
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
      "id" : "CarePlan.activity.extension:stop",
      "path" : "CarePlan.activity.extension",
      "sliceName" : "stop",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/ExtHNMeasureStop"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity.outcomeReference",
      "path" : "CarePlan.activity.outcomeReference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HNEvaluationsResponse"]
      }]
    },
    {
      "id" : "CarePlan.activity.progress",
      "path" : "CarePlan.activity.progress",
      "short" : "評值文字；完整評值表單由 outcomeReference 參照"
    },
    {
      "id" : "CarePlan.activity.reference",
      "path" : "CarePlan.activity.reference",
      "max" : "0"
    },
    {
      "id" : "CarePlan.activity.detail",
      "path" : "CarePlan.activity.detail",
      "min" : 1
    },
    {
      "id" : "CarePlan.activity.detail.goal",
      "path" : "CarePlan.activity.detail.goal",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HNGoal"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity.detail.description",
      "path" : "CarePlan.activity.detail.description",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
