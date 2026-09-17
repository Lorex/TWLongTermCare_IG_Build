# 支付審查－服務對象 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **支付審查－服務對象**

## CodeSystem: 支付審查－服務對象 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-svc-people | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:CS_TW_LTC_FeeAuditSvcPeople |
| *Other Identifiers:*OID:2.25.5260566181961141365521171980732386299 | |

 

| | |
| :--- | :--- |
| 支付審核系統（照管平台）個案服務紀錄之「服務對象」（svc_people）代碼，申報 AA00 必填寫，可複選（原始電文以「 | 」分隔多個選項）。 |

 

 This Code system is referenced in the content logical definition of the following value sets: 

* [支付審查－服務對象](ValueSet-vs-tw-ltc-feeaudit-svc-people.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-tw-ltc-feeaudit-svc-people",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-svc-people",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.5260566181961141365521171980732386299"
  }],
  "version" : "1.1.0",
  "name" : "CS_TW_LTC_FeeAuditSvcPeople",
  "title" : "支付審查－服務對象",
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
  "description" : "支付審核系統（照管平台）個案服務紀錄之「服務對象」（svc_people）代碼，申報 AA00 必填寫，可複選（原始電文以「|」分隔多個選項）。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "1",
    "display" : "服務使用者"
  },
  {
    "code" : "2",
    "display" : "家庭照顧者"
  }]
}

```
