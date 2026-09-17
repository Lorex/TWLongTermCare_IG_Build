# 支付審查－API 回覆結果代碼 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **支付審查－API 回覆結果代碼**

## ValueSet: 支付審查－API 回覆結果代碼 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-feeaudit-rtncode | *Version*:1.1.0 |
| Active as of 2026-09-17 | *Computable Name*:VS_TW_LTC_FeeAuditRtnCode |
| *Other Identifiers:*OID:2.25.79245575021300575408374398407082029552 | |

 
此 ValueSet 涵蓋《衛生福利部 支付審核系統 API 規格說明書（照管平台）》Response 格式所定義之回覆結果代碼（rtncode），用於表示 API 交易之處理結果，代碼包含：0（成功回傳）、1～14（請求參數與申報條件檢核錯誤）、20（無訪問權限）、25（執行頻率限制）、30（輸入參數錯誤）、40（查無資料）、50（DB 錯誤）、90（發生無法預期錯誤）。 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

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
  "id" : "vs-tw-ltc-feeaudit-rtncode",
  "url" : "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-feeaudit-rtncode",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.25.79245575021300575408374398407082029552"
  }],
  "version" : "1.1.0",
  "name" : "VS_TW_LTC_FeeAuditRtnCode",
  "title" : "支付審查－API 回覆結果代碼",
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
  "description" : "此 ValueSet 涵蓋《衛生福利部 支付審核系統 API 規格說明書（照管平台）》Response 格式所定義之回覆結果代碼（rtncode），用於表示 API 交易之處理結果，代碼包含：0（成功回傳）、1～14（請求參數與申報條件檢核錯誤）、20（無訪問權限）、25（執行頻率限制）、30（輸入參數錯誤）、40（查無資料）、50（DB 錯誤）、90（發生無法預期錯誤）。",
  "compose" : {
    "include" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-rtncode"
    }]
  }
}

```
