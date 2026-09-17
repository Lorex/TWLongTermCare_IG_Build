# 長照支付審查－分案審核狀態回覆打包 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照支付審查－分案審核狀態回覆打包**

## Resource Profile: 長照支付審查－分案審核狀態回覆打包 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCBundleFeeAuditStatus | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:LTCBundleFeeAuditStatus |

 
此 Bundle 以衛生福利部支付審核系統的服務單位各分案審核狀態查詢結果為基礎，用以表述申報交易與分案審核狀態的回覆結構。 

 
每份 Bundle 放入查詢到的交易任務及分案審核狀態。如有分案異常或服務紀錄刪除失敗，則一併填入錯誤訊息。 

**Usages:**

* Examples for this Profile: [Bundle/ltc-bundle-feeaudit-status-example](Bundle-ltc-bundle-feeaudit-status-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-LTCBundleFeeAuditStatus.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCBundleFeeAuditStatus.csv), [Excel](StructureDefinition-LTCBundleFeeAuditStatus.xlsx), [Schematron](StructureDefinition-LTCBundleFeeAuditStatus.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCBundleFeeAuditStatus",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCBundleFeeAuditStatus",
  "version" : "1.1.0",
  "name" : "LTCBundleFeeAuditStatus",
  "title" : "長照支付審查－分案審核狀態回覆打包",
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
  "description" : "此 Bundle 以衛生福利部支付審核系統的服務單位各分案審核狀態查詢結果為基礎，用以表述申報交易與分案審核狀態的回覆結構。",
  "purpose" : "每份 Bundle 放入查詢到的交易任務及分案審核狀態。如有分案異常或服務紀錄刪除失敗，則一併填入錯誤訊息。",
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
      "short" : "審核狀態回覆的內容，至少應包含一筆交易單處理狀態。",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:task",
      "path" : "Bundle.entry",
      "sliceName" : "task",
      "short" : "交易任務與分案審核狀態。[應填入對應的 Task]",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:task.resource",
      "path" : "Bundle.entry.resource",
      "short" : "交易任務與分案審核狀態。[應填入符合 LTCTaskFeeAudit 的 Task]",
      "definition" : "應填入交易任務的類型、處理狀態與分案核銷狀況，每筆任務分別填寫。",
      "min" : 1,
      "type" : [{
        "code" : "Task",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCTaskFeeAudit"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:operationOutcome",
      "path" : "Bundle.entry",
      "sliceName" : "operationOutcome",
      "short" : "分案異常或服務紀錄刪除失敗的訊息。[應填入對應的 OperationOutcome]",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:operationOutcome.resource",
      "path" : "Bundle.entry.resource",
      "short" : "分案異常或服務紀錄刪除失敗的訊息。[應填入符合 LTCOperationOutcomeFeeAudit 的 OperationOutcome]",
      "definition" : "應填入失敗的原因、錯誤代碼及相關服務紀錄。",
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
