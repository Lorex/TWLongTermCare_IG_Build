# 長照支付審查－申報交易任務 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照支付審查－申報交易任務**

## Resource Profile: 長照支付審查－申報交易任務 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCTaskFeeAudit | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:LTCTaskFeeAudit |

 
此 Task 以衛生福利部支付審核系統的申報交易資料為基礎，用以表述申報確認、服務紀錄刪除、撤回與取消結果回報等任務及處理狀態。 

 
每筆 Task 填寫一次申報交易的操作與處理狀態。執行任務所需的資料填入 input，處理結果填入 output。申報確認通知如涉及多個縣市，應依縣市分別建立 Task，同一次交易的任務使用相同的交易序號。 

**Usages:**

* Use this Profile: [長照支付審查－分案審核狀態回覆打包](StructureDefinition-LTCBundleFeeAuditStatus.md)
* Examples for this Profile: [Task/ltc-task-cancel-example](Task-ltc-task-cancel-example.md), [Task/ltc-task-cancel-result-response-example](Task-ltc-task-cancel-result-response-example.md), [Task/ltc-task-completion-notice-city2-example](Task-ltc-task-completion-notice-city2-example.md), [Task/ltc-task-completion-notice-example](Task-ltc-task-completion-notice-example.md)... Show 2 more, [Task/ltc-task-feeapply-example](Task-ltc-task-feeapply-example.md) and [Task/ltc-task-objdel-example](Task-ltc-task-objdel-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-LTCTaskFeeAudit.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCTaskFeeAudit.csv), [Excel](StructureDefinition-LTCTaskFeeAudit.xlsx), [Schematron](StructureDefinition-LTCTaskFeeAudit.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCTaskFeeAudit",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCTaskFeeAudit",
  "version" : "1.1.0",
  "name" : "LTCTaskFeeAudit",
  "title" : "長照支付審查－申報交易任務",
  "status" : "draft",
  "date" : "2026-09-17T17:33:17+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此 Task 以衛生福利部支付審核系統的申報交易資料為基礎，用以表述申報確認、服務紀錄刪除、撤回與取消結果回報等任務及處理狀態。",
  "purpose" : "每筆 Task 填寫一次申報交易的操作與處理狀態。執行任務所需的資料填入 input，處理結果填入 output。申報確認通知如涉及多個縣市，應依縣市分別建立 Task，同一次交易的任務使用相同的交易序號。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Task",
  "baseDefinition" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCTask",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Task.identifier",
      "path" : "Task.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "short" : "申報交易的識別碼",
      "mustSupport" : true
    },
    {
      "id" : "Task.identifier:yyyymm",
      "path" : "Task.identifier",
      "sliceName" : "yyyymm",
      "short" : "支審年月。[應填入 Identifier]",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Task.identifier:yyyymm.system",
      "path" : "Task.identifier.system",
      "min" : 1,
      "patternUri" : "http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm"
    },
    {
      "id" : "Task.identifier:yyyymm.value",
      "path" : "Task.identifier.value",
      "short" : "支審年月。[應填入 6 碼西元年月，格式為 yyyyMM]",
      "min" : 1
    },
    {
      "id" : "Task.groupIdentifier",
      "path" : "Task.groupIdentifier",
      "short" : "交易序號，同一次申報交易的任務應使用相同序號。[應填入 Identifier]",
      "mustSupport" : true
    },
    {
      "id" : "Task.groupIdentifier.system",
      "path" : "Task.groupIdentifier.system",
      "min" : 1,
      "patternUri" : "http://ltc-ig.fhir.tw/identifier/feeaudit/trans-no"
    },
    {
      "id" : "Task.groupIdentifier.value",
      "path" : "Task.groupIdentifier.value",
      "short" : "交易序號。[應填入最長 10 個字元的字串，例如 D0001]",
      "min" : 1
    },
    {
      "id" : "Task.partOf",
      "path" : "Task.partOf",
      "short" : "所屬的交易任務。[應填入對應 Task 的 Reference]",
      "definition" : "取消交易單處理結果回報時，可參照原交易單的 Task。",
      "mustSupport" : true
    },
    {
      "id" : "Task.status",
      "path" : "Task.status",
      "short" : "交易任務的處理狀態。[應填入以下字串之一：requested | in-progress | failed | completed]",
      "definition" : "待處理填入 requested，處理中填入 in-progress，處理失敗填入 failed，已完成填入 completed。"
    },
    {
      "id" : "Task.businessStatus",
      "path" : "Task.businessStatus",
      "short" : "分案的核銷狀況。[應填入 0 至 6 其中一個代碼]",
      "definition" : "0 為已分案待電腦審核處理，1 為待通知收件，2 為已通知待收件，3 為審核中，4 為等待總表，5 為審計待審，6 為結案。",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-feeaudit-case-status"
      }
    },
    {
      "id" : "Task.intent",
      "path" : "Task.intent",
      "short" : "任務的用途。[應填入 order]",
      "patternCode" : "order"
    },
    {
      "id" : "Task.code",
      "path" : "Task.code",
      "short" : "交易任務的類型。[應填入以下代碼之一：FeeApply | ObjDel | appCompletionNotice | appCancel | CancelResultResponse]",
      "definition" : "FeeApply 為服務記錄申報，ObjDel 為服務紀錄刪除，appCompletionNotice 為申報確認通知，appCancel 為服務單位撤回，CancelResultResponse 為取消交易單處理結果回報。",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-feeaudit-api-function"
      }
    },
    {
      "id" : "Task.focus",
      "path" : "Task.focus",
      "short" : "本次任務處理的資料。[應填入對應 Bundle 或 Claim 的 Reference]",
      "definition" : "處理整次申報交易時，應參照申報 Bundle；處理單筆服務紀錄的刪除或異動時，應參照該筆 Claim。"
    },
    {
      "id" : "Task.input",
      "path" : "Task.input",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "type.text"
        }],
        "rules" : "open"
      },
      "short" : "執行本次任務所需的資料",
      "definition" : "應依任務類型填寫縣市、核銷案號、服務紀錄識別碼或要取消結果回報的交易序號。每項資料分別填寫。"
    },
    {
      "id" : "Task.input:cityCd",
      "path" : "Task.input",
      "sliceName" : "cityCd",
      "short" : "縣市代碼，申報確認通知及指定核銷案號撤回時填寫。[應在 valueString 填入最長 5 個字元的字串]",
      "definition" : "申報確認通知時，每筆 Task 填寫一個縣市，核銷案號應屬於該縣市。如涉及多個縣市，則分別建立 Task，並使用相同的交易序號。指定核銷案號撤回時，也應填寫縣市代碼。",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Task.input:cityCd.type",
      "path" : "Task.input.type",
      "mustSupport" : true
    },
    {
      "id" : "Task.input:cityCd.type.text",
      "path" : "Task.input.type.text",
      "min" : 1,
      "patternString" : "縣市代碼"
    },
    {
      "id" : "Task.input:cityCd.value[x]",
      "path" : "Task.input.value[x]",
      "short" : "縣市代碼的內容，例如 65000、10020。",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Task.input:caseNo",
      "path" : "Task.input",
      "sliceName" : "caseNo",
      "short" : "案件編號或核銷案號，申報確認通知及指定核銷案號撤回時填寫。[應在 valueString 填入最長 30 個字元的字串]",
      "definition" : "每個核銷案號分別填寫。同一筆 Task 的核銷案號應屬於該任務指定的縣市。",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Task.input:caseNo.type",
      "path" : "Task.input.type",
      "mustSupport" : true
    },
    {
      "id" : "Task.input:caseNo.type.text",
      "path" : "Task.input.type.text",
      "min" : 1,
      "patternString" : "核銷案號"
    },
    {
      "id" : "Task.input:caseNo.value[x]",
      "path" : "Task.input.value[x]",
      "short" : "核銷案號的內容，例如 201907BA10128。",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Task.input:objid",
      "path" : "Task.input",
      "sliceName" : "objid",
      "short" : "要刪除的服務紀錄識別碼，如有多筆，則分別填寫。[應在 valueString 填入最長 20 個字元的字串]",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Task.input:objid.type",
      "path" : "Task.input.type",
      "mustSupport" : true
    },
    {
      "id" : "Task.input:objid.type.text",
      "path" : "Task.input.type.text",
      "min" : 1,
      "patternString" : "服務紀錄識別碼"
    },
    {
      "id" : "Task.input:objid.value[x]",
      "path" : "Task.input.value[x]",
      "short" : "服務紀錄識別碼的內容，例如 00000000000000000001。",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Task.input:cancelTransNo",
      "path" : "Task.input",
      "sliceName" : "cancelTransNo",
      "short" : "要取消結果回報的交易序號，執行取消交易單處理結果回報時必填。[應在 valueString 填入最長 10 個字元的字串]",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Task.input:cancelTransNo.type",
      "path" : "Task.input.type",
      "mustSupport" : true
    },
    {
      "id" : "Task.input:cancelTransNo.type.text",
      "path" : "Task.input.type.text",
      "min" : 1,
      "patternString" : "所要取消結果回報之交易序號"
    },
    {
      "id" : "Task.input:cancelTransNo.value[x]",
      "path" : "Task.input.value[x]",
      "short" : "要取消結果回報的交易序號，例如 D0001。",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Task.output",
      "path" : "Task.output",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "type.text"
        }],
        "rules" : "open"
      },
      "short" : "本次任務的處理結果",
      "definition" : "應填入處理結果說明及總筆數、成功筆數與失敗筆數。如有分案異常或刪除失敗，則續填記錄錯誤內容的 OperationOutcome 參照。"
    },
    {
      "id" : "Task.output:batchProcResult",
      "path" : "Task.output",
      "sliceName" : "batchProcResult",
      "short" : "批次處理結果的說明。[應在 valueString 填入最長 200 個字元的字串]",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Task.output:batchProcResult.type",
      "path" : "Task.output.type",
      "mustSupport" : true
    },
    {
      "id" : "Task.output:batchProcResult.type.text",
      "path" : "Task.output.type.text",
      "min" : 1,
      "patternString" : "批次處理結果"
    },
    {
      "id" : "Task.output:batchProcResult.value[x]",
      "path" : "Task.output.value[x]",
      "short" : "批次處理結果的內容，例如「分案處理完成」、「服務紀錄刪除完成」。",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Task.output:batchProcNum",
      "path" : "Task.output",
      "sliceName" : "batchProcNum",
      "short" : "批次處理的總筆數",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Task.output:batchProcNum.type",
      "path" : "Task.output.type",
      "mustSupport" : true
    },
    {
      "id" : "Task.output:batchProcNum.type.text",
      "path" : "Task.output.type.text",
      "min" : 1,
      "patternString" : "批次處理筆數"
    },
    {
      "id" : "Task.output:batchProcNum.value[x]",
      "path" : "Task.output.value[x]",
      "short" : "批次處理的總筆數。[應填入整數]",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Task.output:batchSuccNum",
      "path" : "Task.output",
      "sliceName" : "batchSuccNum",
      "short" : "批次處理成功的筆數",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Task.output:batchSuccNum.type",
      "path" : "Task.output.type",
      "mustSupport" : true
    },
    {
      "id" : "Task.output:batchSuccNum.type.text",
      "path" : "Task.output.type.text",
      "min" : 1,
      "patternString" : "批次處理成功筆數"
    },
    {
      "id" : "Task.output:batchSuccNum.value[x]",
      "path" : "Task.output.value[x]",
      "short" : "批次處理成功的筆數。[應填入整數]",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Task.output:batchErrNum",
      "path" : "Task.output",
      "sliceName" : "batchErrNum",
      "short" : "批次處理失敗的筆數",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Task.output:batchErrNum.type",
      "path" : "Task.output.type",
      "mustSupport" : true
    },
    {
      "id" : "Task.output:batchErrNum.type.text",
      "path" : "Task.output.type.text",
      "min" : 1,
      "patternString" : "批次處理失敗筆數"
    },
    {
      "id" : "Task.output:batchErrNum.value[x]",
      "path" : "Task.output.value[x]",
      "short" : "批次處理失敗的筆數。[應填入整數]",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Task.output:exceptionRecords",
      "path" : "Task.output",
      "sliceName" : "exceptionRecords",
      "short" : "分案異常的錯誤訊息。[應在 valueReference 填入對應 OperationOutcome 的 Reference]",
      "definition" : "應參照符合 LTCOperationOutcomeFeeAudit 的檢核結果，其中應記錄錯誤代碼、錯誤原因及受影響的服務紀錄。",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Task.output:exceptionRecords.type",
      "path" : "Task.output.type",
      "mustSupport" : true
    },
    {
      "id" : "Task.output:exceptionRecords.type.text",
      "path" : "Task.output.type.text",
      "min" : 1,
      "patternString" : "分案異常資料"
    },
    {
      "id" : "Task.output:exceptionRecords.value[x]",
      "path" : "Task.output.value[x]",
      "short" : "分案異常的錯誤訊息。[應填入對應 OperationOutcome 的 Reference]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCOperationOutcomeFeeAudit"]
      }]
    },
    {
      "id" : "Task.output:deleteRecords",
      "path" : "Task.output",
      "sliceName" : "deleteRecords",
      "short" : "刪除成功的服務紀錄",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Task.output:deleteRecords.type",
      "path" : "Task.output.type",
      "mustSupport" : true
    },
    {
      "id" : "Task.output:deleteRecords.type.text",
      "path" : "Task.output.type.text",
      "min" : 1,
      "patternString" : "服務紀錄刪除成功資料"
    },
    {
      "id" : "Task.output:deleteRecords.value[x]",
      "path" : "Task.output.value[x]",
      "short" : "刪除成功的服務紀錄識別碼。[應填入最長 20 個字元的字串，例如 123456789]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Task.output:deleteExceptionRecords",
      "path" : "Task.output",
      "sliceName" : "deleteExceptionRecords",
      "short" : "服務紀錄刪除失敗的錯誤訊息。[應在 valueReference 填入對應 OperationOutcome 的 Reference]",
      "definition" : "應參照符合 LTCOperationOutcomeFeeAudit 的檢核結果，其中應記錄錯誤代碼、錯誤原因及受影響的服務紀錄。",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Task.output:deleteExceptionRecords.type",
      "path" : "Task.output.type",
      "mustSupport" : true
    },
    {
      "id" : "Task.output:deleteExceptionRecords.type.text",
      "path" : "Task.output.type.text",
      "min" : 1,
      "patternString" : "服務紀錄刪除失敗資料"
    },
    {
      "id" : "Task.output:deleteExceptionRecords.value[x]",
      "path" : "Task.output.value[x]",
      "short" : "服務紀錄刪除失敗的錯誤訊息。[應填入對應 OperationOutcome 的 Reference]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCOperationOutcomeFeeAudit"]
      }]
    }]
  }
}

```
