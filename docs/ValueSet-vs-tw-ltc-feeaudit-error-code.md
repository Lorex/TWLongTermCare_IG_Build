# 支付審查－錯誤代碼 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **支付審查－錯誤代碼**

## ValueSet: 支付審查－錯誤代碼 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-feeaudit-error-code | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:VS_TW_LTC_FeeAuditErrorCode |
| *Other Identifiers:*OID:2.25.268640805681867837409475407883849391422 | |

 
此 ValueSet 涵蓋《衛生福利部 支付審核系統 API 規格說明書（照管平台）》所定義之全部錯誤代碼（err_code），用於服務紀錄申報、撤回、審查結果回覆等交易之錯誤原因表達，包含欄位必填與長度檢核（E1xxx）、格式檢核（E2xxx）、資料查詢與寫入異常（E4xxx）、審核規則檢核（E5xxx）及各支付碼專屬檢核（EBA、EBC、ECB、EGA、EOT、ESC 系列）共 176 項代碼。 

 **References** 

* [長照支付審查－分案審核明細](StructureDefinition-LTCClaimResponseFeeAudit.md)
* [長照支付審查－申報檢核結果](StructureDefinition-LTCOperationOutcomeFeeAudit.md)

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
  "id" : "vs-tw-ltc-feeaudit-error-code",
  "url" : "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-feeaudit-error-code",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.268640805681867837409475407883849391422"
  }],
  "version" : "1.1.0",
  "name" : "VS_TW_LTC_FeeAuditErrorCode",
  "title" : "支付審查－錯誤代碼",
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
  "description" : "此 ValueSet 涵蓋《衛生福利部 支付審核系統 API 規格說明書（照管平台）》所定義之全部錯誤代碼（err_code），用於服務紀錄申報、撤回、審查結果回覆等交易之錯誤原因表達，包含欄位必填與長度檢核（E1xxx）、格式檢核（E2xxx）、資料查詢與寫入異常（E4xxx）、審核規則檢核（E5xxx）及各支付碼專屬檢核（EBA、EBC、ECB、EGA、EOT、ESC 系列）共 176 項代碼。",
  "compose" : {
    "include" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-error-code"
    }]
  }
}

```
