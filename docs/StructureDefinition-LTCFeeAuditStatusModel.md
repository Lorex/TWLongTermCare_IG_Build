# 長照支付審查－分案審核狀態與交易處理結果邏輯模型 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照支付審查－分案審核狀態與交易處理結果邏輯模型**

## Logical Model: 長照支付審查－分案審核狀態與交易處理結果邏輯模型 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCFeeAuditStatusModel | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:LTCFeeAuditStatusModel |

 
此邏輯模型以衛生福利部支付審核系統（照管平台）API 規格說明書為基礎，用以描述服務單位各分案審核狀態查詢（查詢A）、服務紀錄刪除（ObjDel）、申報確認通知（appCompletionNotice）、撤回服務記錄（appCancel）及取消交易單處理結果回報（CancelResultResponse）之資料結構與欄位準備指引。 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-LTCFeeAuditStatusModel.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCFeeAuditStatusModel.csv), [Excel](StructureDefinition-LTCFeeAuditStatusModel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCFeeAuditStatusModel",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCFeeAuditStatusModel",
  "version" : "1.1.0",
  "name" : "LTCFeeAuditStatusModel",
  "title" : "長照支付審查－分案審核狀態與交易處理結果邏輯模型",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-17T17:33:17+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "此邏輯模型以衛生福利部支付審核系統（照管平台）API 規格說明書為基礎，用以描述服務單位各分案審核狀態查詢（查詢A）、服務紀錄刪除（ObjDel）、申報確認通知（appCompletionNotice）、撤回服務記錄（appCancel）及取消交易單處理結果回報（CancelResultResponse）之資料結構與欄位準備指引。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "LTCFeeAuditStatusModelMapping",
    "uri" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCTaskFeeAudit",
    "name" : "長照支付審查－分案審核狀態與交易處理結果邏輯模型對應",
    "comment" : "此對應說明長照支付審查分案審核狀態與交易處理結果邏輯模型與 FHIR Task Resource（LTCTaskFeeAudit）的對應關係。LTCTaskFeeAudit 之 input／output 切片以 #pattern + type.text 作為 discriminator，各切片固定之 type.text 為規格書之中文欄位名稱（例如「縣市代碼」、「批次處理結果」），故本對應之 FHIRPath 一律以 type.text 定位，切勿改以 type.coding.code 撰寫（該 Profile 未定義 type.coding）。"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCFeeAuditStatusModel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "LTCFeeAuditStatusModel",
      "path" : "LTCFeeAuditStatusModel",
      "short" : "長照支付審查－分案審核狀態與交易處理結果邏輯模型",
      "definition" : "此邏輯模型以衛生福利部支付審核系統（照管平台）API 規格說明書為基礎，用以描述服務單位各分案審核狀態查詢（查詢A）、服務紀錄刪除（ObjDel）、申報確認通知（appCompletionNotice）、撤回服務記錄（appCancel）及取消交易單處理結果回報（CancelResultResponse）之資料結構與欄位準備指引。"
    },
    {
      "id" : "LTCFeeAuditStatusModel.queryInfo",
      "path" : "LTCFeeAuditStatusModel.queryInfo",
      "short" : "查詢輸入資訊",
      "definition" : "服務單位各分案審核狀態查詢（app_result_query_info）的查詢輸入資訊，每次查詢間隔至少為 20 分鐘",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task",
        "comment" : "查詢輸入資訊整體對應至一筆支付審查交易 Task（LTCTaskFeeAudit）"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.queryInfo.writeoffYyyymm",
      "path" : "LTCFeeAuditStatusModel.queryInfo.writeoffYyyymm",
      "short" : "支審年月",
      "definition" : "支付審核年月，格式為 yyyyMM，長度 6",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task.identifier.where(system='http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm').value",
        "comment" : "支審年月以 Task.identifier[yyyymm] 表達"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.queryInfo.transNo",
      "path" : "LTCFeeAuditStatusModel.queryInfo.transNo",
      "short" : "交易序號",
      "definition" : "本次查詢的交易序號，長度上限 10",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task.groupIdentifier.value",
        "comment" : "交易序號以 Task.groupIdentifier 表達，作為同一批交易的群組識別"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.queryInfo.queryType",
      "path" : "LTCFeeAuditStatusModel.queryInfo.queryType",
      "short" : "查詢類別",
      "definition" : "查詢類別，長度 1，固定值：A（服務單位各分案審核狀態查詢）",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task",
        "comment" : "查詢類別（固定值 A）屬傳輸層查詢參數，用以區分查詢A 與查詢B，於 LTCTaskFeeAudit 中不另設 input 切片；查詢A 之回覆內容即以本 Task 表達"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.cityInfo",
      "path" : "LTCFeeAuditStatusModel.cityInfo",
      "short" : "縣市案件資訊",
      "definition" : "查詢回覆之縣市案件資訊（city_info），依縣市別列出該支審年月各分案的審核狀態",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task",
        "comment" : "縣市案件資訊為查詢交易之執行結果；每一筆分案（縣市代碼 + 核銷案號）對應一筆 LTCTaskFeeAudit"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.cityInfo.cityCd",
      "path" : "LTCFeeAuditStatusModel.cityInfo.cityCd",
      "short" : "縣市代碼",
      "definition" : "案件所屬縣市的代碼，例如 65000、10020",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task.input.where(type.text='縣市代碼').valueString",
        "comment" : "縣市代碼以 Task.input[cityCd] 表達（切片 discriminator 為 type.text）"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.cityInfo.caseInfos",
      "path" : "LTCFeeAuditStatusModel.cityInfo.caseInfos",
      "short" : "案件資訊",
      "definition" : "該縣市之各分案案件資訊（case_infos）",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.cityInfo.caseInfos.caseNo",
      "path" : "LTCFeeAuditStatusModel.cityInfo.caseInfos.caseNo",
      "short" : "核銷案號",
      "definition" : "核銷案件編號，長度上限 30",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task.input.where(type.text='核銷案號').valueString",
        "comment" : "核銷案號以 Task.input[caseNo] 表達；亦得以 Task.focus 參照該核銷案件"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.cityInfo.caseInfos.status",
      "path" : "LTCFeeAuditStatusModel.cityInfo.caseInfos.status",
      "short" : "核銷狀況",
      "definition" : "核銷狀況，格式為「代碼:說明」，長度上限 200。代碼：0 已分案待電腦審核處理、1 待通知收件、2 已通知待收件、3 審核中、4 等待總表、5 審計待審、6 結案",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task.businessStatus",
        "comment" : "核銷狀況（0 已分案待電腦審核處理～6 結案）以 Task.businessStatus 表達，繫結 VS_TW_LTC_FeeAuditCaseStatus"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.cityInfo.caseInfos.docVer",
      "path" : "LTCFeeAuditStatusModel.cityInfo.caseInfos.docVer",
      "short" : "總表版次",
      "definition" : "該案件目前之總表版次，長度上限 15",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task",
        "comment" : "總表版次於 LTCTaskFeeAudit 未定義對應之 output 切片；因 output 之 slicing 規則為 open，實作時得自訂 type.text = 總表版次 之 output 承載，或改由（查詢B）之 ClaimResponse.identifier[docVer] 取得"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.cityInfo.caseInfos.accNum",
      "path" : "LTCFeeAuditStatusModel.cityInfo.caseInfos.accNum",
      "short" : "簽證編號",
      "definition" : "該案件之簽證編號，長度上限 20",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task",
        "comment" : "簽證編號於 LTCTaskFeeAudit 未定義對應之 output 切片；因 output 之 slicing 規則為 open，實作時得自訂 type.text = 簽證編號 之 output 承載，或改由（查詢B）之 ClaimResponse.identifier[accNum] 取得"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.webapiProcessInfo",
      "path" : "LTCFeeAuditStatusModel.webapiProcessInfo",
      "short" : "API 執行結果資料",
      "definition" : "查詢回覆之 API 執行結果資料（webapi_process_info），目前僅顯示已處理完成（狀態為 3:錯誤 或 4:處理完成）之交易單資料",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task",
        "comment" : "每一筆 API 執行結果資料對應至一筆支付審查交易 Task（LTCTaskFeeAudit）"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.webapiProcessInfo.function",
      "path" : "LTCFeeAuditStatusModel.webapiProcessInfo.function",
      "short" : "API Function",
      "definition" : "API Function 名稱，長度上限 40。代碼：FeeApply 服務記錄申報、ObjDel 服務紀錄刪除、appCompletionNotice 申報確認通知、appCancel 服務單位撤回、CancelResultResponse 取消交易單處理結果回報",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task.code",
        "comment" : "API Function 名稱以 Task.code 表達，繫結 VS_TW_LTC_FeeAuditApiFunction"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.webapiProcessInfo.sourceSystem",
      "path" : "LTCFeeAuditStatusModel.webapiProcessInfo.sourceSystem",
      "short" : "來源系統別",
      "definition" : "申報來源系統別，長度上限 20，例如 TranCareCenter",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task.note.text",
        "comment" : "來源系統別以 Task.note 記述；Parent LTCTask 已將 Task.requester 限定為 Reference(LTCPractitioner | LTCOrganization | LTCPractitionerRole)，若來源系統別可對應到實際申報單位，亦得以 Task.requester 參照該 Organization"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.webapiProcessInfo.transNo",
      "path" : "LTCFeeAuditStatusModel.webapiProcessInfo.transNo",
      "short" : "交易序號",
      "definition" : "該筆 API 執行結果所屬之交易序號，長度上限 10",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task.groupIdentifier.value",
        "comment" : "交易序號以 Task.groupIdentifier 表達"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.webapiProcessInfo.status",
      "path" : "LTCFeeAuditStatusModel.webapiProcessInfo.status",
      "short" : "API 執行狀態",
      "definition" : "API 執行狀況，格式為「代碼:說明」，長度上限 30。代碼：0 待處理、1 處理中、3 錯誤、4 處理完成",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task.status",
        "comment" : "API 執行狀況（0 待處理、1 處理中、3 錯誤、4 處理完成）依序對應至 Task.status 之 requested、in-progress、failed、completed"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.webapiProcessInfo.batchProcResult",
      "path" : "LTCFeeAuditStatusModel.webapiProcessInfo.batchProcResult",
      "short" : "批次處理結果",
      "definition" : "批次處理結果說明，長度上限 200，例如「分案處理完成!」",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task.output.where(type.text='批次處理結果').valueString",
        "comment" : "批次處理結果說明以 Task.output[batchProcResult] 表達"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.webapiProcessInfo.batchProcNum",
      "path" : "LTCFeeAuditStatusModel.webapiProcessInfo.batchProcNum",
      "short" : "批次處理筆數",
      "definition" : "本次批次處理的總筆數",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task.output.where(type.text='批次處理筆數').valueInteger",
        "comment" : "批次處理筆數以 Task.output[batchProcNum] 表達"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.webapiProcessInfo.batchSuccNum",
      "path" : "LTCFeeAuditStatusModel.webapiProcessInfo.batchSuccNum",
      "short" : "批次處理成功筆數",
      "definition" : "本次批次處理成功的筆數",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task.output.where(type.text='批次處理成功筆數').valueInteger",
        "comment" : "批次處理成功筆數以 Task.output[batchSuccNum] 表達"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.webapiProcessInfo.batchErrNum",
      "path" : "LTCFeeAuditStatusModel.webapiProcessInfo.batchErrNum",
      "short" : "批次處理失敗筆數",
      "definition" : "本次批次處理失敗的筆數",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task.output.where(type.text='批次處理失敗筆數').valueInteger",
        "comment" : "批次處理失敗筆數以 Task.output[batchErrNum] 表達"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.webapiProcessInfo.exceptionRecords",
      "path" : "LTCFeeAuditStatusModel.webapiProcessInfo.exceptionRecords",
      "short" : "分案異常資料",
      "definition" : "分案處理異常之服務紀錄（exception_records），可修改後重新上傳至支審系統",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task.output.where(type.text='分案異常資料').valueReference",
        "comment" : "分案異常資料以 Task.output[exceptionRecords] 參照 LTCOperationOutcomeFeeAudit 表達，逐筆一個 output"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.webapiProcessInfo.exceptionRecords.objid",
      "path" : "LTCFeeAuditStatusModel.webapiProcessInfo.exceptionRecords.objid",
      "short" : "識別碼",
      "definition" : "系統商之服務紀錄識別碼（objid），長度上限 20",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task.output.where(type.text='分案異常資料').valueReference",
        "comment" : "分案異常之服務紀錄識別碼，記於所參照 OperationOutcome 之 issue.expression（須帶入實際 objid 值）與 issue.diagnostics"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.webapiProcessInfo.exceptionRecords.errCode",
      "path" : "LTCFeeAuditStatusModel.webapiProcessInfo.exceptionRecords.errCode",
      "short" : "錯誤碼",
      "definition" : "分案異常之錯誤碼，長度上限 5，例如 E4015",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task.output.where(type.text='分案異常資料').valueReference",
        "comment" : "分案異常錯誤碼，記於所參照 OperationOutcome 之 issue.details.coding.code"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.webapiProcessInfo.exceptionRecords.errMessage",
      "path" : "LTCFeeAuditStatusModel.webapiProcessInfo.exceptionRecords.errMessage",
      "short" : "錯誤原因",
      "definition" : "分案異常之錯誤原因說明，長度上限 200",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task.output.where(type.text='分案異常資料').valueReference",
        "comment" : "分案異常錯誤原因，記於所參照 OperationOutcome 之 issue.details.text"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.webapiProcessInfo.deleteRecords",
      "path" : "LTCFeeAuditStatusModel.webapiProcessInfo.deleteRecords",
      "short" : "服務紀錄刪除成功資料",
      "definition" : "服務紀錄刪除成功之資料（delete_records），於 JSON 中以服務紀錄識別碼字串陣列表示",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task.output.where(type.text='服務紀錄刪除成功資料').valueString",
        "comment" : "服務紀錄刪除成功資料以 Task.output[deleteRecords] 表達，逐筆一個 output"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.webapiProcessInfo.deleteRecords.objid",
      "path" : "LTCFeeAuditStatusModel.webapiProcessInfo.deleteRecords.objid",
      "short" : "識別碼",
      "definition" : "刪除成功之服務紀錄識別碼（objid），長度上限 20",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task.output.where(type.text='服務紀錄刪除成功資料').valueString",
        "comment" : "刪除成功之服務紀錄識別碼"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.webapiProcessInfo.deleteExceptionRecords",
      "path" : "LTCFeeAuditStatusModel.webapiProcessInfo.deleteExceptionRecords",
      "short" : "服務紀錄刪除失敗資料",
      "definition" : "服務紀錄刪除失敗之資料（delete_exception_records）",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task.output.where(type.text='服務紀錄刪除失敗資料').valueReference",
        "comment" : "服務紀錄刪除失敗資料以 Task.output[deleteExceptionRecords] 參照 LTCOperationOutcomeFeeAudit 表達，逐筆一個 output"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.webapiProcessInfo.deleteExceptionRecords.objid",
      "path" : "LTCFeeAuditStatusModel.webapiProcessInfo.deleteExceptionRecords.objid",
      "short" : "識別碼",
      "definition" : "刪除失敗之服務紀錄識別碼（objid），長度上限 20",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task.output.where(type.text='服務紀錄刪除失敗資料').valueReference",
        "comment" : "刪除失敗之服務紀錄識別碼，記於所參照 OperationOutcome 之 issue.expression（須帶入實際 objid 值）與 issue.diagnostics"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.webapiProcessInfo.deleteExceptionRecords.errCode",
      "path" : "LTCFeeAuditStatusModel.webapiProcessInfo.deleteExceptionRecords.errCode",
      "short" : "錯誤碼",
      "definition" : "刪除失敗之錯誤碼，長度上限 5，例如 E4032",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task.output.where(type.text='服務紀錄刪除失敗資料').valueReference",
        "comment" : "刪除失敗錯誤碼，記於所參照 OperationOutcome 之 issue.details.coding.code"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.webapiProcessInfo.deleteExceptionRecords.errMessage",
      "path" : "LTCFeeAuditStatusModel.webapiProcessInfo.deleteExceptionRecords.errMessage",
      "short" : "錯誤原因",
      "definition" : "刪除失敗之錯誤原因說明，長度上限 200",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task.output.where(type.text='服務紀錄刪除失敗資料').valueReference",
        "comment" : "刪除失敗錯誤原因，記於所參照 OperationOutcome 之 issue.details.text"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.svcDelInfo",
      "path" : "LTCFeeAuditStatusModel.svcDelInfo",
      "short" : "服務紀錄刪除資料（ObjDel）",
      "definition" : "刪除系統商識別碼（objid）之服務紀錄的傳送資料（svcdel_info）；若該服務紀錄之案件已執行申報確認通知，則不允許執行服務紀錄刪除",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task",
        "comment" : "服務紀錄刪除作業對應至 Task.code = ObjDel 之支付審查交易 Task"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.svcDelInfo.writeoffYyyymm",
      "path" : "LTCFeeAuditStatusModel.svcDelInfo.writeoffYyyymm",
      "short" : "支審年月",
      "definition" : "支付審核年月，格式為 yyyyMM，長度 6",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task.identifier.where(system='http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm').value",
        "comment" : "支審年月以 Task.identifier[yyyymm] 表達"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.svcDelInfo.transNo",
      "path" : "LTCFeeAuditStatusModel.svcDelInfo.transNo",
      "short" : "交易序號",
      "definition" : "本次刪除作業之交易序號，長度上限 10",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task.groupIdentifier.value",
        "comment" : "交易序號以 Task.groupIdentifier 表達"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.svcDelInfo.records",
      "path" : "LTCFeeAuditStatusModel.svcDelInfo.records",
      "short" : "服務記錄筆數",
      "definition" : "本次要刪除之服務紀錄筆數",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task.input.where(type.text='服務紀錄識別碼').count()",
        "comment" : "服務記錄筆數為統計值，等於 Task.input[objid] 之筆數；LTCTaskFeeAudit 未另設 input 切片承載"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.svcDelInfo.caseSvcRecords",
      "path" : "LTCFeeAuditStatusModel.svcDelInfo.caseSvcRecords",
      "short" : "個案服務紀錄",
      "definition" : "本次要刪除之個案服務紀錄清單（case_svc_records）",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.svcDelInfo.caseSvcRecords.objid",
      "path" : "LTCFeeAuditStatusModel.svcDelInfo.caseSvcRecords.objid",
      "short" : "識別碼",
      "definition" : "要刪除之服務紀錄識別碼（objid），長度上限 20",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task.input.where(type.text='服務紀錄識別碼').valueString",
        "comment" : "要刪除之服務紀錄識別碼以 Task.input[objid] 逐筆表達；亦得以 Task.focus 參照該筆服務紀錄申報"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.finishInfo",
      "path" : "LTCFeeAuditStatusModel.finishInfo",
      "short" : "申報確認資料（appCompletionNotice）",
      "definition" : "服務單位確認服務紀錄無誤後之申報確認通知傳送資料（finish_info）；執行後支審系統不再受理服務紀錄申報及異動",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task",
        "comment" : "申報確認通知作業對應至 Task.code = appCompletionNotice 之支付審查交易 Task；因 FHIR R4 之 Task.input 不支援巢狀 part，涉及多個縣市時須依縣市拆分為多筆 Task，各 Task 共用同一 groupIdentifier"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.finishInfo.writeoffYyyymm",
      "path" : "LTCFeeAuditStatusModel.finishInfo.writeoffYyyymm",
      "short" : "支審年月",
      "definition" : "支付審核年月，格式為 yyyyMM，長度 6",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task.identifier.where(system='http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm').value",
        "comment" : "支審年月以 Task.identifier[yyyymm] 表達"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.finishInfo.transNo",
      "path" : "LTCFeeAuditStatusModel.finishInfo.transNo",
      "short" : "交易序號",
      "definition" : "本次申報確認通知之交易序號，長度上限 10",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task.groupIdentifier.value",
        "comment" : "交易序號以 Task.groupIdentifier 表達"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.finishInfo.cityInfo",
      "path" : "LTCFeeAuditStatusModel.finishInfo.cityInfo",
      "short" : "縣市案號資訊",
      "definition" : "本次申報確認通知之縣市案號資訊（city_info）",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.finishInfo.cityInfo.cityCd",
      "path" : "LTCFeeAuditStatusModel.finishInfo.cityInfo.cityCd",
      "short" : "縣市代碼",
      "definition" : "案件所屬縣市的代碼，長度上限 5",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task.input.where(type.text='縣市代碼').valueString",
        "comment" : "縣市代碼以 Task.input[cityCd] 表達，每筆 Task 僅一個縣市（0..1）"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.finishInfo.cityInfo.caseNoInfo",
      "path" : "LTCFeeAuditStatusModel.finishInfo.cityInfo.caseNoInfo",
      "short" : "案件資訊",
      "definition" : "該縣市要執行申報確認通知之案件資訊（case_no_info）",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.finishInfo.cityInfo.caseNoInfo.caseNo",
      "path" : "LTCFeeAuditStatusModel.finishInfo.cityInfo.caseNoInfo.caseNo",
      "short" : "案件編號",
      "definition" : "要執行申報確認通知之案件編號，長度上限 30",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task.input.where(type.text='核銷案號').valueString",
        "comment" : "該縣市之各筆案件編號以同一 Task 之 Task.input[caseNo] 逐筆表達，藉此表達其隸屬於本 Task 之 input[cityCd]"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.cancelInfo",
      "path" : "LTCFeeAuditStatusModel.cancelInfo",
      "short" : "服務單位撤回資料（appCancel）",
      "definition" : "服務單位撤回服務紀錄之傳送資料（cancel_info）；若未傳入縣市代碼及核銷案號，表示撤回該服務單位本月該來源系統別所申報之全部服務紀錄；若承辦人已收件處理，則不允許執行撤回",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task",
        "comment" : "服務單位撤回作業對應至 Task.code = appCancel 之支付審查交易 Task"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.cancelInfo.writeoffYyyymm",
      "path" : "LTCFeeAuditStatusModel.cancelInfo.writeoffYyyymm",
      "short" : "支審年月",
      "definition" : "支付審核年月，格式為 yyyyMM，長度 6",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task.identifier.where(system='http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm').value",
        "comment" : "支審年月以 Task.identifier[yyyymm] 表達"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.cancelInfo.cityCd",
      "path" : "LTCFeeAuditStatusModel.cancelInfo.cityCd",
      "short" : "縣市代碼",
      "definition" : "指定撤回案件所屬縣市代碼，長度上限 5；未填表示全部撤回",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task.input.where(type.text='縣市代碼').valueString",
        "comment" : "縣市代碼以 Task.input[cityCd] 表達"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.cancelInfo.caseNo",
      "path" : "LTCFeeAuditStatusModel.cancelInfo.caseNo",
      "short" : "核銷案號",
      "definition" : "指定撤回之核銷案號，長度上限 30；未填表示全部撤回",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task.input.where(type.text='核銷案號').valueString",
        "comment" : "指定撤回之核銷案號以 Task.input[caseNo] 表達；亦得以 Task.focus 參照"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.cancelInfo.transNo",
      "path" : "LTCFeeAuditStatusModel.cancelInfo.transNo",
      "short" : "交易序號",
      "definition" : "本次撤回作業之交易序號，長度上限 10",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task.groupIdentifier.value",
        "comment" : "交易序號以 Task.groupIdentifier 表達"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.cancelResultResponseInfo",
      "path" : "LTCFeeAuditStatusModel.cancelResultResponseInfo",
      "short" : "取消交易單結果回報資料",
      "definition" : "取消（查詢A）API 執行結果資料中該交易單處理結果回報之傳送資料（CancelResultResponse_info）",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task",
        "comment" : "取消交易單處理結果回報作業對應至 Task.code = CancelResultResponse 之支付審查交易 Task"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.cancelResultResponseInfo.writeoffYyyymm",
      "path" : "LTCFeeAuditStatusModel.cancelResultResponseInfo.writeoffYyyymm",
      "short" : "支審年月",
      "definition" : "支付審核年月，格式為 yyyyMM，長度 6",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task.identifier.where(system='http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm').value",
        "comment" : "支審年月以 Task.identifier[yyyymm] 表達"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.cancelResultResponseInfo.transNo",
      "path" : "LTCFeeAuditStatusModel.cancelResultResponseInfo.transNo",
      "short" : "交易序號",
      "definition" : "本次取消結果回報作業之交易序號，長度上限 10",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task.groupIdentifier.value",
        "comment" : "本次作業交易序號以 Task.groupIdentifier 表達"
      }]
    },
    {
      "id" : "LTCFeeAuditStatusModel.cancelResultResponseInfo.cancelTransNo",
      "path" : "LTCFeeAuditStatusModel.cancelResultResponseInfo.cancelTransNo",
      "short" : "所要取消結果回報之交易序號",
      "definition" : "所要取消結果回報之交易單交易序號，長度上限 10",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "LTCFeeAuditStatusModelMapping",
        "map" : "Task.input.where(type.text='所要取消結果回報之交易序號').valueString",
        "comment" : "所要取消結果回報之交易序號以 Task.input[cancelTransNo] 表達，並以 Task.partOf 參照原交易單 Task"
      }]
    }]
  }
}

```
