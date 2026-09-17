# 在宅急症－單次訪視 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症－單次訪視**

## Resource Profile: 在宅急症－單次訪視 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HAHVisitEncounter | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HAHVisitEncounter |

 
每次實地、視訊或電話評估建立一筆訪視，參照整段照護與收案療程。預約或通知不能當成已完成訪視。 

**Usages:**

* Examples for this Profile: [Encounter/hah-video-visit](Encounter-hah-video-visit.md) and [Encounter/hah-visit](Encounter-hah-visit.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HAHVisitEncounter.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HAHVisitEncounter.csv), [Excel](StructureDefinition-HAHVisitEncounter.xlsx), [Schematron](StructureDefinition-HAHVisitEncounter.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HAHVisitEncounter",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHVisitEncounter",
  "version" : "1.1.0",
  "name" : "HAHVisitEncounter",
  "title" : "在宅急症－單次訪視",
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
  "description" : "每次實地、視訊或電話評估建立一筆訪視，參照整段照護與收案療程。預約或通知不能當成已完成訪視。",
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
  "type" : "Encounter",
  "baseDefinition" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHEncounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Encounter",
      "path" : "Encounter",
      "constraint" : [{
        "key" : "hah-visit-class",
        "severity" : "error",
        "human" : "實地訪視使用 HH，視訊或電話評估使用 VR。",
        "expression" : "class.system = 'http://terminology.hl7.org/CodeSystem/v3-ActCode' and ((extension.where(url='http://ltc-ig.fhir.tw/StructureDefinition/ExtHAHVisitMode').first().value = 'in-person' and class.code = 'HH') or (extension.where(url='http://ltc-ig.fhir.tw/StructureDefinition/ExtHAHVisitMode').first().value != 'in-person' and class.code = 'VR'))",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHVisitEncounter"
      }]
    },
    {
      "id" : "Encounter.extension",
      "path" : "Encounter.extension",
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
      "id" : "Encounter.extension:mode",
      "path" : "Encounter.extension",
      "sliceName" : "mode",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/ExtHAHVisitMode"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.type",
      "path" : "Encounter.type",
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-activity",
          "code" : "visit"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Encounter.partOf",
      "path" : "Encounter.partOf",
      "min" : 1,
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : true
        }],
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHAdmissionEncounter"]
      }],
      "mustSupport" : true
    }]
  }
}

```
