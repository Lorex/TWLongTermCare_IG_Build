# 長照 SDK－跨月檢核結果（QP_O） - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 SDK－跨月檢核結果（QP_O）**

## Resource Profile: 長照 SDK－跨月檢核結果（QP_O） 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTC-OperationOutcome-Check | *Version*:1.0.0 |
| Draft as of 2026-03-01 | *Computable Name*:LTCOperationOutcomeCheck |

 
此 Profile 說明本 IG 如何進一步定義 FHIR 的 OperationOutcome Resource，以呈現長照 SDK 跨月金額與月份檢核之錯誤旗標與訊息。 

**Usages:**

* Examples for this Profile: [OperationOutcome/ltc-operationoutcome-check-example](OperationOutcome-ltc-operationoutcome-check-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTC-OperationOutcome-Check)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTC-OperationOutcome-Check.csv), [Excel](StructureDefinition-LTC-OperationOutcome-Check.xlsx), [Schematron](StructureDefinition-LTC-OperationOutcome-Check.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTC-OperationOutcome-Check",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTC-OperationOutcome-Check",
  "version" : "1.0.0",
  "name" : "LTCOperationOutcomeCheck",
  "title" : "長照 SDK－跨月檢核結果（QP_O）",
  "status" : "draft",
  "date" : "2026-03-01T19:25:35+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 Profile 說明本 IG 如何進一步定義 FHIR 的 OperationOutcome Resource，以呈現長照 SDK 跨月金額與月份檢核之錯誤旗標與訊息。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "OperationOutcome",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/OperationOutcome",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "OperationOutcome",
      "path" : "OperationOutcome"
    },
    {
      "id" : "OperationOutcome.extension",
      "path" : "OperationOutcome.extension",
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
      "id" : "OperationOutcome.extension:caseNo",
      "path" : "OperationOutcome.extension",
      "sliceName" : "caseNo",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-Export-CaseNo"]
      }]
    },
    {
      "id" : "OperationOutcome.extension:yyyymm",
      "path" : "OperationOutcome.extension",
      "sliceName" : "yyyymm",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-Export-YYYMM-ROC"]
      }]
    }]
  }
}

```
