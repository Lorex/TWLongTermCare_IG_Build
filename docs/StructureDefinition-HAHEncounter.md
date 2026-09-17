# 在宅急症－就診基礎 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症－就診基礎**

## Resource Profile: 在宅急症－就診基礎 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HAHEncounter | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HAHEncounter |

 
在宅急症的共同就診資料，包含個案、療程、服務機構與實際照護期間。 

**Usages:**

* Derived from this Profile: [在宅急症－整段照護](StructureDefinition-HAHAdmissionEncounter.md) and [在宅急症－單次訪視](StructureDefinition-HAHVisitEncounter.md)
* Refer to this Profile: [在宅急症－過敏資訊](StructureDefinition-HAHAllergyIntolerance.md), [在宅急症－照護資料集](StructureDefinition-HAHCareDataset.md), [在宅急症－照護計畫](StructureDefinition-HAHCarePlan.md), [在宅急症－臨床評估](StructureDefinition-HAHClinicalImpression.md)... Show 11 more, [在宅急症－照會與交班](StructureDefinition-HAHCommunication.md), [在宅急症－結案與轉銜摘要](StructureDefinition-HAHCompositionSummary.md), [在宅急症－診斷與照護問題](StructureDefinition-HAHCondition.md), [在宅急症－檢驗報告](StructureDefinition-HAHDiagnosticReport.md), [在宅急症－照護附件](StructureDefinition-HAHDocumentReference.md), [在宅急症－給藥與輸注](StructureDefinition-HAHMedicationAdministration.md), [在宅急症－給藥處方](StructureDefinition-HAHMedicationRequest.md), [在宅急症－檢驗結果](StructureDefinition-HAHObservationLab.md), [在宅急症－處置紀錄](StructureDefinition-HAHProcedure.md), [在宅急症－服務請求](StructureDefinition-HAHServiceRequest.md) and [在宅急症－照護工作](StructureDefinition-HAHVisitTask.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HAHEncounter.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HAHEncounter.csv), [Excel](StructureDefinition-HAHEncounter.xlsx), [Schematron](StructureDefinition-HAHEncounter.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HAHEncounter",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHEncounter",
  "version" : "1.1.0",
  "name" : "HAHEncounter",
  "title" : "在宅急症－就診基礎",
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
  "description" : "在宅急症的共同就診資料，包含個案、療程、服務機構與實際照護期間。",
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
  "baseDefinition" : "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Encounter-twcore",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Encounter",
      "path" : "Encounter",
      "constraint" : [{
        "key" : "hah-encounter-finished",
        "severity" : "error",
        "human" : "已結束的就診應填入實際結束時間。",
        "expression" : "status = 'finished' implies period.end.exists()",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHEncounter"
      }]
    },
    {
      "id" : "Encounter.subject",
      "path" : "Encounter.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHPatient"]
      }]
    },
    {
      "id" : "Encounter.episodeOfCare",
      "path" : "Encounter.episodeOfCare",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHEpisodeOfCare"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.participant",
      "path" : "Encounter.participant",
      "min" : 1
    },
    {
      "id" : "Encounter.participant.individual",
      "path" : "Encounter.participant.individual",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitionerRole"]
      }]
    },
    {
      "id" : "Encounter.period",
      "path" : "Encounter.period",
      "min" : 1
    },
    {
      "id" : "Encounter.period.start",
      "path" : "Encounter.period.start",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Encounter.diagnosis.condition",
      "path" : "Encounter.diagnosis.condition",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHCondition"]
      }]
    },
    {
      "id" : "Encounter.serviceProvider",
      "path" : "Encounter.serviceProvider",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc"]
      }]
    }]
  }
}

```
