# 支付審查－核銷狀況 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **支付審查－核銷狀況**

## CodeSystem: 支付審查－核銷狀況 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-case-status | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:CS_TW_LTC_FeeAuditCaseStatus |
| *Other Identifiers:*OID:2.25.294566398219796456696657442940868771796 | |

 
此 CodeSystem 定義《衛生福利部 支付審核系統 API 規格說明書（照管平台）》代碼說明章節中「status－核銷狀況」之代碼，用於表示分案在支付審核流程中的核銷處理狀況。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [支付審查－核銷狀況](ValueSet-vs-tw-ltc-feeaudit-case-status.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-tw-ltc-feeaudit-case-status",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-case-status",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.294566398219796456696657442940868771796"
  }],
  "version" : "1.1.0",
  "name" : "CS_TW_LTC_FeeAuditCaseStatus",
  "title" : "支付審查－核銷狀況",
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
  "description" : "此 CodeSystem 定義《衛生福利部 支付審核系統 API 規格說明書（照管平台）》代碼說明章節中「status－核銷狀況」之代碼，用於表示分案在支付審核流程中的核銷處理狀況。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [{
    "code" : "0",
    "display" : "已分案待電腦審核處理"
  },
  {
    "code" : "1",
    "display" : "待通知收件"
  },
  {
    "code" : "2",
    "display" : "已通知待收件"
  },
  {
    "code" : "3",
    "display" : "審核中"
  },
  {
    "code" : "4",
    "display" : "等待總表"
  },
  {
    "code" : "5",
    "display" : "審計待審"
  },
  {
    "code" : "6",
    "display" : "結案"
  }]
}

```
