# 長照 SDK－照管全量匯出（Claim） - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 SDK－照管全量匯出（Claim）**

## Resource Profile: 長照 SDK－照管全量匯出（Claim） 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTC-Claim-Export | *Version*:1.0.0 |
| Draft as of 2026-04-02 | *Computable Name*:LTCClaimExport |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 Claim Resource，以呈現長照照管全量匯出之服務代碼、數量、單價及小計等申報資料。 

**Usages:**

* Examples for this Profile: [Claim/ltc-claim-export-dispatch-example](Claim-ltc-claim-export-dispatch-example.md) and [Claim/ltc-claim-export-example](Claim-ltc-claim-export-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTC-Claim-Export)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTC-Claim-Export.csv), [Excel](StructureDefinition-LTC-Claim-Export.xlsx), [Schematron](StructureDefinition-LTC-Claim-Export.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTC-Claim-Export",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTC-Claim-Export",
  "version" : "1.0.0",
  "name" : "LTCClaimExport",
  "title" : "長照 SDK－照管全量匯出（Claim）",
  "status" : "draft",
  "date" : "2026-04-02T13:32:15+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Claim Resource，以呈現長照照管全量匯出之服務代碼、數量、單價及小計等申報資料。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Claim",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Claim",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Claim",
      "path" : "Claim"
    },
    {
      "id" : "Claim.identifier",
      "path" : "Claim.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Claim.identifier:caseNo",
      "path" : "Claim.identifier",
      "sliceName" : "caseNo",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Claim.identifier:caseNo.system",
      "path" : "Claim.identifier.system",
      "min" : 1,
      "patternUri" : "https://ltc-ig.fhir.tw/identifier/export/case-no"
    },
    {
      "id" : "Claim.identifier:caseNo.value",
      "path" : "Claim.identifier.value",
      "min" : 1
    },
    {
      "id" : "Claim.identifier:evaId",
      "path" : "Claim.identifier",
      "sliceName" : "evaId",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Claim.identifier:evaId.system",
      "path" : "Claim.identifier.system",
      "min" : 1,
      "patternUri" : "https://ltc-ig.fhir.tw/identifier/export/eva-id"
    },
    {
      "id" : "Claim.identifier:evaId.value",
      "path" : "Claim.identifier.value",
      "min" : 1
    },
    {
      "id" : "Claim.identifier:yyyymm",
      "path" : "Claim.identifier",
      "sliceName" : "yyyymm",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Claim.identifier:yyyymm.system",
      "path" : "Claim.identifier.system",
      "min" : 1,
      "patternUri" : "https://ltc-ig.fhir.tw/identifier/export/yyyymm-roc"
    },
    {
      "id" : "Claim.identifier:yyyymm.value",
      "path" : "Claim.identifier.value",
      "min" : 1
    },
    {
      "id" : "Claim.status",
      "path" : "Claim.status",
      "mustSupport" : true
    },
    {
      "id" : "Claim.type",
      "path" : "Claim.type",
      "mustSupport" : true
    },
    {
      "id" : "Claim.type.coding",
      "path" : "Claim.type.coding",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Claim.type.coding.system",
      "path" : "Claim.type.coding.system",
      "patternUri" : "http://terminology.hl7.org/CodeSystem/claim-type"
    },
    {
      "id" : "Claim.type.coding.code",
      "path" : "Claim.type.coding.code",
      "patternCode" : "professional"
    },
    {
      "id" : "Claim.use",
      "path" : "Claim.use",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/claim-use"
      }
    },
    {
      "id" : "Claim.patient",
      "path" : "Claim.patient",
      "mustSupport" : true
    },
    {
      "id" : "Claim.item",
      "path" : "Claim.item",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Claim.item.productOrService",
      "path" : "Claim.item.productOrService",
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-service-item"
      }
    },
    {
      "id" : "Claim.item.programCode",
      "path" : "Claim.item.programCode",
      "short" : "可放計畫識別（planId）等匯出輔助碼；若需一致性，建議 system 使用 https://ltc-ig.fhir.tw/identifier/export/plan-id"
    }]
  }
}

```
