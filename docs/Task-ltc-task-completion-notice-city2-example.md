# 長照支付審查－申報確認通知交易任務範例（縣市 10020） - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照支付審查－申報確認通知交易任務範例（縣市 10020）**

## Example Task: 長照支付審查－申報確認通知交易任務範例（縣市 10020）

Profile: [長照支付審查－申報交易任務](StructureDefinition-LTCTaskFeeAudit.md)

**identifier**: `http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm`/201901

**groupIdentifier**: `http://ltc-ig.fhir.tw/identifier/feeaudit/trans-no`/CN001

**status**: Completed

**intent**: order

**code**: 申報確認通知

**authoredOn**: 2019-02-11 14:00:00+0800

**requester**: [Organization 新北市私立安康老人長期照顧中心（養護型）](Organization-ltc-organization-example.md)

**note**: 

> 

來源系統別（source_system）：TranCareCenter


> **input****type**: 縣市代碼**value**: 10020

> **input****type**: 核銷案號**value**: C12345678

> **input****type**: 核銷案號**value**: D12345678

### Outputs

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | 批次處理結果 | 申報確認通知完成! |



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "ltc-task-completion-notice-city2-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCTaskFeeAudit"]
  },
  "identifier" : [{
    "system" : "http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm",
    "value" : "201901"
  }],
  "groupIdentifier" : {
    "system" : "http://ltc-ig.fhir.tw/identifier/feeaudit/trans-no",
    "value" : "CN001"
  },
  "status" : "completed",
  "intent" : "order",
  "code" : {
    "coding" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-api-function",
      "code" : "appCompletionNotice",
      "display" : "申報確認通知"
    }]
  },
  "authoredOn" : "2019-02-11T14:00:00+08:00",
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
    "valueString" : "10020"
  },
  {
    "type" : {
      "text" : "核銷案號"
    },
    "valueString" : "C12345678"
  },
  {
    "type" : {
      "text" : "核銷案號"
    },
    "valueString" : "D12345678"
  }],
  "output" : [{
    "type" : {
      "text" : "批次處理結果"
    },
    "valueString" : "申報確認通知完成!"
  }]
}

```
