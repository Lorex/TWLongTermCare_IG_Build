# 長期照顧－壓傷狀況 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長期照顧－壓傷狀況**

## Resource Profile: 長期照顧－壓傷狀況 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionCrush | *Version*:1.0.0 |
| Active as of 2026-04-03 | *Computable Name*:LTCConditionCrush |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 Condition Resource，以呈現長照機構住民的壓傷狀況。 

**Usages:**

* Use this Profile: [長期照顧管理中心個案服務初篩表/轉介單文件打包](StructureDefinition-LTCBundleReferral.md)
* Refer to this Profile: [長期照護管理中心個案服務初篩表/轉介單文件架構](StructureDefinition-LTCCompositionReferral.md)
* Examples for this Profile: [Condition/ltc-condition-crush-none-example](Condition-ltc-condition-crush-none-example.md) and [Condition/ltc-condition-crush-stage2-example](Condition-ltc-condition-crush-stage2-example.md)
* CapabilityStatements using this Profile: [臺灣長期照顧實作指引 - 用戶端能力聲明](CapabilityStatement-CapabilityStatementLTCClient.md) and [臺灣長期照顧實作指引 - 伺服端能力聲明](CapabilityStatement-CapabilityStatementLTCServer.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTCConditionCrush)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCConditionCrush.csv), [Excel](StructureDefinition-LTCConditionCrush.xlsx), [Schematron](StructureDefinition-LTCConditionCrush.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCConditionCrush",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionCrush",
  "version" : "1.0.0",
  "name" : "LTCConditionCrush",
  "title" : "長期照顧－壓傷狀況",
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
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Condition Resource，以呈現長照機構住民的壓傷狀況。",
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
  "baseDefinition" : "https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Condition-twcore",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Condition.code",
      "path" : "Condition.code",
      "short" : "壓傷狀況",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/ReferralConditionCrushVS-TWLTC"
      }
    },
    {
      "id" : "Condition.code.coding",
      "path" : "Condition.code.coding",
      "short" : "壓傷狀況代碼",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Condition.code.coding.system",
      "path" : "Condition.code.coding.system",
      "min" : 1,
      "patternUri" : "http://ltc-ig.fhir.tw/CodeSystem/ReferralConditionCrushCS-TWLTC"
    },
    {
      "id" : "Condition.code.coding.code",
      "path" : "Condition.code.coding.code",
      "short" : "個案是否有壓傷？如果代碼為 crush，則需填寫備註以描述壓傷狀況",
      "min" : 1
    },
    {
      "id" : "Condition.note",
      "path" : "Condition.note",
      "short" : "壓傷狀況與類別備註，應填寫部位、等級與大小(cm^2)",
      "max" : "1"
    }]
  }
}

```
