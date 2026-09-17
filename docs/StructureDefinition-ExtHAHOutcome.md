# 在宅急症－療程結束原因 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症－療程結束原因**

## Extension: 在宅急症－療程結束原因 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/ExtHAHOutcome | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:ExtHAHOutcome |

療程結束時填入原因。其他原因應另填文字說明。

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [在宅急症－收案療程](StructureDefinition-HAHEpisodeOfCare.md)
* Examples for this Extension: [Bundle/hah-document](Bundle-hah-document.md), [Bundle/hah-transfer-document](Bundle-hah-transfer-document.md), [EpisodeOfCare/hah-episode](EpisodeOfCare-hah-episode.md) and [EpisodeOfCare/hah-transfer-episode](EpisodeOfCare-hah-transfer-episode.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-ExtHAHOutcome.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ExtHAHOutcome.csv), [Excel](StructureDefinition-ExtHAHOutcome.xlsx), [Schematron](StructureDefinition-ExtHAHOutcome.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ExtHAHOutcome",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHAHOutcome",
  "version" : "1.1.0",
  "name" : "ExtHAHOutcome",
  "title" : "在宅急症－療程結束原因",
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
  "description" : "療程結束時填入原因。其他原因應另填文字說明。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "EpisodeOfCare"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "在宅急症－療程結束原因",
      "definition" : "療程結束時填入原因。其他原因應另填文字說明。"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHAHOutcome"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "constraint" : [{
        "key" : "hah-outcome-other",
        "severity" : "error",
        "human" : "結束原因為其他時應填寫文字說明。",
        "expression" : "coding.where(system='http://ltc-ig.fhir.tw/CodeSystem/hah-outcome' and code='other').exists() implies text.exists()",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHAHOutcome"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hah-outcome"
      }
    }]
  }
}

```
