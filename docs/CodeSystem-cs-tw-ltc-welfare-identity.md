# 長照 SDK－長照福利身分 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 SDK－長照福利身分**

## CodeSystem: 長照 SDK－長照福利身分 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-welfare-identity | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:CS_TW_LTC_WelfareIdentity |
| *Other Identifiers:*OID:2.25.111974656758981544413301364790189043260 | |

 
此 CodeSystem 定義長照 SDK 中的長照福利身分代碼。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [長照 SDK－長照福利身分](ValueSet-vs-tw-ltc-welfare-identity.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-tw-ltc-welfare-identity",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-welfare-identity",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.111974656758981544413301364790189043260"
  }],
  "version" : "1.1.0",
  "name" : "CS_TW_LTC_WelfareIdentity",
  "title" : "長照 SDK－長照福利身分",
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
  "description" : "此 CodeSystem 定義長照 SDK 中的長照福利身分代碼。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "cat1",
    "display" : "第1類"
  },
  {
    "code" : "cat2",
    "display" : "第2類"
  },
  {
    "code" : "cat3",
    "display" : "第3類"
  }]
}

```
