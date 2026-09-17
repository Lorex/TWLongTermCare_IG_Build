# 支付審查－服務項目 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **支付審查－服務項目**

## CodeSystem: 支付審查－服務項目 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-svc-item | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:CS_TW_LTC_FeeAuditSvcItem |
| *Other Identifiers:*OID:2.25.13080140402475534747811958664981694751 | |

 

| | |
| :--- | :--- |
| 支付審核系統（照管平台）個案服務紀錄之「服務項目」（svc_item）代碼，申報 AA00 必填寫，可複選（原始電文以「 | 」分隔多個選項）。 |

 

 This Code system is referenced in the content logical definition of the following value sets: 

* [支付審查－服務項目](ValueSet-vs-tw-ltc-feeaudit-svc-item.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-tw-ltc-feeaudit-svc-item",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-svc-item",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.13080140402475534747811958664981694751"
  }],
  "version" : "1.1.0",
  "name" : "CS_TW_LTC_FeeAuditSvcItem",
  "title" : "支付審查－服務項目",
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
  "description" : "支付審核系統（照管平台）個案服務紀錄之「服務項目」（svc_item）代碼，申報 AA00 必填寫，可複選（原始電文以「|」分隔多個選項）。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "1",
    "display" : "電訪"
  },
  {
    "code" : "2",
    "display" : "家訪"
  },
  {
    "code" : "3",
    "display" : "與案家討論服務內容調整"
  },
  {
    "code" : "4",
    "display" : "接受申訴"
  },
  {
    "code" : "5",
    "display" : "照會或連結至服務提供單位"
  },
  {
    "code" : "9",
    "display" : "其他"
  }]
}

```
