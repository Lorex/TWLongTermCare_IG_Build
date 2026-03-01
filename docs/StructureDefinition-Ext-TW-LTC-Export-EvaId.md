# 長照 SDK－評估案號（EVA_ID） - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 SDK－評估案號（EVA_ID）**

## Extension: 長照 SDK－評估案號（EVA_ID） 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-Export-EvaId | *Version*:1.0.0 |
| Active as of 2026-03-02 | *Computable Name*:ExtTWLTCExportEvaId |

此 Extension 用於表示長照 SDK 的評估案號（EVA_ID），適用於 Claim 或 CarePlan 資源。

**Context of Use**

**Usage info**

**Usages:**

* This Extension is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/Ext-TW-LTC-Export-EvaId)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Ext-TW-LTC-Export-EvaId.csv), [Excel](StructureDefinition-Ext-TW-LTC-Export-EvaId.xlsx), [Schematron](StructureDefinition-Ext-TW-LTC-Export-EvaId.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Ext-TW-LTC-Export-EvaId",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-Export-EvaId",
  "version" : "1.0.0",
  "name" : "ExtTWLTCExportEvaId",
  "title" : "長照 SDK－評估案號（EVA_ID）",
  "status" : "active",
  "date" : "2026-03-02T02:26:08+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 Extension 用於表示長照 SDK 的評估案號（EVA_ID），適用於 Claim 或 CarePlan 資源。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Claim"
  },
  {
    "type" : "element",
    "expression" : "CarePlan"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "長照 SDK－評估案號（EVA_ID）",
      "definition" : "此 Extension 用於表示長照 SDK 的評估案號（EVA_ID），適用於 Claim 或 CarePlan 資源。"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-Export-EvaId"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "mustSupport" : true
    }]
  }
}

```
