# 長照－跨月檢核（OperationOutcome）範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照－跨月檢核（OperationOutcome）範例**

## Example OperationOutcome: 長照－跨月檢核（OperationOutcome）範例

Profile: [長照 SDK－跨月檢核結果（QP_O）](StructureDefinition-LTC-OperationOutcome-Check.md)

**長照 SDK－案件編號（CASENO）**: 111301921

**長照 SDK－民國年月（YYYMM）**: 11406

**長照 SDK－民國年月（YYYMM）**: 11407

### Issues

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Severity** | **Code** | **Details** | **Diagnostics** |
| * | Warning | Business Rule Violation | 跨月金額差異偏高 | PRICE_ERR=true；ERR_MSG=『與上月差異 > 30%』 |



## Resource Content

```json
{
  "resourceType" : "OperationOutcome",
  "id" : "ltc-operationoutcome-check-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTC-OperationOutcome-Check"]
  },
  "extension" : [{
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-Export-CaseNo",
    "valueString" : "111301921"
  },
  {
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-Export-YYYMM-ROC",
    "valueString" : "11406"
  },
  {
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-Export-YYYMM-ROC",
    "valueString" : "11407"
  }],
  "issue" : [{
    "severity" : "warning",
    "code" : "business-rule",
    "details" : {
      "text" : "跨月金額差異偏高"
    },
    "diagnostics" : "PRICE_ERR=true；ERR_MSG=『與上月差異 > 30%』"
  }]
}

```
