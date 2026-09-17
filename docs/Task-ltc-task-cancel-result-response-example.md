# 長照支付審查－取消交易單處理結果回報交易任務範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照支付審查－取消交易單處理結果回報交易任務範例**

## Example Task: 長照支付審查－取消交易單處理結果回報交易任務範例

Profile: [長照支付審查－申報交易任務](StructureDefinition-LTCTaskFeeAudit.md)

**identifier**: `http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm`/201901

**groupIdentifier**: `http://ltc-ig.fhir.tw/identifier/feeaudit/trans-no`/CR001

**partOf**: [Task 服務記錄申報](Task-ltc-task-feeapply-example.md)

**status**: Completed

**intent**: order

**code**: 取消交易單處理結果回報

**authoredOn**: 2019-02-13 09:15:00+0800

**requester**: [Organization 新北市私立安康老人長期照顧中心（養護型）](Organization-ltc-organization-example.md)

**note**: 

> 

來源系統別（source_system）：TranCareCenter


### Inputs

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | 所要取消結果回報之交易序號 | TranQ00083 |

### Outputs

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | 批次處理結果 | 取消交易單處理結果回報完成! |



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "ltc-task-cancel-result-response-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCTaskFeeAudit"]
  },
  "identifier" : [{
    "system" : "http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm",
    "value" : "201901"
  }],
  "groupIdentifier" : {
    "system" : "http://ltc-ig.fhir.tw/identifier/feeaudit/trans-no",
    "value" : "CR001"
  },
  "partOf" : [{
    "reference" : "Task/ltc-task-feeapply-example"
  }],
  "status" : "completed",
  "intent" : "order",
  "code" : {
    "coding" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-api-function",
      "code" : "CancelResultResponse",
      "display" : "取消交易單處理結果回報"
    }]
  },
  "authoredOn" : "2019-02-13T09:15:00+08:00",
  "requester" : {
    "reference" : "Organization/ltc-organization-example"
  },
  "note" : [{
    "text" : "來源系統別（source_system）：TranCareCenter"
  }],
  "input" : [{
    "type" : {
      "text" : "所要取消結果回報之交易序號"
    },
    "valueString" : "TranQ00083"
  }],
  "output" : [{
    "type" : {
      "text" : "批次處理結果"
    },
    "valueString" : "取消交易單處理結果回報完成!"
  }]
}

```
