# 居家護理－主要目標 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－主要目標**

## Extension: 居家護理－主要目標 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/ExtHNMainTarget | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:ExtHNMainTarget |

填入此目標是否為主要照護目標。

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [居家護理－照護目標](StructureDefinition-HNGoal.md)
* Examples for this Extension: [Bundle/hn-careplan-transaction-example](Bundle-hn-careplan-transaction-example.md) and [Goal/hn-goal-example](Goal-hn-goal-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-ExtHNMainTarget.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ExtHNMainTarget.csv), [Excel](StructureDefinition-ExtHNMainTarget.xlsx), [Schematron](StructureDefinition-ExtHNMainTarget.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ExtHNMainTarget",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHNMainTarget",
  "version" : "1.1.0",
  "name" : "ExtHNMainTarget",
  "title" : "居家護理－主要目標",
  "status" : "active",
  "date" : "2026-09-17T17:33:17+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "填入此目標是否為主要照護目標。",
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
    "expression" : "Goal"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "居家護理－主要目標",
      "definition" : "填入此目標是否為主要照護目標。"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHNMainTarget"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
