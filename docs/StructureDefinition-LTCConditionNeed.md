# 長期照顧－主要問題及需求 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長期照顧－主要問題及需求**

## Resource Profile: 長期照顧－主要問題及需求 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionNeed | *Version*:0.4.1 |
| Active as of 2026-02-28 | *Computable Name*:LTCConditionNeed |

 
用於表述案主(家)主要問題及需求的 Condition Profile。 

**Usages:**

* Use this Profile: [長期照顧管理中心個案服務初篩表/轉介單文件打包](StructureDefinition-LTCBundleReferral.md)
* Examples for this Profile: [Condition/ltc-condition-need-assistance-example](Condition-ltc-condition-need-assistance-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTCConditionNeed)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCConditionNeed.csv), [Excel](StructureDefinition-LTCConditionNeed.xlsx), [Schematron](StructureDefinition-LTCConditionNeed.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCConditionNeed",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionNeed",
  "version" : "0.4.1",
  "name" : "LTCConditionNeed",
  "title" : "長期照顧－主要問題及需求",
  "status" : "active",
  "date" : "2026-02-28T23:13:53+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "用於表述案主(家)主要問題及需求的 Condition Profile。",
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
      "id" : "Condition.category.coding",
      "path" : "Condition.category.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Condition.category.coding.system",
      "path" : "Condition.category.coding.system",
      "patternUri" : "http://terminology.hl7.org/CodeSystem/condition-category"
    },
    {
      "id" : "Condition.category.coding.code",
      "path" : "Condition.category.coding.code",
      "patternCode" : "problem-list-item"
    },
    {
      "id" : "Condition.code.coding",
      "path" : "Condition.code.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Condition.code.coding.system",
      "path" : "Condition.code.coding.system",
      "min" : 1,
      "patternUri" : "http://snomed.info/sct"
    }]
  }
}

```
