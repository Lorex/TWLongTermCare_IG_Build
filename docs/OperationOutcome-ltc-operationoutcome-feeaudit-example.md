# 長照支付審查－申報檢核結果（OperationOutcome）範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照支付審查－申報檢核結果（OperationOutcome）範例**

## Example OperationOutcome: 長照支付審查－申報檢核結果（OperationOutcome）範例

Profile: [長照支付審查－申報檢核結果](StructureDefinition-LTCOperationOutcomeFeeAudit.md)

**長照 SDK－案件編號（CASENO）**: 201907C010163

### Issues

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| - | **Severity** | **Code** | **Details** | **Diagnostics** | **Expression** |
| * | Error | Processing Failure | 單位已執行申報確認通知，不在受理新的服務紀錄申報 | 錯誤服務記錄（err_records）：識別碼（objid）882601914；來源系統別（source_system）TranCareCenter；交易序號（trans_no）00106 | Claim.identifier.where(system='http://ltc-ig.fhir.tw/identifier/feeaudit/objid' and value='882601914') |



## Resource Content

```json
{
  "resourceType" : "OperationOutcome",
  "id" : "ltc-operationoutcome-feeaudit-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCOperationOutcomeFeeAudit"]
  },
  "extension" : [{
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-Export-CaseNo",
    "valueString" : "201907C010163"
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
      "text" : "單位已執行申報確認通知，不在受理新的服務紀錄申報"
    },
    "diagnostics" : "錯誤服務記錄（err_records）：識別碼（objid）882601914；來源系統別（source_system）TranCareCenter；交易序號（trans_no）00106",
    "expression" : ["Claim.identifier.where(system='http://ltc-ig.fhir.tw/identifier/feeaudit/objid' and value='882601914')"]
  }]
}

```
