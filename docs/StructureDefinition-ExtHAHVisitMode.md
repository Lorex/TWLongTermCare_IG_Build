# 在宅急症－訪視方式 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症－訪視方式**

## Extension: 在宅急症－訪視方式 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/ExtHAHVisitMode | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:ExtHAHVisitMode |

填入此次訪視為實地、視訊或電話評估。

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [在宅急症－單次訪視](StructureDefinition-HAHVisitEncounter.md)
* Examples for this Extension: [Bundle/hah-document](Bundle-hah-document.md), [Encounter/hah-video-visit](Encounter-hah-video-visit.md) and [Encounter/hah-visit](Encounter-hah-visit.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-ExtHAHVisitMode.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ExtHAHVisitMode.csv), [Excel](StructureDefinition-ExtHAHVisitMode.xlsx), [Schematron](StructureDefinition-ExtHAHVisitMode.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ExtHAHVisitMode",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHAHVisitMode",
  "version" : "1.1.0",
  "name" : "ExtHAHVisitMode",
  "title" : "在宅急症－訪視方式",
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
  "description" : "填入此次訪視為實地、視訊或電話評估。",
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
    "expression" : "Encounter"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "在宅急症－訪視方式",
      "definition" : "填入此次訪視為實地、視訊或電話評估。"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHAHVisitMode"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hah-visit-mode"
      }
    }]
  }
}

```
