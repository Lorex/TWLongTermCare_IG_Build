# 支付審查－API 功能 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **支付審查－API 功能**

## CodeSystem: 支付審查－API 功能 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-api-function | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:CS_TW_LTC_FeeAuditApiFunction |
| *Other Identifiers:*OID:2.25.100617236274267559797425446983062975626 | |

 
此 CodeSystem 定義《衛生福利部 支付審核系統 API 規格說明書（照管平台）》代碼說明章節中「API Function－API Function 名稱」之代碼，用於表示交易單所對應的支付審核系統 API 功能。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [支付審查－API 功能](ValueSet-vs-tw-ltc-feeaudit-api-function.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-tw-ltc-feeaudit-api-function",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-api-function",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.100617236274267559797425446983062975626"
  }],
  "version" : "1.1.0",
  "name" : "CS_TW_LTC_FeeAuditApiFunction",
  "title" : "支付審查－API 功能",
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
  "description" : "此 CodeSystem 定義《衛生福利部 支付審核系統 API 規格說明書（照管平台）》代碼說明章節中「API Function－API Function 名稱」之代碼，用於表示交易單所對應的支付審核系統 API 功能。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "FeeApply",
    "display" : "服務記錄申報"
  },
  {
    "code" : "ObjDel",
    "display" : "服務紀錄刪除"
  },
  {
    "code" : "appCompletionNotice",
    "display" : "申報確認通知"
  },
  {
    "code" : "appCancel",
    "display" : "服務單位撤回"
  },
  {
    "code" : "CancelResultResponse",
    "display" : "取消交易單處理結果回報"
  }]
}

```
