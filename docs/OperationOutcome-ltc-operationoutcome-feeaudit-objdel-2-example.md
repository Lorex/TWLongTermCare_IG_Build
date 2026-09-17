# 長照支付審查－服務紀錄刪除失敗資料範例（二） - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照支付審查－服務紀錄刪除失敗資料範例（二）**

## Example OperationOutcome: 長照支付審查－服務紀錄刪除失敗資料範例（二）

Profile: [長照支付審查－申報檢核結果](StructureDefinition-LTCOperationOutcomeFeeAudit.md)

### Issues

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| - | **Severity** | **Code** | **Details** | **Diagnostics** | **Expression** |
| * | Error | Not Found | 此筆服務紀錄不存在 | 服務紀錄刪除失敗資料（delete_exception_records）：objid = 987654321、err_code = E4032、err_message = 此筆服務紀錄不存在 | Claim.identifier.where(system='http://ltc-ig.fhir.tw/identifier/feeaudit/objid' and value='987654321') |



## Resource Content

```json
{
  "resourceType" : "OperationOutcome",
  "id" : "ltc-operationoutcome-feeaudit-objdel-2-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCOperationOutcomeFeeAudit"]
  },
  "issue" : [{
    "severity" : "error",
    "code" : "not-found",
    "details" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-error-code",
        "code" : "E4032",
        "display" : "此筆服務紀錄不存在"
      }],
      "text" : "此筆服務紀錄不存在"
    },
    "diagnostics" : "服務紀錄刪除失敗資料（delete_exception_records）：objid = 987654321、err_code = E4032、err_message = 此筆服務紀錄不存在",
    "expression" : ["Claim.identifier.where(system='http://ltc-ig.fhir.tw/identifier/feeaudit/objid' and value='987654321')"]
  }]
}

```
