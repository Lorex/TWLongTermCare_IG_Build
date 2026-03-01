# 長照 SDK－評估核定摘要 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 SDK－評估核定摘要**

## Resource Profile: 長照 SDK－評估核定摘要 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTC-Observation-Assessment-Payload | *Version*:1.0.0 |
| Draft as of 2026-03-02 | *Computable Name*:LTCObservationAssessmentPayload |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現長照 SDK 回傳之評估核定摘要，包含福利身分、CMS 等級、評估類型及計畫起訖等資訊。 

**Usages:**

* Use this Profile: [長照 SDK－回傳包（4合1）](StructureDefinition-LTC-Bundle-Payload.md)
* Examples for this Profile: [Observation/ltc-observation-assessment-sdk-example](Observation-ltc-observation-assessment-sdk-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTC-Observation-Assessment-Payload)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTC-Observation-Assessment-Payload.csv), [Excel](StructureDefinition-LTC-Observation-Assessment-Payload.xlsx), [Schematron](StructureDefinition-LTC-Observation-Assessment-Payload.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTC-Observation-Assessment-Payload",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTC-Observation-Assessment-Payload",
  "version" : "1.0.0",
  "name" : "LTCObservationAssessmentPayload",
  "title" : "長照 SDK－評估核定摘要",
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
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現長照 SDK 回傳之評估核定摘要，包含福利身分、CMS 等級、評估類型及計畫起訖等資訊。",
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
      "id" : "Observation.identifier",
      "path" : "Observation.identifier",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "code"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.component:welfare-identity",
      "path" : "Observation.component",
      "sliceName" : "welfare-identity",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:welfare-identity.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-assessment-component",
          "code" : "welfare-identity",
          "display" : "長照福利身分"
        }]
      }
    },
    {
      "id" : "Observation.component:welfare-identity.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-welfare-identity"
      }
    },
    {
      "id" : "Observation.component:cms-level",
      "path" : "Observation.component",
      "sliceName" : "cms-level",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:cms-level.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-assessment-component",
          "code" : "cms-level",
          "display" : "CMS 等級"
        }]
      }
    },
    {
      "id" : "Observation.component:cms-level.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-cmslevel"
      }
    },
    {
      "id" : "Observation.component:approval-status",
      "path" : "Observation.component",
      "sliceName" : "approval-status",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:approval-status.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-assessment-component",
          "code" : "approval-status",
          "display" : "核定狀態"
        }]
      }
    },
    {
      "id" : "Observation.component:approval-status.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.component:assessment-type",
      "path" : "Observation.component",
      "sliceName" : "assessment-type",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:assessment-type.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-assessment-component",
          "code" : "assessment-type",
          "display" : "評估類型"
        }]
      }
    },
    {
      "id" : "Observation.component:assessment-type.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-assessment-type"
      }
    },
    {
      "id" : "Observation.component:plan-start",
      "path" : "Observation.component",
      "sliceName" : "plan-start",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:plan-start.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-assessment-component",
          "code" : "plan-start",
          "display" : "計畫起始日"
        }]
      }
    },
    {
      "id" : "Observation.component:plan-start.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Observation.component:plan-end",
      "path" : "Observation.component",
      "sliceName" : "plan-end",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:plan-end.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-assessment-component",
          "code" : "plan-end",
          "display" : "計畫結束日"
        }]
      }
    },
    {
      "id" : "Observation.component:plan-end.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
