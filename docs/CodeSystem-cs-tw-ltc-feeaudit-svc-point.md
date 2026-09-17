# 支付審查－服務重點 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **支付審查－服務重點**

## CodeSystem: 支付審查－服務重點 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-svc-point | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:CS_TW_LTC_FeeAuditSvcPoint |
| *Other Identifiers:*OID:2.25.272718911806665048437219954271657783529 | |

 

| | |
| :--- | :--- |
| 支付審核系統（照管平台）個案服務紀錄之「服務重點」（svc_point）代碼，申報 AA00 填寫，可複選（原始電文以「 | 」分隔多個選項）。 |

 

 This Code system is referenced in the content logical definition of the following value sets: 

* [支付審查－服務重點](ValueSet-vs-tw-ltc-feeaudit-svc-point.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-tw-ltc-feeaudit-svc-point",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-svc-point",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.272718911806665048437219954271657783529"
  }],
  "version" : "1.1.0",
  "name" : "CS_TW_LTC_FeeAuditSvcPoint",
  "title" : "支付審查－服務重點",
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
  "description" : "支付審核系統（照管平台）個案服務紀錄之「服務重點」（svc_point）代碼，申報 AA00 填寫，可複選（原始電文以「|」分隔多個選項）。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "1",
    "display" : "追蹤長照需要者與各項服務之連結情形"
  },
  {
    "code" : "2",
    "display" : "計畫與內容異動討論"
  },
  {
    "code" : "3",
    "display" : "協助長照需要者或其家屬其他資源連結"
  },
  {
    "code" : "4",
    "display" : "接受長照需要者及其家屬有關長照服務諮詢、處理"
  },
  {
    "code" : "5",
    "display" : "接受申訴"
  },
  {
    "code" : "9",
    "display" : "其他"
  }]
}

```
