# 居家護理－傷口紀錄 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－傷口紀錄**

## Resource Profile: 居家護理－傷口紀錄 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNWound | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:HNWound |

 
每個傷口建立一筆紀錄。沿用 TW Core 簡易觀察，因既有壓傷 Condition 不適用失禁性皮膚炎及其他傷口。原規範未明訂尺寸單位，不從來源數字推定單位。 

**Usages:**

* Examples for this Profile: [Observation/hn-wound-iad-example](Observation-hn-wound-iad-example.md), [Observation/hn-wound-other-example](Observation-hn-wound-other-example.md) and [Observation/hn-wound-pressure-example](Observation-hn-wound-pressure-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNWound.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNWound.csv), [Excel](StructureDefinition-HNWound.xlsx), [Schematron](StructureDefinition-HNWound.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNWound",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNWound",
  "version" : "1.1.0",
  "name" : "HNWound",
  "title" : "居家護理－傷口紀錄",
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
  "description" : "每個傷口建立一筆紀錄。沿用 TW Core 簡易觀察，因既有壓傷 Condition 不適用失禁性皮膚炎及其他傷口。原規範未明訂尺寸單位，不從來源數字推定單位。",
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
      "path" : "Observation",
      "constraint" : [{
        "key" : "hn-wound-stage",
        "severity" : "error",
        "human" : "壓傷應填入對應的分期。",
        "expression" : "component.where(code.coding.where(code='wound-category').exists()).value.ofType(CodeableConcept).coding.where(code='c7ead2b329689').exists() implies (component.where(code.coding.where(code='wound-level').exists()).value.ofType(CodeableConcept).coding.code.count()=1 and (component.where(code.coding.where(code='wound-level').exists()).value.ofType(CodeableConcept).coding.where(code='cd2309630a543').exists() or component.where(code.coding.where(code='wound-level').exists()).value.ofType(CodeableConcept).coding.where(code='c02aab4358253').exists() or component.where(code.coding.where(code='wound-level').exists()).value.ofType(CodeableConcept).coding.where(code='cccd9b119924f').exists() or component.where(code.coding.where(code='wound-level').exists()).value.ofType(CodeableConcept).coding.where(code='cb77fa71e8c7f').exists() or component.where(code.coding.where(code='wound-level').exists()).value.ofType(CodeableConcept).coding.where(code='cecf422c03011').exists() or component.where(code.coding.where(code='wound-level').exists()).value.ofType(CodeableConcept).coding.where(code='c6210bfc58f77').exists()))",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNWound"
      },
      {
        "key" : "hn-wound-dermatitis",
        "severity" : "error",
        "human" : "失禁性皮膚炎應填入 1A、1B、2A 或 2B。",
        "expression" : "component.where(code.coding.where(code='wound-category').exists()).value.ofType(CodeableConcept).coding.where(code='cc7a2787e9f48').exists() implies (component.where(code.coding.where(code='wound-level').exists()).value.ofType(CodeableConcept).coding.code.count()=1 and (component.where(code.coding.where(code='wound-level').exists()).value.ofType(CodeableConcept).coding.where(code='ccf3d835a3018').exists() or component.where(code.coding.where(code='wound-level').exists()).value.ofType(CodeableConcept).coding.where(code='ce33cd81b67cc').exists() or component.where(code.coding.where(code='wound-level').exists()).value.ofType(CodeableConcept).coding.where(code='c7259a0720e42').exists() or component.where(code.coding.where(code='wound-level').exists()).value.ofType(CodeableConcept).coding.where(code='c5c19c5dfd9c3').exists()))",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNWound"
      },
      {
        "key" : "hn-wound-other",
        "severity" : "error",
        "human" : "其他傷口應省略等級並填寫說明。",
        "expression" : "component.where(code.coding.where(code='wound-category').exists()).value.ofType(CodeableConcept).coding.where(code='cd2909f1647e7').exists() implies (component.where(code.coding.where(code='wound-level').exists()).empty() and note.text.exists())",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNWound"
      },
      {
        "key" : "hn-wound-size",
        "severity" : "error",
        "human" : "只有無法分期的壓傷可以缺少尺寸；缺值時須填入缺值原因。",
        "expression" : "component.where(code.coding.where(code='length').exists() or code.coding.where(code='width').exists() or code.coding.where(code='depth').exists()).all(value.exists() or (dataAbsentReason.exists() and %resource.component.where(code.coding.where(code='wound-category').exists()).value.ofType(CodeableConcept).coding.where(code='c7ead2b329689').exists() and %resource.component.where(code.coding.where(code='wound-level').exists()).value.ofType(CodeableConcept).coding.where(code='cecf422c03011').exists()))",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNWound"
      }]
    },
    {
      "id" : "Observation.extension",
      "path" : "Observation.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 2
    },
    {
      "id" : "Observation.extension:episode",
      "path" : "Observation.extension",
      "sliceName" : "episode",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/ExtHNEpisode"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.extension:sourceForm",
      "path" : "Observation.extension",
      "sliceName" : "sourceForm",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/ExtHNSourceForm"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.category:twcore",
      "path" : "Observation.category",
      "sliceName" : "twcore",
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "exam"
        }]
      }
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-workflow",
          "code" : "wound"
        }]
      }
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HNPatient"]
      }]
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support",
          "valueBoolean" : true
        }],
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "max" : "0"
    },
    {
      "id" : "Observation.bodySite",
      "path" : "Observation.bodySite",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.bodySite.text",
      "path" : "Observation.bodySite.text",
      "min" : 1
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "code"
        }],
        "rules" : "closed"
      },
      "min" : 4
    },
    {
      "id" : "Observation.component:category",
      "path" : "Observation.component",
      "sliceName" : "category",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:category.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-workflow",
          "code" : "wound-category"
        }]
      }
    },
    {
      "id" : "Observation.component:category.code.coding",
      "path" : "Observation.component.code.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:category.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-wound-category"
      }
    },
    {
      "id" : "Observation.component:category.value[x].coding",
      "path" : "Observation.component.value[x].coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:level",
      "path" : "Observation.component",
      "sliceName" : "level",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:level.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-workflow",
          "code" : "wound-level"
        }]
      }
    },
    {
      "id" : "Observation.component:level.code.coding",
      "path" : "Observation.component.code.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:level.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-wound-level"
      }
    },
    {
      "id" : "Observation.component:level.value[x].coding",
      "path" : "Observation.component.value[x].coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:length",
      "path" : "Observation.component",
      "sliceName" : "length",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:length.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-workflow",
          "code" : "length"
        }]
      }
    },
    {
      "id" : "Observation.component:length.code.coding",
      "path" : "Observation.component.code.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:length.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:length.value[x].value",
      "path" : "Observation.component.value[x].value",
      "min" : 1,
      "minValueDecimal" : 0
    },
    {
      "id" : "Observation.component:length.dataAbsentReason",
      "path" : "Observation.component.dataAbsentReason",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/data-absent-reason"
      }
    },
    {
      "id" : "Observation.component:width",
      "path" : "Observation.component",
      "sliceName" : "width",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:width.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-workflow",
          "code" : "width"
        }]
      }
    },
    {
      "id" : "Observation.component:width.code.coding",
      "path" : "Observation.component.code.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:width.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:width.value[x].value",
      "path" : "Observation.component.value[x].value",
      "min" : 1,
      "minValueDecimal" : 0
    },
    {
      "id" : "Observation.component:width.dataAbsentReason",
      "path" : "Observation.component.dataAbsentReason",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/data-absent-reason"
      }
    },
    {
      "id" : "Observation.component:depth",
      "path" : "Observation.component",
      "sliceName" : "depth",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:depth.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-workflow",
          "code" : "depth"
        }]
      }
    },
    {
      "id" : "Observation.component:depth.code.coding",
      "path" : "Observation.component.code.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:depth.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:depth.value[x].value",
      "path" : "Observation.component.value[x].value",
      "min" : 1,
      "minValueDecimal" : 0
    },
    {
      "id" : "Observation.component:depth.dataAbsentReason",
      "path" : "Observation.component.dataAbsentReason",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/data-absent-reason"
      }
    }]
  }
}

```
