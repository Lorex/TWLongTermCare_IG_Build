# 運動處方－病史 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **運動處方－病史**

## Resource Profile: 運動處方－病史 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/PASportConditionMedicalHistory | *Version*:1.0.0 |
| Active as of 2026-03-01 | *Computable Name*:PASportConditionMedicalHistory |

 
長照機構住民運動處方的病史資料，本 Profile 繼承自身體活動量測 (Physical Activity Measure) 的 Sport Data Condition Profile。 

**Usages:**

* Examples for this Profile: [Condition/pasport-condition-medical-history-example](Condition-pasport-condition-medical-history-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/PASportConditionMedicalHistory)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PASportConditionMedicalHistory.csv), [Excel](StructureDefinition-PASportConditionMedicalHistory.xlsx), [Schematron](StructureDefinition-PASportConditionMedicalHistory.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PASportConditionMedicalHistory",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportConditionMedicalHistory",
  "version" : "1.0.0",
  "name" : "PASportConditionMedicalHistory",
  "title" : "運動處方－病史",
  "status" : "active",
  "date" : "2026-03-01T19:25:35+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "長照機構住民運動處方的病史資料，本 Profile 繼承自身體活動量測 (Physical Activity Measure) 的 Sport Data Condition Profile。",
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Condition",
  "baseDefinition" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCCondition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Condition",
      "path" : "Condition"
    },
    {
      "id" : "Condition.category.coding",
      "path" : "Condition.category.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Condition.category.coding.system",
      "path" : "Condition.category.coding.system",
      "min" : 1,
      "patternUri" : "http://loinc.org"
    },
    {
      "id" : "Condition.category.coding.code",
      "path" : "Condition.category.coding.code",
      "min" : 1,
      "patternCode" : "10164-2"
    },
    {
      "id" : "Condition.category.coding.display",
      "path" : "Condition.category.coding.display",
      "patternString" : "History of Present illness Narrative"
    }]
  }
}

```
