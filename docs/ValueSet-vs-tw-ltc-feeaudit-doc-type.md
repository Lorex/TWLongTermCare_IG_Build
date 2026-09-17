# 支付審查－清冊文件類別 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **支付審查－清冊文件類別**

## ValueSet: 支付審查－清冊文件類別 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-feeaudit-doc-type | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:VS_TW_LTC_FeeAuditDocType |
| *Other Identifiers:*OID:2.25.175303356490372765847214667943416369085 | |

 
此 ValueSet 用於表示支付審核分案審核明細所提供之清冊與總表文件類別，代碼包含：tempPaymentDoc（暫付總表）、caseSummaryNotice（總表）、caseSvcList（清冊）、caseSvcListExcel（清冊EXCEL）、caseASvcList（A碼清冊）、caseASvcListExcel（A碼清冊EXCEL）、caseErrList（申請記錄不通過清冊）、caseErrListExcel（申請記錄不通過EXCEL清冊）。 

 **References** 

* [長照支付審查－清冊文件下載路徑](StructureDefinition-Ext-TW-LTC-FeeAudit-DocUrl.md)

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
  "id" : "vs-tw-ltc-feeaudit-doc-type",
  "url" : "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-feeaudit-doc-type",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.175303356490372765847214667943416369085"
  }],
  "version" : "1.1.0",
  "name" : "VS_TW_LTC_FeeAuditDocType",
  "title" : "支付審查－清冊文件類別",
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
  "description" : "此 ValueSet 用於表示支付審核分案審核明細所提供之清冊與總表文件類別，代碼包含：tempPaymentDoc（暫付總表）、caseSummaryNotice（總表）、caseSvcList（清冊）、caseSvcListExcel（清冊EXCEL）、caseASvcList（A碼清冊）、caseASvcListExcel（A碼清冊EXCEL）、caseErrList（申請記錄不通過清冊）、caseErrListExcel（申請記錄不通過EXCEL清冊）。",
  "compose" : {
    "include" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-doc-type"
    }]
  }
}

```
