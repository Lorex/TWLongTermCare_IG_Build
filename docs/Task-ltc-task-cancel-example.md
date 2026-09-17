# 長照支付審查－服務單位撤回交易任務範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照支付審查－服務單位撤回交易任務範例**

## Example Task: 長照支付審查－服務單位撤回交易任務範例

Profile: [長照支付審查－申報交易任務](StructureDefinition-LTCTaskFeeAudit.md)

**identifier**: `http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm`/201901

**groupIdentifier**: `http://ltc-ig.fhir.tw/identifier/feeaudit/trans-no`/C0001

**status**: Completed

**intent**: order

**code**: 服務單位撤回

**authoredOn**: 2019-02-12 16:45:00+0800

**requester**: [Organization 新北市私立安康老人長期照顧中心（養護型）](Organization-ltc-organization-example.md)

**note**: 

> 

來源系統別（source_system）：TranCareCenter


> **input****type**: 縣市代碼**value**: 65000

> **input****type**: 核銷案號**value**: C01001

### Outputs

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | 批次處理結果 | 服務紀錄撤回完成! |



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "ltc-task-cancel-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCTaskFeeAudit"]
  },
  "identifier" : [{
    "system" : "http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm",
    "value" : "201901"
  }],
  "groupIdentifier" : {
    "system" : "http://ltc-ig.fhir.tw/identifier/feeaudit/trans-no",
    "value" : "C0001"
  },
  "status" : "completed",
  "intent" : "order",
  "code" : {
    "coding" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-api-function",
      "code" : "appCancel",
      "display" : "服務單位撤回"
    }]
  },
  "authoredOn" : "2019-02-12T16:45:00+08:00",
  "requester" : {
    "reference" : "Organization/ltc-organization-example"
  },
  "note" : [{
    "text" : "來源系統別（source_system）：TranCareCenter"
  }],
  "input" : [{
    "type" : {
      "text" : "縣市代碼"
    },
    "valueString" : "65000"
  },
  {
    "type" : {
      "text" : "核銷案號"
    },
    "valueString" : "C01001"
  }],
  "output" : [{
    "type" : {
      "text" : "批次處理結果"
    },
    "valueString" : "服務紀錄撤回完成!"
  }]
}

```
