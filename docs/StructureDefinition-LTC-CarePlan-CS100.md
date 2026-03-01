# 長照 SDK－照顧計畫（CS100） - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 SDK－照顧計畫（CS100）**

## Resource Profile: 長照 SDK－照顧計畫（CS100） 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTC-CarePlan-CS100 | *Version*:1.0.0 |
| Draft as of 2026-03-02 | *Computable Name*:LTCCarePlanCS100 |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 CarePlan Resource，以呈現 CS100 個案總查詢之照顧計畫資料，規則同 LTCCarePlanPayload。 

**Usages:**

* Examples for this Profile: [CarePlan/ltc-careplan-cs100-standalone-example](CarePlan-ltc-careplan-cs100-standalone-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTC-CarePlan-CS100)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTC-CarePlan-CS100.csv), [Excel](StructureDefinition-LTC-CarePlan-CS100.xlsx), [Schematron](StructureDefinition-LTC-CarePlan-CS100.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTC-CarePlan-CS100",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTC-CarePlan-CS100",
  "version" : "1.0.0",
  "name" : "LTCCarePlanCS100",
  "title" : "長照 SDK－照顧計畫（CS100）",
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
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 CarePlan Resource，以呈現 CS100 個案總查詢之照顧計畫資料，規則同 LTCCarePlanPayload。",
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
  "baseDefinition" : "http://ltc-ig.fhir.tw/StructureDefinition/LTC-CarePlan-Payload",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "CarePlan",
      "path" : "CarePlan"
    },
    {
      "id" : "CarePlan.period.start",
      "path" : "CarePlan.period.start",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.careTeam",
      "path" : "CarePlan.careTeam",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCCareTeam"]
      }]
    },
    {
      "id" : "CarePlan.supportingInfo",
      "path" : "CarePlan.supportingInfo",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/CoverageEligibilityResponse"]
      }]
    },
    {
      "id" : "CarePlan.activity.detail.scheduled[x]",
      "path" : "CarePlan.activity.detail.scheduled[x]",
      "type" : [{
        "code" : "Timing"
      }]
    },
    {
      "id" : "CarePlan.activity.detail.performer",
      "path" : "CarePlan.activity.detail.performer",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitionerRole",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner",
        "http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc"]
      }]
    }]
  }
}

```
