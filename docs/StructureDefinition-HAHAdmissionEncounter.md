# 在宅急症－整段照護 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症－整段照護**

## Resource Profile: 在宅急症－整段照護 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HAHAdmissionEncounter | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HAHAdmissionEncounter |

 
表達本次在宅急症的整段照護，供每次訪視透過 partOf 參照。IMP 表示本資料集的在宅住院照護分類，不代表照護地點在醫院。 

**Usages:**

* Use this Profile: [在宅急症－摘要文件 Bundle](StructureDefinition-HAHBundleSummary.md)
* Refer to this Profile: [在宅急症－照護資料集](StructureDefinition-HAHCareDataset.md), [在宅急症－照護團隊](StructureDefinition-HAHCareTeam.md), [在宅急症－結案與轉銜摘要](StructureDefinition-HAHCompositionSummary.md) and [在宅急症－單次訪視](StructureDefinition-HAHVisitEncounter.md)
* Examples for this Profile: [Encounter/hah-admission](Encounter-hah-admission.md) and [Encounter/hah-transfer-admission](Encounter-hah-transfer-admission.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HAHAdmissionEncounter.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HAHAdmissionEncounter.csv), [Excel](StructureDefinition-HAHAdmissionEncounter.xlsx), [Schematron](StructureDefinition-HAHAdmissionEncounter.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HAHAdmissionEncounter",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHAdmissionEncounter",
  "version" : "1.1.0",
  "name" : "HAHAdmissionEncounter",
  "title" : "在宅急症－整段照護",
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
  "description" : "表達本次在宅急症的整段照護，供每次訪視透過 partOf 參照。IMP 表示本資料集的在宅住院照護分類，不代表照護地點在醫院。",
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
      "path" : "Encounter"
    },
    {
      "id" : "Encounter.class",
      "path" : "Encounter.class",
      "patternCoding" : {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code" : "IMP"
      }
    },
    {
      "id" : "Encounter.type",
      "path" : "Encounter.type",
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
      "id" : "Encounter.hospitalization.admitSource",
      "path" : "Encounter.hospitalization.admitSource",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.hospitalization.destination",
      "path" : "Encounter.hospitalization.destination",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Location-twcore",
        "http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc"]
      }],
      "mustSupport" : true
    }]
  }
}

```
