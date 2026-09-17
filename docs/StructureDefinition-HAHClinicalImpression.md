# 在宅急症－臨床評估 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症－臨床評估**

## Resource Profile: 在宅急症－臨床評估 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HAHClinicalImpression | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HAHClinicalImpression |

 
記錄評估人員對病情的判斷、發現與摘要。生命徵象、檢驗、已執行處置及費用不應只以 JSON 字串塞入 note。 

**Usages:**

* Refer to this Profile: [在宅急症－照護計畫](StructureDefinition-HAHCarePlan.md) and [在宅急症－結案與轉銜摘要](StructureDefinition-HAHCompositionSummary.md)
* Examples for this Profile: [ClinicalImpression/hah-impression](ClinicalImpression-hah-impression.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HAHClinicalImpression.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HAHClinicalImpression.csv), [Excel](StructureDefinition-HAHClinicalImpression.xlsx), [Schematron](StructureDefinition-HAHClinicalImpression.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HAHClinicalImpression",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHClinicalImpression",
  "version" : "1.1.0",
  "name" : "HAHClinicalImpression",
  "title" : "在宅急症－臨床評估",
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
  "description" : "記錄評估人員對病情的判斷、發現與摘要。生命徵象、檢驗、已執行處置及費用不應只以 JSON 字串塞入 note。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ClinicalImpression",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ClinicalImpression",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ClinicalImpression",
      "path" : "ClinicalImpression"
    },
    {
      "id" : "ClinicalImpression.subject",
      "path" : "ClinicalImpression.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHPatient"]
      }]
    },
    {
      "id" : "ClinicalImpression.encounter",
      "path" : "ClinicalImpression.encounter",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHEncounter"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.effective[x]",
      "path" : "ClinicalImpression.effective[x]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.date",
      "path" : "ClinicalImpression.date",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.assessor",
      "path" : "ClinicalImpression.assessor",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitionerRole"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.problem",
      "path" : "ClinicalImpression.problem",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHCondition"]
      }]
    },
    {
      "id" : "ClinicalImpression.summary",
      "path" : "ClinicalImpression.summary",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.finding",
      "path" : "ClinicalImpression.finding",
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.supportingInfo",
      "path" : "ClinicalImpression.supportingInfo",
      "mustSupport" : true
    },
    {
      "id" : "ClinicalImpression.note",
      "path" : "ClinicalImpression.note",
      "short" : "必要的補充文字。[結構化檢驗、給藥與處置應以支持資料參照]"
    }]
  }
}

```
