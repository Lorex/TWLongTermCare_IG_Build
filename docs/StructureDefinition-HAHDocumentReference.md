# 在宅急症－照護附件 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症－照護附件**

## Resource Profile: 在宅急症－照護附件 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HAHDocumentReference | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HAHDocumentReference |

 
記錄照片、同意文件、報告或其他照護附件的索引、作者與就診脈絡。 

**Usages:**

* Refer to this Profile: [在宅急症－照護資料集](StructureDefinition-HAHCareDataset.md), [在宅急症－照會與交班](StructureDefinition-HAHCommunication.md), [在宅急症－結案與轉銜摘要](StructureDefinition-HAHCompositionSummary.md) and [在宅急症－照護同意](StructureDefinition-HAHConsent.md)
* Examples for this Profile: [DocumentReference/hah-attachment](DocumentReference-hah-attachment.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HAHDocumentReference.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HAHDocumentReference.csv), [Excel](StructureDefinition-HAHDocumentReference.xlsx), [Schematron](StructureDefinition-HAHDocumentReference.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HAHDocumentReference",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHDocumentReference",
  "version" : "1.1.0",
  "name" : "HAHDocumentReference",
  "title" : "在宅急症－照護附件",
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
  "description" : "記錄照片、同意文件、報告或其他照護附件的索引、作者與就診脈絡。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "fhircomposition",
    "uri" : "http://hl7.org/fhir/composition",
    "name" : "FHIR Composition"
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
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "xds",
    "uri" : "http://ihe.net/xds",
    "name" : "XDS metadata equivalent"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DocumentReference",
  "baseDefinition" : "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/DocumentReference-twcore",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DocumentReference",
      "path" : "DocumentReference"
    },
    {
      "id" : "DocumentReference.type",
      "path" : "DocumentReference.type",
      "min" : 1
    },
    {
      "id" : "DocumentReference.subject",
      "path" : "DocumentReference.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHPatient"]
      }]
    },
    {
      "id" : "DocumentReference.date",
      "path" : "DocumentReference.date",
      "min" : 1
    },
    {
      "id" : "DocumentReference.author",
      "path" : "DocumentReference.author",
      "min" : 1
    },
    {
      "id" : "DocumentReference.content.attachment",
      "path" : "DocumentReference.content.attachment",
      "constraint" : [{
        "key" : "hah-attachment-content",
        "severity" : "error",
        "human" : "附件應提供內容或可取得檔案的網址。",
        "expression" : "data.exists() or url.exists()",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HAHDocumentReference"
      }]
    },
    {
      "id" : "DocumentReference.content.attachment.contentType",
      "path" : "DocumentReference.content.attachment.contentType",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "DocumentReference.context.encounter",
      "path" : "DocumentReference.context.encounter",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHEncounter"]
      }],
      "mustSupport" : true
    }]
  }
}

```
