# 在宅急症－照護同意 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症－照護同意**

## Resource Profile: 在宅急症－照護同意 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HAHConsent | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HAHConsent |

 
記錄照護同意的狀態、範圍、時間及來源文件。此資源不取代可執行的醫囑，也不以一般同意代替 DNR 決定。 

**Usages:**

* Refer to this Profile: [在宅急症－結案與轉銜摘要](StructureDefinition-HAHCompositionSummary.md)
* Examples for this Profile: [Consent/hah-consent](Consent-hah-consent.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HAHConsent.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HAHConsent.csv), [Excel](StructureDefinition-HAHConsent.xlsx), [Schematron](StructureDefinition-HAHConsent.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HAHConsent",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHConsent",
  "version" : "1.1.0",
  "name" : "HAHConsent",
  "title" : "在宅急症－照護同意",
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
  "description" : "記錄照護同意的狀態、範圍、時間及來源文件。此資源不取代可執行的醫囑，也不以一般同意代替 DNR 決定。",
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
  "type" : "Consent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Consent",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Consent",
      "path" : "Consent"
    },
    {
      "id" : "Consent.extension",
      "path" : "Consent.extension",
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
      "id" : "Consent.extension:episode",
      "path" : "Consent.extension",
      "sliceName" : "episode",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/ExtHAHEpisode"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Consent.patient",
      "path" : "Consent.patient",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHPatient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Consent.dateTime",
      "path" : "Consent.dateTime",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Consent.performer",
      "path" : "Consent.performer",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHPatient",
        "http://ltc-ig.fhir.tw/StructureDefinition/LTCRelatedPerson"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Consent.organization",
      "path" : "Consent.organization",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Organization-twltc"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Consent.source[x]",
      "path" : "Consent.source[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Consent.source[x]:sourceReference",
      "path" : "Consent.source[x]",
      "sliceName" : "sourceReference",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHDocumentReference"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Consent.source[x]:sourceAttachment",
      "path" : "Consent.source[x]",
      "sliceName" : "sourceAttachment",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Attachment"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Consent.provision.period",
      "path" : "Consent.provision.period",
      "mustSupport" : true
    }]
  }
}

```
