# 運動項目－重量訓練 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **運動項目－重量訓練**

## Resource Profile: 運動項目－重量訓練 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationWeightTraining | *Version*:1.0.0 |
| Active as of 2026-04-02 | *Computable Name*:PASportObservationWeightTraining |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現運動項目中涉及之重量訓練資料。 

**Usages:**

* Examples for this Profile: [Observation/pasport-observation-weight-training-example](Observation-pasport-observation-weight-training-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/PASportObservationWeightTraining)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PASportObservationWeightTraining.csv), [Excel](StructureDefinition-PASportObservationWeightTraining.xlsx), [Schematron](StructureDefinition-PASportObservationWeightTraining.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PASportObservationWeightTraining",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationWeightTraining",
  "version" : "1.0.0",
  "name" : "PASportObservationWeightTraining",
  "title" : "運動項目－重量訓練",
  "status" : "active",
  "date" : "2026-04-02T13:32:15+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現運動項目中涉及之重量訓練資料。",
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
      "min" : 1
    },
    {
      "id" : "Observation.code.coding.system",
      "path" : "Observation.code.coding.system",
      "min" : 1,
      "patternUri" : "http://loinc.org"
    },
    {
      "id" : "Observation.code.coding.code",
      "path" : "Observation.code.coding.code",
      "min" : 1,
      "patternCode" : "LA11839-0"
    },
    {
      "id" : "Observation.code.coding.display",
      "path" : "Observation.code.coding.display",
      "min" : 1,
      "patternString" : "Weights"
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
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept.coding",
      "path" : "Observation.value[x].coding",
      "max" : "1"
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept.coding.system",
      "path" : "Observation.value[x].coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept.coding.code",
      "path" : "Observation.value[x].coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept.coding.display",
      "path" : "Observation.value[x].coding.display",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept.text",
      "path" : "Observation.value[x].text",
      "mustSupport" : true
    },
    {
      "id" : "Observation.bodySite",
      "path" : "Observation.bodySite",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/ValueSet/body-site"
      }
    },
    {
      "id" : "Observation.method",
      "path" : "Observation.method",
      "mustSupport" : true,
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
        "description" : "重量訓練應紀錄訓練重量、組數、次數等資料，故此 Resource 至少有 3 個 component",
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 3,
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Weight",
      "path" : "Observation.component",
      "sliceName" : "Weight",
      "short" : "訓練重量",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Weight.code",
      "path" : "Observation.component.code",
      "short" : "訓練重量代碼",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Weight.code.coding",
      "path" : "Observation.component.code.coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Weight.code.coding.system",
      "path" : "Observation.component.code.coding.system",
      "min" : 1,
      "patternUri" : "http://ltc-ig.fhir.tw/CodeSystem/SportTrainingCS-Sport",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Weight.code.coding.code",
      "path" : "Observation.component.code.coding.code",
      "min" : 1,
      "patternCode" : "training-wt",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Weight.code.coding.display",
      "path" : "Observation.component.code.coding.display",
      "min" : 1,
      "patternString" : "訓練重量",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Weight.value[x]",
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
      "id" : "Observation.component:Weight.value[x]:valueQuantity",
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
      "id" : "Observation.component:Weight.value[x]:valueQuantity.value",
      "path" : "Observation.component.value[x].value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Weight.value[x]:valueQuantity.unit",
      "path" : "Observation.component.value[x].unit",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Weight.value[x]:valueQuantity.system",
      "path" : "Observation.component.value[x].system",
      "min" : 1,
      "patternUri" : "http://unitsofmeasure.org",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Weight.value[x]:valueQuantity.code",
      "path" : "Observation.component.value[x].code",
      "min" : 1,
      "patternCode" : "kg",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Sets",
      "path" : "Observation.component",
      "sliceName" : "Sets",
      "short" : "訓練組數",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Sets.code",
      "path" : "Observation.component.code",
      "short" : "重量訓練組數",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Sets.code.coding",
      "path" : "Observation.component.code.coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Sets.code.coding.system",
      "path" : "Observation.component.code.coding.system",
      "min" : 1,
      "patternUri" : "http://ltc-ig.fhir.tw/CodeSystem/SportTrainingCS-Sport",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Sets.code.coding.code",
      "path" : "Observation.component.code.coding.code",
      "min" : 1,
      "patternCode" : "sets",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Sets.code.coding.display",
      "path" : "Observation.component.code.coding.display",
      "min" : 1,
      "patternString" : "訓練組數",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Sets.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Quantity"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Completed",
      "path" : "Observation.component",
      "sliceName" : "Completed",
      "short" : "次數",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Completed.code",
      "path" : "Observation.component.code",
      "short" : "運動達成次數代碼",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Completed.code.coding",
      "path" : "Observation.component.code.coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Completed.code.coding.system",
      "path" : "Observation.component.code.coding.system",
      "min" : 1,
      "patternUri" : "http://loinc.org",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Completed.code.coding.code",
      "path" : "Observation.component.code.coding.code",
      "min" : 1,
      "patternCode" : "100298-9",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Completed.code.coding.display",
      "path" : "Observation.component.code.coding.display",
      "min" : 1,
      "patternString" : "Repetition count",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Completed.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Quantity"
      }],
      "mustSupport" : true
    }]
  }
}

```
