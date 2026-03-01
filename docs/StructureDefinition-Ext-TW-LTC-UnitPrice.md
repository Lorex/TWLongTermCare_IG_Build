# 單價 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **單價**

## Extension: 單價 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-UnitPrice | *Version*:1.0.0 |
| Active as of 2026-03-01 | *Computable Name*:ExtTWLTCUnitPrice |

此 Extension 用於表示長照服務項目的單價金額。

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [長照 SDK－照顧計畫（不含輔具）](StructureDefinition-LTC-CarePlan-Payload.md)
* Examples for this Extension: [Bundle/ltc-bundle-payload-example](Bundle-ltc-bundle-payload-example.md) and [CarePlan/ltc-careplan-sdk-example](CarePlan-ltc-careplan-sdk-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/Ext-TW-LTC-UnitPrice)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Ext-TW-LTC-UnitPrice.csv), [Excel](StructureDefinition-Ext-TW-LTC-UnitPrice.xlsx), [Schematron](StructureDefinition-Ext-TW-LTC-UnitPrice.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Ext-TW-LTC-UnitPrice",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-UnitPrice",
  "version" : "1.0.0",
  "name" : "ExtTWLTCUnitPrice",
  "title" : "單價",
  "status" : "active",
  "date" : "2026-03-01T19:25:35+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 Extension 用於表示長照服務項目的單價金額。",
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
    "expression" : "CarePlan.activity.detail"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "單價",
      "definition" : "此 Extension 用於表示長照服務項目的單價金額。"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-UnitPrice"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Money"
      }],
      "mustSupport" : true
    }]
  }
}

```
