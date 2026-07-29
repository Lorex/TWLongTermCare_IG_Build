// 長照支付審查－申報交易任務（Task）範例
// 依據《衛生福利部 支付審核系統 API 規格說明書（照管平台）v2.2.1》：
//   二、服務紀錄刪除（ObjDel）                        PAGE 18-19
//   三、申報確認通知（appCompletionNotice）            PAGE 19-20
//   四、(查詢A)服務單位各分案審核狀態查詢（appResultQuery，query_type = A）PAGE 21-24
//   六、撤回服務記錄（appCancel）                      PAGE 28-29
//   七、取消交易單處理結果回報（CancelResultResponse）  PAGE 29-30
//
// 說明：
// 1. 各 Task 之支審年月（writeoff_yyyymm）一律採規格書各節傳送資料範例之 201901。
//    (查詢A) 回覆範例中的核銷案號（201907BA10128）為規格書原文值，其年月字首與
//    writeoff_yyyymm 不一致係規格書範例本身之差異，此處照抄未做調整。
// 2. (查詢A) 回覆之 doc_ver（總表版次）、acc_num（簽證編號）於 LTCTaskFeeAudit
//    無對應元素，本範例未承載；source_system（來源系統別）以 Task.note 記述。

// ══════════════════════════════════════════════════════════════════════
// 一、服務記錄申報（FeeApply）交易單處理狀態
//     對應 (查詢A) 回覆 webapi_process_info 之第 1 筆（PAGE 22-23）
// ══════════════════════════════════════════════════════════════════════
Instance: ltc-task-feeapply-example
InstanceOf: LTCTaskFeeAudit
Title: "長照支付審查－服務記錄申報交易任務範例"
Description: "服務記錄申報（FeeApply）交易單之處理狀態範例。展示以 (查詢A)服務單位各分案審核狀態查詢所取得之交易單資訊：交易序號 TranQ00083、API 執行狀況為 4:處理完成、分案核銷狀況為 1:待通知收件，批次處理 3000 筆、成功 2999 筆、失敗 1 筆，並以 output 參照分案異常資料（exception_records）之錯誤訊息。"
Usage: #example

* identifier[yyyymm].system = "http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm"
* identifier[yyyymm].value = "201901"

* groupIdentifier.system = "http://ltc-ig.fhir.tw/identifier/feeaudit/trans-no"
* groupIdentifier.value = "TranQ00083"

* status = #completed
* intent = #order
* businessStatus = CS_TW_LTC_FeeAuditCaseStatus#1 "待通知收件"
* code = CS_TW_LTC_FeeAuditApiFunction#FeeApply "服務記錄申報"

* authoredOn = "2019-02-10T09:30:00+08:00"
* requester = Reference(ltc-organization-example)

// 分案所屬之縣市與核銷案號（(查詢A) 回覆之 city_info／case_infos）
* input[cityCd].type.text = "縣市代碼"
* input[cityCd].valueString = "10020"
* input[caseNo][0].type.text = "核銷案號"
* input[caseNo][0].valueString = "201907BA10128"

// API 執行結果資料（webapi_process_info）
* output[batchProcResult].type.text = "批次處理結果"
* output[batchProcResult].valueString = "分案處理完成!"
* output[batchProcNum].type.text = "批次處理筆數"
* output[batchProcNum].valueInteger = 3000
* output[batchSuccNum].type.text = "批次處理成功筆數"
* output[batchSuccNum].valueInteger = 2999
* output[batchErrNum].type.text = "批次處理失敗筆數"
* output[batchErrNum].valueInteger = 1
* output[exceptionRecords][0].type.text = "分案異常資料"
* output[exceptionRecords][0].valueReference = Reference(ltc-operationoutcome-feeaudit-exception-example)

* note[0].text = "來源系統別（source_system）：TranCareCenter"


// ══════════════════════════════════════════════════════════════════════
// 二、申報確認通知（appCompletionNotice）
//     傳送資料範例見 PAGE 19-20；處理結果見 (查詢A) 回覆第 2 筆（PAGE 23）
// ══════════════════════════════════════════════════════════════════════
// 規格書 PAGE 19-20 之傳送資料範例含兩個縣市（65000 與 10020），各自帶有兩筆案件編號。
// 因 FHIR R4 之 Task.input 不支援巢狀 part，無法在單一 Task 內表達「縣市 → 案件編號」
// 的隸屬關係，故本範例依 LTCTaskFeeAudit 之規定，依縣市拆分為兩筆 Task，
// 兩者共用同一交易序號（groupIdentifier = CN001）以表示屬同一次申報確認通知作業。
Instance: ltc-task-completion-notice-example
InstanceOf: LTCTaskFeeAudit
Title: "長照支付審查－申報確認通知交易任務範例（縣市 65000）"
Description: "申報確認通知（appCompletionNotice）之交易任務範例（規格書 PAGE 19-20 傳送資料範例之第一個縣市）。服務單位確認服務紀錄無誤後執行本作業，以通知縣市承辦人員收件並審查服務紀錄；執行後支審系統不再受理服務紀錄申報及異動。本範例以 input 承載縣市代碼 65000 及其下之兩筆案件編號（case_no：A12345678、B12345678），並以 output 記錄「申報確認通知完成!」之批次處理結果。同一次作業之另一個縣市（10020）另見 ltc-task-completion-notice-city2-example。"
Usage: #example

* identifier[yyyymm].system = "http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm"
* identifier[yyyymm].value = "201901"

* groupIdentifier.system = "http://ltc-ig.fhir.tw/identifier/feeaudit/trans-no"
* groupIdentifier.value = "CN001"

* status = #completed
* intent = #order
* code = CS_TW_LTC_FeeAuditApiFunction#appCompletionNotice "申報確認通知"

* authoredOn = "2019-02-11T14:00:00+08:00"
* requester = Reference(ltc-organization-example)

// 縣市案號資訊（city_info）：縣市代碼 65000 及其案件資訊（case_no_info）
* input[cityCd].type.text = "縣市代碼"
* input[cityCd].valueString = "65000"
* input[caseNo][0].type.text = "核銷案號"
* input[caseNo][0].valueString = "A12345678"
* input[caseNo][1].type.text = "核銷案號"
* input[caseNo][1].valueString = "B12345678"

* output[batchProcResult].type.text = "批次處理結果"
* output[batchProcResult].valueString = "申報確認通知完成!"

* note[0].text = "來源系統別（source_system）：TranCareCenter"


Instance: ltc-task-completion-notice-city2-example
InstanceOf: LTCTaskFeeAudit
Title: "長照支付審查－申報確認通知交易任務範例（縣市 10020）"
Description: "申報確認通知（appCompletionNotice）之交易任務範例（規格書 PAGE 19-20 傳送資料範例之第二個縣市）。以 input 承載縣市代碼 10020 及其下之兩筆案件編號（case_no：C12345678、D12345678）。本筆與 ltc-task-completion-notice-example 共用同一交易序號（trans_no = CN001），共同構成規格書範例中 city_info 之完整內容。"
Usage: #example

* identifier[yyyymm].system = "http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm"
* identifier[yyyymm].value = "201901"

* groupIdentifier.system = "http://ltc-ig.fhir.tw/identifier/feeaudit/trans-no"
* groupIdentifier.value = "CN001"

* status = #completed
* intent = #order
* code = CS_TW_LTC_FeeAuditApiFunction#appCompletionNotice "申報確認通知"

* authoredOn = "2019-02-11T14:00:00+08:00"
* requester = Reference(ltc-organization-example)

// 縣市案號資訊（city_info）：縣市代碼 10020 及其案件資訊（case_no_info）
* input[cityCd].type.text = "縣市代碼"
* input[cityCd].valueString = "10020"
* input[caseNo][0].type.text = "核銷案號"
* input[caseNo][0].valueString = "C12345678"
* input[caseNo][1].type.text = "核銷案號"
* input[caseNo][1].valueString = "D12345678"

* output[batchProcResult].type.text = "批次處理結果"
* output[batchProcResult].valueString = "申報確認通知完成!"

* note[0].text = "來源系統別（source_system）：TranCareCenter"


// ══════════════════════════════════════════════════════════════════════
// 三、服務紀錄刪除（ObjDel）
//     傳送資料見 PAGE 18-19；處理結果見 (查詢A) 回覆第 4 筆（PAGE 23-24）
// ══════════════════════════════════════════════════════════════════════
Instance: ltc-task-objdel-example
InstanceOf: LTCTaskFeeAudit
Title: "長照支付審查－服務紀錄刪除交易任務範例"
Description: "服務紀錄刪除（ObjDel）之交易任務範例。刪除該系統商指定識別碼（objid）之服務紀錄；若該服務紀錄之案件已執行申報確認通知，則不允許刪除。本範例以 input 承載所要刪除之服務紀錄識別碼，並以 output 呈現批次處理 6 筆、成功 4 筆、失敗 2 筆之結果，包含刪除成功資料（delete_records）之識別碼清單，以及刪除失敗資料（delete_exception_records）所參照之錯誤訊息（錯誤碼 E4032）。"
Usage: #example

* identifier[yyyymm].system = "http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm"
* identifier[yyyymm].value = "201901"

* groupIdentifier.system = "http://ltc-ig.fhir.tw/identifier/feeaudit/trans-no"
* groupIdentifier.value = "TranQ00082"

// 規格書 (查詢A) 回覆此筆之 status 原文為「0:處理完成」，惟代碼說明中 0 為「待處理」、
// 4 為「處理完成」；因該筆已回傳批次處理筆數與刪除結果，本範例採處理完成（completed）。
* status = #completed
* intent = #order
* code = CS_TW_LTC_FeeAuditApiFunction#ObjDel "服務紀錄刪除"

* authoredOn = "2019-02-09T11:20:00+08:00"
* requester = Reference(ltc-organization-example)

// 所要刪除之服務紀錄識別碼；此處列出 (查詢A) 回覆中出現之識別碼，
// 規格書範例之 delete_records 與 delete_exception_records 中 123456789 重複出現，
// 故不重複列出，識別碼筆數與 batch_proc_num（6）之差異係沿用規格書原始範例值。
* input[objid][0].type.text = "服務紀錄識別碼"
* input[objid][0].valueString = "123456789"
* input[objid][1].type.text = "服務紀錄識別碼"
* input[objid][1].valueString = "234567890"
* input[objid][2].type.text = "服務紀錄識別碼"
* input[objid][2].valueString = "345678901"
* input[objid][3].type.text = "服務紀錄識別碼"
* input[objid][3].valueString = "456789012"
* input[objid][4].type.text = "服務紀錄識別碼"
* input[objid][4].valueString = "987654321"

* output[batchProcResult].type.text = "批次處理結果"
* output[batchProcResult].valueString = "服務紀錄刪除完成!"
* output[batchProcNum].type.text = "批次處理筆數"
* output[batchProcNum].valueInteger = 6
* output[batchSuccNum].type.text = "批次處理成功筆數"
* output[batchSuccNum].valueInteger = 4
* output[batchErrNum].type.text = "批次處理失敗筆數"
* output[batchErrNum].valueInteger = 2

// 服務紀錄刪除成功資料（delete_records）
* output[deleteRecords][0].type.text = "服務紀錄刪除成功資料"
* output[deleteRecords][0].valueString = "123456789"
* output[deleteRecords][1].type.text = "服務紀錄刪除成功資料"
* output[deleteRecords][1].valueString = "234567890"
* output[deleteRecords][2].type.text = "服務紀錄刪除成功資料"
* output[deleteRecords][2].valueString = "345678901"
* output[deleteRecords][3].type.text = "服務紀錄刪除成功資料"
* output[deleteRecords][3].valueString = "456789012"

// 服務紀錄刪除失敗資料（delete_exception_records）
* output[deleteExceptionRecords][0].type.text = "服務紀錄刪除失敗資料"
* output[deleteExceptionRecords][0].valueReference = Reference(ltc-operationoutcome-feeaudit-objdel-example)
* output[deleteExceptionRecords][1].type.text = "服務紀錄刪除失敗資料"
* output[deleteExceptionRecords][1].valueReference = Reference(ltc-operationoutcome-feeaudit-objdel-2-example)

* note[0].text = "來源系統別（source_system）：TranCareCenter"


// ══════════════════════════════════════════════════════════════════════
// 四、撤回服務記錄（appCancel）
//     傳送資料範例 2 見 PAGE 29；處理結果見 (查詢A) 回覆第 3 筆（PAGE 23）
// ══════════════════════════════════════════════════════════════════════
Instance: ltc-task-cancel-example
InstanceOf: LTCTaskFeeAudit
Title: "長照支付審查－服務單位撤回交易任務範例"
Description: "服務單位撤回（appCancel）之交易任務範例。傳入縣市代碼與核銷案號時，表示將指定核銷案號該來源系統別所申報之服務記錄撤回；未傳入者則將該服務單位本月該來源系統別所申報之服務記錄一併撤回。若承辦人已收件處理，則不允許執行撤回。本範例對應規格書傳送資料範例 2，並以 output 記錄「服務紀錄撤回完成!」之批次處理結果。"
Usage: #example

* identifier[yyyymm].system = "http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm"
* identifier[yyyymm].value = "201901"

* groupIdentifier.system = "http://ltc-ig.fhir.tw/identifier/feeaudit/trans-no"
* groupIdentifier.value = "C0001"

* status = #completed
* intent = #order
* code = CS_TW_LTC_FeeAuditApiFunction#appCancel "服務單位撤回"

* authoredOn = "2019-02-12T16:45:00+08:00"
* requester = Reference(ltc-organization-example)

* input[cityCd].type.text = "縣市代碼"
* input[cityCd].valueString = "65000"
* input[caseNo][0].type.text = "核銷案號"
* input[caseNo][0].valueString = "C01001"

* output[batchProcResult].type.text = "批次處理結果"
* output[batchProcResult].valueString = "服務紀錄撤回完成!"

* note[0].text = "來源系統別（source_system）：TranCareCenter"


// ══════════════════════════════════════════════════════════════════════
// 五、取消交易單處理結果回報（CancelResultResponse）
//     傳送資料範例見 PAGE 29-30
// ══════════════════════════════════════════════════════════════════════
Instance: ltc-task-cancel-result-response-example
InstanceOf: LTCTaskFeeAudit
Title: "長照支付審查－取消交易單處理結果回報交易任務範例"
Description: "取消交易單處理結果回報（CancelResultResponse）之交易任務範例。服務單位以本作業取消 (查詢A)服務單位各分案審核狀態查詢之 API 執行結果資料中，某一交易單的處理結果回報。本範例以本次作業之交易序號（trans_no）CR001 為 groupIdentifier，並以 input[cancelTransNo] 承載所要取消結果回報之交易序號 TranQ00083，同時以 partOf 參照該原交易單之 Task（ltc-task-feeapply-example）。"
Usage: #example

* identifier[yyyymm].system = "http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm"
* identifier[yyyymm].value = "201901"

* groupIdentifier.system = "http://ltc-ig.fhir.tw/identifier/feeaudit/trans-no"
* groupIdentifier.value = "CR001"

* status = #completed
* intent = #order
* code = CS_TW_LTC_FeeAuditApiFunction#CancelResultResponse "取消交易單處理結果回報"

* authoredOn = "2019-02-13T09:15:00+08:00"
* requester = Reference(ltc-organization-example)

// 所要取消結果回報之原交易單
* partOf[0] = Reference(ltc-task-feeapply-example)
* input[cancelTransNo].type.text = "所要取消結果回報之交易序號"
* input[cancelTransNo].valueString = "TranQ00083"

* output[batchProcResult].type.text = "批次處理結果"
* output[batchProcResult].valueString = "取消交易單處理結果回報完成!"

* note[0].text = "來源系統別（source_system）：TranCareCenter"


// ══════════════════════════════════════════════════════════════════════
// 六、分案異常與刪除失敗之錯誤訊息（OperationOutcome）
//     對應 (查詢A) 回覆之 exception_records 與 delete_exception_records
// ══════════════════════════════════════════════════════════════════════
Instance: ltc-operationoutcome-feeaudit-exception-example
InstanceOf: LTCOperationOutcomeFeeAudit
Title: "長照支付審查－分案異常資料範例"
Description: "(查詢A)服務單位各分案審核狀態查詢回覆之分案異常資料（exception_records）範例。展示服務紀錄識別碼 19260121 因錯誤碼 E4015 而分案失敗之錯誤訊息，該筆服務紀錄可修改後重新上傳至支審系統。"
Usage: #example

* extension[caseNo].valueString = "201907BA10128"
* issue[0].severity = #error
* issue[0].code = #processing
* issue[0].details.coding = CS_TW_LTC_FeeAuditErrorCode#E4015 "單位已執行申報確認通知，不在受理新的服務紀錄申報"
* issue[0].details.text = "此筆服務紀錄已經收件不能分案"
* issue[0].diagnostics = "分案異常資料（exception_records）：objid = 19260121、err_code = E4015、err_message = 此筆服務紀錄已經收件不能分案"
* issue[0].expression[0] = "Claim.identifier.where(system='http://ltc-ig.fhir.tw/identifier/feeaudit/objid' and value='19260121')"


Instance: ltc-operationoutcome-feeaudit-objdel-example
InstanceOf: LTCOperationOutcomeFeeAudit
Title: "長照支付審查－服務紀錄刪除失敗資料範例（一）"
Description: "服務紀錄刪除（ObjDel）之刪除失敗資料（delete_exception_records）範例。展示服務紀錄識別碼 123456789 因錯誤碼 E4032（此筆服務紀錄不存在）而刪除失敗之錯誤訊息。"
Usage: #example

* issue[0].severity = #error
* issue[0].code = #not-found
* issue[0].details.coding = CS_TW_LTC_FeeAuditErrorCode#E4032 "此筆服務紀錄不存在"
* issue[0].details.text = "此筆服務紀錄不存在"
* issue[0].diagnostics = "服務紀錄刪除失敗資料（delete_exception_records）：objid = 123456789、err_code = E4032、err_message = 此筆服務紀錄不存在"
* issue[0].expression[0] = "Claim.identifier.where(system='http://ltc-ig.fhir.tw/identifier/feeaudit/objid' and value='123456789')"


Instance: ltc-operationoutcome-feeaudit-objdel-2-example
InstanceOf: LTCOperationOutcomeFeeAudit
Title: "長照支付審查－服務紀錄刪除失敗資料範例（二）"
Description: "服務紀錄刪除（ObjDel）之刪除失敗資料（delete_exception_records）範例。展示服務紀錄識別碼 987654321 因錯誤碼 E4032（此筆服務紀錄不存在）而刪除失敗之錯誤訊息。"
Usage: #example

* issue[0].severity = #error
* issue[0].code = #not-found
* issue[0].details.coding = CS_TW_LTC_FeeAuditErrorCode#E4032 "此筆服務紀錄不存在"
* issue[0].details.text = "此筆服務紀錄不存在"
* issue[0].diagnostics = "服務紀錄刪除失敗資料（delete_exception_records）：objid = 987654321、err_code = E4032、err_message = 此筆服務紀錄不存在"
* issue[0].expression[0] = "Claim.identifier.where(system='http://ltc-ig.fhir.tw/identifier/feeaudit/objid' and value='987654321')"


// ══════════════════════════════════════════════════════════════════════
// 七、(查詢A)服務單位各分案審核狀態查詢之回覆打包（Bundle：searchset）
// ══════════════════════════════════════════════════════════════════════
Instance: ltc-bundle-feeaudit-status-example
InstanceOf: LTCBundleFeeAuditStatus
Title: "長照支付審查－分案審核狀態回覆打包範例"
Description: "(查詢A)服務單位各分案審核狀態查詢（……/appResultQuery，query_type = A）之回覆打包範例。以 searchset 型態彙整支審年月 201901 各交易單之 API 執行結果（webapi_process_info），包含服務記錄申報（FeeApply）、申報確認通知（appCompletionNotice，依縣市拆為兩筆）、服務紀錄刪除（ObjDel）、服務單位撤回（appCancel）與取消交易單處理結果回報（CancelResultResponse）共六筆交易任務，並一併回傳分案異常資料（exception_records）與服務紀錄刪除失敗資料（delete_exception_records）之錯誤訊息（search.mode = outcome，不計入 total）。"
Usage: #example

* type = #searchset
* timestamp = "2019-02-15T10:30:00+08:00"
// total 為查詢命中之交易單筆數（6 筆 Task，search.mode = match）；
// OperationOutcome 係由 Task.output 參照而一併回傳，其 search.mode 標示為 outcome，不計入 total
* total = 6

// FHIR R4 規範要求 searchset Bundle 具備 self link 以標示本次查詢條件；
// 此處以等價之 FHIR 查詢式表達支審 API 之 query_type = A（依支審年月查詢各交易單處理狀態）
* link[0].relation = "self"
* link[0].url = "http://ltc-ig.fhir.tw/fhir/Task?identifier=http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm|201901"

* entry[task][0].fullUrl = "http://ltc-ig.fhir.tw/Task/ltc-task-feeapply-example"
* entry[task][0].resource = ltc-task-feeapply-example
* entry[task][0].search.mode = #match

* entry[task][1].fullUrl = "http://ltc-ig.fhir.tw/Task/ltc-task-completion-notice-example"
* entry[task][1].resource = ltc-task-completion-notice-example
* entry[task][1].search.mode = #match

* entry[task][2].fullUrl = "http://ltc-ig.fhir.tw/Task/ltc-task-completion-notice-city2-example"
* entry[task][2].resource = ltc-task-completion-notice-city2-example
* entry[task][2].search.mode = #match

* entry[task][3].fullUrl = "http://ltc-ig.fhir.tw/Task/ltc-task-objdel-example"
* entry[task][3].resource = ltc-task-objdel-example
* entry[task][3].search.mode = #match

* entry[task][4].fullUrl = "http://ltc-ig.fhir.tw/Task/ltc-task-cancel-example"
* entry[task][4].resource = ltc-task-cancel-example
* entry[task][4].search.mode = #match

* entry[task][5].fullUrl = "http://ltc-ig.fhir.tw/Task/ltc-task-cancel-result-response-example"
* entry[task][5].resource = ltc-task-cancel-result-response-example
* entry[task][5].search.mode = #match

* entry[operationOutcome][0].fullUrl = "http://ltc-ig.fhir.tw/OperationOutcome/ltc-operationoutcome-feeaudit-exception-example"
* entry[operationOutcome][0].resource = ltc-operationoutcome-feeaudit-exception-example
* entry[operationOutcome][0].search.mode = #outcome

* entry[operationOutcome][1].fullUrl = "http://ltc-ig.fhir.tw/OperationOutcome/ltc-operationoutcome-feeaudit-objdel-example"
* entry[operationOutcome][1].resource = ltc-operationoutcome-feeaudit-objdel-example
* entry[operationOutcome][1].search.mode = #outcome

* entry[operationOutcome][2].fullUrl = "http://ltc-ig.fhir.tw/OperationOutcome/ltc-operationoutcome-feeaudit-objdel-2-example"
* entry[operationOutcome][2].resource = ltc-operationoutcome-feeaudit-objdel-2-example
* entry[operationOutcome][2].search.mode = #outcome
