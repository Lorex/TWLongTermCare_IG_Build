// 長照支付審查－申報交易任務（Task）
// 依據《衛生福利部 支付審核系統 API 規格說明書（照管平台）v2.2.1》
//   二、服務紀錄刪除（ObjDel）
//   三、申報確認通知
//   六、撤回服務記錄
//   七、取消交易單處理結果回報（CancelResultResponse）
//   參、代碼說明：status（核銷狀況）、status（API 執行狀況）、API Function

Profile: LTCTaskFeeAudit
Parent: LTCTask
Id: LTCTaskFeeAudit
Title: "長照支付審查－申報交易任務"
Description: "此 Task 以衛生福利部支付審核系統的申報交易資料為基礎，用以表述申報確認、服務紀錄刪除、撤回與取消結果回報等任務及處理狀態。"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/LTCTaskFeeAudit"
* ^version = "0.1.0"
* ^status = #draft
* ^purpose = "每筆 Task 填寫一次申報交易的操作與處理狀態。執行任務所需的資料填入 input，處理結果填入 output。申報確認通知如涉及多個縣市，應依縣市分別建立 Task，同一次交易的任務使用相同的交易序號。"

// ── 交易識別 ────────────────────────────────────────────────────
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier 0..* MS
* identifier ^short = "申報交易的識別碼"
* identifier contains
    yyyymm 0..1 MS
* identifier[yyyymm] ^short = "支審年月。[應填入 Identifier]"
* identifier[yyyymm].system 1..1
* identifier[yyyymm].system = "http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm"
* identifier[yyyymm].value 1..1
* identifier[yyyymm].value ^short = "支審年月。[應填入 6 碼西元年月，格式為 yyyyMM]"

* groupIdentifier 0..1 MS
* groupIdentifier ^short = "交易序號，同一次申報交易的任務應使用相同序號。[應填入 Identifier]"
* groupIdentifier.system 1..1
* groupIdentifier.system = "http://ltc-ig.fhir.tw/identifier/feeaudit/trans-no"
* groupIdentifier.value 1..1
* groupIdentifier.value ^short = "交易序號。[應填入最長 10 個字元的字串，例如 D0001]"

// ── 任務類型與狀態 ──────────────────────────────────────────────
* status 1..1 MS
* status ^short = "交易任務的處理狀態。[應填入以下字串之一：requested | in-progress | failed | completed]"
* status ^definition = "待處理填入 requested，處理中填入 in-progress，處理失敗填入 failed，已完成填入 completed。"

* businessStatus 0..1 MS
* businessStatus from VS_TW_LTC_FeeAuditCaseStatus (required)
* businessStatus ^short = "分案的核銷狀況。[應填入 0 至 6 其中一個代碼]"
* businessStatus ^definition = "0 為已分案待電腦審核處理，1 為待通知收件，2 為已通知待收件，3 為審核中，4 為等待總表，5 為審計待審，6 為結案。"

* code 1..1 MS
* code from VS_TW_LTC_FeeAuditApiFunction (required)
* code ^short = "交易任務的類型。[應填入以下代碼之一：FeeApply | ObjDel | appCompletionNotice | appCancel | CancelResultResponse]"
* code ^definition = "FeeApply 為服務記錄申報，ObjDel 為服務紀錄刪除，appCompletionNotice 為申報確認通知，appCancel 為服務單位撤回，CancelResultResponse 為取消交易單處理結果回報。"

* intent 1..1 MS
* intent = #order
* intent ^short = "任務的用途。[應填入 order]"

// ── 操作對象 ────────────────────────────────────────────────────
* focus 0..1 MS
* focus ^definition = "處理整次申報交易時，應參照申報 Bundle；處理單筆服務紀錄的刪除或異動時，應參照該筆 Claim。"
* focus ^short = "本次任務處理的資料。[應填入對應 Bundle 或 Claim 的 Reference]"

* partOf 0..* MS
* partOf ^definition = "取消交易單處理結果回報時，可參照原交易單的 Task。"
* partOf ^short = "所屬的交易任務。[應填入對應 Task 的 Reference]"

// ── 輸入參數（各 API 之傳送資料）────────────────────────────────
* input ^slicing.discriminator.type = #pattern
* input ^slicing.discriminator.path = "type.text"
* input ^slicing.rules = #open
* input 0..* MS
* input ^short = "執行本次任務所需的資料"
* input ^definition = "應依任務類型填寫縣市、核銷案號、服務紀錄識別碼或要取消結果回報的交易序號。每項資料分別填寫。"

* input contains
    cityCd 0..1 MS and
    caseNo 0..* MS and
    objid 0..* MS and
    cancelTransNo 0..1 MS

* input[cityCd] ^short = "縣市代碼，申報確認通知及指定核銷案號撤回時填寫。[應在 valueString 填入最長 5 個字元的字串]"
* input[cityCd] ^definition = "申報確認通知時，每筆 Task 填寫一個縣市，核銷案號應屬於該縣市。如涉及多個縣市，則分別建立 Task，並使用相同的交易序號。指定核銷案號撤回時，也應填寫縣市代碼。"
* input[cityCd].type 1..1 MS
* input[cityCd].type.text 1..1
* input[cityCd].type.text = "縣市代碼"
* input[cityCd].value[x] only string
* input[cityCd].value[x] ^short = "縣市代碼的內容，例如 65000、10020。"

* input[caseNo] ^short = "案件編號或核銷案號，申報確認通知及指定核銷案號撤回時填寫。[應在 valueString 填入最長 30 個字元的字串]"
* input[caseNo] ^definition = "每個核銷案號分別填寫。同一筆 Task 的核銷案號應屬於該任務指定的縣市。"
* input[caseNo].type 1..1 MS
* input[caseNo].type.text 1..1
* input[caseNo].type.text = "核銷案號"
* input[caseNo].value[x] only string
* input[caseNo].value[x] ^short = "核銷案號的內容，例如 201907BA10128。"

* input[objid] ^short = "要刪除的服務紀錄識別碼，如有多筆，則分別填寫。[應在 valueString 填入最長 20 個字元的字串]"
* input[objid].type 1..1 MS
* input[objid].type.text 1..1
* input[objid].type.text = "服務紀錄識別碼"
* input[objid].value[x] only string
* input[objid].value[x] ^short = "服務紀錄識別碼的內容，例如 00000000000000000001。"

* input[cancelTransNo] ^short = "要取消結果回報的交易序號，執行取消交易單處理結果回報時必填。[應在 valueString 填入最長 10 個字元的字串]"
* input[cancelTransNo].type 1..1 MS
* input[cancelTransNo].type.text 1..1
* input[cancelTransNo].type.text = "所要取消結果回報之交易序號"
* input[cancelTransNo].value[x] only string
* input[cancelTransNo].value[x] ^short = "要取消結果回報的交易序號，例如 D0001。"

// ── 輸出結果（(查詢A) 之 API 執行結果資料）──────────────────────
* output ^slicing.discriminator.type = #pattern
* output ^slicing.discriminator.path = "type.text"
* output ^slicing.rules = #open
* output 0..* MS
* output ^short = "本次任務的處理結果"
* output ^definition = "應填入處理結果說明及總筆數、成功筆數與失敗筆數。如有分案異常或刪除失敗，則續填記錄錯誤內容的 OperationOutcome 參照。"

* output contains
    batchProcResult 0..1 MS and
    batchProcNum 0..1 MS and
    batchSuccNum 0..1 MS and
    batchErrNum 0..1 MS and
    exceptionRecords 0..* MS and
    deleteRecords 0..* MS and
    deleteExceptionRecords 0..* MS

* output[batchProcResult] ^short = "批次處理結果的說明。[應在 valueString 填入最長 200 個字元的字串]"
* output[batchProcResult].type 1..1 MS
* output[batchProcResult].type.text 1..1
* output[batchProcResult].type.text = "批次處理結果"
* output[batchProcResult].value[x] only string
* output[batchProcResult].value[x] ^short = "批次處理結果的內容，例如「分案處理完成」、「服務紀錄刪除完成」。"

* output[batchProcNum] ^short = "批次處理的總筆數"
* output[batchProcNum].type 1..1 MS
* output[batchProcNum].type.text 1..1
* output[batchProcNum].type.text = "批次處理筆數"
* output[batchProcNum].value[x] only integer
* output[batchProcNum].value[x] ^short = "批次處理的總筆數。[應填入整數]"

* output[batchSuccNum] ^short = "批次處理成功的筆數"
* output[batchSuccNum].type 1..1 MS
* output[batchSuccNum].type.text 1..1
* output[batchSuccNum].type.text = "批次處理成功筆數"
* output[batchSuccNum].value[x] only integer
* output[batchSuccNum].value[x] ^short = "批次處理成功的筆數。[應填入整數]"

* output[batchErrNum] ^short = "批次處理失敗的筆數"
* output[batchErrNum].type 1..1 MS
* output[batchErrNum].type.text 1..1
* output[batchErrNum].type.text = "批次處理失敗筆數"
* output[batchErrNum].value[x] only integer
* output[batchErrNum].value[x] ^short = "批次處理失敗的筆數。[應填入整數]"

* output[exceptionRecords] ^short = "分案異常的錯誤訊息。[應在 valueReference 填入對應 OperationOutcome 的 Reference]"
* output[exceptionRecords] ^definition = "應參照符合 LTCOperationOutcomeFeeAudit 的檢核結果，其中應記錄錯誤代碼、錯誤原因及受影響的服務紀錄。"
* output[exceptionRecords].type 1..1 MS
* output[exceptionRecords].type.text 1..1
* output[exceptionRecords].type.text = "分案異常資料"
* output[exceptionRecords].value[x] only Reference(LTCOperationOutcomeFeeAudit)
* output[exceptionRecords].value[x] ^short = "分案異常的錯誤訊息。[應填入對應 OperationOutcome 的 Reference]"

* output[deleteRecords] ^short = "刪除成功的服務紀錄"
* output[deleteRecords].type 1..1 MS
* output[deleteRecords].type.text 1..1
* output[deleteRecords].type.text = "服務紀錄刪除成功資料"
* output[deleteRecords].value[x] only string
* output[deleteRecords].value[x] ^short = "刪除成功的服務紀錄識別碼。[應填入最長 20 個字元的字串，例如 123456789]"

* output[deleteExceptionRecords] ^short = "服務紀錄刪除失敗的錯誤訊息。[應在 valueReference 填入對應 OperationOutcome 的 Reference]"
* output[deleteExceptionRecords] ^definition = "應參照符合 LTCOperationOutcomeFeeAudit 的檢核結果，其中應記錄錯誤代碼、錯誤原因及受影響的服務紀錄。"
* output[deleteExceptionRecords].type 1..1 MS
* output[deleteExceptionRecords].type.text 1..1
* output[deleteExceptionRecords].type.text = "服務紀錄刪除失敗資料"
* output[deleteExceptionRecords].value[x] only Reference(LTCOperationOutcomeFeeAudit)
* output[deleteExceptionRecords].value[x] ^short = "服務紀錄刪除失敗的錯誤訊息。[應填入對應 OperationOutcome 的 Reference]"
