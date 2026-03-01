# 穿戴裝置－步態週期 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **穿戴裝置－步態週期**

## Resource Profile: 穿戴裝置－步態週期 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationGaitCycle | *Version*:1.0.0 |
| Active as of 2026-03-01 | *Computable Name*:PASportObservationGaitCycle |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現穿戴裝置中涉及之步態週期資料。 

**Usages:**

* Examples for this Profile: [Observation/pasport-observation-gait-cycle-example](Observation-pasport-observation-gait-cycle-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/PASportObservationGaitCycle)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PASportObservationGaitCycle.csv), [Excel](StructureDefinition-PASportObservationGaitCycle.xlsx), [Schematron](StructureDefinition-PASportObservationGaitCycle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PASportObservationGaitCycle",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationGaitCycle",
  "version" : "1.0.0",
  "name" : "PASportObservationGaitCycle",
  "title" : "穿戴裝置－步態週期",
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
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現穿戴裝置中涉及之步態週期資料。",
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
  "baseDefinition" : "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-simple-twcore",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.category:twcore",
      "path" : "Observation.category",
      "sliceName" : "twcore",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.category:twcore.coding",
      "path" : "Observation.category.coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.category:twcore.coding.system",
      "path" : "Observation.category.coding.system",
      "min" : 1,
      "patternUri" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "mustSupport" : true
    },
    {
      "id" : "Observation.category:twcore.coding.code",
      "path" : "Observation.category.coding.code",
      "min" : 1,
      "patternCode" : "activity",
      "mustSupport" : true
    },
    {
      "id" : "Observation.category:twcore.coding.display",
      "path" : "Observation.category.coding.display",
      "min" : 1,
      "patternString" : "Activity",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code.coding",
      "path" : "Observation.code.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.code.coding.system",
      "path" : "Observation.code.coding.system",
      "min" : 1,
      "patternUri" : "http://snomed.info/sct"
    },
    {
      "id" : "Observation.code.coding.code",
      "path" : "Observation.code.coding.code",
      "min" : 1,
      "patternCode" : "363837002"
    },
    {
      "id" : "Observation.code.coding.display",
      "path" : "Observation.code.coding.display",
      "min" : 1,
      "patternString" : "Measure of gait"
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "short" : "量測對象",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPatient"]
      }]
    },
    {
      "id" : "Observation.subject.reference",
      "path" : "Observation.subject.reference",
      "short" : "量測對象。[應輸入 Patient Resource ID]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.performer",
      "path" : "Observation.performer",
      "short" : "量測人員",
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner"]
      }]
    },
    {
      "id" : "Observation.performer.reference",
      "path" : "Observation.performer.reference",
      "short" : "量測人員。[應輸入 Practitioner Resource ID]",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.bodySite",
      "path" : "Observation.bodySite",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/ValueSet/body-site"
      }
    },
    {
      "id" : "Observation.method",
      "path" : "Observation.method",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/ValueSet/observation-methods"
      }
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "code.coding.code"
        }],
        "description" : "步態週期分為支撐期(stance phase)和擺動期(swing phase)，故此 Resource 至少有兩個 component",
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 2,
      "max" : "2",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:stance",
      "path" : "Observation.component",
      "sliceName" : "stance",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:stance.code",
      "path" : "Observation.component.code",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:stance.code.coding",
      "path" : "Observation.component.code.coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:stance.code.coding.system",
      "path" : "Observation.component.code.coding.system",
      "min" : 1,
      "patternUri" : "http://ltc-ig.fhir.tw/CodeSystem/GaitCycleCS-Sport",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:stance.code.coding.code",
      "path" : "Observation.component.code.coding.code",
      "min" : 1,
      "patternCode" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:stance.code.coding.display",
      "path" : "Observation.component.code.coding.display",
      "min" : 1,
      "patternString" : "支撐期(stance phase)",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:stance.value[x]",
      "path" : "Observation.component.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.component:stance.value[x]:valueQuantity",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueQuantity",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:stance.value[x]:valueQuantity.value",
      "path" : "Observation.component.value[x].value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:stance.value[x]:valueQuantity.unit",
      "path" : "Observation.component.value[x].unit",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:stance.value[x]:valueQuantity.system",
      "path" : "Observation.component.value[x].system",
      "min" : 1,
      "patternUri" : "http://unitsofmeasure.org",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:stance.value[x]:valueQuantity.code",
      "path" : "Observation.component.value[x].code",
      "min" : 1,
      "patternCode" : "%",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:swing",
      "path" : "Observation.component",
      "sliceName" : "swing",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:swing.code",
      "path" : "Observation.component.code",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:swing.code.coding",
      "path" : "Observation.component.code.coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:swing.code.coding.system",
      "path" : "Observation.component.code.coding.system",
      "min" : 1,
      "patternUri" : "http://ltc-ig.fhir.tw/CodeSystem/GaitCycleCS-Sport",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:swing.code.coding.code",
      "path" : "Observation.component.code.coding.code",
      "min" : 1,
      "patternCode" : "2",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:swing.code.coding.display",
      "path" : "Observation.component.code.coding.display",
      "min" : 1,
      "patternString" : "擺動期(swing phase)",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:swing.value[x]",
      "path" : "Observation.component.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Observation.component:swing.value[x]:valueQuantity",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueQuantity",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:swing.value[x]:valueQuantity.value",
      "path" : "Observation.component.value[x].value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:swing.value[x]:valueQuantity.unit",
      "path" : "Observation.component.value[x].unit",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:swing.value[x]:valueQuantity.system",
      "path" : "Observation.component.value[x].system",
      "min" : 1,
      "patternUri" : "http://unitsofmeasure.org",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:swing.value[x]:valueQuantity.code",
      "path" : "Observation.component.value[x].code",
      "min" : 1,
      "patternCode" : "%",
      "mustSupport" : true
    }]
  }
}

```
