# 居家護理－來源表單 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－來源表單**

## Extension: 居家護理－來源表單 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/ExtHNSourceForm | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:ExtHNSourceForm |

參照提供此資源內容的結構化表單。保留原始評估、來源身分及補充說明。

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [居家護理－照護計畫](StructureDefinition-HNCarePlan.md), [居家護理－共照紀錄](StructureDefinition-HNCommunication.md), [居家護理－收案歷程](StructureDefinition-HNEpisodeOfCare.md), [居家護理－照護目標](StructureDefinition-HNGoal.md)... Show 3 more, [居家護理－個案](StructureDefinition-HNPatient.md), [居家護理－生命徵象](StructureDefinition-HNVitalSigns.md) and [居家護理－傷口紀錄](StructureDefinition-HNWound.md)
* Examples for this Extension: [Bundle/hn-careplan-transaction-example](Bundle-hn-careplan-transaction-example.md), [Bundle/hn-vital-bundle-example](Bundle-hn-vital-bundle-example.md), [CarePlan/hn-careplan-example](CarePlan-hn-careplan-example.md), [Communication/hn-communication-example](Communication-hn-communication-example.md)... Show 14 more, [EpisodeOfCare/hn-episode-example](EpisodeOfCare-hn-episode-example.md), [EpisodeOfCare/hn-episode-foot-example](EpisodeOfCare-hn-episode-foot-example.md), [Goal/hn-goal-example](Goal-hn-goal-example.md), [Observation/hn-bloodpressure-example](Observation-hn-bloodpressure-example.md), [Observation/hn-glucose-example](Observation-hn-glucose-example.md), [Observation/hn-oxygen-example](Observation-hn-oxygen-example.md), [Observation/hn-pulse-example](Observation-hn-pulse-example.md), [Observation/hn-respiration-example](Observation-hn-respiration-example.md), [Observation/hn-temperature-example](Observation-hn-temperature-example.md), [Observation/hn-vital-signs-example](Observation-hn-vital-signs-example.md), [Observation/hn-wound-iad-example](Observation-hn-wound-iad-example.md), [Observation/hn-wound-other-example](Observation-hn-wound-other-example.md), [Observation/hn-wound-pressure-example](Observation-hn-wound-pressure-example.md) and [Patient/hn-patient-example](Patient-hn-patient-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-ExtHNSourceForm.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ExtHNSourceForm.csv), [Excel](StructureDefinition-ExtHNSourceForm.xlsx), [Schematron](StructureDefinition-ExtHNSourceForm.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ExtHNSourceForm",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHNSourceForm",
  "version" : "1.1.0",
  "name" : "ExtHNSourceForm",
  "title" : "居家護理－來源表單",
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
  "description" : "參照提供此資源內容的結構化表單。保留原始評估、來源身分及補充說明。",
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
    "expression" : "Patient"
  },
  {
    "type" : "element",
    "expression" : "EpisodeOfCare"
  },
  {
    "type" : "element",
    "expression" : "CarePlan"
  },
  {
    "type" : "element",
    "expression" : "Goal"
  },
  {
    "type" : "element",
    "expression" : "Observation"
  },
  {
    "type" : "element",
    "expression" : "Communication"
  },
  {
    "type" : "element",
    "expression" : "Task"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "居家護理－來源表單",
      "definition" : "參照提供此資源內容的結構化表單。保留原始評估、來源身分及補充說明。"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHNSourceForm"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse"]
      }]
    }]
  }
}

```
