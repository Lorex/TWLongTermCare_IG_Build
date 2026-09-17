# 長照 SDK－CMS 等級 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 SDK－CMS 等級**

## CodeSystem: 長照 SDK－CMS 等級 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-cmslevel | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:CS_TW_LTC_CMSLevel |
| *Other Identifiers:*OID:2.25.75074889836106109751005844669027341181 | |

 
對應 r2.5：1, 1a, 1b, 2..8。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [長照 SDK－CMS 等級](ValueSet-vs-tw-ltc-cmslevel.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cs-tw-ltc-cmslevel",
  "url" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-cmslevel",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.75074889836106109751005844669027341181"
  }],
  "version" : "1.1.0",
  "name" : "CS_TW_LTC_CMSLevel",
  "title" : "長照 SDK－CMS 等級",
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
  "description" : "對應 r2.5：1, 1a, 1b, 2..8。",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 10,
  "concept" : [{
    "code" : "1",
    "display" : "1"
  },
  {
    "code" : "1a",
    "display" : "1a"
  },
  {
    "code" : "1b",
    "display" : "1b"
  },
  {
    "code" : "2",
    "display" : "2"
  },
  {
    "code" : "3",
    "display" : "3"
  },
  {
    "code" : "4",
    "display" : "4"
  },
  {
    "code" : "5",
    "display" : "5"
  },
  {
    "code" : "6",
    "display" : "6"
  },
  {
    "code" : "7",
    "display" : "7"
  },
  {
    "code" : "8",
    "display" : "8"
  }]
}

```
