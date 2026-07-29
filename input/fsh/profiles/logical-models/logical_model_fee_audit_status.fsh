// 長照支付審查－分案審核狀態與交易處理結果邏輯模型
// 依據《衛生福利部 支付審核系統 API 規格說明書（照管平台）v2.2.1》
//   二、服務紀錄刪除（ObjDel）
//   三、申報確認通知（appCompletionNotice）
//   四、(查詢A)服務單位各分案審核狀態查詢（appResultQuery，query_type = A）
//   六、撤回服務記錄（appCancel）
//   七、取消交易單處理結果回報（CancelResultResponse）

Logical: LTCFeeAuditStatusModel
Id: LTCFeeAuditStatusModel
Title: "長照支付審查－分案審核狀態與交易處理結果邏輯模型"
Description: "此邏輯模型以衛生福利部支付審核系統（照管平台）API 規格說明書為基礎，用以描述服務單位各分案審核狀態查詢（查詢A）、服務紀錄刪除（ObjDel）、申報確認通知（appCompletionNotice）、撤回服務記錄（appCancel）及取消交易單處理結果回報（CancelResultResponse）之資料結構與欄位準備指引。"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/LTCFeeAuditStatusModel"
* ^version = "0.1.0"
* ^status = #draft
* ^experimental = false

// ===== 四、(查詢A)服務單位各分案審核狀態查詢：傳送資料 =====
* queryInfo 1..1 BackboneElement "查詢輸入資訊" "服務單位各分案審核狀態查詢（app_result_query_info）的查詢輸入資訊，每次查詢間隔至少為 20 分鐘"
  * writeoffYyyymm 1..1 string "支審年月" "支付審核年月，格式為 yyyyMM，長度 6"
  * transNo 1..1 string "交易序號" "本次查詢的交易序號，長度上限 10"
  * queryType 1..1 code "查詢類別" "查詢類別，長度 1，固定值：A（服務單位各分案審核狀態查詢）"

// ===== 四、(查詢A)回覆明細：縣市案件資訊 =====
* cityInfo 0..* BackboneElement "縣市案件資訊" "查詢回覆之縣市案件資訊（city_info），依縣市別列出該支審年月各分案的審核狀態"
  * cityCd 1..1 string "縣市代碼" "案件所屬縣市的代碼，例如 65000、10020"
  * caseInfos 0..* BackboneElement "案件資訊" "該縣市之各分案案件資訊（case_infos）"
    * caseNo 1..1 string "核銷案號" "核銷案件編號，長度上限 30"
    * status 0..1 string "核銷狀況" "核銷狀況，格式為「代碼:說明」，長度上限 200。代碼：0 已分案待電腦審核處理、1 待通知收件、2 已通知待收件、3 審核中、4 等待總表、5 審計待審、6 結案"
    * docVer 0..1 string "總表版次" "該案件目前之總表版次，長度上限 15"
    * accNum 0..1 string "簽證編號" "該案件之簽證編號，長度上限 20"

// ===== 四、(查詢A)回覆明細：API 執行結果資料 =====
* webapiProcessInfo 0..* BackboneElement "API 執行結果資料" "查詢回覆之 API 執行結果資料（webapi_process_info），目前僅顯示已處理完成（狀態為 3:錯誤 或 4:處理完成）之交易單資料"
  * function 1..1 code "API Function" "API Function 名稱，長度上限 40。代碼：FeeApply 服務記錄申報、ObjDel 服務紀錄刪除、appCompletionNotice 申報確認通知、appCancel 服務單位撤回、CancelResultResponse 取消交易單處理結果回報"
  * sourceSystem 0..1 string "來源系統別" "申報來源系統別，長度上限 20，例如 TranCareCenter"
  * transNo 1..1 string "交易序號" "該筆 API 執行結果所屬之交易序號，長度上限 10"
  * status 1..1 string "API 執行狀態" "API 執行狀況，格式為「代碼:說明」，長度上限 30。代碼：0 待處理、1 處理中、3 錯誤、4 處理完成"
  * batchProcResult 0..1 string "批次處理結果" "批次處理結果說明，長度上限 200，例如「分案處理完成!」"
  * batchProcNum 0..1 integer "批次處理筆數" "本次批次處理的總筆數"
  * batchSuccNum 0..1 integer "批次處理成功筆數" "本次批次處理成功的筆數"
  * batchErrNum 0..1 integer "批次處理失敗筆數" "本次批次處理失敗的筆數"
  * exceptionRecords 0..* BackboneElement "分案異常資料" "分案處理異常之服務紀錄（exception_records），可修改後重新上傳至支審系統"
    * objid 1..1 string "識別碼" "系統商之服務紀錄識別碼（objid），長度上限 20"
    * errCode 0..1 string "錯誤碼" "分案異常之錯誤碼，長度上限 5，例如 E4015"
    * errMessage 0..1 string "錯誤原因" "分案異常之錯誤原因說明，長度上限 200"
  * deleteRecords 0..* BackboneElement "服務紀錄刪除成功資料" "服務紀錄刪除成功之資料（delete_records），於 JSON 中以服務紀錄識別碼字串陣列表示"
    * objid 1..1 string "識別碼" "刪除成功之服務紀錄識別碼（objid），長度上限 20"
  * deleteExceptionRecords 0..* BackboneElement "服務紀錄刪除失敗資料" "服務紀錄刪除失敗之資料（delete_exception_records）"
    * objid 1..1 string "識別碼" "刪除失敗之服務紀錄識別碼（objid），長度上限 20"
    * errCode 0..1 string "錯誤碼" "刪除失敗之錯誤碼，長度上限 5，例如 E4032"
    * errMessage 0..1 string "錯誤原因" "刪除失敗之錯誤原因說明，長度上限 200"

// ===== 二、服務紀錄刪除（ObjDel）：傳送資料 =====
* svcDelInfo 0..1 BackboneElement "服務紀錄刪除資料（ObjDel）" "刪除系統商識別碼（objid）之服務紀錄的傳送資料（svcdel_info）；若該服務紀錄之案件已執行申報確認通知，則不允許執行服務紀錄刪除"
  * writeoffYyyymm 1..1 string "支審年月" "支付審核年月，格式為 yyyyMM，長度 6"
  * transNo 1..1 string "交易序號" "本次刪除作業之交易序號，長度上限 10"
  * records 1..1 integer "服務記錄筆數" "本次要刪除之服務紀錄筆數"
  * caseSvcRecords 0..* BackboneElement "個案服務紀錄" "本次要刪除之個案服務紀錄清單（case_svc_records）"
    * objid 1..1 string "識別碼" "要刪除之服務紀錄識別碼（objid），長度上限 20"

// ===== 三、申報確認通知（appCompletionNotice）：傳送資料 =====
* finishInfo 0..1 BackboneElement "申報確認資料（appCompletionNotice）" "服務單位確認服務紀錄無誤後之申報確認通知傳送資料（finish_info）；執行後支審系統不再受理服務紀錄申報及異動"
  * writeoffYyyymm 1..1 string "支審年月" "支付審核年月，格式為 yyyyMM，長度 6"
  * transNo 1..1 string "交易序號" "本次申報確認通知之交易序號，長度上限 10"
  * cityInfo 0..* BackboneElement "縣市案號資訊" "本次申報確認通知之縣市案號資訊（city_info）"
    * cityCd 1..1 string "縣市代碼" "案件所屬縣市的代碼，長度上限 5"
    * caseNoInfo 0..* BackboneElement "案件資訊" "該縣市要執行申報確認通知之案件資訊（case_no_info）"
      * caseNo 1..1 string "案件編號" "要執行申報確認通知之案件編號，長度上限 30"

// ===== 六、撤回服務記錄（appCancel）：傳送資料 =====
* cancelInfo 0..1 BackboneElement "服務單位撤回資料（appCancel）" "服務單位撤回服務紀錄之傳送資料（cancel_info）；若未傳入縣市代碼及核銷案號，表示撤回該服務單位本月該來源系統別所申報之全部服務紀錄；若承辦人已收件處理，則不允許執行撤回"
  * writeoffYyyymm 1..1 string "支審年月" "支付審核年月，格式為 yyyyMM，長度 6"
  * cityCd 0..1 string "縣市代碼" "指定撤回案件所屬縣市代碼，長度上限 5；未填表示全部撤回"
  * caseNo 0..1 string "核銷案號" "指定撤回之核銷案號，長度上限 30；未填表示全部撤回"
  * transNo 1..1 string "交易序號" "本次撤回作業之交易序號，長度上限 10"

// ===== 七、取消交易單處理結果回報（CancelResultResponse）：傳送資料 =====
* cancelResultResponseInfo 0..1 BackboneElement "取消交易單結果回報資料" "取消（查詢A）API 執行結果資料中該交易單處理結果回報之傳送資料（CancelResultResponse_info）"
  * writeoffYyyymm 1..1 string "支審年月" "支付審核年月，格式為 yyyyMM，長度 6"
  * transNo 1..1 string "交易序號" "本次取消結果回報作業之交易序號，長度上限 10"
  * cancelTransNo 1..1 string "所要取消結果回報之交易序號" "所要取消結果回報之交易單交易序號，長度上限 10"

// Mapping
Mapping: LTCFeeAuditStatusModelMapping
Id: LTCFeeAuditStatusModelMapping
Title: "長照支付審查－分案審核狀態與交易處理結果邏輯模型對應"
Description: "此對應說明長照支付審查分案審核狀態與交易處理結果邏輯模型與 FHIR Task Resource（LTCTaskFeeAudit）的對應關係。LTCTaskFeeAudit 之 input／output 切片以 #pattern + type.text 作為 discriminator，各切片固定之 type.text 為規格書之中文欄位名稱（例如「縣市代碼」、「批次處理結果」），故本對應之 FHIRPath 一律以 type.text 定位，切勿改以 type.coding.code 撰寫（該 Profile 未定義 type.coding）。"
Source: LTCFeeAuditStatusModel
Target: "http://ltc-ig.fhir.tw/StructureDefinition/LTCTaskFeeAudit"

// 查詢輸入資訊（查詢A）
* queryInfo -> "Task" "查詢輸入資訊整體對應至一筆支付審查交易 Task（LTCTaskFeeAudit）"
* queryInfo.writeoffYyyymm -> "Task.identifier.where(system='http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm').value" "支審年月以 Task.identifier[yyyymm] 表達"
* queryInfo.transNo -> "Task.groupIdentifier.value" "交易序號以 Task.groupIdentifier 表達，作為同一批交易的群組識別"
* queryInfo.queryType -> "Task" "查詢類別（固定值 A）屬傳輸層查詢參數，用以區分查詢A 與查詢B，於 LTCTaskFeeAudit 中不另設 input 切片；查詢A 之回覆內容即以本 Task 表達"

// 縣市案件資訊（查詢A 回覆）
* cityInfo -> "Task" "縣市案件資訊為查詢交易之執行結果；每一筆分案（縣市代碼 + 核銷案號）對應一筆 LTCTaskFeeAudit"
* cityInfo.cityCd -> "Task.input.where(type.text='縣市代碼').valueString" "縣市代碼以 Task.input[cityCd] 表達（切片 discriminator 為 type.text）"
* cityInfo.caseInfos.caseNo -> "Task.input.where(type.text='核銷案號').valueString" "核銷案號以 Task.input[caseNo] 表達；亦得以 Task.focus 參照該核銷案件"
* cityInfo.caseInfos.status -> "Task.businessStatus" "核銷狀況（0 已分案待電腦審核處理～6 結案）以 Task.businessStatus 表達，繫結 VS_TW_LTC_FeeAuditCaseStatus"
* cityInfo.caseInfos.docVer -> "Task" "總表版次於 LTCTaskFeeAudit 未定義對應之 output 切片；因 output 之 slicing 規則為 open，實作時得自訂 type.text = 總表版次 之 output 承載，或改由（查詢B）之 ClaimResponse.identifier[docVer] 取得"
* cityInfo.caseInfos.accNum -> "Task" "簽證編號於 LTCTaskFeeAudit 未定義對應之 output 切片；因 output 之 slicing 規則為 open，實作時得自訂 type.text = 簽證編號 之 output 承載，或改由（查詢B）之 ClaimResponse.identifier[accNum] 取得"

// API 執行結果資料（查詢A 回覆）
* webapiProcessInfo -> "Task" "每一筆 API 執行結果資料對應至一筆支付審查交易 Task（LTCTaskFeeAudit）"
* webapiProcessInfo.function -> "Task.code" "API Function 名稱以 Task.code 表達，繫結 VS_TW_LTC_FeeAuditApiFunction"
* webapiProcessInfo.sourceSystem -> "Task.note.text" "來源系統別以 Task.note 記述；Parent LTCTask 已將 Task.requester 限定為 Reference(LTCPractitioner | LTCOrganization | LTCPractitionerRole)，若來源系統別可對應到實際申報單位，亦得以 Task.requester 參照該 Organization"
* webapiProcessInfo.transNo -> "Task.groupIdentifier.value" "交易序號以 Task.groupIdentifier 表達"
* webapiProcessInfo.status -> "Task.status" "API 執行狀況（0 待處理、1 處理中、3 錯誤、4 處理完成）依序對應至 Task.status 之 requested、in-progress、failed、completed"
* webapiProcessInfo.batchProcResult -> "Task.output.where(type.text='批次處理結果').valueString" "批次處理結果說明以 Task.output[batchProcResult] 表達"
* webapiProcessInfo.batchProcNum -> "Task.output.where(type.text='批次處理筆數').valueInteger" "批次處理筆數以 Task.output[batchProcNum] 表達"
* webapiProcessInfo.batchSuccNum -> "Task.output.where(type.text='批次處理成功筆數').valueInteger" "批次處理成功筆數以 Task.output[batchSuccNum] 表達"
* webapiProcessInfo.batchErrNum -> "Task.output.where(type.text='批次處理失敗筆數').valueInteger" "批次處理失敗筆數以 Task.output[batchErrNum] 表達"
* webapiProcessInfo.exceptionRecords -> "Task.output.where(type.text='分案異常資料').valueReference" "分案異常資料以 Task.output[exceptionRecords] 參照 LTCOperationOutcomeFeeAudit 表達，逐筆一個 output"
* webapiProcessInfo.exceptionRecords.objid -> "Task.output.where(type.text='分案異常資料').valueReference" "分案異常之服務紀錄識別碼，記於所參照 OperationOutcome 之 issue.expression（須帶入實際 objid 值）與 issue.diagnostics"
* webapiProcessInfo.exceptionRecords.errCode -> "Task.output.where(type.text='分案異常資料').valueReference" "分案異常錯誤碼，記於所參照 OperationOutcome 之 issue.details.coding.code"
* webapiProcessInfo.exceptionRecords.errMessage -> "Task.output.where(type.text='分案異常資料').valueReference" "分案異常錯誤原因，記於所參照 OperationOutcome 之 issue.details.text"
* webapiProcessInfo.deleteRecords -> "Task.output.where(type.text='服務紀錄刪除成功資料').valueString" "服務紀錄刪除成功資料以 Task.output[deleteRecords] 表達，逐筆一個 output"
* webapiProcessInfo.deleteRecords.objid -> "Task.output.where(type.text='服務紀錄刪除成功資料').valueString" "刪除成功之服務紀錄識別碼"
* webapiProcessInfo.deleteExceptionRecords -> "Task.output.where(type.text='服務紀錄刪除失敗資料').valueReference" "服務紀錄刪除失敗資料以 Task.output[deleteExceptionRecords] 參照 LTCOperationOutcomeFeeAudit 表達，逐筆一個 output"
* webapiProcessInfo.deleteExceptionRecords.objid -> "Task.output.where(type.text='服務紀錄刪除失敗資料').valueReference" "刪除失敗之服務紀錄識別碼，記於所參照 OperationOutcome 之 issue.expression（須帶入實際 objid 值）與 issue.diagnostics"
* webapiProcessInfo.deleteExceptionRecords.errCode -> "Task.output.where(type.text='服務紀錄刪除失敗資料').valueReference" "刪除失敗錯誤碼，記於所參照 OperationOutcome 之 issue.details.coding.code"
* webapiProcessInfo.deleteExceptionRecords.errMessage -> "Task.output.where(type.text='服務紀錄刪除失敗資料').valueReference" "刪除失敗錯誤原因，記於所參照 OperationOutcome 之 issue.details.text"

// 服務紀錄刪除（ObjDel）
* svcDelInfo -> "Task" "服務紀錄刪除作業對應至 Task.code = ObjDel 之支付審查交易 Task"
* svcDelInfo.writeoffYyyymm -> "Task.identifier.where(system='http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm').value" "支審年月以 Task.identifier[yyyymm] 表達"
* svcDelInfo.transNo -> "Task.groupIdentifier.value" "交易序號以 Task.groupIdentifier 表達"
* svcDelInfo.records -> "Task.input.where(type.text='服務紀錄識別碼').count()" "服務記錄筆數為統計值，等於 Task.input[objid] 之筆數；LTCTaskFeeAudit 未另設 input 切片承載"
* svcDelInfo.caseSvcRecords.objid -> "Task.input.where(type.text='服務紀錄識別碼').valueString" "要刪除之服務紀錄識別碼以 Task.input[objid] 逐筆表達；亦得以 Task.focus 參照該筆服務紀錄申報"

// 申報確認通知（appCompletionNotice）
* finishInfo -> "Task" "申報確認通知作業對應至 Task.code = appCompletionNotice 之支付審查交易 Task；因 FHIR R4 之 Task.input 不支援巢狀 part，涉及多個縣市時須依縣市拆分為多筆 Task，各 Task 共用同一 groupIdentifier"
* finishInfo.writeoffYyyymm -> "Task.identifier.where(system='http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm').value" "支審年月以 Task.identifier[yyyymm] 表達"
* finishInfo.transNo -> "Task.groupIdentifier.value" "交易序號以 Task.groupIdentifier 表達"
* finishInfo.cityInfo.cityCd -> "Task.input.where(type.text='縣市代碼').valueString" "縣市代碼以 Task.input[cityCd] 表達，每筆 Task 僅一個縣市（0..1）"
* finishInfo.cityInfo.caseNoInfo.caseNo -> "Task.input.where(type.text='核銷案號').valueString" "該縣市之各筆案件編號以同一 Task 之 Task.input[caseNo] 逐筆表達，藉此表達其隸屬於本 Task 之 input[cityCd]"

// 撤回服務記錄（appCancel）
* cancelInfo -> "Task" "服務單位撤回作業對應至 Task.code = appCancel 之支付審查交易 Task"
* cancelInfo.writeoffYyyymm -> "Task.identifier.where(system='http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm').value" "支審年月以 Task.identifier[yyyymm] 表達"
* cancelInfo.cityCd -> "Task.input.where(type.text='縣市代碼').valueString" "縣市代碼以 Task.input[cityCd] 表達"
* cancelInfo.caseNo -> "Task.input.where(type.text='核銷案號').valueString" "指定撤回之核銷案號以 Task.input[caseNo] 表達；亦得以 Task.focus 參照"
* cancelInfo.transNo -> "Task.groupIdentifier.value" "交易序號以 Task.groupIdentifier 表達"

// 取消交易單處理結果回報（CancelResultResponse）
* cancelResultResponseInfo -> "Task" "取消交易單處理結果回報作業對應至 Task.code = CancelResultResponse 之支付審查交易 Task"
* cancelResultResponseInfo.writeoffYyyymm -> "Task.identifier.where(system='http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm').value" "支審年月以 Task.identifier[yyyymm] 表達"
* cancelResultResponseInfo.transNo -> "Task.groupIdentifier.value" "本次作業交易序號以 Task.groupIdentifier 表達"
* cancelResultResponseInfo.cancelTransNo -> "Task.input.where(type.text='所要取消結果回報之交易序號').valueString" "所要取消結果回報之交易序號以 Task.input[cancelTransNo] 表達，並以 Task.partOf 參照原交易單 Task"
