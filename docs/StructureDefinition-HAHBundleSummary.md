# 在宅急症－摘要文件 Bundle - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症－摘要文件 Bundle**

## Resource Profile: 在宅急症－摘要文件 Bundle 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HAHBundleSummary | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HAHBundleSummary |

 
以文件 Bundle 交換結案或轉銜摘要。第一筆為 Composition，並包含個案、療程、整段照護及所有文件內參照的資源。 

**Usages:**

* Examples for this Profile: [Bundle/hah-document](Bundle-hah-document.md) and [Bundle/hah-transfer-document](Bundle-hah-transfer-document.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HAHBundleSummary.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HAHBundleSummary.csv), [Excel](StructureDefinition-HAHBundleSummary.xlsx), [Schematron](StructureDefinition-HAHBundleSummary.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HAHBundleSummary",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHBundleSummary",
  "version" : "1.1.0",
  "name" : "HAHBundleSummary",
  "title" : "在宅急症－摘要文件 Bundle",
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
  "description" : "以文件 Bundle 交換結案或轉銜摘要。第一筆為 Composition，並包含個案、療程、整段照護及所有文件內參照的資源。",
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
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle",
      "constraint" : [{
        "key" : "hah-document-first",
        "severity" : "error",
        "human" : "文件第一筆 entry 應為 Composition。",
        "expression" : "entry.first().resource is Composition",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHBundleSummary"
      }]
    },
    {
      "id" : "Bundle.identifier",
      "path" : "Bundle.identifier",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.identifier.system",
      "path" : "Bundle.identifier.system",
      "min" : 1
    },
    {
      "id" : "Bundle.identifier.value",
      "path" : "Bundle.identifier.value",
      "min" : 1
    },
    {
      "id" : "Bundle.type",
      "path" : "Bundle.type",
      "patternCode" : "document"
    },
    {
      "id" : "Bundle.timestamp",
      "path" : "Bundle.timestamp",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "resource"
        }],
        "rules" : "open"
      },
      "min" : 4,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry.request",
      "path" : "Bundle.entry.request",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry.response",
      "path" : "Bundle.entry.response",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:composition",
      "path" : "Bundle.entry",
      "sliceName" : "composition",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:composition.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Composition",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHCompositionSummary"]
      }]
    },
    {
      "id" : "Bundle.entry:patient",
      "path" : "Bundle.entry",
      "sliceName" : "patient",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:patient.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Patient",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHPatient"]
      }]
    },
    {
      "id" : "Bundle.entry:episode",
      "path" : "Bundle.entry",
      "sliceName" : "episode",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:episode.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "EpisodeOfCare",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHEpisodeOfCare"]
      }]
    },
    {
      "id" : "Bundle.entry:admission",
      "path" : "Bundle.entry",
      "sliceName" : "admission",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:admission.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Encounter",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHAdmissionEncounter"]
      }]
    }]
  }
}

```
