### 支付審查資料交換

本頁說明長照服務提供單位及系統商如何使用 FHIR 傳送申報資料、查詢審核結果，以及辦理刪除或撤回。內容依據《衛生福利部 支付審核系統 API 規格說明書（照管平台）v2.2.1》，使用 FHIR R4.0.1。

初次介接可先看下方的作業流程與填寫說明。要將既有 API 資料轉成 FHIR，可查閱後面的「原 API 欄位對照」；完整欄位、必填條件與範例則見各 Profile 頁面。

### 作業流程

#### 申報與確認

1. **申報服務紀錄（`FeeApply`）**：同一支審年月可分次申報，每次交易最多 5,000 筆服務紀錄。每筆紀錄使用唯一識別碼；支審系統沒有該識別碼時新增，已有時更新。
2. **刪除誤報資料（`ObjDel`）**：列出要刪除的服務紀錄識別碼。刪除成功或失敗的結果由查詢 A 取得。
3. **送出申報確認通知（`appCompletionNotice`）**：資料確認無誤後，依案件通知縣市承辦人員收件審查。**送出後，該案件不能再申報或刪除服務紀錄。**

支審年月使用 6 碼西元年月，例如 `202609`。本 IG 的長照 SDK 模組使用民國年月，轉換資料時需區分。

#### 查詢審核結果

先以 `appResultQuery` 的查詢 A 取得分案狀態，再依結果決定是否執行查詢 B。

| 查詢 | 可取得的資料 | 使用時機與限制 |
|---|---|---|
| 查詢 A（`query_type = A`） | 核銷案號、核銷狀況、總表版次、簽證編號，以及交易處理結果、分案異常和刪除結果 | 每次查詢間隔至少 20 分鐘 |
| 查詢 B（`query_type = B`） | 指定核銷案號的核定金額、通過與未通過的服務紀錄、A 碼加成及清冊下載網址 | 先執行查詢 A；只有新核銷案號，或核銷狀況、總表版次有異動時才執行 |

兩種查詢都需提供支審年月、交易序號及查詢類別。查詢 B 另需提供縣市代碼與核銷案號。

#### 撤回與取消結果回報

| 操作 | 處理範圍 | 填寫方式與限制 |
|---|---|---|
| 撤回服務紀錄（`appCancel`） | 撤回本月由該來源系統申報的服務紀錄 | 未填縣市代碼與核銷案號時，撤回整月資料；有填時，只撤回指定核銷案號。承辦人已收件處理的案件不能撤回 |
| 取消交易單處理結果回報（`CancelResultResponse`） | 取消查詢 A 中某筆交易的處理結果回報 | 填入要取消回報的交易序號 |

### FHIR 資料填寫

#### 申報資料

一次申報使用一份 [LTCBundleFeeApply](StructureDefinition-LTCBundleFeeApply.html)，`Bundle.type` 填入 `collection`。每筆服務紀錄各建立一筆 [LTCClaimFeeApply](StructureDefinition-LTCClaimFeeApply.html)，放入 Bundle；每筆 Claim 只有一筆 `item`。

Bundle 也要放入相關的[個案 Patient](StructureDefinition-LTCPatient.html) 與[申報單位 Organization](StructureDefinition-Organization-twltc.html)，並依服務內容加入[照顧服務員 Practitioner](StructureDefinition-LTCPractitioner.html) 和[交通接送地點 Location](StructureDefinition-LTCLocationFeeAuditPlace.html)。這些都是放在 `Bundle.entry.resource` 的完整資源，Claim 再透過 Reference 參照它們。

例如，同一位個案有三筆服務紀錄，就建立三筆 Claim，讓三筆 Claim 的 `patient` 參照同一份 Patient。這次申報的服務紀錄數是三筆，個案數是一人。申報總金額由各筆 `Claim.total` 加總，不另設批次統計欄位。

服務內容、交通接送資料等補充資訊填在 `Claim.supportingInfo`，依資料類型選擇欄位：

| 資料類型 | 填寫欄位 | 填寫方式 |
|---|---|---|
| 代碼，例如服務項目、服務對象 | `code` | 填入對應值集的代碼。複選時，每個選項各填一筆 `supportingInfo` |
| 文字，例如服務內容、備註 | `valueString` | 填入文字內容 |
| 是／否，例如是否申報 AA03 | `valueBoolean` | 填入 `true` 或 `false` |
| 里程數 | `valueQuantity` | 填入數值，建議以公里（`km`）為單位 |
| 出發地、目的地 | `valueReference` | 參照對應的 Location，地點名稱、地址及經緯度填在 Location 中 |

照顧組合代碼請填在 `item.productOrService.coding`。目前 Profile 的四條條件檢核依這裡的代碼判斷；只填 `text` 不會觸發檢核。

| 照顧組合代碼 | 目前條件檢核會檢查的補充資料 |
|---|---|
| BD03、DA01 | 車號、里程數 |
| BD03 | 社區式服務交通接送服務使用類型 |
| AA00 | 服務項目、服務對象、服務內容 |
| AA03 | 服務項目、提供專業服務單位 |

這四條檢核（`ltc-feeaudit-1` 至 `ltc-feeaudit-4`）的層級為 `warning`，未涵蓋原規格書的所有條件。出發地、目的地及 C 碼專業服務資料等，仍須依原規格書「支付碼必填欄位一覽表」填寫。

#### 交易任務與查詢 A 回覆

刪除、申報確認、撤回及取消結果回報都使用 [LTCTaskFeeAudit](StructureDefinition-LTCTaskFeeAudit.html)。`Task.code` 填入操作代碼，`input` 填入操作所需資料，`output` 記錄處理結果。同次交易的任務使用相同的 `Task.groupIdentifier`。

申報確認通知以**一個縣市一筆 Task** 填寫。同一縣市有多個案件時，在該 Task 逐筆填入核銷案號；涉及不同縣市時，分別建立 Task，並共用交易序號。

`input` 與 `output` 的 Slice 以 `type.text` 區分。例如縣市代碼的 `type.text` 固定填入「縣市代碼」。讀取資料或撰寫 FHIRPath 時，請使用 Profile 指定的文字定位。

查詢 A 的回覆使用 [LTCBundleFeeAuditStatus](StructureDefinition-LTCBundleFeeAuditStatus.html)，內含 Task；分案異常或刪除失敗的訊息另以 [LTCOperationOutcomeFeeAudit](StructureDefinition-LTCOperationOutcomeFeeAudit.html) 放入 Bundle，並由 Task 的 `output` 參照。

Task 有兩種狀態，讀取時需區分：

| 欄位 | 表示的狀態 |
|---|---|
| `Task.status` | API 執行進度：待處理 `requested`、處理中 `in-progress`、失敗 `failed`、完成 `completed` |
| `Task.businessStatus` | 分案的核銷狀況，使用支付審查定義的 0 至 6 代碼 |

#### 分案審核明細與查詢 B 回覆

查詢 B 的回覆使用 [LTCBundleFeeAuditResponse](StructureDefinition-LTCBundleFeeAuditResponse.html)，其中一份 [LTCClaimResponseFeeAudit](StructureDefinition-LTCClaimResponseFeeAudit.html) 記錄一個核銷案號的審核結果。該案可能包含多筆申報 Claim。

| 審核資料 | 填寫位置 |
|---|---|
| 分案的申請核銷、核定、政策鼓勵、核增、核減及暫付金額 | `ClaimResponse.total`，每種金額各填一筆，幣別使用 `TWD` |
| 通過的服務紀錄 | `ClaimResponse.item` |
| 未通過的服務紀錄及錯誤原因 | `ClaimResponse.error` |
| 審核後另行加計的 A 碼給付 | `ClaimResponse.addItem` |
| 承辦審核意見 | `ClaimResponse.disposition` |
| 核增、核減原因 | `ClaimResponse.processNote` |

審核結果中的服務紀錄識別資料填在 [recordRef Extension](StructureDefinition-Ext-TW-LTC-FeeAudit-RecordRef.html)。比對原申報紀錄時，請讀取這裡的識別碼、來源系統與交易序號；`itemSequence` 不能用來存放字串識別碼，也不足以識別跨 Claim 的服務紀錄。

統計筆數、個案數、暫付申請狀態、已處理交易序號及承辦人員填在 [auditSummary Extension](StructureDefinition-Ext-TW-LTC-FeeAudit-AuditSummary.html)。`requestor` 表示提出申報的服務提供方，審核承辦人員應填在 `auditSummary`。

總表與清冊的下載網址填在 [docUrl Extension](StructureDefinition-Ext-TW-LTC-FeeAudit-DocUrl.html)，每份文件各填一筆，包含文件類別與網址。

目前 Profile 要求 `ClaimResponse.patient` 填入一個 Patient Reference。核銷案號含多位個案時，依 Profile 說明填入代表個案或分案受理的個案；各筆服務紀錄的個案資料仍須回查原申報 Claim，不能只依此欄位判斷整案的個案名單。

### 原 API 欄位對照

以下保留原規格書的欄位名稱，供資料轉換時查閱。方括號表示 Profile 定義的 Slice 名稱，例如 `identifier[objid]`；JSON 中仍使用 `identifier` 陣列，依 Profile 指定的欄位值區分各個 Slice。

#### 服務紀錄申報

| 原 API 區段 | 規格書欄位 | FHIR 欄位與填寫方式 |
|---|---|---|
| FeeApply／apply_info | 支審年月 `writeoff_yyyymm` | `Claim.identifier[yyyymm].value` |
| FeeApply／apply_info | 交易序號 `trans_no` | `Bundle.identifier.value`；各筆 `Claim.identifier[transNo].value` 填入相同序號 |
| FeeApply／apply_info | 服務記錄筆數 `records`、申請個案數 `cases` | 由 `Bundle.entry` 中 Claim 的筆數、不重複 `Claim.patient` 的數量計算，不另設欄位 |
| FeeApply／apply_info | 服務紀錄金額 `amount`（本次申報總金額） | 由 `Bundle.entry` 中各 `Claim.total` 加總計算，不另設欄位 |
| FeeApply／case_svc_records | 識別碼 `objid` | `Claim.identifier[objid].value` |
| FeeApply／case_svc_records | 個案身分證字號 `idn` | `Claim.patient` → `Patient.identifier` |
| FeeApply／case_svc_records | 服務日期 `svc_dt`、起訖時段 `start_hh`／`start_mm`／`end_hh`／`end_mm` | `Claim.item.servicedPeriod.start`／`.end` |
| FeeApply／case_svc_records | 照顧組合代碼 `gov_item_cd` | `Claim.item.productOrService`，在 `coding` 填入[臺灣長照服務項目代碼](CodeSystem-cs-tw-ltc-service-item.html) |
| FeeApply／case_svc_records | 服務類別 `svc_fee_tp`（1 補助、2 自費） | `Claim.item.category` |
| FeeApply／case_svc_records | 單價 `price` | `Claim.item.unitPrice` |
| FeeApply／case_svc_records | 數量 `amount` | `Claim.item.quantity` |
| FeeApply／case_svc_records | 本筆服務紀錄的申報金額（單價 × 數量） | `Claim.total`；服務明細小計填在 `Claim.item.net` |
| FeeApply／case_svc_records | 照顧服務員身分證字號 `svc_user_no1`～`svc_user_no5` | `Claim.careTeam.provider` → `Practitioner.identifier` |
| FeeApply／case_svc_records | 服務提供單位（申報單位） | `Claim.provider` → `Organization` |
| FeeApply／case_svc_records | 服務項目 `svc_item`（AA00／AA03 必填，可複選） | `Claim.supportingInfo[svcItem].code` |
| FeeApply／case_svc_records | 服務對象 `svc_people`（可複選） | `Claim.supportingInfo[svcPeople].code` |
| FeeApply／case_svc_records | 服務重點 `svc_point`（可複選） | `Claim.supportingInfo[svcPoint].code` |
| FeeApply／case_svc_records | 服務內容 `svc_content`、追蹤服務適應與介入情形 `svc_trace`、各項服務目標及整體計畫目標達成情形 `svc_goal`、整體計畫的適切性及需求異動 `svc_suitable` | `Claim.supportingInfo[svcContent／svcTrace／svcGoal／svcSuitable].valueString` |
| FeeApply／case_svc_records | 專業服務復能目標達成情形 `svcc_goal_type` | `Claim.supportingInfo[svccGoalType].code` |
| FeeApply／case_svc_records | 專業服務復能目標 `svcc_goal`、指導對象 `svcc_content_target`、服務內容 `svcc_content`、指導建議摘要 `svcc_suggest` | `Claim.supportingInfo[svccGoal／svccContentTarget／svccContent／svccSuggest].valueString` |
| FeeApply／case_svc_records | 提供專業服務單位 `svc_unit`（AA03 必填） | `Claim.supportingInfo[svcUnit].valueString`，填入 C 單位的單位代碼 |
| FeeApply／case_svc_records | 出發地 `addr1`、目的地 `addr2`（BD03／DA01） | `Claim.supportingInfo[addrFrom／addrTo].valueReference` → `Location`（地點名稱／地址填在 `Location.name`／`Location.address`） |
| FeeApply／case_svc_records | 出發地／目的地經緯度 `addrlat1`、`addrlng1`、`addrlat2`、`addrlng2` | `Location.position.latitude`／`Location.position.longitude` |
| FeeApply／case_svc_records | 車號 `car_no`、駕駛員 `driver`（BD03／DA01） | `Claim.supportingInfo[carNo／driver].valueString` |
| FeeApply／case_svc_records | 里程數 `milage`（BD03／DA01 必填） | `Claim.supportingInfo[milage].valueQuantity`（建議單位公里 km） |
| FeeApply／case_svc_records | 社區式服務交通接送服務使用類型 `bd03_type`（BD03 必填） | `Claim.supportingInfo[bd03Type].code` |
| FeeApply／case_svc_records | 臨終日照顧 `last_svc`、訪視／服務未遇 `missed_visit`、陪同施打 COVID-19 疫苗 `apply_covid19`、是否申報 AA03 `apply_aa03`、是否申報 AA09 `apply_aa09` | `Claim.supportingInfo[lastSvc／missedVisit／applyCovid19／applyAA03／applyAA09].valueBoolean`（Y 對應 `true`、N 對應 `false`） |
| FeeApply／case_svc_records | AA10 申報狀態 `aa10_status` | `Claim.supportingInfo[aa10Status].code` |
| FeeApply／case_svc_records | 備註 `remark` | `Claim.supportingInfo[remark].valueString` |

#### 交易任務與分案狀態

| 原 API 區段 | 規格書欄位 | FHIR 欄位與填寫方式 |
|---|---|---|
| 共用 | API Function `function`（FeeApply、ObjDel、appCompletionNotice、appCancel、CancelResultResponse） | `Task.code` |
| 共用 | 支審年月 `writeoff_yyyymm`、交易序號 `trans_no` | `Task.identifier[yyyymm].value`、`Task.groupIdentifier.value` |
| 查詢 A／webapi_process_info | API 執行狀態 `status`（0 待處理、1 處理中、3 錯誤、4 處理完成） | `Task.status`（依序對應 `requested`、`in-progress`、`failed`、`completed`） |
| 查詢 A／case_infos | 核銷狀況 `status`（0～6） | `Task.businessStatus` |
| 查詢 A／webapi_process_info | 批次處理結果 `batch_proc_result`、處理筆數 `batch_proc_num`、成功筆數 `batch_succ_num`、失敗筆數 `batch_err_num` | `Task.output[batchProcResult／batchProcNum／batchSuccNum／batchErrNum]` |
| 查詢 A／webapi_process_info | 分案異常資料 `exception_records`（`objid`、`err_code`、`err_message`） | `Task.output[exceptionRecords].valueReference` → `OperationOutcome` |
| 查詢 A／webapi_process_info | 服務紀錄刪除成功資料 `delete_records` | `Task.output[deleteRecords].valueString`（逐筆 `objid`） |
| 查詢 A／webapi_process_info | 服務紀錄刪除失敗資料 `delete_exception_records` | `Task.output[deleteExceptionRecords].valueReference` → `OperationOutcome` |
| ObjDel／case_svc_records | 識別碼 `objid`（要刪除者） | `Task.input[objid].valueString` |
| appCompletionNotice／city_info | 縣市代碼 `city_cd`、案件編號 `case_no` | `Task.input[cityCd].valueString`、`Task.input[caseNo].valueString`。每個縣市分別建立 Task，同次作業共用 `Task.groupIdentifier` |
| appCancel／cancel_info | 縣市代碼 `city_cd`、核銷案號 `case_no`（選填） | `Task.input[cityCd].valueString`、`Task.input[caseNo].valueString` |
| CancelResultResponse | 所要取消結果回報之交易序號 `cancel_trans_no` | `Task.input[cancelTransNo].valueString`；可另以 `Task.partOf` 參照原交易單 Task |
| 共用 | 檢核錯誤代碼 `err_code`、錯誤原因 `err_message` | `OperationOutcome.issue.details.coding`、`issue.details.text` |

#### 分案審核明細

| 原 API 區段 | 規格書欄位 | FHIR 欄位與填寫方式 |
|---|---|---|
| 查詢 B／回覆明細 | 核銷案號 `case_no` | `ClaimResponse.identifier[caseNo].value` |
| 查詢 B／回覆明細 | 總表版次 `doc_ver`、版次時間 `ver_dt` | `ClaimResponse.identifier[docVer].value`、`ClaimResponse.created` |
| 查詢 B／回覆明細 | 簽證編號 `acc_num` | `ClaimResponse.identifier[accNum].value` |
| 查詢 B／回覆明細 | 承辦人員 `audit_man`、承辦審核意見 `audit_reason` | `ClaimResponse.extension[auditSummary].extension[auditMan].valueString`、`ClaimResponse.disposition` |
| 查詢 B／回覆明細 | 服務記錄筆數 `records`、個案數 `cases`、核定個案數 `approve_case_num`、核定服務記錄數 `approve_record_count`、分案已處理之單號 `trans_nos` | `ClaimResponse.extension[auditSummary]` 的對應子項目 |
| 查詢 B／回覆明細 | 申請核銷金額 `amount` | `ClaimResponse.total`，`total.category = submitted` |
| 查詢 B／回覆明細 | 核定金額 `approve_fee` | `ClaimResponse.total`，`total.category = approveFee` |
| 查詢 B／回覆明細 | 政策鼓勵金額 `a_svc_fee` | `ClaimResponse.total`，`total.category = aSvcFee` |
| 查詢 B／回覆明細 | 核增金額 `inc_in_acc` | `ClaimResponse.total`，`total.category = incInAcc`；核增原因 `inc_in_reason` 以 `ClaimResponse.processNote.text` 表達 |
| 查詢 B／回覆明細 | 核減金額 `dec_in_acc` | `ClaimResponse.total`，`total.category = decInAcc`；核減原因 `dec_in_reason` 以 `ClaimResponse.processNote.text` 表達 |
| 查詢 B／回覆明細 | 分案暫付金額 `temp_payment_fee`、暫付申請狀態 `temp_payment_status` | `ClaimResponse.total`，`total.category = tempPaymentFee`；狀態以 `ClaimResponse.extension[auditSummary].extension[tempPaymentStatus].valueString` 表達 |
| 查詢 B／approve_records | 審核通過服務記錄（識別碼 `objid`、來源系統別 `source_system`、交易序號 `trans_no`） | `ClaimResponse.item`，識別資料填在 `item.extension[recordRef]` |
| 查詢 B／approve_records | 單價 `price` | `ClaimResponse.item.adjudication`，`category = price` |
| 查詢 B／approve_records | 自付額 `copayment` | `ClaimResponse.item.adjudication`，`category = copayment` |
| 查詢 B／a_svc_records | A 碼加成資料區（A 碼 `a_gov_item_cd`、單價 `price`、所加成之 `ref_objid`／`ref_source_system`） | `ClaimResponse.addItem.productOrService`、`addItem.adjudication`（`category = price`）、`addItem.extension[recordRef]` |
| 查詢 B／err_records | 錯誤服務記錄（識別碼 `objid`、來源系統別 `source_system`、交易序號 `trans_no`、錯誤碼 `err_code`、錯誤原因 `err_message`） | `ClaimResponse.error.extension[recordRef]`、`error.code`（綁定支付審查錯誤代碼）、`error.code.text` |
| 查詢 B／回覆明細 | 總表／清冊下載路徑 `temp_payment_doc_url`、`case_summary_notice_url`、`case_svc_list_url`、`case_svc_list_excel_url`、`case_a_svc_list_url`、`case_a_svc_list_excel_url`、`case_err_list_url`、`case_err_list_excel_url` | `ClaimResponse.extension[docUrl]`（子元素 `docType` + `url`），逐份文件一筆 |
| 查詢 B／回覆明細 | 縣市代碼 `city_cd` | `ClaimResponse.insurer` → 受理本分案的縣市主管機關 Organization |

### 邏輯模型與完整規格

邏輯模型保留原 API 的欄位名稱、型態、長度及填寫條件。各模型的「Mappings」頁籤提供 FHIR 欄位對照。

| 資料範圍 | 邏輯模型 |
|---|---|
| 服務紀錄申報 | [LTCFeeApplyModel](StructureDefinition-LTCFeeApplyModel.html) |
| 分案狀態、交易結果及各項異動操作 | [LTCFeeAuditStatusModel](StructureDefinition-LTCFeeAuditStatusModel.html) |
| 分案審核明細 | [LTCFeeAuditDetailModel](StructureDefinition-LTCFeeAuditDetailModel.html) |

各 Profile 的「Examples」頁籤可查看填寫範例，也可從[範例總覽](examples.html)查找。

### 術語查詢

CodeSystem 列出代碼定義，ValueSet 列出欄位可使用的代碼範圍。

| 用途 | CodeSystem | ValueSet |
|---|---|---|
| 服務類別 | [代碼定義](CodeSystem-cs-tw-ltc-feeaudit-fee-type.html) | [值集](ValueSet-vs-tw-ltc-feeaudit-fee-type.html) |
| 服務項目 | [代碼定義](CodeSystem-cs-tw-ltc-feeaudit-svc-item.html) | [值集](ValueSet-vs-tw-ltc-feeaudit-svc-item.html) |
| 服務對象 | [代碼定義](CodeSystem-cs-tw-ltc-feeaudit-svc-people.html) | [值集](ValueSet-vs-tw-ltc-feeaudit-svc-people.html) |
| 服務重點 | [代碼定義](CodeSystem-cs-tw-ltc-feeaudit-svc-point.html) | [值集](ValueSet-vs-tw-ltc-feeaudit-svc-point.html) |
| 專業服務復能目標達成情形 | [代碼定義](CodeSystem-cs-tw-ltc-feeaudit-svcc-goal-type.html) | [值集](ValueSet-vs-tw-ltc-feeaudit-svcc-goal-type.html) |
| 社區式服務交通接送服務使用類型 | [代碼定義](CodeSystem-cs-tw-ltc-feeaudit-bd03-type.html) | [值集](ValueSet-vs-tw-ltc-feeaudit-bd03-type.html) |
| AA10 申報狀態 | [代碼定義](CodeSystem-cs-tw-ltc-feeaudit-aa10-status.html) | [值集](ValueSet-vs-tw-ltc-feeaudit-aa10-status.html) |
| 服務紀錄補充資訊類別 | [代碼定義](CodeSystem-cs-tw-ltc-feeaudit-supporting-info.html) | [值集](ValueSet-vs-tw-ltc-feeaudit-supporting-info.html) |
| 核銷狀況 | [代碼定義](CodeSystem-cs-tw-ltc-feeaudit-case-status.html) | [值集](ValueSet-vs-tw-ltc-feeaudit-case-status.html) |
| API 執行狀況 | [代碼定義](CodeSystem-cs-tw-ltc-feeaudit-api-status.html) | [值集](ValueSet-vs-tw-ltc-feeaudit-api-status.html) |
| API 功能 | [代碼定義](CodeSystem-cs-tw-ltc-feeaudit-api-function.html) | [值集](ValueSet-vs-tw-ltc-feeaudit-api-function.html) |
| 核定金額類別 | [代碼定義](CodeSystem-cs-tw-ltc-feeaudit-adjudication.html) | [值集](ValueSet-vs-tw-ltc-feeaudit-adjudication.html) |
| 清冊文件類別 | [代碼定義](CodeSystem-cs-tw-ltc-feeaudit-doc-type.html) | [值集](ValueSet-vs-tw-ltc-feeaudit-doc-type.html) |
| 錯誤代碼 | [代碼定義](CodeSystem-cs-tw-ltc-feeaudit-error-code.html) | [值集](ValueSet-vs-tw-ltc-feeaudit-error-code.html) |
| API 回覆結果代碼 | [代碼定義](CodeSystem-cs-tw-ltc-feeaudit-rtncode.html) | [值集](ValueSet-vs-tw-ltc-feeaudit-rtncode.html) |
| 縣市代碼 | [代碼定義](CodeSystem-cs-tw-ltc-feeaudit-city.html) | [值集](ValueSet-vs-tw-ltc-feeaudit-city.html) |

API 回覆結果代碼、API 執行狀況及縣市代碼這三組術語供原系統資料對照使用，未直接綁定 Profile 欄位。API 執行狀況轉成 `Task.status` 的標準代碼；縣市代碼則填入 Organization 的識別碼或 `Task.input[cityCd]` 的字串值。

縣市主管機關的 `Organization.identifier.system` 使用 `http://ltc-ig.fhir.tw/identifier/feeaudit/city-cd`。支付審查的縣市代碼與 TW Core 郵遞區號用途不同，請勿混用。

核定金額類別使用本 IG 的代碼，相關欄位綁定強度為 `extensible`。與其他系統交換時，需確認所用代碼的定義與值集要求。

### 傳輸設定

本頁規範申報與審核資料的 FHIR 表達方式。原 API 的傳輸封套與回覆封套不另建 FHIR 資源，其欄位如下：

| 封套 | 原 API 欄位 |
|---|---|
| 傳送 | `unitNo`、`requestDt`、`sourceSystem`、`apdata`、`checksum` |
| 回覆 | `rtncode`、`responseDt`、`errmsg`、`result`、`checksum`、`rtnSeq` |

校驗碼計算、Base64 編碼與 IP 白名單設定，請依原 API 規格書辦理。回覆封套的 `rtncode` 可查閱 [API 回覆結果代碼](ValueSet-vs-tw-ltc-feeaudit-rtncode.html)。
