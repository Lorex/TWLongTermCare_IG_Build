# 長照 SDK－評估核定摘要（Observation） - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 SDK－評估核定摘要（Observation）**

## Resource Profile: 長照 SDK－評估核定摘要（Observation） 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTC-Observation-Assessment-CS100 | *Version*:1.0.0 |
| Draft as of 2026-03-02 | *Computable Name*:LTCObservationAssessmentCS100 |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現 CS100 個案總查詢之評估核定摘要，包含 CMS 等級、福利身分及評估類型等資訊。 

**Usages:**

* Refer to this Profile: [個案總查詢（CS100 對應版）Case Summary](StructureDefinition-LTC-Composition-CS100.md)
* Examples for this Profile: [Observation/ltc-observation-assessment-cs100-example](Observation-ltc-observation-assessment-cs100-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTC-Observation-Assessment-CS100)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTC-Observation-Assessment-CS100.csv), [Excel](StructureDefinition-LTC-Observation-Assessment-CS100.xlsx), [Schematron](StructureDefinition-LTC-Observation-Assessment-CS100.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTC-Observation-Assessment-CS100",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTC-Observation-Assessment-CS100",
  "version" : "1.0.0",
  "name" : "LTCObservationAssessmentCS100",
  "title" : "長照 SDK－評估核定摘要（Observation）",
  "status" : "draft",
  "date" : "2026-03-02T02:26:08+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現 CS100 個案總查詢之評估核定摘要，包含 CMS 等級、福利身分及評估類型等資訊。",
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
  "baseDefinition" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCObservationAssessmentBase",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.identifier",
      "path" : "Observation.identifier",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component.code",
      "path" : "Observation.component.code",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-assessment-component"
      }
    },
    {
      "id" : "Observation.component.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "string"
      },
      {
        "code" : "dateTime"
      }]
    }]
  }
}

```
