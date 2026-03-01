# 長照 SDK－案件編號（CASENO） - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 SDK－案件編號（CASENO）**

## Extension: 長照 SDK－案件編號（CASENO） 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-Export-CaseNo | *Version*:1.0.0 |
| Active as of 2026-03-02 | *Computable Name*:ExtTWLTCExportCaseNo |

此 Extension 用於表示長照 SDK 的案件編號（CASENO），適用於 Claim、CarePlan、Communication 或 OperationOutcome 資源。

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [長照 SDK－服務活動紀錄（SERVICE_A）](StructureDefinition-LTC-Communication-ServiceA.md) and [長照 SDK－跨月檢核結果（QP_O）](StructureDefinition-LTC-OperationOutcome-Check.md)
* Examples for this Extension: [Communication/ltc-communication-servicea-example](Communication-ltc-communication-servicea-example.md) and [OperationOutcome/ltc-operationoutcome-check-example](OperationOutcome-ltc-operationoutcome-check-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/Ext-TW-LTC-Export-CaseNo)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Ext-TW-LTC-Export-CaseNo.csv), [Excel](StructureDefinition-Ext-TW-LTC-Export-CaseNo.xlsx), [Schematron](StructureDefinition-Ext-TW-LTC-Export-CaseNo.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Ext-TW-LTC-Export-CaseNo",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-Export-CaseNo",
  "version" : "1.0.0",
  "name" : "ExtTWLTCExportCaseNo",
  "title" : "長照 SDK－案件編號（CASENO）",
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
  "description" : "此 Extension 用於表示長照 SDK 的案件編號（CASENO），適用於 Claim、CarePlan、Communication 或 OperationOutcome 資源。",
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
    "expression" : "OperationOutcome"
  },
  {
    "type" : "element",
    "expression" : "Communication"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "長照 SDK－案件編號（CASENO）",
      "definition" : "此 Extension 用於表示長照 SDK 的案件編號（CASENO），適用於 Claim、CarePlan、Communication 或 OperationOutcome 資源。"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-Export-CaseNo"
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
