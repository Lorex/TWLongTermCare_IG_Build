# 在宅急症－給藥處方 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症－給藥處方**

## Resource Profile: 在宅急症－給藥處方 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HAHMedicationRequest | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HAHMedicationRequest |

 
記錄藥品、用法、劑量、途徑、頻率與處方狀態。實際是否給藥由給藥紀錄表達。 

**Usages:**

* Refer to this Profile: [在宅急症－照護資料集](StructureDefinition-HAHCareDataset.md), [在宅急症－照護計畫](StructureDefinition-HAHCarePlan.md), [在宅急症－結案與轉銜摘要](StructureDefinition-HAHCompositionSummary.md) and [在宅急症－給藥與輸注](StructureDefinition-HAHMedicationAdministration.md)
* Examples for this Profile: [MedicationRequest/hah-medication-order](MedicationRequest-hah-medication-order.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HAHMedicationRequest.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HAHMedicationRequest.csv), [Excel](StructureDefinition-HAHMedicationRequest.xlsx), [Schematron](StructureDefinition-HAHMedicationRequest.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HAHMedicationRequest",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHMedicationRequest",
  "version" : "1.1.0",
  "name" : "HAHMedicationRequest",
  "title" : "在宅急症－給藥處方",
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
  "description" : "記錄藥品、用法、劑量、途徑、頻率與處方狀態。實際是否給藥由給藥紀錄表達。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "script10.6",
    "uri" : "http://ncpdp.org/SCRIPT10_6",
    "name" : "Mapping to NCPDP SCRIPT 10.6"
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
  "type" : "MedicationRequest",
  "baseDefinition" : "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/MedicationRequest-twcore",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationRequest",
      "path" : "MedicationRequest"
    },
    {
      "id" : "MedicationRequest.medication[x]:medicationReference",
      "path" : "MedicationRequest.medication[x]",
      "sliceName" : "medicationReference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Medication-twcore"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.medication[x]:medicationCodeableConcept",
      "path" : "MedicationRequest.medication[x]",
      "sliceName" : "medicationCodeableConcept",
      "type" : [{
        "code" : "CodeableConcept",
        "profile" : ["https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/CodeableConcept-tw"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.subject",
      "path" : "MedicationRequest.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHPatient"]
      }]
    },
    {
      "id" : "MedicationRequest.encounter",
      "path" : "MedicationRequest.encounter",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHEncounter"]
      }]
    },
    {
      "id" : "MedicationRequest.authoredOn",
      "path" : "MedicationRequest.authoredOn",
      "min" : 1
    },
    {
      "id" : "MedicationRequest.requester",
      "path" : "MedicationRequest.requester",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitionerRole"]
      }]
    },
    {
      "id" : "MedicationRequest.reasonReference",
      "path" : "MedicationRequest.reasonReference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHCondition"]
      }]
    },
    {
      "id" : "MedicationRequest.dosageInstruction",
      "path" : "MedicationRequest.dosageInstruction",
      "min" : 1
    },
    {
      "id" : "MedicationRequest.dosageInstruction.text",
      "path" : "MedicationRequest.dosageInstruction.text",
      "min" : 1
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate",
      "mustSupport" : true
    }]
  }
}

```
