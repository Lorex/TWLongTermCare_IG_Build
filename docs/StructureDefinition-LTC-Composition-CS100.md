# 個案總查詢（CS100 對應版）Case Summary - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **個案總查詢（CS100 對應版）Case Summary**

## Resource Profile: 個案總查詢（CS100 對應版）Case Summary 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTC-Composition-CS100 | *Version*:1.0.0 |
| Draft as of 2026-04-03 | *Computable Name*:LTCCompositionCS100 |

 
本文件為『個案總查詢（Case Summary）』之 CS100 專用版本， 其內容與章節配置對應衛生福利部照顧服務管理資訊平臺功能 《CS100 個案總查詢》之查詢結果欄位與區塊。 

**Usages:**

* Examples for this Profile: [Composition/ltc-bundle-cs100-example](Composition-ltc-bundle-cs100-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTC-Composition-CS100)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTC-Composition-CS100.csv), [Excel](StructureDefinition-LTC-Composition-CS100.xlsx), [Schematron](StructureDefinition-LTC-Composition-CS100.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTC-Composition-CS100",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTC-Composition-CS100",
  "version" : "1.0.0",
  "name" : "LTCCompositionCS100",
  "title" : "個案總查詢（CS100 對應版）Case Summary",
  "status" : "draft",
  "date" : "2026-04-03T21:17:06+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "本文件為『個案總查詢（Case Summary）』之 CS100 專用版本，\n其內容與章節配置對應衛生福利部照顧服務管理資訊平臺功能\n《CS100 個案總查詢》之查詢結果欄位與區塊。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "fhirdocumentreference",
    "uri" : "http://hl7.org/fhir/documentreference",
    "name" : "FHIR DocumentReference"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Composition",
  "baseDefinition" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCCompositionBase",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Composition",
      "path" : "Composition"
    },
    {
      "id" : "Composition.identifier",
      "path" : "Composition.identifier",
      "min" : 1
    },
    {
      "id" : "Composition.identifier.system",
      "path" : "Composition.identifier.system",
      "min" : 1,
      "patternUri" : "https://ltc-ig.fhir.tw/identifier/cs100/report-id",
      "mustSupport" : true
    },
    {
      "id" : "Composition.identifier.value",
      "path" : "Composition.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.status",
      "path" : "Composition.status",
      "patternCode" : "final"
    },
    {
      "id" : "Composition.type",
      "path" : "Composition.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "11506-3"
        }]
      }
    },
    {
      "id" : "Composition.subject",
      "path" : "Composition.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPatient"]
      }]
    },
    {
      "id" : "Composition.section",
      "path" : "Composition.section",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "code"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 4
    },
    {
      "id" : "Composition.section:patient",
      "path" : "Composition.section",
      "sliceName" : "patient",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:patient.title",
      "path" : "Composition.section.title",
      "patternString" : "CS100-個案基本"
    },
    {
      "id" : "Composition.section:patient.code",
      "path" : "Composition.section.code",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "8716-3"
        }]
      }
    },
    {
      "id" : "Composition.section:patient.entry",
      "path" : "Composition.section.entry",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCPatient",
        "http://hl7.org/fhir/StructureDefinition/Observation"]
      }]
    },
    {
      "id" : "Composition.section:case",
      "path" : "Composition.section",
      "sliceName" : "case",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:case.title",
      "path" : "Composition.section.title",
      "patternString" : "CS100-案件資訊"
    },
    {
      "id" : "Composition.section:case.code",
      "path" : "Composition.section.code",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-section-code",
          "code" : "case"
        }]
      }
    },
    {
      "id" : "Composition.section:case.entry",
      "path" : "Composition.section.entry",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTC-EpisodeOfCare-CS100"]
      }]
    },
    {
      "id" : "Composition.section:assessment",
      "path" : "Composition.section",
      "sliceName" : "assessment",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Composition.section:assessment.title",
      "path" : "Composition.section.title",
      "patternString" : "CS100-評估核定摘要"
    },
    {
      "id" : "Composition.section:assessment.code",
      "path" : "Composition.section.code",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-section-code",
          "code" : "assessment"
        }]
      }
    },
    {
      "id" : "Composition.section:assessment.entry",
      "path" : "Composition.section.entry",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTC-Observation-Assessment-CS100"]
      }]
    },
    {
      "id" : "Composition.section:careplan",
      "path" : "Composition.section",
      "sliceName" : "careplan",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Composition.section:careplan.title",
      "path" : "Composition.section.title",
      "patternString" : "CS100-照顧計畫"
    },
    {
      "id" : "Composition.section:careplan.code",
      "path" : "Composition.section.code",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-section-code",
          "code" : "careplan"
        }]
      }
    },
    {
      "id" : "Composition.section:careplan.entry",
      "path" : "Composition.section.entry",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTC-CarePlan-Payload"]
      }]
    },
    {
      "id" : "Composition.section:eligibility",
      "path" : "Composition.section",
      "sliceName" : "eligibility",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Composition.section:eligibility.title",
      "path" : "Composition.section.title",
      "patternString" : "CS100-核定額度"
    },
    {
      "id" : "Composition.section:eligibility.code",
      "path" : "Composition.section.code",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-section-code",
          "code" : "eligibility"
        }]
      }
    },
    {
      "id" : "Composition.section:eligibility.entry",
      "path" : "Composition.section.entry",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTC-CoverageEligibilityResponse"]
      }]
    },
    {
      "id" : "Composition.section:incidents",
      "path" : "Composition.section",
      "sliceName" : "incidents",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Composition.section:incidents.title",
      "path" : "Composition.section.title",
      "patternString" : "CS100-近期異動/通報"
    },
    {
      "id" : "Composition.section:incidents.code",
      "path" : "Composition.section.code",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-section-code",
          "code" : "incidents"
        }]
      }
    },
    {
      "id" : "Composition.section:incidents.entry",
      "path" : "Composition.section.entry",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/AdverseEvent-twltc"]
      }]
    }]
  }
}

```
