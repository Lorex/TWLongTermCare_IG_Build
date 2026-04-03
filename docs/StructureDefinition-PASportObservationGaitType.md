# 穿戴裝置－步態分析 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **穿戴裝置－步態分析**

## Resource Profile: 穿戴裝置－步態分析 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationGaitType | *Version*:1.0.0 |
| Active as of 2026-04-03 | *Computable Name*:PASportObservationGaitType |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現穿戴裝置中涉及之步態分析資料。 

**Usages:**

* Examples for this Profile: [Observation/pasport-observation-gait-type-example](Observation-pasport-observation-gait-type-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/PASportObservationGaitType)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PASportObservationGaitType.csv), [Excel](StructureDefinition-PASportObservationGaitType.xlsx), [Schematron](StructureDefinition-PASportObservationGaitType.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PASportObservationGaitType",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationGaitType",
  "version" : "1.0.0",
  "name" : "PASportObservationGaitType",
  "title" : "穿戴裝置－步態分析",
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
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現穿戴裝置中涉及之步態分析資料。",
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
      "patternCode" : "298302000"
    },
    {
      "id" : "Observation.code.coding.display",
      "path" : "Observation.code.coding.display",
      "min" : 1,
      "patternString" : "Finding of gait"
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
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept",
      "path" : "Observation.value[x]",
      "sliceName" : "valueCodeableConcept",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
          "valueBoolean" : true
        }],
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/GaitTypeVS-Sport"
      }
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
        "description" : "步態分析分為正常百分比、內側百分比、外側百分比，故此 Resource 至少有 3 個 component",
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 3,
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:normal",
      "path" : "Observation.component",
      "sliceName" : "normal",
      "short" : "正常百分比",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:normal.code",
      "path" : "Observation.component.code",
      "short" : "正常步態代碼",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:normal.code.coding",
      "path" : "Observation.component.code.coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:normal.code.coding.system",
      "path" : "Observation.component.code.coding.system",
      "min" : 1,
      "patternUri" : "http://snomed.info/sct",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:normal.code.coding.code",
      "path" : "Observation.component.code.coding.code",
      "min" : 1,
      "patternCode" : "8117002",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:normal.code.coding.display",
      "path" : "Observation.component.code.coding.display",
      "min" : 1,
      "patternString" : "Gait normal",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:normal.value[x]",
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
      "id" : "Observation.component:normal.value[x]:valueQuantity",
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
      "id" : "Observation.component:normal.value[x]:valueQuantity.value",
      "path" : "Observation.component.value[x].value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:normal.value[x]:valueQuantity.unit",
      "path" : "Observation.component.value[x].unit",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:normal.value[x]:valueQuantity.system",
      "path" : "Observation.component.value[x].system",
      "min" : 1,
      "patternUri" : "http://unitsofmeasure.org",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:normal.value[x]:valueQuantity.code",
      "path" : "Observation.component.value[x].code",
      "min" : 1,
      "patternCode" : "%",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:medial",
      "path" : "Observation.component",
      "sliceName" : "medial",
      "short" : "內側百分比",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:medial.code",
      "path" : "Observation.component.code",
      "short" : "內側步態代碼",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:medial.code.coding",
      "path" : "Observation.component.code.coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:medial.code.coding.system",
      "path" : "Observation.component.code.coding.system",
      "min" : 1,
      "patternUri" : "http://snomed.info/sct",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:medial.code.coding.code",
      "path" : "Observation.component.code.coding.code",
      "min" : 1,
      "patternCode" : "264739002",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:medial.code.coding.display",
      "path" : "Observation.component.code.coding.display",
      "min" : 1,
      "patternString" : "Medial rotation - action",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:medial.value[x]",
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
      "id" : "Observation.component:medial.value[x]:valueQuantity",
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
      "id" : "Observation.component:medial.value[x]:valueQuantity.value",
      "path" : "Observation.component.value[x].value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:medial.value[x]:valueQuantity.unit",
      "path" : "Observation.component.value[x].unit",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:medial.value[x]:valueQuantity.system",
      "path" : "Observation.component.value[x].system",
      "min" : 1,
      "patternUri" : "http://unitsofmeasure.org",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:medial.value[x]:valueQuantity.code",
      "path" : "Observation.component.value[x].code",
      "min" : 1,
      "patternCode" : "%",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:lateral",
      "path" : "Observation.component",
      "sliceName" : "lateral",
      "short" : "外側百分比",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:lateral.code",
      "path" : "Observation.component.code",
      "short" : "外側步態代碼",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:lateral.code.coding",
      "path" : "Observation.component.code.coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:lateral.code.coding.system",
      "path" : "Observation.component.code.coding.system",
      "min" : 1,
      "patternUri" : "http://snomed.info/sct",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:lateral.code.coding.code",
      "path" : "Observation.component.code.coding.code",
      "min" : 1,
      "patternCode" : "264730003",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:lateral.code.coding.display",
      "path" : "Observation.component.code.coding.display",
      "min" : 1,
      "patternString" : "Lateral rotation - action",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:lateral.value[x]",
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
      "id" : "Observation.component:lateral.value[x]:valueQuantity",
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
      "id" : "Observation.component:lateral.value[x]:valueQuantity.value",
      "path" : "Observation.component.value[x].value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:lateral.value[x]:valueQuantity.unit",
      "path" : "Observation.component.value[x].unit",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:lateral.value[x]:valueQuantity.system",
      "path" : "Observation.component.value[x].system",
      "min" : 1,
      "patternUri" : "http://unitsofmeasure.org",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:lateral.value[x]:valueQuantity.code",
      "path" : "Observation.component.value[x].code",
      "min" : 1,
      "patternCode" : "%",
      "mustSupport" : true
    }]
  }
}

```
