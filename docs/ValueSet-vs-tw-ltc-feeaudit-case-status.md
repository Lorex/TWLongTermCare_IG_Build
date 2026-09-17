# 支付審查－核銷狀況 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **支付審查－核銷狀況**

## ValueSet: 支付審查－核銷狀況 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-feeaudit-case-status | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:VS_TW_LTC_FeeAuditCaseStatus |
| *Other Identifiers:*OID:2.25.29256331818245997122471542520517452484 | |

 
此 ValueSet 用於表示支付審核系統中分案的核銷狀況，代碼包含：0（已分案待電腦審核處理）、1（待通知收件）、2（已通知待收件）、3（審核中）、4（等待總表）、5（審計待審）、6（結案）。 

 **References** 

* [長照支付審查－申報交易任務](StructureDefinition-LTCTaskFeeAudit.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "vs-tw-ltc-feeaudit-case-status",
  "url" : "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-feeaudit-case-status",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.29256331818245997122471542520517452484"
  }],
  "version" : "1.1.0",
  "name" : "VS_TW_LTC_FeeAuditCaseStatus",
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
  "description" : "此 ValueSet 用於表示支付審核系統中分案的核銷狀況，代碼包含：0（已分案待電腦審核處理）、1（待通知收件）、2（已通知待收件）、3（審核中）、4（等待總表）、5（審計待審）、6（結案）。",
  "compose" : {
    "include" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-case-status"
    }]
  }
}

```
