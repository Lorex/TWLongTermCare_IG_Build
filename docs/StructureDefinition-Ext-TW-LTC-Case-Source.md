# 長照 SDK－案件－申請來源 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 SDK－案件－申請來源**

## Extension: 長照 SDK－案件－申請來源 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-Case-Source | *Version*:1.0.0 |
| Active as of 2026-04-03 | *Computable Name*:ExtTWLTCCaseSource |

案件（EpisodeOfCare）之申請來源。

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [長照案件（CS100 專用版）](StructureDefinition-LTC-EpisodeOfCare-CS100.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/Ext-TW-LTC-Case-Source)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Ext-TW-LTC-Case-Source.csv), [Excel](StructureDefinition-Ext-TW-LTC-Case-Source.xlsx), [Schematron](StructureDefinition-Ext-TW-LTC-Case-Source.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Ext-TW-LTC-Case-Source",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-Case-Source",
  "version" : "1.0.0",
  "name" : "ExtTWLTCCaseSource",
  "title" : "長照 SDK－案件－申請來源",
  "status" : "active",
  "date" : "2026-04-03T21:17:06+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "案件（EpisodeOfCare）之申請來源。",
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
      "short" : "長照 SDK－案件－申請來源",
      "definition" : "案件（EpisodeOfCare）之申請來源。"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-Case-Source"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-case-source"
      }
    }]
  }
}

```
