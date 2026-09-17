# 支付審查－API 執行狀況 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **支付審查－API 執行狀況**

## CodeSystem: 支付審查－API 執行狀況 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-api-status | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:CS_TW_LTC_FeeAuditApiStatus |
| *Other Identifiers:*OID:2.25.177876761818824588762965691418027452372 | |

 
此 CodeSystem 定義《衛生福利部 支付審核系統 API 規格說明書（照管平台）》代碼說明章節中「status－API執行狀況」之代碼，用於表示服務單位所送交易單於支付審核系統之處理狀況。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [支付審查－API 執行狀況](ValueSet-vs-tw-ltc-feeaudit-api-status.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-tw-ltc-feeaudit-api-status",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-api-status",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.177876761818824588762965691418027452372"
  }],
  "version" : "1.1.0",
  "name" : "CS_TW_LTC_FeeAuditApiStatus",
  "title" : "支付審查－API 執行狀況",
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
  "description" : "此 CodeSystem 定義《衛生福利部 支付審核系統 API 規格說明書（照管平台）》代碼說明章節中「status－API執行狀況」之代碼，用於表示服務單位所送交易單於支付審核系統之處理狀況。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "0",
    "display" : "待處理"
  },
  {
    "code" : "1",
    "display" : "處理中"
  },
  {
    "code" : "3",
    "display" : "錯誤"
  },
  {
    "code" : "4",
    "display" : "處理完成"
  }]
}

```
