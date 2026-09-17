# 長照支付審查－分案審核統計與承辦資訊 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照支付審查－分案審核統計與承辦資訊**

## Extension: 長照支付審查－分案審核統計與承辦資訊 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-AuditSummary | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:ExtTWLTCFeeAuditAuditSummary |

此 Extension 用於在長照支付審查之分案審核明細（ClaimResponse）中，結構化承載「(查詢B)分案審核明細查詢」回覆明細之分案層級統計值、暫付申請狀態、分案已處理之單號與承辦人員：服務記錄筆數（records）、個案數（cases）、核定個案數（approve_case_num）、核定服務記錄數（approve_record_count）、暫付申請狀態（temp_payment_status）、分案已處理之單號（trans_nos，多筆）與承辦人員（audit_man）。上述欄位於 FHIR R4 之 ClaimResponse 均無語意相符之標準元素，故以本 Extension 承載。

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [長照支付審查－分案審核明細](StructureDefinition-LTCClaimResponseFeeAudit.md)
* Examples for this Extension: [Bundle/ltc-bundle-feeaudit-response-example](Bundle-ltc-bundle-feeaudit-response-example.md) and [ClaimResponse/ltc-claimresponse-feeaudit-example](ClaimResponse-ltc-claimresponse-feeaudit-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-Ext-TW-LTC-FeeAudit-AuditSummary.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Ext-TW-LTC-FeeAudit-AuditSummary.csv), [Excel](StructureDefinition-Ext-TW-LTC-FeeAudit-AuditSummary.xlsx), [Schematron](StructureDefinition-Ext-TW-LTC-FeeAudit-AuditSummary.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Ext-TW-LTC-FeeAudit-AuditSummary",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-AuditSummary",
  "version" : "1.1.0",
  "name" : "ExtTWLTCFeeAuditAuditSummary",
  "title" : "長照支付審查－分案審核統計與承辦資訊",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-17T17:33:17+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 Extension 用於在長照支付審查之分案審核明細（ClaimResponse）中，結構化承載「(查詢B)分案審核明細查詢」回覆明細之分案層級統計值、暫付申請狀態、分案已處理之單號與承辦人員：服務記錄筆數（records）、個案數（cases）、核定個案數（approve_case_num）、核定服務記錄數（approve_record_count）、暫付申請狀態（temp_payment_status）、分案已處理之單號（trans_nos，多筆）與承辦人員（audit_man）。上述欄位於 FHIR R4 之 ClaimResponse 均無語意相符之標準元素，故以本 Extension 承載。",
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
    "expression" : "ClaimResponse"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "長照支付審查－分案審核統計與承辦資訊",
      "definition" : "此 Extension 用於在長照支付審查之分案審核明細（ClaimResponse）中，結構化承載「(查詢B)分案審核明細查詢」回覆明細之分案層級統計值、暫付申請狀態、分案已處理之單號與承辦人員：服務記錄筆數（records）、個案數（cases）、核定個案數（approve_case_num）、核定服務記錄數（approve_record_count）、暫付申請狀態（temp_payment_status）、分案已處理之單號（trans_nos，多筆）與承辦人員（audit_man）。上述欄位於 FHIR R4 之 ClaimResponse 均無語意相符之標準元素，故以本 Extension 承載。"
    },
    {
      "id" : "Extension.extension:records",
      "path" : "Extension.extension",
      "sliceName" : "records",
      "short" : "服務記錄筆數（records），本分案所申請之服務記錄總筆數；等於審核通過服務記錄（ClaimResponse.item）與錯誤服務記錄（ClaimResponse.error）之筆數合計",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:records.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:records.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "records"
    },
    {
      "id" : "Extension.extension:records.value[x]",
      "path" : "Extension.extension.value[x]",
      "short" : "服務記錄總筆數",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:cases",
      "path" : "Extension.extension",
      "sliceName" : "cases",
      "short" : "個案數（cases），本分案所申請之不重複個案人數",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:cases.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:cases.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "cases"
    },
    {
      "id" : "Extension.extension:cases.value[x]",
      "path" : "Extension.extension.value[x]",
      "short" : "申請個案數",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:approveCaseNum",
      "path" : "Extension.extension",
      "sliceName" : "approveCaseNum",
      "short" : "核定個案數（approve_case_num），審核核定通過之個案人數",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:approveCaseNum.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:approveCaseNum.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "approveCaseNum"
    },
    {
      "id" : "Extension.extension:approveCaseNum.value[x]",
      "path" : "Extension.extension.value[x]",
      "short" : "核定個案數",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:approveRecordCount",
      "path" : "Extension.extension",
      "sliceName" : "approveRecordCount",
      "short" : "核定服務記錄數（approve_record_count），審核核定通過之服務記錄筆數；等於 ClaimResponse.item 之筆數",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:approveRecordCount.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:approveRecordCount.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "approveRecordCount"
    },
    {
      "id" : "Extension.extension:approveRecordCount.value[x]",
      "path" : "Extension.extension.value[x]",
      "short" : "核定服務記錄數",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:tempPaymentStatus",
      "path" : "Extension.extension",
      "sliceName" : "tempPaymentStatus",
      "short" : "暫付申請狀態（temp_payment_status），長度上限 15，有申請暫付才顯示，例如「1: 等待暫付總表」",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:tempPaymentStatus.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:tempPaymentStatus.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "tempPaymentStatus"
    },
    {
      "id" : "Extension.extension:tempPaymentStatus.value[x]",
      "path" : "Extension.extension.value[x]",
      "short" : "暫付申請狀態說明",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:transNo",
      "path" : "Extension.extension",
      "sliceName" : "transNo",
      "short" : "分案已處理之單號（trans_nos），本分案已處理之申請單交易序號，可有多筆，故逐筆各為一個子擴充實例",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:transNo.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:transNo.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "transNo"
    },
    {
      "id" : "Extension.extension:transNo.value[x]",
      "path" : "Extension.extension.value[x]",
      "short" : "已處理之申請單交易序號，例如 00106",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:auditMan",
      "path" : "Extension.extension",
      "sliceName" : "auditMan",
      "short" : "承辦人員（audit_man），長度上限 10，即受理本分案之縣市主管機關執行審核之承辦人；不得以 ClaimResponse.requestor 表達，該元素於 FHIR R4 之語意為提出申報之服務提供方",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:auditMan.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:auditMan.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "auditMan"
    },
    {
      "id" : "Extension.extension:auditMan.value[x]",
      "path" : "Extension.extension.value[x]",
      "short" : "承辦人員姓名或代號，例如「CG碼承辦人」",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-AuditSummary"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
