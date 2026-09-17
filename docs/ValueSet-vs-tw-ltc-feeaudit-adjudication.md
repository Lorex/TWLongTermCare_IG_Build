# 支付審查－核定金額類別 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **支付審查－核定金額類別**

## ValueSet: 支付審查－核定金額類別 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-feeaudit-adjudication | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:VS_TW_LTC_FeeAuditAdjudication |
| *Other Identifiers:*OID:2.25.95556605601195974745005247534016076129 | |

 
此 ValueSet 用於表示支付審核分案審核明細中各項金額的類別，代碼包含：approveFee（核定金額）、incInAcc（核增金額）、decInAcc（核減金額）、copayment（自付額）、aSvcFee（政策鼓勵金額）、tempPaymentFee（分案暫付金額）、price（單價）、submitted（申請核銷金額）。 

 **References** 

* [長照支付審查－分案審核明細](StructureDefinition-LTCClaimResponseFeeAudit.md)

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
  "id" : "vs-tw-ltc-feeaudit-adjudication",
  "url" : "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-feeaudit-adjudication",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.95556605601195974745005247534016076129"
  }],
  "version" : "1.1.0",
  "name" : "VS_TW_LTC_FeeAuditAdjudication",
  "title" : "支付審查－核定金額類別",
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
  "description" : "此 ValueSet 用於表示支付審核分案審核明細中各項金額的類別，代碼包含：approveFee（核定金額）、incInAcc（核增金額）、decInAcc（核減金額）、copayment（自付額）、aSvcFee（政策鼓勵金額）、tempPaymentFee（分案暫付金額）、price（單價）、submitted（申請核銷金額）。",
  "compose" : {
    "include" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-adjudication"
    }]
  }
}

```
