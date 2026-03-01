# 運動處方－運動目標 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **運動處方－運動目標**

## Resource Profile: 運動處方－運動目標 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/PASportGoal | *Version*:1.0.0 |
| Active as of 2026-03-02 | *Computable Name*:PASportGoal |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 Goal Resource，以呈現運動處方中涉及之運動目標內容。 

**Usages:**

* Refer to this Profile: [運動處方－運動計畫](StructureDefinition-PASportCarePlan.md)
* Examples for this Profile: [Goal/pasport-goal-walking-steps-example](Goal-pasport-goal-walking-steps-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/PASportGoal)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PASportGoal.csv), [Excel](StructureDefinition-PASportGoal.xlsx), [Schematron](StructureDefinition-PASportGoal.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PASportGoal",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportGoal",
  "version" : "1.0.0",
  "name" : "PASportGoal",
  "title" : "運動處方－運動目標",
  "status" : "active",
  "date" : "2026-03-02T02:26:08+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Goal Resource，以呈現運動處方中涉及之運動目標內容。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
  "type" : "Goal",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Goal",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Goal",
      "path" : "Goal"
    },
    {
      "id" : "Goal.identifier",
      "path" : "Goal.identifier",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Goal.identifier.system",
      "path" : "Goal.identifier.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Goal.identifier.value",
      "path" : "Goal.identifier.value",
      "min" : 1
    },
    {
      "id" : "Goal.lifecycleStatus",
      "path" : "Goal.lifecycleStatus",
      "mustSupport" : true
    },
    {
      "id" : "Goal.category",
      "path" : "Goal.category",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Goal.category.coding",
      "path" : "Goal.category.coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Goal.category.coding.system",
      "path" : "Goal.category.coding.system",
      "min" : 1,
      "patternUri" : "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS-Sport",
      "mustSupport" : true
    },
    {
      "id" : "Goal.category.coding.code",
      "path" : "Goal.category.coding.code",
      "min" : 1,
      "patternCode" : "PhysicalActivity",
      "mustSupport" : true
    },
    {
      "id" : "Goal.description",
      "path" : "Goal.description",
      "mustSupport" : true
    },
    {
      "id" : "Goal.description.text",
      "path" : "Goal.description.text",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Goal.subject",
      "path" : "Goal.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPatient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Goal.target",
      "path" : "Goal.target",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "measure.coding.code"
        },
        {
          "type" : "value",
          "path" : "measure.coding.system"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Goal.target:step",
      "path" : "Goal.target",
      "sliceName" : "step",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Goal.target:step.measure",
      "path" : "Goal.target.measure",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Goal.target:step.measure.coding",
      "path" : "Goal.target.measure.coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Goal.target:step.measure.coding.system",
      "path" : "Goal.target.measure.coding.system",
      "min" : 1,
      "patternUri" : "http://loinc.org",
      "mustSupport" : true
    },
    {
      "id" : "Goal.target:step.measure.coding.code",
      "path" : "Goal.target.measure.coding.code",
      "min" : 1,
      "patternCode" : "41950-7",
      "mustSupport" : true
    },
    {
      "id" : "Goal.target:step.measure.coding.display",
      "path" : "Goal.target.measure.coding.display",
      "patternString" : "Number of steps in 24 hour Measured",
      "mustSupport" : true
    },
    {
      "id" : "Goal.target:step.detail[x]",
      "path" : "Goal.target.detail[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Goal.target:step.detail[x]:detailQuantity",
      "path" : "Goal.target.detail[x]",
      "sliceName" : "detailQuantity",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Goal.target:step.detail[x]:detailQuantity.value",
      "path" : "Goal.target.detail[x].value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Goal.target:step.detail[x]:detailQuantity.unit",
      "path" : "Goal.target.detail[x].unit",
      "min" : 1,
      "patternString" : "steps per day",
      "mustSupport" : true
    },
    {
      "id" : "Goal.target:step.detail[x]:detailQuantity.system",
      "path" : "Goal.target.detail[x].system",
      "min" : 1,
      "fixedUri" : "http://unitsofmeasure.org",
      "mustSupport" : true
    },
    {
      "id" : "Goal.target:step.detail[x]:detailQuantity.code",
      "path" : "Goal.target.detail[x].code",
      "min" : 1,
      "patternCode" : "/d",
      "mustSupport" : true
    }]
  }
}

```
