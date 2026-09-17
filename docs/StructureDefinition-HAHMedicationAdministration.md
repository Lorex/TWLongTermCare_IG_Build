# 在宅急症－給藥與輸注 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症－給藥與輸注**

## Resource Profile: 在宅急症－給藥與輸注 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HAHMedicationAdministration | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HAHMedicationAdministration |

 
記錄實際給藥時間點或輸注期間。既有長照給藥強制 effectiveDateTime，因此由 FHIR 父層衍生以支援 effectivePeriod 及未給藥。 

**Usages:**

* Refer to this Profile: [在宅急症－照護計畫](StructureDefinition-HAHCarePlan.md) and [在宅急症－結案與轉銜摘要](StructureDefinition-HAHCompositionSummary.md)
* Examples for this Profile: [MedicationAdministration/hah-infusion](MedicationAdministration-hah-infusion.md) and [MedicationAdministration/hah-medication-not-done](MedicationAdministration-hah-medication-not-done.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HAHMedicationAdministration.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HAHMedicationAdministration.csv), [Excel](StructureDefinition-HAHMedicationAdministration.xlsx), [Schematron](StructureDefinition-HAHMedicationAdministration.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HAHMedicationAdministration",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHMedicationAdministration",
  "version" : "1.1.0",
  "name" : "HAHMedicationAdministration",
  "title" : "在宅急症－給藥與輸注",
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
  "description" : "記錄實際給藥時間點或輸注期間。既有長照給藥強制 effectiveDateTime，因此由 FHIR 父層衍生以支援 effectivePeriod 及未給藥。",
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
  },
  {
    "identity" : "w3c.prov",
    "uri" : "http://www.w3.org/ns/prov",
    "name" : "W3C PROV"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationAdministration",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationAdministration",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationAdministration",
      "path" : "MedicationAdministration",
      "constraint" : [{
        "key" : "hah-medication-dose",
        "severity" : "error",
        "human" : "已完成或進行中的給藥應記錄途徑及劑量或速率。",
        "expression" : "(status = 'completed' or status = 'in-progress') implies (dosage.route.exists() and (dosage.dose.exists() or dosage.rate.exists()))",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHMedicationAdministration"
      },
      {
        "key" : "hah-medication-status-reason",
        "severity" : "error",
        "human" : "未給藥或已停止給藥應填寫原因。",
        "expression" : "(status = 'not-done' or status = 'stopped') implies statusReason.exists()",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHMedicationAdministration"
      }]
    },
    {
      "id" : "MedicationAdministration.statusReason",
      "path" : "MedicationAdministration.statusReason",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.medication[x]",
      "path" : "MedicationAdministration.medication[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "MedicationAdministration.medication[x]:medicationReference",
      "path" : "MedicationAdministration.medication[x]",
      "sliceName" : "medicationReference",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Medication-twcore"]
      }]
    },
    {
      "id" : "MedicationAdministration.subject",
      "path" : "MedicationAdministration.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHPatient"]
      }]
    },
    {
      "id" : "MedicationAdministration.context",
      "path" : "MedicationAdministration.context",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHEncounter"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.effective[x]",
      "path" : "MedicationAdministration.effective[x]",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.performer",
      "path" : "MedicationAdministration.performer",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.performer.actor",
      "path" : "MedicationAdministration.performer.actor",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitionerRole",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCRelatedPerson",
        "http://ltc-ig.fhir.tw/StructureDefinition/HAHPatient",
        "http://ltc-ig.fhir.tw/StructureDefinition/HAHDevice"]
      }]
    },
    {
      "id" : "MedicationAdministration.request",
      "path" : "MedicationAdministration.request",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHMedicationRequest"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage",
      "path" : "MedicationAdministration.dosage",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.route",
      "path" : "MedicationAdministration.dosage.route",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.dose",
      "path" : "MedicationAdministration.dosage.dose",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.rate[x]",
      "path" : "MedicationAdministration.dosage.rate[x]",
      "mustSupport" : true
    }]
  }
}

```
