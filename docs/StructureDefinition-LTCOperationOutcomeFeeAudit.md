# 長照支付審查－申報檢核結果 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照支付審查－申報檢核結果**

## Resource Profile: 長照支付審查－申報檢核結果 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCOperationOutcomeFeeAudit | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:LTCOperationOutcomeFeeAudit |

 
此 OperationOutcome 以衛生福利部支付審核系統的回覆資料為基礎，用以表述服務紀錄的檢核錯誤與申報處理結果。 

 
用於回覆申報檢核錯誤、分案異常及服務紀錄刪除失敗的原因。每個問題分別填寫一筆 issue，包含嚴重程度、問題類型、錯誤代碼及原因。 

**Usages:**

* Use this Profile: [長照支付審查－分案審核明細回覆打包](StructureDefinition-LTCBundleFeeAuditResponse.md) and [長照支付審查－分案審核狀態回覆打包](StructureDefinition-LTCBundleFeeAuditStatus.md)
* Refer to this Profile: [長照支付審查－申報交易任務](StructureDefinition-LTCTaskFeeAudit.md)
* Examples for this Profile: [OperationOutcome/ltc-operationoutcome-feeaudit-example](OperationOutcome-ltc-operationoutcome-feeaudit-example.md), [OperationOutcome/ltc-operationoutcome-feeaudit-exception-example](OperationOutcome-ltc-operationoutcome-feeaudit-exception-example.md), [OperationOutcome/ltc-operationoutcome-feeaudit-objdel-2-example](OperationOutcome-ltc-operationoutcome-feeaudit-objdel-2-example.md) and [OperationOutcome/ltc-operationoutcome-feeaudit-objdel-example](OperationOutcome-ltc-operationoutcome-feeaudit-objdel-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-LTCOperationOutcomeFeeAudit.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCOperationOutcomeFeeAudit.csv), [Excel](StructureDefinition-LTCOperationOutcomeFeeAudit.xlsx), [Schematron](StructureDefinition-LTCOperationOutcomeFeeAudit.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCOperationOutcomeFeeAudit",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCOperationOutcomeFeeAudit",
  "version" : "1.1.0",
  "name" : "LTCOperationOutcomeFeeAudit",
  "title" : "長照支付審查－申報檢核結果",
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
  "description" : "此 OperationOutcome 以衛生福利部支付審核系統的回覆資料為基礎，用以表述服務紀錄的檢核錯誤與申報處理結果。",
  "purpose" : "用於回覆申報檢核錯誤、分案異常及服務紀錄刪除失敗的原因。每個問題分別填寫一筆 issue，包含嚴重程度、問題類型、錯誤代碼及原因。",
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
      "path" : "OperationOutcome",
      "short" : "申報檢核結果",
      "definition" : "應填寫本次檢核或處理過程發現的問題，並指出受影響的服務紀錄。"
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
      "short" : "發生問題的核銷案號。[應在 valueString 填入最長 30 個字元的字串]",
      "definition" : "如問題涉及特定核銷案號，應在此填入該案號。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-Export-CaseNo"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "OperationOutcome.issue",
      "path" : "OperationOutcome.issue",
      "short" : "檢核錯誤的內容，如有多筆錯誤，則可放入多個 issue。",
      "definition" : "每個錯誤分別填寫一筆 issue。同一筆服務紀錄如有多個錯誤，應逐項列出。",
      "mustSupport" : true
    },
    {
      "id" : "OperationOutcome.issue.severity",
      "path" : "OperationOutcome.issue.severity",
      "short" : "錯誤的嚴重程度，如檢核錯誤造成申報、分案或刪除失敗，則填入 error。",
      "mustSupport" : true
    },
    {
      "id" : "OperationOutcome.issue.code",
      "path" : "OperationOutcome.issue.code",
      "short" : "FHIR 問題類型代碼",
      "definition" : "欄位必填或長度、格式錯誤（E1xxx、E2xxx）建議填入 required 或 value。資料查詢、寫入錯誤（E4xxx）建議填入 not-found 或 processing。審核規則與支付碼檢核錯誤（E5xxx、EBA／EBC／ECB／EGA／EOT／ESC 系列）建議填入 business-rule。",
      "mustSupport" : true
    },
    {
      "id" : "OperationOutcome.issue.details",
      "path" : "OperationOutcome.issue.details",
      "short" : "檢核錯誤的代碼與原因",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "OperationOutcome.issue.details.coding",
      "path" : "OperationOutcome.issue.details.coding",
      "short" : "檢核錯誤代碼。[應填入 Coding，code 為最長 5 個字元的支付審查錯誤代碼]",
      "definition" : "代碼使用 VS_TW_LTC_FeeAuditErrorCode。例如 E1001 為服務紀錄識別碼不可空白，E4015 為單位已完成申報確認通知、不再受理新的服務紀錄，E4032 為服務紀錄不存在。",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-feeaudit-error-code"
      }
    },
    {
      "id" : "OperationOutcome.issue.details.text",
      "path" : "OperationOutcome.issue.details.text",
      "short" : "檢核錯誤原因。[應填入最長 200 個字元的字串]",
      "mustSupport" : true
    },
    {
      "id" : "OperationOutcome.issue.diagnostics",
      "path" : "OperationOutcome.issue.diagnostics",
      "short" : "錯誤的補充說明。[可填入完整錯誤訊息或批次處理結果]",
      "definition" : "應補充有助於判斷及修正問題的資訊。",
      "mustSupport" : true
    },
    {
      "id" : "OperationOutcome.issue.expression",
      "path" : "OperationOutcome.issue.expression",
      "short" : "發生錯誤的服務紀錄。[應填入包含實際服務紀錄識別碼的 FHIRPath 表達式]",
      "definition" : "應填入能指出受影響服務紀錄的 FHIRPath 表達式，並帶入實際識別碼。例如 Claim.identifier.where(system='http://ltc-ig.fhir.tw/identifier/feeaudit/objid' and value='882601914')。",
      "mustSupport" : true
    }]
  }
}

```
