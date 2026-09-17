# 支付審查－清冊文件類別 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **支付審查－清冊文件類別**

## CodeSystem: 支付審查－清冊文件類別 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-doc-type | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:CS_TW_LTC_FeeAuditDocType |
| *Other Identifiers:*OID:2.25.317166629504320931196084751276735561505 | |

 
此 CodeSystem 定義《衛生福利部 支付審核系統 API 規格說明書（照管平台）》「(查詢B)分案審核明細查詢」回覆明細中各項下載路徑所對應的清冊與總表文件類別代碼。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [支付審查－清冊文件類別](ValueSet-vs-tw-ltc-feeaudit-doc-type.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-tw-ltc-feeaudit-doc-type",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-doc-type",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.317166629504320931196084751276735561505"
  }],
  "version" : "1.1.0",
  "name" : "CS_TW_LTC_FeeAuditDocType",
  "title" : "支付審查－清冊文件類別",
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
  "description" : "此 CodeSystem 定義《衛生福利部 支付審核系統 API 規格說明書（照管平台）》「(查詢B)分案審核明細查詢」回覆明細中各項下載路徑所對應的清冊與總表文件類別代碼。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 8,
  "concept" : [{
    "code" : "tempPaymentDoc",
    "display" : "暫付總表"
  },
  {
    "code" : "caseSummaryNotice",
    "display" : "總表"
  },
  {
    "code" : "caseSvcList",
    "display" : "清冊"
  },
  {
    "code" : "caseSvcListExcel",
    "display" : "清冊EXCEL"
  },
  {
    "code" : "caseASvcList",
    "display" : "A碼清冊"
  },
  {
    "code" : "caseASvcListExcel",
    "display" : "A碼清冊EXCEL"
  },
  {
    "code" : "caseErrList",
    "display" : "申請記錄不通過清冊"
  },
  {
    "code" : "caseErrListExcel",
    "display" : "申請記錄不通過EXCEL清冊"
  }]
}

```
