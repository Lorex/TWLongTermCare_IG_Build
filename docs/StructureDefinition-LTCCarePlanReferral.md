# 轉介單－服務種類 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **轉介單－服務種類**

## Resource Profile: 轉介單－服務種類 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCCarePlanReferral | *Version*:1.0.0 |
| Active as of 2026-04-03 | *Computable Name*:LTCCarePlanReferral |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 CarePlan Resource，以呈現轉診單中欲申請之服務種類。 

**Usages:**

* Use this Profile: [長期照顧管理中心個案服務初篩表/轉介單文件打包](StructureDefinition-LTCBundleReferral.md)
* Refer to this Profile: [長期照護管理中心個案服務初篩表/轉介單文件架構](StructureDefinition-LTCCompositionReferral.md)
* Examples for this Profile: [CarePlan/ltc-careplan-referral-home-service-example](CarePlan-ltc-careplan-referral-home-service-example.md)
* CapabilityStatements using this Profile: [臺灣長期照顧實作指引 - 用戶端能力聲明](CapabilityStatement-CapabilityStatementLTCClient.md) and [臺灣長期照顧實作指引 - 伺服端能力聲明](CapabilityStatement-CapabilityStatementLTCServer.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTCCarePlanReferral)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCCarePlanReferral.csv), [Excel](StructureDefinition-LTCCarePlanReferral.xlsx), [Schematron](StructureDefinition-LTCCarePlanReferral.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCCarePlanReferral",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCCarePlanReferral",
  "version" : "1.0.0",
  "name" : "LTCCarePlanReferral",
  "title" : "轉介單－服務種類",
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
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 CarePlan Resource，以呈現轉診單中欲申請之服務種類。",
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "CarePlan",
  "baseDefinition" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCCarePlan",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "CarePlan.activity.detail",
      "path" : "CarePlan.activity.detail",
      "short" : "服務種類",
      "min" : 1
    },
    {
      "id" : "CarePlan.activity.detail.code",
      "path" : "CarePlan.activity.detail.code",
      "short" : "服務種類代碼",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/ReferralCarePlanVS-TWLTC"
      }
    }]
  }
}

```
