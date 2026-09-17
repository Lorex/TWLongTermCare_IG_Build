# 長照支付審查－分案異常資料範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照支付審查－分案異常資料範例**

## Example OperationOutcome: 長照支付審查－分案異常資料範例

Profile: [長照支付審查－申報檢核結果](StructureDefinition-LTCOperationOutcomeFeeAudit.md)

**長照 SDK－案件編號（CASENO）**: 201907BA10128

### Issues

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| - | **Severity** | **Code** | **Details** | **Diagnostics** | **Expression** |
| * | Error | Processing Failure | 此筆服務紀錄已經收件不能分案 | 分案異常資料（exception_records）：objid = 19260121、err_code = E4015、err_message = 此筆服務紀錄已經收件不能分案 | Claim.identifier.where(system='http://ltc-ig.fhir.tw/identifier/feeaudit/objid' and value='19260121') |



## Resource Content

```json
{
  "resourceType" : "OperationOutcome",
  "id" : "ltc-operationoutcome-feeaudit-exception-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCOperationOutcomeFeeAudit"]
  },
  "extension" : [{
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-Export-CaseNo",
    "valueString" : "201907BA10128"
  }],
  "issue" : [{
    "severity" : "error",
    "code" : "processing",
    "details" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-error-code",
        "code" : "E4015",
        "display" : "單位已執行申報確認通知，不在受理新的服務紀錄申報"
      }],
      "text" : "此筆服務紀錄已經收件不能分案"
    },
    "diagnostics" : "分案異常資料（exception_records）：objid = 19260121、err_code = E4015、err_message = 此筆服務紀錄已經收件不能分案",
    "expression" : ["Claim.identifier.where(system='http://ltc-ig.fhir.tw/identifier/feeaudit/objid' and value='19260121')"]
  }]
}

```
