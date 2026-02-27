# 運動項目－跑步機 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **運動項目－跑步機**

## Resource Profile: 運動項目－跑步機 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationTreadmill | *Version*:0.4.1 |
| Active as of 2026-02-28 | *Computable Name*:PASportObservationTreadmill |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現運動項目中涉及之跑步機資料。 

**Usages:**

* Examples for this Profile: [Observation/pasport-observation-treadmill-example](Observation-pasport-observation-treadmill-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.twltc|current/StructureDefinition/PASportObservationTreadmill)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PASportObservationTreadmill.csv), [Excel](StructureDefinition-PASportObservationTreadmill.xlsx), [Schematron](StructureDefinition-PASportObservationTreadmill.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PASportObservationTreadmill",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationTreadmill",
  "version" : "0.4.1",
  "name" : "PASportObservationTreadmill",
  "title" : "運動項目－跑步機",
  "status" : "active",
  "date" : "2026-02-28T07:16:04+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Observation Resource，以呈現運動項目中涉及之跑步機資料。",
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
      "id" : "Observation.code",
      "path" : "Observation.code",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/TreadmillTypeVS-Sport"
      }
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
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "code.coding.code"
        }],
        "description" : "跑步機應紀錄跑步時間、跑步距離、消耗總卡路里、跑步速度等資料，另最大心率、平均心率、坡度等資料為選擇性填寫，故此 Resource 至少有 4 個 component",
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 4,
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Duration",
      "path" : "Observation.component",
      "sliceName" : "Duration",
      "short" : "跑步時間",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Duration.code",
      "path" : "Observation.component.code",
      "short" : "跑步時間代碼",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Duration.code.coding",
      "path" : "Observation.component.code.coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Duration.code.coding.system",
      "path" : "Observation.component.code.coding.system",
      "min" : 1,
      "patternUri" : "http://loinc.org",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Duration.code.coding.code",
      "path" : "Observation.component.code.coding.code",
      "min" : 1,
      "patternCode" : "55411-3",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Duration.code.coding.display",
      "path" : "Observation.component.code.coding.display",
      "min" : 1,
      "patternString" : "Exercise duration",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Duration.value[x]",
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
      "id" : "Observation.component:Duration.value[x]:valueQuantity",
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
      "id" : "Observation.component:Duration.value[x]:valueQuantity.value",
      "path" : "Observation.component.value[x].value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Duration.value[x]:valueQuantity.unit",
      "path" : "Observation.component.value[x].unit",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Duration.value[x]:valueQuantity.system",
      "path" : "Observation.component.value[x].system",
      "min" : 1,
      "patternUri" : "http://unitsofmeasure.org",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Duration.value[x]:valueQuantity.code",
      "path" : "Observation.component.value[x].code",
      "min" : 1,
      "patternCode" : "min",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Distance",
      "path" : "Observation.component",
      "sliceName" : "Distance",
      "short" : "跑步距離",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Distance.code",
      "path" : "Observation.component.code",
      "short" : "跑步距離代碼",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Distance.code.coding",
      "path" : "Observation.component.code.coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Distance.code.coding.system",
      "path" : "Observation.component.code.coding.system",
      "min" : 1,
      "patternUri" : "http://loinc.org",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Distance.code.coding.code",
      "path" : "Observation.component.code.coding.code",
      "min" : 1,
      "patternCode" : "55412-1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Distance.code.coding.display",
      "path" : "Observation.component.code.coding.display",
      "min" : 1,
      "patternString" : "Exercise distance unspecified time",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Distance.value[x]",
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
      "id" : "Observation.component:Distance.value[x]:valueQuantity",
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
      "id" : "Observation.component:Distance.value[x]:valueQuantity.value",
      "path" : "Observation.component.value[x].value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Distance.value[x]:valueQuantity.unit",
      "path" : "Observation.component.value[x].unit",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Distance.value[x]:valueQuantity.system",
      "path" : "Observation.component.value[x].system",
      "min" : 1,
      "patternUri" : "http://unitsofmeasure.org",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Distance.value[x]:valueQuantity.code",
      "path" : "Observation.component.value[x].code",
      "min" : 1,
      "patternCode" : "km",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Calories",
      "path" : "Observation.component",
      "sliceName" : "Calories",
      "short" : "消耗總卡路里",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Calories.code",
      "path" : "Observation.component.code",
      "short" : "消耗總卡路里代碼",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Calories.code.coding",
      "path" : "Observation.component.code.coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Calories.code.coding.system",
      "path" : "Observation.component.code.coding.system",
      "min" : 1,
      "patternUri" : "http://loinc.org",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Calories.code.coding.code",
      "path" : "Observation.component.code.coding.code",
      "min" : 1,
      "patternCode" : "55421-2",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Calories.code.coding.display",
      "path" : "Observation.component.code.coding.display",
      "min" : 1,
      "patternString" : "Calories burned Machine estimate",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Calories.value[x]",
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
      "id" : "Observation.component:Calories.value[x]:valueQuantity",
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
      "id" : "Observation.component:Calories.value[x]:valueQuantity.value",
      "path" : "Observation.component.value[x].value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Calories.value[x]:valueQuantity.unit",
      "path" : "Observation.component.value[x].unit",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Calories.value[x]:valueQuantity.system",
      "path" : "Observation.component.value[x].system",
      "min" : 1,
      "patternUri" : "http://unitsofmeasure.org",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Calories.value[x]:valueQuantity.code",
      "path" : "Observation.component.value[x].code",
      "min" : 1,
      "patternCode" : "kcal",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Speed",
      "path" : "Observation.component",
      "sliceName" : "Speed",
      "short" : "跑步速度",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Speed.code",
      "path" : "Observation.component.code",
      "short" : "跑步速度代碼",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Speed.code.coding",
      "path" : "Observation.component.code.coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Speed.code.coding.system",
      "path" : "Observation.component.code.coding.system",
      "min" : 1,
      "patternUri" : "http://snomed.info/sct",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Speed.code.coding.code",
      "path" : "Observation.component.code.coding.code",
      "min" : 1,
      "patternCode" : "252141006",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Speed.code.coding.display",
      "path" : "Observation.component.code.coding.display",
      "min" : 1,
      "patternString" : "Treadmill speed achieved",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Speed.value[x]",
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
      "id" : "Observation.component:Speed.value[x]:valueQuantity",
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
      "id" : "Observation.component:Speed.value[x]:valueQuantity.value",
      "path" : "Observation.component.value[x].value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Speed.value[x]:valueQuantity.unit",
      "path" : "Observation.component.value[x].unit",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Speed.value[x]:valueQuantity.system",
      "path" : "Observation.component.value[x].system",
      "min" : 1,
      "patternUri" : "http://unitsofmeasure.org",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Speed.value[x]:valueQuantity.code",
      "path" : "Observation.component.value[x].code",
      "min" : 1,
      "patternCode" : "km/h",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:MaxHeart",
      "path" : "Observation.component",
      "sliceName" : "MaxHeart",
      "short" : "最大心率",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:MaxHeart.code",
      "path" : "Observation.component.code",
      "short" : "最大心率代碼",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:MaxHeart.code.coding",
      "path" : "Observation.component.code.coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:MaxHeart.code.coding.system",
      "path" : "Observation.component.code.coding.system",
      "min" : 1,
      "patternUri" : "http://loinc.org",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:MaxHeart.code.coding.code",
      "path" : "Observation.component.code.coding.code",
      "min" : 1,
      "patternCode" : "101692-2",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:MaxHeart.code.coding.display",
      "path" : "Observation.component.code.coding.display",
      "min" : 1,
      "patternString" : "Maximum heart rate",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:MaxHeart.value[x]",
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
      "id" : "Observation.component:MaxHeart.value[x]:valueQuantity",
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
      "id" : "Observation.component:MaxHeart.value[x]:valueQuantity.value",
      "path" : "Observation.component.value[x].value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:MaxHeart.value[x]:valueQuantity.unit",
      "path" : "Observation.component.value[x].unit",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:MaxHeart.value[x]:valueQuantity.system",
      "path" : "Observation.component.value[x].system",
      "min" : 1,
      "patternUri" : "http://unitsofmeasure.org",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:MaxHeart.value[x]:valueQuantity.code",
      "path" : "Observation.component.value[x].code",
      "min" : 1,
      "patternCode" : "/min",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:MeanHeart",
      "path" : "Observation.component",
      "sliceName" : "MeanHeart",
      "short" : "平均心率",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:MeanHeart.code",
      "path" : "Observation.component.code",
      "short" : "平均心率代碼",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:MeanHeart.code.coding",
      "path" : "Observation.component.code.coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:MeanHeart.code.coding.system",
      "path" : "Observation.component.code.coding.system",
      "min" : 1,
      "patternUri" : "http://loinc.org",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:MeanHeart.code.coding.code",
      "path" : "Observation.component.code.coding.code",
      "min" : 1,
      "patternCode" : "103205-1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:MeanHeart.code.coding.display",
      "path" : "Observation.component.code.coding.display",
      "min" : 1,
      "patternString" : "Mean heart rate",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:MeanHeart.value[x]",
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
      "id" : "Observation.component:MeanHeart.value[x]:valueQuantity",
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
      "id" : "Observation.component:MeanHeart.value[x]:valueQuantity.value",
      "path" : "Observation.component.value[x].value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:MeanHeart.value[x]:valueQuantity.unit",
      "path" : "Observation.component.value[x].unit",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:MeanHeart.value[x]:valueQuantity.system",
      "path" : "Observation.component.value[x].system",
      "min" : 1,
      "patternUri" : "http://unitsofmeasure.org",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:MeanHeart.value[x]:valueQuantity.code",
      "path" : "Observation.component.value[x].code",
      "min" : 1,
      "patternCode" : "/min",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Gradient",
      "path" : "Observation.component",
      "sliceName" : "Gradient",
      "short" : "坡度",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Gradient.code",
      "path" : "Observation.component.code",
      "short" : "坡度代碼",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Gradient.code.coding",
      "path" : "Observation.component.code.coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Gradient.code.coding.system",
      "path" : "Observation.component.code.coding.system",
      "min" : 1,
      "patternUri" : "http://snomed.info/sct",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Gradient.code.coding.code",
      "path" : "Observation.component.code.coding.code",
      "min" : 1,
      "patternCode" : "252140007",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Gradient.code.coding.display",
      "path" : "Observation.component.code.coding.display",
      "min" : 1,
      "patternString" : "Treadmill gradient achieved",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Gradient.value[x]",
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
      "id" : "Observation.component:Gradient.value[x]:valueQuantity",
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
      "id" : "Observation.component:Gradient.value[x]:valueQuantity.value",
      "path" : "Observation.component.value[x].value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Gradient.value[x]:valueQuantity.unit",
      "path" : "Observation.component.value[x].unit",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Gradient.value[x]:valueQuantity.system",
      "path" : "Observation.component.value[x].system",
      "min" : 1,
      "patternUri" : "http://unitsofmeasure.org",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:Gradient.value[x]:valueQuantity.code",
      "path" : "Observation.component.value[x].code",
      "min" : 1,
      "patternCode" : "%",
      "mustSupport" : true
    }]
  }
}

```
