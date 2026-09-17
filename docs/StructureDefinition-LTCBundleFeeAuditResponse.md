# 長照支付審查－分案審核明細回覆打包 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照支付審查－分案審核明細回覆打包**

## Resource Profile: 長照支付審查－分案審核明細回覆打包 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCBundleFeeAuditResponse | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:LTCBundleFeeAuditResponse |

 
此 Bundle 以衛生福利部支付審核系統的分案審核明細查詢結果為基礎，用以表述單一核銷案號的審核明細回覆結構。 

 
每份 Bundle 放入一個核銷案號的審核明細，包含核定金額、服務紀錄及相關清冊。如有檢核錯誤，則一併填入錯誤訊息。 

**Usages:**

* Examples for this Profile: [Bundle/ltc-bundle-feeaudit-response-example](Bundle-ltc-bundle-feeaudit-response-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-LTCBundleFeeAuditResponse.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCBundleFeeAuditResponse.csv), [Excel](StructureDefinition-LTCBundleFeeAuditResponse.xlsx), [Schematron](StructureDefinition-LTCBundleFeeAuditResponse.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCBundleFeeAuditResponse",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCBundleFeeAuditResponse",
  "version" : "1.1.0",
  "name" : "LTCBundleFeeAuditResponse",
  "title" : "長照支付審查－分案審核明細回覆打包",
  "status" : "draft",
  "date" : "2026-09-17T17:33:17+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 Bundle 以衛生福利部支付審核系統的分案審核明細查詢結果為基礎，用以表述單一核銷案號的審核明細回覆結構。",
  "purpose" : "每份 Bundle 放入一個核銷案號的審核明細，包含核定金額、服務紀錄及相關清冊。如有檢核錯誤，則一併填入錯誤訊息。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle"
    },
    {
      "id" : "Bundle.type",
      "path" : "Bundle.type",
      "short" : "Bundle 的類型。[應填入 searchset]",
      "patternCode" : "searchset",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.total",
      "path" : "Bundle.total",
      "short" : "查詢結果總筆數。[應填入非負整數]",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "resource"
        }],
        "rules" : "open"
      },
      "short" : "審核明細回覆的內容，至少應包含一筆分案審核明細。",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:claimResponse",
      "path" : "Bundle.entry",
      "sliceName" : "claimResponse",
      "short" : "分案審核明細。[應填入對應的 ClaimResponse]",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:claimResponse.resource",
      "path" : "Bundle.entry.resource",
      "short" : "分案審核明細。[應填入符合 LTCClaimResponseFeeAudit 的 ClaimResponse]",
      "definition" : "應填入本核銷案號的審核結果。",
      "min" : 1,
      "type" : [{
        "code" : "ClaimResponse",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCClaimResponseFeeAudit"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:operationOutcome",
      "path" : "Bundle.entry",
      "sliceName" : "operationOutcome",
      "short" : "服務紀錄的檢核錯誤訊息。[應填入對應的 OperationOutcome]",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:operationOutcome.resource",
      "path" : "Bundle.entry.resource",
      "short" : "服務紀錄的檢核錯誤訊息。[應填入符合 LTCOperationOutcomeFeeAudit 的 OperationOutcome]",
      "definition" : "應填入錯誤代碼、錯誤原因及發生錯誤的服務紀錄。",
      "min" : 1,
      "type" : [{
        "code" : "OperationOutcome",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCOperationOutcomeFeeAudit"]
      }],
      "mustSupport" : true
    }]
  }
}

```
