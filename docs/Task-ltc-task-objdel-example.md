# 長照支付審查－服務紀錄刪除交易任務範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照支付審查－服務紀錄刪除交易任務範例**

## Example Task: 長照支付審查－服務紀錄刪除交易任務範例

Profile: [長照支付審查－申報交易任務](StructureDefinition-LTCTaskFeeAudit.md)

**identifier**: `http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm`/201901

**groupIdentifier**: `http://ltc-ig.fhir.tw/identifier/feeaudit/trans-no`/TranQ00082

**status**: Completed

**intent**: order

**code**: 服務紀錄刪除

**authoredOn**: 2019-02-09 11:20:00+0800

**requester**: [Organization 新北市私立安康老人長期照顧中心（養護型）](Organization-ltc-organization-example.md)

**note**: 

> 

來源系統別（source_system）：TranCareCenter


> **input****type**: 服務紀錄識別碼**value**: 123456789

> **input****type**: 服務紀錄識別碼**value**: 234567890

> **input****type**: 服務紀錄識別碼**value**: 345678901

> **input****type**: 服務紀錄識別碼**value**: 456789012

> **input****type**: 服務紀錄識別碼**value**: 987654321

> **output****type**: 批次處理結果**value**: 服務紀錄刪除完成!

> **output****type**: 批次處理筆數**value**: 6

> **output****type**: 批次處理成功筆數**value**: 4

> **output****type**: 批次處理失敗筆數**value**: 2

> **output****type**: 服務紀錄刪除成功資料**value**: 123456789

> **output****type**: 服務紀錄刪除成功資料**value**: 234567890

> **output****type**: 服務紀錄刪除成功資料**value**: 345678901

> **output****type**: 服務紀錄刪除成功資料**value**: 456789012

> **output****type**: 服務紀錄刪除失敗資料**value**: [OperationOutcome](OperationOutcome-ltc-operationoutcome-feeaudit-objdel-example.md)

> **output****type**: 服務紀錄刪除失敗資料**value**: [OperationOutcome](OperationOutcome-ltc-operationoutcome-feeaudit-objdel-2-example.md)



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "ltc-task-objdel-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCTaskFeeAudit"]
  },
  "identifier" : [{
    "system" : "http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm",
    "value" : "201901"
  }],
  "groupIdentifier" : {
    "system" : "http://ltc-ig.fhir.tw/identifier/feeaudit/trans-no",
    "value" : "TranQ00082"
  },
  "status" : "completed",
  "intent" : "order",
  "code" : {
    "coding" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-api-function",
      "code" : "ObjDel",
      "display" : "服務紀錄刪除"
    }]
  },
  "authoredOn" : "2019-02-09T11:20:00+08:00",
  "requester" : {
    "reference" : "Organization/ltc-organization-example"
  },
  "note" : [{
    "text" : "來源系統別（source_system）：TranCareCenter"
  }],
  "input" : [{
    "type" : {
      "text" : "服務紀錄識別碼"
    },
    "valueString" : "123456789"
  },
  {
    "type" : {
      "text" : "服務紀錄識別碼"
    },
    "valueString" : "234567890"
  },
  {
    "type" : {
      "text" : "服務紀錄識別碼"
    },
    "valueString" : "345678901"
  },
  {
    "type" : {
      "text" : "服務紀錄識別碼"
    },
    "valueString" : "456789012"
  },
  {
    "type" : {
      "text" : "服務紀錄識別碼"
    },
    "valueString" : "987654321"
  }],
  "output" : [{
    "type" : {
      "text" : "批次處理結果"
    },
    "valueString" : "服務紀錄刪除完成!"
  },
  {
    "type" : {
      "text" : "批次處理筆數"
    },
    "valueInteger" : 6
  },
  {
    "type" : {
      "text" : "批次處理成功筆數"
    },
    "valueInteger" : 4
  },
  {
    "type" : {
      "text" : "批次處理失敗筆數"
    },
    "valueInteger" : 2
  },
  {
    "type" : {
      "text" : "服務紀錄刪除成功資料"
    },
    "valueString" : "123456789"
  },
  {
    "type" : {
      "text" : "服務紀錄刪除成功資料"
    },
    "valueString" : "234567890"
  },
  {
    "type" : {
      "text" : "服務紀錄刪除成功資料"
    },
    "valueString" : "345678901"
  },
  {
    "type" : {
      "text" : "服務紀錄刪除成功資料"
    },
    "valueString" : "456789012"
  },
  {
    "type" : {
      "text" : "服務紀錄刪除失敗資料"
    },
    "valueReference" : {
      "reference" : "OperationOutcome/ltc-operationoutcome-feeaudit-objdel-example"
    }
  },
  {
    "type" : {
      "text" : "服務紀錄刪除失敗資料"
    },
    "valueReference" : {
      "reference" : "OperationOutcome/ltc-operationoutcome-feeaudit-objdel-2-example"
    }
  }]
}

```
