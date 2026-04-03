# 基礎生理量測－血壓 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **基礎生理量測－血壓**

## Resource Profile: 基礎生理量測－血壓 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationBloodPressure | *Version*:1.0.0 |
| Active as of 2026-04-03 | *Computable Name*:PASportObservationBloodPressure |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現基礎生理量測中涉及之血壓資料。 

**Usages:**

* Examples for this Profile: [Observation/pasport-observation-blood-pressure-example](Observation-pasport-observation-blood-pressure-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/PASportObservationBloodPressure)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PASportObservationBloodPressure.csv), [Excel](StructureDefinition-PASportObservationBloodPressure.xlsx), [Schematron](StructureDefinition-PASportObservationBloodPressure.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PASportObservationBloodPressure",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationBloodPressure",
  "version" : "1.0.0",
  "name" : "PASportObservationBloodPressure",
  "title" : "基礎生理量測－血壓",
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
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現基礎生理量測中涉及之血壓資料。",
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
  "baseDefinition" : "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-bloodPressure-twcore",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.performer",
      "path" : "Observation.performer",
      "max" : "1"
    }]
  }
}

```
