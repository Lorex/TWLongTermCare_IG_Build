# 支付審查－服務類別 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **支付審查－服務類別**

## CodeSystem: 支付審查－服務類別 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-fee-type | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:CS_TW_LTC_FeeAuditFeeType |
| *Other Identifiers:*OID:2.25.62361481375680135174465343933742312186 | |

 
衛生福利部支付審核系統 API（照管平台）服務記錄申報之「服務類別」（svc_fee_tp）代碼，用以區分該筆個案服務紀錄係由政府補助或由民眾自費支付。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [支付審查－服務類別](ValueSet-vs-tw-ltc-feeaudit-fee-type.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-tw-ltc-feeaudit-fee-type",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-fee-type",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.62361481375680135174465343933742312186"
  }],
  "version" : "1.1.0",
  "name" : "CS_TW_LTC_FeeAuditFeeType",
  "title" : "支付審查－服務類別",
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
  "description" : "衛生福利部支付審核系統 API（照管平台）服務記錄申報之「服務類別」（svc_fee_tp）代碼，用以區分該筆個案服務紀錄係由政府補助或由民眾自費支付。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "1",
    "display" : "補助"
  },
  {
    "code" : "2",
    "display" : "自費"
  }]
}

```
