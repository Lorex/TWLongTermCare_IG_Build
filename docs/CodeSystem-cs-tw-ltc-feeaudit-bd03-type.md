# 支付審查－社區式服務交通接送服務使用類型 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **支付審查－社區式服務交通接送服務使用類型**

## CodeSystem: 支付審查－社區式服務交通接送服務使用類型 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-bd03-type | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:CS_TW_LTC_FeeAuditBD03Type |
| *Other Identifiers:*OID:2.25.156875812551001506213624344159842438445 | |

 
衛生福利部支付審核系統 API（照管平台）服務記錄申報之「社區式服務交通接送（BD03）服務使用類型」（bd03_type）代碼，申報 BD03 照顧組合時必填，預設為 1（社區式長照機構）。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [支付審查－社區式服務交通接送服務使用類型](ValueSet-vs-tw-ltc-feeaudit-bd03-type.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-tw-ltc-feeaudit-bd03-type",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-bd03-type",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.156875812551001506213624344159842438445"
  }],
  "version" : "1.1.0",
  "name" : "CS_TW_LTC_FeeAuditBD03Type",
  "title" : "支付審查－社區式服務交通接送服務使用類型",
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
  "description" : "衛生福利部支付審核系統 API（照管平台）服務記錄申報之「社區式服務交通接送（BD03）服務使用類型」（bd03_type）代碼，申報 BD03 照顧組合時必填，預設為 1（社區式長照機構）。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "1",
    "display" : "社區式長照機構"
  },
  {
    "code" : "2",
    "display" : "社區服務據點(不含身障類)"
  },
  {
    "code" : "3",
    "display" : "輔具中心"
  },
  {
    "code" : "4",
    "display" : "身障日間照顧服務"
  }]
}

```
