# 支付審查－服務紀錄補充資訊類別 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **支付審查－服務紀錄補充資訊類別**

## ValueSet: 支付審查－服務紀錄補充資訊類別 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-feeaudit-supporting-info | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:VS_TW_LTC_FeeAuditSupportingInfo |
| *Other Identifiers:*OID:2.25.118212642271467441236280113162067439725 | |

 
此 ValueSet 涵蓋支付審核系統「服務記錄申報（FeeApply）」中隨照顧組合代碼特化之補充資訊分類碼，適用於 Claim.supportingInfo.category，包含 AA00 個管服務、C 碼專業服務、交通接送（BD03、DA01）及各項申報旗標等類別。 

 **References** 

* [長照支付審查－個案服務紀錄申報](StructureDefinition-LTCClaimFeeApply.md)

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
  "id" : "vs-tw-ltc-feeaudit-supporting-info",
  "url" : "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-feeaudit-supporting-info",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.118212642271467441236280113162067439725"
  }],
  "version" : "1.1.0",
  "name" : "VS_TW_LTC_FeeAuditSupportingInfo",
  "title" : "支付審查－服務紀錄補充資訊類別",
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
  "description" : "此 ValueSet 涵蓋支付審核系統「服務記錄申報（FeeApply）」中隨照顧組合代碼特化之補充資訊分類碼，適用於 Claim.supportingInfo.category，包含 AA00 個管服務、C 碼專業服務、交通接送（BD03、DA01）及各項申報旗標等類別。",
  "compose" : {
    "include" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info"
    }]
  }
}

```
