// 長照支付審查－申報交易任務（Task）
// 依據《衛生福利部 支付審核系統 API 規格說明書（照管平台）v2.2.1》
//   二、服務紀錄刪除（ObjDel）
//   三、申報確認通知（appCompletionNotice）
//   四、(查詢A)服務單位各分案審核狀態查詢（appResultQuery，query_type = A）
//   六、撤回服務記錄（appCancel）
//   七、取消交易單處理結果回報（CancelResultResponse）
//   參、代碼說明：status（核銷狀況）、status（API 執行狀況）、API Function

Profile: LTCTaskFeeAudit
Parent: LTCTask
Id: LTCTaskFeeAudit
Title: "長照支付審查－申報交易任務"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Task Resource，以呈現支付審核系統的申報確認通知（appCompletionNotice）、服務紀錄刪除（ObjDel）、服務單位撤回（appCancel）、取消交易單處理結果回報（CancelResultResponse）等工作流操作，以及各交易單（trans_no）的處理狀態與結果。每一筆 Task 代表一次以交易序號為單位的申報交易操作，Task.code 表達 API Function 名稱、Task.status 表達 API 執行狀況、Task.businessStatus 表達分案之核銷狀況，操作所需的輸入參數（縣市代碼、核銷案號、服務紀錄識別碼、所要取消結果回報之交易序號）以 Task.input 承載；因 Task.input 於 FHIR R4 不支援巢狀 part，規格書 appCompletionNotice 之 city_info（縣市代碼下含多筆案件編號）改以「一個縣市一筆 Task」表達，各 Task 以相同之交易序號（Task.groupIdentifier）相互關聯，(查詢A) 回覆之批次處理結果與筆數、分案異常資料、服務紀錄刪除成功／失敗資料則以 Task.output 承載。"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/LTCTaskFeeAudit"
* ^version = "0.1.0"
* ^status = #draft

// ── 交易識別 ────────────────────────────────────────────────────
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier 0..* MS
* identifier ^short = "交易任務之業務識別碼"
* identifier contains
    yyyymm 0..1 MS
* identifier[yyyymm] ^short = "支審年月（writeoff_yyyymm），格式為 yyyyMM，長度 6"
* identifier[yyyymm].system 1..1
* identifier[yyyymm].system = "http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm"
* identifier[yyyymm].value 1..1
* identifier[yyyymm].value ^short = "支審年月值，例如 201901"

* groupIdentifier 0..1 MS
* groupIdentifier ^short = "交易序號（trans_no），長度上限 10；同一次申報交易之各項處理共用同一交易序號"
* groupIdentifier.system 1..1
* groupIdentifier.system = "http://ltc-ig.fhir.tw/identifier/feeaudit/trans-no"
* groupIdentifier.value 1..1
* groupIdentifier.value ^short = "交易序號值，例如 D0001、CN001、C0001"

// ── 任務類型與狀態 ──────────────────────────────────────────────
* status 1..1 MS
* status ^short = "任務狀態，對應規格書「代碼說明－status（API 執行狀況）」：0 待處理對應 #requested、1 處理中對應 #in-progress、3 錯誤對應 #failed、4 處理完成對應 #completed。[應填入以下字串之一：requested | in-progress | failed | completed]"

* businessStatus 0..1 MS
* businessStatus from VS_TW_LTC_FeeAuditCaseStatus (required)
* businessStatus ^short = "分案之核銷狀況，對應規格書「代碼說明－status（核銷狀況）」：0 已分案待電腦審核處理、1 待通知收件、2 已通知待收件、3 審核中、4 等待總表、5 審計待審、6 結案"

* code 1..1 MS
* code from VS_TW_LTC_FeeAuditApiFunction (required)
* code ^short = "本次交易之 API Function 名稱：FeeApply 服務記錄申報、ObjDel 服務紀錄刪除、appCompletionNotice 申報確認通知、appCancel 服務單位撤回、CancelResultResponse 取消交易單處理結果回報"

* intent 1..1 MS
* intent = #order
* intent ^short = "任務意圖，支付審查申報交易固定為 order（指示執行）"

// ── 操作對象 ────────────────────────────────────────────────────
* focus 0..1 MS
* focus ^short = "本次操作對象，即這次交易所處理的資料為何？申報交易指向該次申報打包（LTCBundleFeeApply），單筆服務紀錄之刪除或異動則指向該筆服務紀錄申報（LTCClaimFeeApply）"

* partOf 0..* MS
* partOf ^short = "所屬之上層交易任務；取消交易單處理結果回報（CancelResultResponse）時，可用以參照所要取消結果回報之原交易單 Task"

// ── 輸入參數（各 API 之傳送資料）────────────────────────────────
* input ^slicing.discriminator.type = #pattern
* input ^slicing.discriminator.path = "type.text"
* input ^slicing.rules = #open
* input 0..* MS
* input ^short = "任務輸入參數，即執行本次交易所需的輸入資料；以 input.type.text 之中文欄位名稱區分各參數"

* input contains
    cityCd 0..1 MS and
    caseNo 0..* MS and
    objid 0..* MS and
    cancelTransNo 0..1 MS

* input[cityCd] ^short = "縣市代碼（city_cd），長度上限 5；申報確認通知（appCompletionNotice）及指定核銷案號之撤回（appCancel）時填寫。規格書之 city_info 為「縣市代碼 → case_no_info（多筆案件編號）」之巢狀結構，而 FHIR R4 之 Task.input 不支援巢狀 part，故本 Profile 將 cityCd 收緊為 0..1，並規定一次申報確認通知若涉及多個縣市，須依縣市拆分為多筆 Task（各 Task 共用同一交易序號 groupIdentifier），使同一 Task 內之 input[caseNo] 明確隸屬於本 Task 之 input[cityCd]"
* input[cityCd].type 1..1 MS
* input[cityCd].type.text 1..1
* input[cityCd].type.text = "縣市代碼"
* input[cityCd].value[x] only string
* input[cityCd].value[x] ^short = "縣市代碼值，例如 65000、10020"

* input[caseNo] ^short = "案件編號／核銷案號（case_no），長度上限 30；申報確認通知（appCompletionNotice）及指定核銷案號之撤回（appCancel）時填寫。本切片之各筆案件編號一律隸屬於同一 Task 之 input[cityCd] 所指之縣市"
* input[caseNo].type 1..1 MS
* input[caseNo].type.text 1..1
* input[caseNo].type.text = "核銷案號"
* input[caseNo].value[x] only string
* input[caseNo].value[x] ^short = "核銷案號值，例如 201907BA10128"

* input[objid] ^short = "服務紀錄識別碼（objid），長度上限 20；服務紀錄刪除（ObjDel）時逐筆填寫要刪除之服務紀錄識別碼"
* input[objid].type 1..1 MS
* input[objid].type.text 1..1
* input[objid].type.text = "服務紀錄識別碼"
* input[objid].value[x] only string
* input[objid].value[x] ^short = "服務紀錄識別碼值，例如 00000000000000000001"

* input[cancelTransNo] ^short = "所要取消結果回報之交易序號（cancel_trans_no），長度上限 10；取消交易單處理結果回報（CancelResultResponse）時必填"
* input[cancelTransNo].type 1..1 MS
* input[cancelTransNo].type.text 1..1
* input[cancelTransNo].type.text = "所要取消結果回報之交易序號"
* input[cancelTransNo].value[x] only string
* input[cancelTransNo].value[x] ^short = "所要取消結果回報之交易序號值，例如 D0001"

// ── 輸出結果（(查詢A) 之 API 執行結果資料）──────────────────────
* output ^slicing.discriminator.type = #pattern
* output ^slicing.discriminator.path = "type.text"
* output ^slicing.rules = #open
* output 0..* MS
* output ^short = "任務輸出結果，即本次交易執行後之處理結果，對應(查詢A)回覆之 API 執行結果資料（webapi_process_info）；以 output.type.text 之中文欄位名稱區分各結果項目"

* output contains
    batchProcResult 0..1 MS and
    batchProcNum 0..1 MS and
    batchSuccNum 0..1 MS and
    batchErrNum 0..1 MS and
    exceptionRecords 0..* MS and
    deleteRecords 0..* MS and
    deleteExceptionRecords 0..* MS

* output[batchProcResult] ^short = "批次處理結果（batch_proc_result）說明文字，長度上限 200"
* output[batchProcResult].type 1..1 MS
* output[batchProcResult].type.text 1..1
* output[batchProcResult].type.text = "批次處理結果"
* output[batchProcResult].value[x] only string
* output[batchProcResult].value[x] ^short = "批次處理結果說明，例如「分案處理完成!」、「服務紀錄刪除完成!」"

* output[batchProcNum] ^short = "批次處理筆數（batch_proc_num）"
* output[batchProcNum].type 1..1 MS
* output[batchProcNum].type.text 1..1
* output[batchProcNum].type.text = "批次處理筆數"
* output[batchProcNum].value[x] only integer
* output[batchProcNum].value[x] ^short = "本次批次處理之總筆數"

* output[batchSuccNum] ^short = "批次處理成功筆數（batch_succ_num）"
* output[batchSuccNum].type 1..1 MS
* output[batchSuccNum].type.text 1..1
* output[batchSuccNum].type.text = "批次處理成功筆數"
* output[batchSuccNum].value[x] only integer
* output[batchSuccNum].value[x] ^short = "本次批次處理成功之筆數"

* output[batchErrNum] ^short = "批次處理失敗筆數（batch_err_num）"
* output[batchErrNum].type 1..1 MS
* output[batchErrNum].type.text 1..1
* output[batchErrNum].type.text = "批次處理失敗筆數"
* output[batchErrNum].value[x] only integer
* output[batchErrNum].value[x] ^short = "本次批次處理失敗之筆數"

* output[exceptionRecords] ^short = "分案異常資料（exception_records），含識別碼、錯誤碼與錯誤原因；可修改後重新上傳至支審系統"
* output[exceptionRecords].type 1..1 MS
* output[exceptionRecords].type.text 1..1
* output[exceptionRecords].type.text = "分案異常資料"
* output[exceptionRecords].value[x] only Reference(LTCOperationOutcomeFeeAudit)
* output[exceptionRecords].value[x] ^short = "參照承載該筆分案異常之錯誤訊息（objid、err_code、err_message）之 OperationOutcome"

* output[deleteRecords] ^short = "服務紀錄刪除成功資料（delete_records），內容為刪除成功之服務紀錄識別碼（objid）"
* output[deleteRecords].type 1..1 MS
* output[deleteRecords].type.text 1..1
* output[deleteRecords].type.text = "服務紀錄刪除成功資料"
* output[deleteRecords].value[x] only string
* output[deleteRecords].value[x] ^short = "刪除成功之服務紀錄識別碼，長度上限 20，例如 123456789"

* output[deleteExceptionRecords] ^short = "服務紀錄刪除失敗資料（delete_exception_records），含識別碼、錯誤碼與錯誤原因"
* output[deleteExceptionRecords].type 1..1 MS
* output[deleteExceptionRecords].type.text 1..1
* output[deleteExceptionRecords].type.text = "服務紀錄刪除失敗資料"
* output[deleteExceptionRecords].value[x] only Reference(LTCOperationOutcomeFeeAudit)
* output[deleteExceptionRecords].value[x] ^short = "參照承載該筆刪除失敗之錯誤訊息（objid、err_code、err_message）之 OperationOutcome"
