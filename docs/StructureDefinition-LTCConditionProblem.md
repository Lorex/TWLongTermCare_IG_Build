# 長期照顧－主要疾病 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長期照顧－主要疾病**

## Resource Profile: 長期照顧－主要疾病 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionProblem | *Version*:1.0.0 |
| Active as of 2026-04-03 | *Computable Name*:LTCConditionProblem |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 Condition Resource，以呈現案主或其家庭之主要疾病資料。 

**Usages:**

* Use this Profile: [長期照顧管理中心個案服務初篩表/轉介單文件打包](StructureDefinition-LTCBundleReferral.md)
* Examples for this Profile: [Condition/ltc-condition-diabetes-example](Condition-ltc-condition-diabetes-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTCConditionProblem)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCConditionProblem.csv), [Excel](StructureDefinition-LTCConditionProblem.xlsx), [Schematron](StructureDefinition-LTCConditionProblem.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCConditionProblem",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionProblem",
  "version" : "1.0.0",
  "name" : "LTCConditionProblem",
  "title" : "長期照顧－主要疾病",
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
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Condition Resource，以呈現案主或其家庭之主要疾病資料。",
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
      "patternCode" : "encounter-diagnosis"
    }]
  }
}

```
