# 長照 SDK－照管全量匯出（ClaimResponse） - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 SDK－照管全量匯出（ClaimResponse）**

## Resource Profile: 長照 SDK－照管全量匯出（ClaimResponse） 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTC-ClaimResponse-Export | *Version*:1.0.0 |
| Draft as of 2026-04-02 | *Computable Name*:LTCClaimResponseExport |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 ClaimResponse Resource，以呈現長照照管全量匯出之審核結果與檢核錯誤資訊。 

**Usages:**

* Examples for this Profile: [ClaimResponse/ltc-claimresponse-export-example](ClaimResponse-ltc-claimresponse-export-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTC-ClaimResponse-Export)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTC-ClaimResponse-Export.csv), [Excel](StructureDefinition-LTC-ClaimResponse-Export.xlsx), [Schematron](StructureDefinition-LTC-ClaimResponse-Export.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTC-ClaimResponse-Export",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTC-ClaimResponse-Export",
  "version" : "1.0.0",
  "name" : "LTCClaimResponseExport",
  "title" : "長照 SDK－照管全量匯出（ClaimResponse）",
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
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 ClaimResponse Resource，以呈現長照照管全量匯出之審核結果與檢核錯誤資訊。",
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
  "type" : "ClaimResponse",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ClaimResponse",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ClaimResponse",
      "path" : "ClaimResponse"
    },
    {
      "id" : "ClaimResponse.extension",
      "path" : "ClaimResponse.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "ClaimResponse.extension:errorMessage",
      "path" : "ClaimResponse.extension",
      "sliceName" : "errorMessage",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-Export-Error"]
      }]
    },
    {
      "id" : "ClaimResponse.extension:unit",
      "path" : "ClaimResponse.extension",
      "sliceName" : "unit",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-Export-Unit"]
      }]
    },
    {
      "id" : "ClaimResponse.identifier",
      "path" : "ClaimResponse.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "ClaimResponse.identifier:yyyymm",
      "path" : "ClaimResponse.identifier",
      "sliceName" : "yyyymm",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.identifier:yyyymm.system",
      "path" : "ClaimResponse.identifier.system",
      "min" : 1,
      "patternUri" : "http://ltc-ig.fhir.tw/identifier/export/yyyymm-roc"
    },
    {
      "id" : "ClaimResponse.identifier:yyyymm.value",
      "path" : "ClaimResponse.identifier.value",
      "min" : 1
    }]
  }
}

```
