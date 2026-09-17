# 長照支付審查－服務記錄申報交易任務範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照支付審查－服務記錄申報交易任務範例**

## Example Task: 長照支付審查－服務記錄申報交易任務範例

Profile: [長照支付審查－申報交易任務](StructureDefinition-LTCTaskFeeAudit.md)

**identifier**: `http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm`/201901

**groupIdentifier**: `http://ltc-ig.fhir.tw/identifier/feeaudit/trans-no`/TranQ00083

**status**: Completed

**businessStatus**: 待通知收件

**intent**: order

**code**: 服務記錄申報

**authoredOn**: 2019-02-10 09:30:00+0800

**requester**: [Organization 新北市私立安康老人長期照顧中心（養護型）](Organization-ltc-organization-example.md)

**note**: 

> 

來源系統別（source_system）：TranCareCenter


> **input****type**: 縣市代碼**value**: 10020

> **input****type**: 核銷案號**value**: 201907BA10128

> **output****type**: 批次處理結果**value**: 分案處理完成!

> **output****type**: 批次處理筆數**value**: 3000

> **output****type**: 批次處理成功筆數**value**: 2999

> **output****type**: 批次處理失敗筆數**value**: 1

> **output****type**: 分案異常資料**value**: [OperationOutcome: extension = 201907BA10128](OperationOutcome-ltc-operationoutcome-feeaudit-exception-example.md)



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "ltc-task-feeapply-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCTaskFeeAudit"]
  },
  "identifier" : [{
    "system" : "http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm",
    "value" : "201901"
  }],
  "groupIdentifier" : {
    "system" : "http://ltc-ig.fhir.tw/identifier/feeaudit/trans-no",
    "value" : "TranQ00083"
  },
  "status" : "completed",
  "businessStatus" : {
    "coding" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-case-status",
      "code" : "1",
      "display" : "待通知收件"
    }]
  },
  "intent" : "order",
  "code" : {
    "coding" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-api-function",
      "code" : "FeeApply",
      "display" : "服務記錄申報"
    }]
  },
  "authoredOn" : "2019-02-10T09:30:00+08:00",
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
    "valueString" : "201907BA10128"
  }],
  "output" : [{
    "type" : {
      "text" : "批次處理結果"
    },
    "valueString" : "分案處理完成!"
  },
  {
    "type" : {
      "text" : "批次處理筆數"
    },
    "valueInteger" : 3000
  },
  {
    "type" : {
      "text" : "批次處理成功筆數"
    },
    "valueInteger" : 2999
  },
  {
    "type" : {
      "text" : "批次處理失敗筆數"
    },
    "valueInteger" : 1
  },
  {
    "type" : {
      "text" : "分案異常資料"
    },
    "valueReference" : {
      "reference" : "OperationOutcome/ltc-operationoutcome-feeaudit-exception-example"
    }
  }]
}

```
