# 支付審查－AA10 申報狀態 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **支付審查－AA10 申報狀態**

## CodeSystem: 支付審查－AA10 申報狀態 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-aa10-status | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:CS_TW_LTC_FeeAuditAA10Status |
| *Other Identifiers:*OID:2.25.1861194063152264927680515498655853192 | |

 
衛生福利部支付審核系統 API（照管平台）服務記錄申報之「AA10 申報狀態」（aa10_status）代碼，用以表示夜間緊急服務（AA10）之申報與確認情形，預設為 0（未申報）。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [支付審查－AA10 申報狀態](ValueSet-vs-tw-ltc-feeaudit-aa10-status.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-tw-ltc-feeaudit-aa10-status",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-aa10-status",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.1861194063152264927680515498655853192"
  }],
  "version" : "1.1.0",
  "name" : "CS_TW_LTC_FeeAuditAA10Status",
  "title" : "支付審查－AA10 申報狀態",
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
  "description" : "衛生福利部支付審核系統 API（照管平台）服務記錄申報之「AA10 申報狀態」（aa10_status）代碼，用以表示夜間緊急服務（AA10）之申報與確認情形，預設為 0（未申報）。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "0",
    "display" : "未申報"
  },
  {
    "code" : "1",
    "display" : "申請待確認"
  },
  {
    "code" : "2",
    "display" : "確認為非緊急服務"
  },
  {
    "code" : "3",
    "display" : "確認為緊急服務"
  }]
}

```
