# 長期照顧－看護狀況 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長期照顧－看護狀況**

## Resource Profile: 長期照顧－看護狀況 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionCaregiver | *Version*:0.4.1 |
| Active as of 2026-02-28 | *Computable Name*:LTCConditionCaregiver |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 Condition Resource，以呈現長期照顧情境中住民的看護狀況資料。 

**Usages:**

* Use this Profile: [照顧管理評估量表文件打包](StructureDefinition-LTCBundleCMS.md) and [長期照顧管理中心個案服務初篩表/轉介單文件打包](StructureDefinition-LTCBundleReferral.md)
* Refer to this Profile: [照顧管理評估量表文件架構](StructureDefinition-LTCCompositionCMS.md) and [長期照護管理中心個案服務初篩表/轉介單文件架構](StructureDefinition-LTCCompositionReferral.md)
* Examples for this Profile: [Condition/ltc-condition-caregiver-family-example](Condition-ltc-condition-caregiver-family-example.md) and [Condition/ltc-condition-caregiver-family-referral-example](Condition-ltc-condition-caregiver-family-referral-example.md)
* CapabilityStatements using this Profile: [臺灣長期照顧實作指引 - 用戶端能力聲明](CapabilityStatement-CapabilityStatementLTCClient.md) and [臺灣長期照顧實作指引 - 伺服端能力聲明](CapabilityStatement-CapabilityStatementLTCServer.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.twltc|current/StructureDefinition/LTCConditionCaregiver)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCConditionCaregiver.csv), [Excel](StructureDefinition-LTCConditionCaregiver.xlsx), [Schematron](StructureDefinition-LTCConditionCaregiver.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCConditionCaregiver",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionCaregiver",
  "version" : "0.4.1",
  "name" : "LTCConditionCaregiver",
  "title" : "長期照顧－看護狀況",
  "status" : "active",
  "date" : "2026-02-28T05:34:23+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Condition Resource，以呈現長期照顧情境中住民的看護狀況資料。",
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
  "baseDefinition" : "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Condition-twcore",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Condition.code",
      "path" : "Condition.code",
      "short" : "看護狀況",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/ReferralConditionCaregiverVS-TWLTC"
      }
    },
    {
      "id" : "Condition.code.coding",
      "path" : "Condition.code.coding",
      "short" : "看護狀況代碼",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Condition.code.coding.system",
      "path" : "Condition.code.coding.system",
      "min" : 1,
      "patternUri" : "http://ltc-ig.fhir.tw/CodeSystem/ReferralConditionCaregiverCS-TWLTC"
    },
    {
      "id" : "Condition.code.coding.code",
      "path" : "Condition.code.coding.code",
      "short" : "個案是否有看護？",
      "min" : 1
    },
    {
      "id" : "Condition.note",
      "path" : "Condition.note",
      "short" : "看護狀況與類別備註，應填寫本國籍人力工時（小時/天）及外國籍人數",
      "max" : "1"
    }]
  }
}

```
