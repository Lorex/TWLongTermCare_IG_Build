# 身體組成分析儀－身體質量指數 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **身體組成分析儀－身體質量指數**

## Resource Profile: 身體組成分析儀－身體質量指數 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationBodyMassIndex | *Version*:1.0.0 |
| Active as of 2026-04-03 | *Computable Name*:PASportObservationBodyMassIndex |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之BMI資料。 

**Usages:**

* Examples for this Profile: [Observation/pasport-observation-bmi-example](Observation-pasport-observation-bmi-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/PASportObservationBodyMassIndex)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PASportObservationBodyMassIndex.csv), [Excel](StructureDefinition-PASportObservationBodyMassIndex.xlsx), [Schematron](StructureDefinition-PASportObservationBodyMassIndex.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PASportObservationBodyMassIndex",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationBodyMassIndex",
  "version" : "1.0.0",
  "name" : "PASportObservationBodyMassIndex",
  "title" : "身體組成分析儀－身體質量指數",
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
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現身體組成分析儀中涉及之BMI資料。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
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
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-bmi-twcore",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    }]
  }
}

```
