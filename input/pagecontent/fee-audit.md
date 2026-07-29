### 概述

<div style="padding-left: 10px;">
<p>本模組對應《衛生福利部 支付審核系統 API 規格說明書（照管平台）v2.2.1》，將長照服務提供單位（含系統商）與衛生福利部支付審核系統（以下簡稱支審系統）之間的申報與審查介接，以 HL7 FHIR R4.0.1 標準重新表達，供實作者以 FHIR 資源進行支付審查相關的資料交換。</p>

<p>本模組的設計原則比照<strong>臺灣健保事前審查實作指引（TWPAS）</strong>的作法，採「<strong>先建邏輯模型、再對應 FHIR 資源</strong>」的兩階段路徑：</p>

<ol>
<li><strong>邏輯模型（Logical Model）階段</strong>：將既有 API 規格書中以 JSON 電文定義的 Schema（<code>apply_info</code>、<code>case_svc_records</code>、查詢 A／查詢 B 之回覆明細等），逐欄轉為 FHIR Logical Model，保留規格書原有的中文欄位名稱、英文欄位名稱、型態、長度與必填規則，讓熟悉原規格書的實作者可直接對照閱讀。</li>
<li><strong>FHIR 對應（Mapping）階段</strong>：在每個邏輯模型上掛載 <code>Mapping</code>，指出各欄位實際落到哪一個 Profile 的哪一個 element；再以 Bundle 打包申報交易、以 ClaimResponse 與 Task 表達審查回覆與交易處理結果。</li>
</ol>

<p>採用此路徑的理由是：支審系統的電文結構是既成事實，短期內不會為了 FHIR 而改動；邏輯模型讓「規格書欄位」與「FHIR element」之間保有一層可追溯的對照，既不必扭曲原規格書的欄位語意，也不必在 FHIR 端新增大量非標準的 Extension。實作者可先以邏輯模型確認資料齊備，再依 Mapping 頁籤將資料落入對應 Profile。</p>

<p>本模組於<strong>申報端（Claim、Task）</strong>的所有識別碼（服務紀錄識別碼 <code>objid</code>、交易序號 <code>trans_no</code>、支審年月 <code>writeoff_yyyymm</code>、核銷案號 <code>case_no</code>、總表版次 <code>doc_ver</code>、簽證編號 <code>acc_num</code>）一律以 <code>identifier</code> 的具名切片（slice）承載，並以 <code>identifier.system</code> 區分，不另行新增 Extension。<strong>審查回覆端（ClaimResponse）</strong>因 <code>ClaimResponse.item</code>、<code>error</code>、<code>addItem</code> 三個 BackboneElement 於 FHIR R4 均無 <code>identifier</code> 元素，其逐筆服務記錄之識別資訊須以 Extension 承載，詳見下方「設計決策說明」第五節。</p>
</div>

### 資料交換流程

<div style="padding-left: 10px;">
<p>規格書共定義七支 API，依業務流程可分為三個階段：<strong>申報（FeeApply、ObjDel、appCompletionNotice）</strong>、<strong>查詢（查詢 A、查詢 B）</strong> 與 <strong>異動（appCancel、CancelResultResponse）</strong>。</p>
</div>

#### 流程概要

<div style="padding-left: 10px;">
<ol>
<li><strong>申報服務紀錄</strong>：服務提供單位於同一支審年月內可多次執行 <code>FeeApply</code>，每個交易序號每次最多申報 5,000 筆個案服務紀錄。每筆服務紀錄具唯一識別碼（<code>objid</code>）；識別碼不存在時於支審系統新增，已存在時則更新。</li>
<li><strong>刪除誤申報之服務紀錄</strong>：以 <code>ObjDel</code> 針對 <code>objid</code> 刪除。</li>
<li><strong>申報確認通知</strong>：服務紀錄確認無誤後執行 <code>appCompletionNotice</code>，依案件編號通知縣市承辦人員收件審查。執行後支審系統不再受理該案件之服務紀錄申報及異動。</li>
<li><strong>查詢分案審核狀態（查詢 A）</strong>：取得該申報年月各分案之核銷案號、核銷狀況、總表版次、簽證編號，以及各交易單的 API 執行結果（含分案異常資料、服務紀錄刪除成功／失敗資料）。每次查詢間隔至少 20 分鐘。</li>
<li><strong>查詢分案審核明細（查詢 B）</strong>：須先執行查詢 A 取得核銷案號、核銷狀況與總表版次；僅在核銷案號為新案號，或核銷狀況、總表版次有異動時才執行查詢 B，取得核定金額、審核通過／錯誤服務記錄、A 碼加成資料與各式清冊下載路徑。</li>
<li><strong>撤回服務紀錄</strong>：以 <code>appCancel</code> 撤回本月該來源系統別所申報之服務紀錄；未傳入縣市代碼與核銷案號時為整月全撤，傳入時則限定該核銷案號。承辦人已收件處理者不允許撤回。</li>
<li><strong>取消交易單處理結果回報</strong>：以 <code>CancelResultResponse</code> 取消查詢 A 之 API 執行結果資料中某一交易單的處理結果回報。</li>
</ol>
</div>

#### 七支 API 與 FHIR 資源對照

| # | API（URL） | 中文名稱 | 方向 | 傳送資料之 FHIR 表達 | 回覆明細之 FHIR 表達 |
|---|---|---|---|---|---|
| 一 | `……/FeeApply` | 服務記錄申報 | 單位 → 支審 | [LTCBundleFeeApply](StructureDefinition-LTCBundleFeeApply.html)（內含多筆 [LTCClaimFeeApply](StructureDefinition-LTCClaimFeeApply.html)） | 無回覆明細；檢核錯誤以 [LTCOperationOutcomeFeeAudit](StructureDefinition-LTCOperationOutcomeFeeAudit.html) 表達 |
| 二 | `……/ObjDel` | 服務紀錄刪除 | 單位 → 支審 | [LTCTaskFeeAudit](StructureDefinition-LTCTaskFeeAudit.html)（`code = ObjDel`，`input[objid]` 逐筆列出要刪除之識別碼） | 無回覆明細 |
| 三 | `……/appCompletionNotice` | 申報確認通知 | 單位 → 支審 | [LTCTaskFeeAudit](StructureDefinition-LTCTaskFeeAudit.html)（`code = appCompletionNotice`，`input[cityCd]`、`input[caseNo]`） | 無回覆明細 |
| 四 | `……/appResultQuery`（`query_type = A`） | （查詢A）服務單位各分案審核狀態查詢 | 單位 → 支審 | 查詢參數：支審年月、交易序號、查詢類別 | [LTCBundleFeeAuditStatus](StructureDefinition-LTCBundleFeeAuditStatus.html)（內含 [LTCTaskFeeAudit](StructureDefinition-LTCTaskFeeAudit.html) 與 [LTCOperationOutcomeFeeAudit](StructureDefinition-LTCOperationOutcomeFeeAudit.html)） |
| 五 | `……/appResultQuery`（`query_type = B`） | （查詢B）分案審核明細查詢 | 單位 → 支審 | 查詢參數：支審年月、交易序號、查詢類別、縣市代碼、核銷案號 | [LTCBundleFeeAuditResponse](StructureDefinition-LTCBundleFeeAuditResponse.html)（內含 [LTCClaimResponseFeeAudit](StructureDefinition-LTCClaimResponseFeeAudit.html) 與 [LTCOperationOutcomeFeeAudit](StructureDefinition-LTCOperationOutcomeFeeAudit.html)） |
| 六 | `……/appCancel` | 撤回服務記錄 | 單位 → 支審 | [LTCTaskFeeAudit](StructureDefinition-LTCTaskFeeAudit.html)（`code = appCancel`，選填 `input[cityCd]`、`input[caseNo]`） | 無回覆明細 |
| 七 | `……/CancelResultResponse` | 取消交易單處理結果回報 | 單位 → 支審 | [LTCTaskFeeAudit](StructureDefinition-LTCTaskFeeAudit.html)（`code = CancelResultResponse`，`input[cancelTransNo]`，並以 `partOf` 參照原交易單） | 無回覆明細 |

<div style="padding-left: 10px;">
<p>七支 API 共用的傳輸封套（<code>unitNo</code>、<code>requestDt</code>、<code>sourceSystem</code>、<code>apdata</code>、<code>checksum</code>）與回覆封套（<code>rtncode</code>、<code>responseDt</code>、<code>errmsg</code>、<code>result</code>、<code>checksum</code>、<code>rtnSeq</code>）屬傳輸層機制，於本 IG 中不另建 FHIR 資源表達；<code>rtncode</code> 之取值另建 <a href="ValueSet-vs-tw-ltc-feeaudit-rtncode.html">支付審查－API 回覆結果代碼</a>，供實作者於傳輸層對照使用。</p>
</div>

### API 與 FHIR 對照表

#### 一、服務記錄申報（FeeApply）之核心欄位

| API／區段 | 規格書欄位 | FHIR 資源與欄位 | 本 IG Profile |
|---|---|---|---|
| FeeApply／apply_info | 支審年月 `writeoff_yyyymm` | `Claim.identifier[yyyymm].value` | [LTCClaimFeeApply](StructureDefinition-LTCClaimFeeApply.html) |
| FeeApply／apply_info | 交易序號 `trans_no` | `Bundle.identifier.value`；並複寫於 `Claim.identifier[transNo].value` | [LTCBundleFeeApply](StructureDefinition-LTCBundleFeeApply.html)、[LTCClaimFeeApply](StructureDefinition-LTCClaimFeeApply.html) |
| FeeApply／apply_info | 服務記錄筆數 `records`、申請個案數 `cases` | 由 `Bundle.entry` 中 Claim 之筆數、不重複 `Claim.patient` 之數量推得，不另設欄位 | [LTCBundleFeeApply](StructureDefinition-LTCBundleFeeApply.html) |
| FeeApply／apply_info | 服務紀錄金額 `amount`（本批次申報總金額） | 由 `Bundle.entry` 中各 `Claim.total` 合計推得，不另設欄位 | [LTCBundleFeeApply](StructureDefinition-LTCBundleFeeApply.html) |
| FeeApply／case_svc_records | 識別碼 `objid` | `Claim.identifier[objid].value` | [LTCClaimFeeApply](StructureDefinition-LTCClaimFeeApply.html) |
| FeeApply／case_svc_records | 個案身分證字號 `idn` | `Claim.patient` → `Patient.identifier` | [LTCClaimFeeApply](StructureDefinition-LTCClaimFeeApply.html)、[LTCPatient](StructureDefinition-LTCPatient.html) |
| FeeApply／case_svc_records | 服務日期 `svc_dt`、起訖時段 `start_hh`／`start_mm`／`end_hh`／`end_mm` | `Claim.item.servicedPeriod.start`／`.end` | [LTCClaimFeeApply](StructureDefinition-LTCClaimFeeApply.html) |
| FeeApply／case_svc_records | 照顧組合代碼 `gov_item_cd` | `Claim.item.productOrService`（綁定長照服務項目 ValueSet；A 單位個案管理服務紀錄之 `AA00` 已收錄於 [臺灣長照服務項目代碼](CodeSystem-cs-tw-ltc-service-item.html)，須以 `coding` 承載方能觸發 invariant `ltc-feeaudit-3` 之條件必填檢核） | [LTCClaimFeeApply](StructureDefinition-LTCClaimFeeApply.html) |
| FeeApply／case_svc_records | 服務類別 `svc_fee_tp`（1 補助、2 自費） | `Claim.item.category` | [LTCClaimFeeApply](StructureDefinition-LTCClaimFeeApply.html) |
| FeeApply／case_svc_records | 單價 `price` | `Claim.item.unitPrice` | [LTCClaimFeeApply](StructureDefinition-LTCClaimFeeApply.html) |
| FeeApply／case_svc_records | 數量 `amount` | `Claim.item.quantity` | [LTCClaimFeeApply](StructureDefinition-LTCClaimFeeApply.html) |
| FeeApply／case_svc_records | 該筆服務紀錄之申報金額（單價 × 數量） | `Claim.total`（另 `Claim.item.net` 為該筆服務明細之小計） | [LTCClaimFeeApply](StructureDefinition-LTCClaimFeeApply.html) |
| FeeApply／case_svc_records | 照顧服務員身分證字號 `svc_user_no1`～`svc_user_no5` | `Claim.careTeam.provider` → `Practitioner.identifier` | [LTCClaimFeeApply](StructureDefinition-LTCClaimFeeApply.html)、[LTCPractitioner](StructureDefinition-LTCPractitioner.html) |
| FeeApply／case_svc_records | 服務提供單位（申報單位） | `Claim.provider` → `Organization` | [LTCClaimFeeApply](StructureDefinition-LTCClaimFeeApply.html)、[LTC Organization](StructureDefinition-Organization-twltc.html) |
| FeeApply／case_svc_records | 服務項目 `svc_item`（AA00／AA03 必填，可複選） | `Claim.supportingInfo[svcItem].code` | [LTCClaimFeeApply](StructureDefinition-LTCClaimFeeApply.html) |
| FeeApply／case_svc_records | 服務對象 `svc_people`（可複選） | `Claim.supportingInfo[svcPeople].code` | [LTCClaimFeeApply](StructureDefinition-LTCClaimFeeApply.html) |
| FeeApply／case_svc_records | 服務重點 `svc_point`（可複選） | `Claim.supportingInfo[svcPoint].code` | [LTCClaimFeeApply](StructureDefinition-LTCClaimFeeApply.html) |
| FeeApply／case_svc_records | 服務內容 `svc_content`、追蹤服務適應與介入情形 `svc_trace`、各項服務目標及整體計畫目標達成情形 `svc_goal`、整體計畫的適切性及需求異動 `svc_suitable` | `Claim.supportingInfo[svcContent／svcTrace／svcGoal／svcSuitable].valueString` | [LTCClaimFeeApply](StructureDefinition-LTCClaimFeeApply.html) |
| FeeApply／case_svc_records | 專業服務復能目標達成情形 `svcc_goal_type` | `Claim.supportingInfo[svccGoalType].code` | [LTCClaimFeeApply](StructureDefinition-LTCClaimFeeApply.html) |
| FeeApply／case_svc_records | 專業服務復能目標 `svcc_goal`、指導對象 `svcc_content_target`、服務內容 `svcc_content`、指導建議摘要 `svcc_suggest` | `Claim.supportingInfo[svccGoal／svccContentTarget／svccContent／svccSuggest].valueString` | [LTCClaimFeeApply](StructureDefinition-LTCClaimFeeApply.html) |
| FeeApply／case_svc_records | 提供專業服務單位 `svc_unit`（AA03 必填） | `Claim.supportingInfo[svcUnit].valueString`（內容為 C 單位之單位代碼） | [LTCClaimFeeApply](StructureDefinition-LTCClaimFeeApply.html) |
| FeeApply／case_svc_records | 出發地 `addr1`、目的地 `addr2`（BD03／DA01） | `Claim.supportingInfo[addrFrom／addrTo].valueReference` → `Location`（地點名稱／地址置於 `Location.name`／`Location.address`） | [LTCClaimFeeApply](StructureDefinition-LTCClaimFeeApply.html)、[LTC Location Fee Audit Place](StructureDefinition-LTCLocationFeeAuditPlace.html) |
| FeeApply／case_svc_records | 出發地／目的地經緯度 `addrlat1`、`addrlng1`、`addrlat2`、`addrlng2` | 前述 `Location.position.latitude`／`.longitude` | [LTC Location Fee Audit Place](StructureDefinition-LTCLocationFeeAuditPlace.html) |
| FeeApply／case_svc_records | 車號 `car_no`、駕駛員 `driver`（BD03／DA01） | `Claim.supportingInfo[carNo／driver].valueString` | [LTCClaimFeeApply](StructureDefinition-LTCClaimFeeApply.html) |
| FeeApply／case_svc_records | 里程數 `milage`（BD03／DA01 必填） | `Claim.supportingInfo[milage].valueQuantity`（建議單位公里 km） | [LTCClaimFeeApply](StructureDefinition-LTCClaimFeeApply.html) |
| FeeApply／case_svc_records | 社區式服務交通接送服務使用類型 `bd03_type`（BD03 必填） | `Claim.supportingInfo[bd03Type].code` | [LTCClaimFeeApply](StructureDefinition-LTCClaimFeeApply.html) |
| FeeApply／case_svc_records | 臨終日照顧 `last_svc`、訪視／服務未遇 `missed_visit`、陪同施打 COVID-19 疫苗 `apply_covid19`、是否申報 AA03 `apply_aa03`、是否申報 AA09 `apply_aa09` | `Claim.supportingInfo[lastSvc／missedVisit／applyCovid19／applyAA03／applyAA09].valueBoolean`（Y 對應 `true`、N 對應 `false`） | [LTCClaimFeeApply](StructureDefinition-LTCClaimFeeApply.html) |
| FeeApply／case_svc_records | AA10 申報狀態 `aa10_status` | `Claim.supportingInfo[aa10Status].code` | [LTCClaimFeeApply](StructureDefinition-LTCClaimFeeApply.html) |
| FeeApply／case_svc_records | 備註 `remark` | `Claim.supportingInfo[remark].valueString` | [LTCClaimFeeApply](StructureDefinition-LTCClaimFeeApply.html) |

#### 二、分案審核明細（查詢B）之核定金額與審核結果

| API／區段 | 規格書欄位 | FHIR 資源與欄位 | 本 IG Profile |
|---|---|---|---|
| 查詢B／回覆明細 | 核銷案號 `case_no` | `ClaimResponse.identifier[caseNo].value` | [LTCClaimResponseFeeAudit](StructureDefinition-LTCClaimResponseFeeAudit.html) |
| 查詢B／回覆明細 | 總表版次 `doc_ver`、版次時間 `ver_dt` | `ClaimResponse.identifier[docVer].value`、`ClaimResponse.created` | [LTCClaimResponseFeeAudit](StructureDefinition-LTCClaimResponseFeeAudit.html) |
| 查詢B／回覆明細 | 簽證編號 `acc_num` | `ClaimResponse.identifier[accNum].value` | [LTCClaimResponseFeeAudit](StructureDefinition-LTCClaimResponseFeeAudit.html) |
| 查詢B／回覆明細 | 承辦人員 `audit_man`、承辦審核意見 `audit_reason` | `ClaimResponse.extension[auditSummary].auditMan`、`ClaimResponse.disposition`（`ClaimResponse.requestor` 於 FHIR R4 之語意為提出申報之服務提供方，不可用以表達審查機關之承辦人） | [LTCClaimResponseFeeAudit](StructureDefinition-LTCClaimResponseFeeAudit.html) |
| 查詢B／回覆明細 | 服務記錄筆數 `records`、個案數 `cases`、核定個案數 `approve_case_num`、核定服務記錄數 `approve_record_count`、分案已處理之單號 `trans_nos` | `ClaimResponse.extension[auditSummary]` 之對應子元素 | [分案審核統計與承辦資訊 Extension](StructureDefinition-Ext-TW-LTC-FeeAudit-AuditSummary.html) |
| 查詢B／回覆明細 | 申請核銷金額 `amount` | `ClaimResponse.total`，`total.category = submitted` | [LTCClaimResponseFeeAudit](StructureDefinition-LTCClaimResponseFeeAudit.html) |
| 查詢B／回覆明細 | 核定金額 `approve_fee` | `ClaimResponse.total`，`total.category = approveFee` | [LTCClaimResponseFeeAudit](StructureDefinition-LTCClaimResponseFeeAudit.html) |
| 查詢B／回覆明細 | 政策鼓勵金額 `a_svc_fee` | `ClaimResponse.total`，`total.category = aSvcFee` | [LTCClaimResponseFeeAudit](StructureDefinition-LTCClaimResponseFeeAudit.html) |
| 查詢B／回覆明細 | 核增金額 `inc_in_acc` | `ClaimResponse.total`，`total.category = incInAcc`；核增原因 `inc_in_reason` 以 `ClaimResponse.processNote.text` 表達 | [LTCClaimResponseFeeAudit](StructureDefinition-LTCClaimResponseFeeAudit.html) |
| 查詢B／回覆明細 | 核減金額 `dec_in_acc` | `ClaimResponse.total`，`total.category = decInAcc`；核減原因 `dec_in_reason` 以 `ClaimResponse.processNote.text` 表達 | [LTCClaimResponseFeeAudit](StructureDefinition-LTCClaimResponseFeeAudit.html) |
| 查詢B／回覆明細 | 分案暫付金額 `temp_payment_fee`、暫付申請狀態 `temp_payment_status` | `ClaimResponse.total`，`total.category = tempPaymentFee`；狀態以 `ClaimResponse.extension[auditSummary].tempPaymentStatus` 表達 | [LTCClaimResponseFeeAudit](StructureDefinition-LTCClaimResponseFeeAudit.html) |
| 查詢B／approve_records | 審核通過服務記錄（識別碼 `objid`、來源系統別 `source_system`、交易序號 `trans_no`） | `ClaimResponse.item`，識別資訊以 `item.extension[recordRef]` 承載（`item.itemSequence` 於 R4 為 positiveInt，僅為本資源內之流水序號） | [LTCClaimResponseFeeAudit](StructureDefinition-LTCClaimResponseFeeAudit.html)、[服務記錄識別資訊 Extension](StructureDefinition-Ext-TW-LTC-FeeAudit-RecordRef.html) |
| 查詢B／approve_records | 單價 `price` | `ClaimResponse.item.adjudication`，`category = price` | [LTCClaimResponseFeeAudit](StructureDefinition-LTCClaimResponseFeeAudit.html) |
| 查詢B／approve_records | 自付額 `copayment` | `ClaimResponse.item.adjudication`，`category = copayment` | [LTCClaimResponseFeeAudit](StructureDefinition-LTCClaimResponseFeeAudit.html) |
| 查詢B／a_svc_records | A 碼加成資料區（A 碼 `a_gov_item_cd`、單價 `price`、所加成之 `ref_objid`／`ref_source_system`） | `ClaimResponse.addItem.productOrService`、`addItem.adjudication`（`category = price`）、`addItem.extension[recordRef]` | [LTCClaimResponseFeeAudit](StructureDefinition-LTCClaimResponseFeeAudit.html)、[服務記錄識別資訊 Extension](StructureDefinition-Ext-TW-LTC-FeeAudit-RecordRef.html) |
| 查詢B／err_records | 錯誤服務記錄（識別碼 `objid`、來源系統別 `source_system`、交易序號 `trans_no`、錯誤碼 `err_code`、錯誤原因 `err_message`） | `ClaimResponse.error.extension[recordRef]`、`error.code`（綁定支付審查錯誤代碼）、`error.code.text` | [LTCClaimResponseFeeAudit](StructureDefinition-LTCClaimResponseFeeAudit.html)、[服務記錄識別資訊 Extension](StructureDefinition-Ext-TW-LTC-FeeAudit-RecordRef.html) |
| 查詢B／回覆明細 | 總表／清冊下載路徑 `temp_payment_doc_url`、`case_summary_notice_url`、`case_svc_list_url`、`case_svc_list_excel_url`、`case_a_svc_list_url`、`case_a_svc_list_excel_url`、`case_err_list_url`、`case_err_list_excel_url` | `ClaimResponse.extension[docUrl]`（子元素 `docType` + `url`），逐份文件一筆 | [清冊文件下載路徑 Extension](StructureDefinition-Ext-TW-LTC-FeeAudit-DocUrl.html) |
| 查詢B／回覆明細 | 縣市代碼 `city_cd` | `ClaimResponse.insurer` → 受理本分案之縣市主管機關 | [LTCClaimResponseFeeAudit](StructureDefinition-LTCClaimResponseFeeAudit.html) |

#### 三、工作流與分案審核狀態（查詢A 與異動類 API）

| API／區段 | 規格書欄位 | FHIR 資源與欄位 | 本 IG Profile |
|---|---|---|---|
| 共用 | API Function `function`（FeeApply、ObjDel、appCompletionNotice、appCancel、CancelResultResponse） | `Task.code` | [LTCTaskFeeAudit](StructureDefinition-LTCTaskFeeAudit.html) |
| 共用 | 支審年月 `writeoff_yyyymm`、交易序號 `trans_no` | `Task.identifier[yyyymm].value`、`Task.groupIdentifier.value` | [LTCTaskFeeAudit](StructureDefinition-LTCTaskFeeAudit.html) |
| 查詢A／webapi_process_info | API 執行狀態 `status`（0 待處理、1 處理中、3 錯誤、4 處理完成） | `Task.status`（依序對應 `requested`、`in-progress`、`failed`、`completed`） | [LTCTaskFeeAudit](StructureDefinition-LTCTaskFeeAudit.html) |
| 查詢A／case_infos | 核銷狀況 `status`（0～6） | `Task.businessStatus` | [LTCTaskFeeAudit](StructureDefinition-LTCTaskFeeAudit.html) |
| 查詢A／webapi_process_info | 批次處理結果 `batch_proc_result`、處理筆數 `batch_proc_num`、成功筆數 `batch_succ_num`、失敗筆數 `batch_err_num` | `Task.output[batchProcResult／batchProcNum／batchSuccNum／batchErrNum]` | [LTCTaskFeeAudit](StructureDefinition-LTCTaskFeeAudit.html) |
| 查詢A／webapi_process_info | 分案異常資料 `exception_records`（`objid`、`err_code`、`err_message`） | `Task.output[exceptionRecords].valueReference` → `OperationOutcome` | [LTCTaskFeeAudit](StructureDefinition-LTCTaskFeeAudit.html)、[LTCOperationOutcomeFeeAudit](StructureDefinition-LTCOperationOutcomeFeeAudit.html) |
| 查詢A／webapi_process_info | 服務紀錄刪除成功資料 `delete_records` | `Task.output[deleteRecords].valueString`（逐筆 `objid`） | [LTCTaskFeeAudit](StructureDefinition-LTCTaskFeeAudit.html) |
| 查詢A／webapi_process_info | 服務紀錄刪除失敗資料 `delete_exception_records` | `Task.output[deleteExceptionRecords].valueReference` → `OperationOutcome` | [LTCTaskFeeAudit](StructureDefinition-LTCTaskFeeAudit.html)、[LTCOperationOutcomeFeeAudit](StructureDefinition-LTCOperationOutcomeFeeAudit.html) |
| ObjDel／case_svc_records | 識別碼 `objid`（要刪除者） | `Task.input[objid].valueString` | [LTCTaskFeeAudit](StructureDefinition-LTCTaskFeeAudit.html) |
| appCompletionNotice／city_info | 縣市代碼 `city_cd`、案件編號 `case_no` | `Task.input[cityCd].valueString`（0..1）、`Task.input[caseNo].valueString`（0..*）。規格書之 `city_info` 為「縣市代碼 → `case_no_info`（多筆案件編號）」之巢狀結構，而 FHIR R4 之 `Task.input` 不支援巢狀 `part`，故本 IG 規定**一個縣市一筆 Task**，涉及多個縣市時依縣市拆分為多筆 Task，各 Task 共用同一交易序號（`Task.groupIdentifier`） | [LTCTaskFeeAudit](StructureDefinition-LTCTaskFeeAudit.html) |
| appCancel／cancel_info | 縣市代碼 `city_cd`、核銷案號 `case_no`（選填） | `Task.input[cityCd].valueString`、`Task.input[caseNo].valueString` | [LTCTaskFeeAudit](StructureDefinition-LTCTaskFeeAudit.html) |
| CancelResultResponse | 所要取消結果回報之交易序號 `cancel_trans_no` | `Task.input[cancelTransNo].valueString`，並以 `Task.partOf` 參照原交易單 Task | [LTCTaskFeeAudit](StructureDefinition-LTCTaskFeeAudit.html) |
| 共用 | 檢核錯誤代碼 `err_code`、錯誤原因 `err_message` | `OperationOutcome.issue.details.coding`、`issue.details.text` | [LTCOperationOutcomeFeeAudit](StructureDefinition-LTCOperationOutcomeFeeAudit.html) |

### 設計決策說明

#### 一、Bundle、Claim 與 ClaimResponse 的粒度劃分

<div style="padding-left: 10px;">
<p>本模組以三個層級對應規格書的三種粒度：</p>
<ul>
<li><strong>Bundle ＝ 一次申報交易（<code>trans_no</code>）</strong>：規格書明訂「每個交易序號每次申報最多 5000 筆個案服務紀錄」，交易序號即是一次申報的批次邊界，也是後續查詢 A 之 API 執行結果、撤回與取消結果回報所依據的單位。FHIR 中最貼近「一次傳輸的資料集合」語意的是 Bundle，故以 <a href="StructureDefinition-LTCBundleFeeApply.html">LTCBundleFeeApply</a> 承載一次申報交易，並將 <code>trans_no</code> 放在 <code>Bundle.identifier</code>。<code>records</code>（服務記錄筆數）與 <code>cases</code>（申請個案數）為統計值，可由 Bundle 內 Claim 的筆數推得，不另設欄位以避免資料重複與不一致。</li>
<li><strong>Claim ＝ 一筆服務紀錄（<code>objid</code>）</strong>：規格書規定「每筆服務記錄有唯一的識別碼（<code>objid</code>）」，且申報之識別碼不存在時新增、已存在時更新，<code>objid</code> 即是可獨立新增、更新與刪除的最小業務單元。FHIR 的 Claim 正是「向給付方請求費用」的請求資源，一筆服務紀錄即一次請款主張，故以一個 <a href="StructureDefinition-LTCClaimFeeApply.html">LTCClaimFeeApply</a> 對應一個 <code>objid</code>，並將 <code>Claim.item</code> 收緊為 1..1（一筆服務紀錄僅一個照顧組合代碼）。這樣的粒度使 <code>ObjDel</code> 的刪除、查詢 A 的分案異常回報，以及查詢 B 的逐筆審核結果都能精確指向單一資源。</li>
<li><strong>ClaimResponse ＝ 一個核銷案號（<code>case_no</code>）</strong>：支審系統的審查作業是以「分案」為單位進行，一個核銷案號涵蓋一個縣市對一家服務單位在一個支審年月的所有服務紀錄，並產出單一份總表、單一組核定金額與清冊。查詢 B 的回覆明細正是以核銷案號為主鍵。故以一個 <a href="StructureDefinition-LTCClaimResponseFeeAudit.html">LTCClaimResponseFeeAudit</a> 對應一個核銷案號，分案層級金額放在 <code>ClaimResponse.total</code>，逐筆服務紀錄的審核結果放在 <code>ClaimResponse.item</code> 與 <code>ClaimResponse.error</code>。</li>
</ul>
<p>需留意的是，Claim 與 ClaimResponse 在此並非一對一：一個核銷案號的 ClaimResponse 會回應多筆 Claim。這與 FHIR 規範相容（ClaimResponse 不強制 <code>request</code> 為必填），且忠實反映支審系統「以分案為審查單位」的實際運作。另因 FHIR R4 基底之 <code>ClaimResponse.patient</code> 為 1..1，Profile 不得放寬基數，故一個涵蓋多位個案的分案，須以代表個案填入 <code>patient</code>，實際個案數由 <code>ClaimResponse.item</code> 逐筆表達。</p>
</div>

#### 二、碼別特化欄位使用 supportingInfo 而非 Extension

<div style="padding-left: 10px;">
<p>規格書「表1：支付碼必填欄位一覽表」定義了大量隨照顧組合代碼（<code>gov_item_cd</code>）而異的條件必填欄位：申報 AA00 需填服務項目、服務對象、服務內容；申報 AA03 需填服務項目與提供專業服務單位；申報 BD03、DA01 需填出發地、目的地、車號、里程數；申報 C 碼需填專業服務復能目標相關欄位。這些欄位共約 28 項，若逐一建為 Extension，將產生 28 個非標準的結構定義，且每個都只在特定支付碼下有意義。</p>
<p>FHIR 的 <code>Claim.supportingInfo</code> 正是為此設計的元素——其定義即為「支持此次請款所需的額外資訊，內容隨情境而異」，並提供 <code>category</code>（資訊類別）、<code>code</code>（代碼值）與 <code>value[x]</code>（值）三個欄位供結構化承載。採用 <code>supportingInfo</code> 具備下列優點：</p>
<ul>
<li>使用 FHIR 標準元素，不擴充結構定義，跨系統互通性較佳；</li>
<li>條件必填規則可透過 <code>category</code> 的代碼系統（<a href="CodeSystem-cs-tw-ltc-feeaudit-supporting-info.html">支付審查－服務紀錄補充資訊類別</a>）集中管理，新增支付碼時只需擴充 CodeSystem 而不需改動 Profile 結構；</li>
<li>原始電文中可複選（以「|」分隔）的欄位如服務項目、服務對象、服務重點，可自然表達為同一 <code>category</code> 的多筆 <code>supportingInfo</code> 實例。</li>
</ul>
<p><strong>實作注意事項</strong>：FHIR R4 的 <code>Claim.supportingInfo.value[x]</code> 型別僅允許 <code>boolean</code>、<code>string</code>、<code>Quantity</code>、<code>Attachment</code> 與 <code>Reference</code>，不含 <code>CodeableConcept</code>。因此代碼型欄位（服務項目、服務對象、服務重點、專業服務復能目標達成情形、BD03 服務使用類型、AA10 申報狀態）一律以 <code>supportingInfo.code</code> 承載並綁定對應 ValueSet，該切片之 <code>value[x]</code> 則收緊為 0..0 以杜絕歧義。文字型欄位則以 <code>valueString</code>、旗標型欄位以 <code>valueBoolean</code>、地點型欄位以 <code>valueReference</code> 承載。</p>
<p>條件必填規則因隨支付碼而異，無法以基數表達，本 IG 改以四條 severity 為 <code>warning</code> 的 invariant（<code>ltc-feeaudit-1</code> 至 <code>ltc-feeaudit-4</code>）提示實作者，涵蓋 BD03／DA01、BD03、AA00 與 AA03 之必填組合。</p>
</div>

#### 三、A 碼加成使用 addItem

<div style="padding-left: 10px;">
<p>查詢 B 回覆的「A 碼加成資料區」（<code>a_svc_records</code>）是審查機關於審核後，針對已通過之服務紀錄另行加計的政策鼓勵給付項目（如 AA05），其特徵是：<strong>並非由服務提供單位原申報，而是由給付方在審核階段新增的給付項目</strong>。</p>
<p>FHIR 的 <code>ClaimResponse.item</code> 定義為「對應原始 Claim 中某一 item 的裁決結果」，必須以 <code>itemSequence</code> 指回原申報項目；而 <code>ClaimResponse.addItem</code> 的定義正是「給付方新增、原請款單中未提出的給付項目」。A 碼加成的語意與 <code>addItem</code> 完全吻合，故以 <code>addItem.productOrService</code> 承載 A 碼（<code>a_gov_item_cd</code>）、<code>addItem.adjudication</code> 承載單價（<code>price</code>），所加成之審核通過服務記錄（<code>ref_objid</code>、<code>ref_source_system</code>）則以 <code>addItem.extension[recordRef]</code> 識別——<code>addItem.itemSequence</code> 於 FHIR R4 的語意是「本服務項目所欲取代之原申請單（Claim）項目序號」，且為 <code>positiveInt</code>，無法承載長度 20 的字串識別碼。</p>
<p>若改用 <code>ClaimResponse.item</code> 表達 A 碼加成，將造成「回應了一筆原申報中不存在的項目」的語意矛盾，且驗證器會期待對應的 Claim item 存在；使用 <code>addItem</code> 則可清楚區分「單位申報的」與「機關加計的」兩類給付，也讓政策鼓勵金額（<code>a_svc_fee</code>）與核定金額（<code>approve_fee</code>）在 <code>ClaimResponse.total</code> 中的分列有據可循。</p>
</div>

#### 四、ClaimResponse 端必須另建的兩個 Extension

<div style="padding-left: 10px;">
<p>本模組僅在 FHIR R4 確實缺乏語意相符之標準元素時才新增 Extension，且集中為兩個：</p>
<ul>
<li><strong><a href="StructureDefinition-Ext-TW-LTC-FeeAudit-RecordRef.html">服務記錄識別資訊（RecordRef）</a></strong>：承載每一筆服務記錄的識別碼（<code>objid</code>／<code>ref_objid</code>）、來源系統別（<code>source_system</code>）與交易序號（<code>trans_no</code>），掛載於 <code>ClaimResponse.item</code>、<code>ClaimResponse.error</code> 與 <code>ClaimResponse.addItem</code>。<br/>
需要它的原因是：這三個 BackboneElement 於 R4 均無 <code>identifier</code> 元素，唯一可用於指涉的 <code>itemSequence</code> 型別為 <code>positiveInt</code>，且其語意是「指向 <code>ClaimResponse.request</code> 所參照之<em>單一</em> Claim 內的 <code>item.sequence</code>」。本模組一份 ClaimResponse 涵蓋一個核銷案號下的多筆服務紀錄，每筆各為獨立的 <a href="StructureDefinition-LTCClaimFeeApply.html">LTCClaimFeeApply</a> 且其 <code>item.sequence</code> 固定為 1，因此 <code>itemSequence</code> 既無法承載長度 20 的字串識別碼，也無法在跨 Claim 的情境下唯一指向任何一筆服務紀錄；改以 <code>processNote</code> 自由文字記載則喪失可運算性。</li>
<li><strong><a href="StructureDefinition-Ext-TW-LTC-FeeAudit-AuditSummary.html">分案審核統計與承辦資訊（AuditSummary）</a></strong>：承載分案層級的統計值（<code>records</code>、<code>cases</code>、<code>approve_case_num</code>、<code>approve_record_count</code>）、暫付申請狀態（<code>temp_payment_status</code>）、分案已處理之單號（<code>trans_nos</code>）與承辦人員（<code>audit_man</code>）。<br/>
需要它的原因是：統計值為整數而 <code>ClaimResponse.total</code> 為 <code>Money</code> 型別；暫付申請狀態不在 <code>ClaimResponse.outcome</code> 的取值範圍；<code>trans_nos</code> 為多筆字串而 <code>ClaimResponse.request</code> 於 R4 為 <code>0..1 Reference</code>；承辦人員是<strong>審查機關的審核承辦人</strong>，與 <code>ClaimResponse.requestor</code>（R4 定義為「負責本次請款的服務提供方」）語意方向相反，混用會使範例被誤讀為申報單位。</li>
</ul>
<p>其餘可由現有元素表達者（各項金額、核增／核減原因、錯誤代碼、清冊下載路徑之外的所有欄位）一律不新增 Extension。</p>
</div>

#### 五、申報確認、撤回等工作流使用 Task 而非 Communication

<div style="padding-left: 10px;">
<p>本模組中，<code>ObjDel</code>（服務紀錄刪除）、<code>appCompletionNotice</code>（申報確認通知）、<code>appCancel</code>（撤回服務記錄）與 <code>CancelResultResponse</code>（取消交易單處理結果回報）四支 API，以及查詢 A 回覆的 API 執行結果資料（<code>webapi_process_info</code>），一律以 <a href="StructureDefinition-LTCTaskFeeAudit.html">LTCTaskFeeAudit</a> 表達。其中「申報確認通知」一詞容易讓人直覺選用 <code>Communication</code>，但依 FHIR 的 workflow 語意分界，正確選擇是 <code>Task</code>。</p>
<p><strong>FHIR 將 workflow 資源分為 Event 與 Request 兩大類：</strong></p>
<ul>
<li><strong>Event（事件）</strong>：記錄「已經發生的事」。<code>Communication</code> 屬於 Event 類別，其定義是「資訊已在雙方之間傳遞完成」的既成事實紀錄——它描述某則訊息被送出、被接收，<strong>並不預期接收方因此採取任何行動，也沒有對應的狀態機來追蹤後續處理進度</strong>。<code>Communication.status</code> 的取值（<code>preparation</code>、<code>in-progress</code>、<code>completed</code>…）描述的是「訊息傳遞本身」的進度，而非「接收方處理該訊息的業務進度」。</li>
<li><strong>Request（請求）</strong>：表達「要求某方去做某事」。<code>Task</code> 是 Request 類別中專門用於表達「待執行之工作項目」的資源，具備 <code>status</code>（任務執行狀態）、<code>businessStatus</code>（業務狀態）、<code>input</code>（執行所需輸入參數）與 <code>output</code>（執行後產出結果）等元素，完整涵蓋一次「請求—執行—回報結果」的生命週期。</li>
</ul>
<p><strong>支審系統的這四支 API 都不是單純的訊息傳遞，而是要求對方改變系統狀態並回報結果：</strong></p>
<ul>
<li><code>appCompletionNotice</code> 執行後，支審系統必須改變案件狀態，<strong>不再受理該案件的服務紀錄申報及異動</strong>，並觸發縣市承辦人員進行收件審查；</li>
<li><code>ObjDel</code> 要求支審系統實際刪除指定 <code>objid</code> 的服務紀錄，並回報刪除成功清單（<code>delete_records</code>）與刪除失敗清單（<code>delete_exception_records</code>）；</li>
<li><code>appCancel</code> 要求支審系統撤回已申報之服務紀錄，且有明確的前置條件（承辦人已收件處理者不允許撤回）；</li>
<li><code>CancelResultResponse</code> 要求支審系統取消某一交易單的處理結果回報。</li>
</ul>
<p>更關鍵的是，規格書本身即為這些操作定義了完整的狀態機——查詢 A 回覆的 API 執行狀態（<code>status</code>：0 待處理、1 處理中、3 錯誤、4 處理完成）與批次處理結果（處理筆數、成功筆數、失敗筆數、異常明細），正是典型的任務執行狀態追蹤，而非訊息傳遞紀錄。這些狀態可直接對應 <code>Task.status</code> 的 <code>requested</code>、<code>in-progress</code>、<code>failed</code>、<code>completed</code>，處理結果則落在 <code>Task.output</code>。</p>
<p>因此，凡「要求系統改變狀態並回報結果」者一律使用 <code>Task</code>；<code>Communication</code> 在本模組中不使用。相對地，各操作所需的輸入參數（縣市代碼、核銷案號、服務紀錄識別碼、所要取消之交易序號）以 <code>Task.input</code> 的具名切片承載，執行結果則以 <code>Task.output</code> 承載，交易序號（<code>trans_no</code>）放在 <code>Task.groupIdentifier</code>，使同一次申報交易的各項處理共用同一識別。</p>
<p><strong>實作限制</strong>：<code>Task.input</code> 與 <code>Task.output</code> 於 FHIR R4 為「<code>type</code>（CodeableConcept）+ <code>value[x]</code>」的扁平結構，<strong>不支援巢狀 <code>part</code></strong>。因此規格書 <code>appCompletionNotice</code> 之 <code>city_info</code>（縣市代碼底下含多筆案件編號）的巢狀關係，本 IG 改以「<strong>一個縣市一筆 Task</strong>」表達：<code>input[cityCd]</code> 收緊為 0..1，同一 Task 內的 <code>input[caseNo]</code> 即明確隸屬於該縣市；一次作業涉及多個縣市時，依縣市拆分為多筆 Task 並共用同一 <code>Task.groupIdentifier</code>。另需注意 <code>input</code>／<code>output</code> 的切片 discriminator 為 <code>#pattern</code> + <code>type.text</code>（規格書之中文欄位名稱，如「縣市代碼」、「批次處理結果」），撰寫 FHIRPath 查詢時須以 <code>type.text</code> 定位，本 Profile 未定義 <code>type.coding</code>。</p>
</div>

### 邏輯模型索引

<div style="padding-left: 10px;">
<p>本模組定義三個邏輯模型，逐欄保留規格書之中文欄位名稱、英文欄位名稱、型態、長度與資料描述，並於各模型的「Mappings」頁籤提供至對應 Profile 的欄位對照。</p>
</div>

- [長照支付審查－服務記錄申報邏輯模型（LTCFeeApplyModel）](StructureDefinition-LTCFeeApplyModel.html)：對應服務記錄申報（FeeApply）之傳送資料 `apply_info` 與 `case_svc_records`，Mapping 目標為 [LTCClaimFeeApply](StructureDefinition-LTCClaimFeeApply.html)。
- [長照支付審查－分案審核明細邏輯模型（LTCFeeAuditDetailModel）](StructureDefinition-LTCFeeAuditDetailModel.html)：對應（查詢B）分案審核明細查詢之回覆明細，Mapping 目標為 [LTCClaimResponseFeeAudit](StructureDefinition-LTCClaimResponseFeeAudit.html)。
- [長照支付審查－分案審核狀態與交易處理結果邏輯模型（LTCFeeAuditStatusModel）](StructureDefinition-LTCFeeAuditStatusModel.html)：對應（查詢A）服務單位各分案審核狀態查詢之回覆明細，以及服務紀錄刪除、申報確認通知、撤回、取消交易單處理結果回報之傳送資料，Mapping 目標為 [LTCTaskFeeAudit](StructureDefinition-LTCTaskFeeAudit.html)。

### Profiles 與 Extensions 索引

#### Profiles

##### 申報端（單位 → 支審）

- [長照支付審查－服務記錄申報文件打包（LTC Bundle Fee Apply）](StructureDefinition-LTCBundleFeeApply.html)
- [長照支付審查－個案服務紀錄申報（LTC Claim Fee Apply）](StructureDefinition-LTCClaimFeeApply.html)
- [長照支付審查－交通接送起訖地（LTC Location Fee Audit Place）](StructureDefinition-LTCLocationFeeAuditPlace.html)

##### 審查回覆端（支審 → 單位）

- [長照支付審查－分案審核明細回覆打包（LTC Bundle Fee Audit Response）](StructureDefinition-LTCBundleFeeAuditResponse.html)
- [長照支付審查－分案審核明細（LTC ClaimResponse Fee Audit）](StructureDefinition-LTCClaimResponseFeeAudit.html)
- [長照支付審查－分案審核狀態回覆打包（LTC Bundle Fee Audit Status）](StructureDefinition-LTCBundleFeeAuditStatus.html)

##### 工作流與檢核結果

- [長照支付審查－申報交易任務（LTC Task Fee Audit）](StructureDefinition-LTCTaskFeeAudit.html)
- [長照支付審查－申報檢核結果（LTC OperationOutcome Fee Audit）](StructureDefinition-LTCOperationOutcomeFeeAudit.html)

#### Extensions

- [長照支付審查－清冊文件下載路徑（FeeAudit Doc Url）](StructureDefinition-Ext-TW-LTC-FeeAudit-DocUrl.html)
- [長照支付審查－分案審核統計與承辦資訊（FeeAudit Audit Summary）](StructureDefinition-Ext-TW-LTC-FeeAudit-AuditSummary.html)
- [長照支付審查－服務記錄識別資訊（FeeAudit Record Ref）](StructureDefinition-Ext-TW-LTC-FeeAudit-RecordRef.html)

<div style="padding-left: 10px;">
<p>各 Profile 之範例可於該 Profile 頁面的「Examples」頁籤查閱，亦可於本 IG 的 <a href="examples.html">範例</a> 頁面總覽。</p>
</div>

### 術語索引

#### CodeSystems

| 代碼系統 | 用途 |
|---|---|
| [支付審查－服務類別](CodeSystem-cs-tw-ltc-feeaudit-fee-type.html) | `svc_fee_tp`：1 補助、2 自費 |
| [支付審查－服務項目](CodeSystem-cs-tw-ltc-feeaudit-svc-item.html) | `svc_item`：申報 AA00／AA03 之服務項目 |
| [支付審查－服務對象](CodeSystem-cs-tw-ltc-feeaudit-svc-people.html) | `svc_people`：服務使用者、家庭照顧者 |
| [支付審查－服務重點](CodeSystem-cs-tw-ltc-feeaudit-svc-point.html) | `svc_point`：申報 AA00 之服務重點 |
| [支付審查－專業服務復能目標達成情形](CodeSystem-cs-tw-ltc-feeaudit-svcc-goal-type.html) | `svcc_goal_type`：申報 C 碼之復能目標達成情形 |
| [支付審查－社區式服務交通接送服務使用類型](CodeSystem-cs-tw-ltc-feeaudit-bd03-type.html) | `bd03_type`：申報 BD03 之服務使用類型 |
| [支付審查－AA10 申報狀態](CodeSystem-cs-tw-ltc-feeaudit-aa10-status.html) | `aa10_status`：AA10 申報狀態 |
| [支付審查－服務紀錄補充資訊類別](CodeSystem-cs-tw-ltc-feeaudit-supporting-info.html) | `Claim.supportingInfo.category` 之分類碼，涵蓋表1 條件必填欄位 |
| [支付審查－核銷狀況](CodeSystem-cs-tw-ltc-feeaudit-case-status.html) | 查詢A 之 `status`（核銷狀況）：0～6 |
| [支付審查－API 執行狀況](CodeSystem-cs-tw-ltc-feeaudit-api-status.html) | 查詢A 之 `status`（API 執行狀況）：0、1、3、4 |
| [支付審查－API 功能](CodeSystem-cs-tw-ltc-feeaudit-api-function.html) | `function`：FeeApply、ObjDel、appCompletionNotice、appCancel、CancelResultResponse |
| [支付審查－核定金額類別](CodeSystem-cs-tw-ltc-feeaudit-adjudication.html) | `ClaimResponse.total.category` 與 `adjudication.category` 之金額類別 |
| [支付審查－清冊文件類別](CodeSystem-cs-tw-ltc-feeaudit-doc-type.html) | 總表、清冊、A 碼清冊等下載文件之類別 |
| [支付審查－錯誤代碼](CodeSystem-cs-tw-ltc-feeaudit-error-code.html) | `err_code`：申報檢核與分案異常之錯誤代碼 |
| [支付審查－API 回覆結果代碼](CodeSystem-cs-tw-ltc-feeaudit-rtncode.html) | `rtncode`：傳輸層回覆結果代碼 |
| [支付審查－縣市代碼](CodeSystem-cs-tw-ltc-feeaudit-city.html) | `city_cd`：受理分案之縣市代碼 |

#### ValueSets

| 值集 | 對應代碼系統 |
|---|---|
| [支付審查－服務類別](ValueSet-vs-tw-ltc-feeaudit-fee-type.html) | 支付審查－服務類別 |
| [支付審查－服務項目](ValueSet-vs-tw-ltc-feeaudit-svc-item.html) | 支付審查－服務項目 |
| [支付審查－服務對象](ValueSet-vs-tw-ltc-feeaudit-svc-people.html) | 支付審查－服務對象 |
| [支付審查－服務重點](ValueSet-vs-tw-ltc-feeaudit-svc-point.html) | 支付審查－服務重點 |
| [支付審查－專業服務復能目標達成情形](ValueSet-vs-tw-ltc-feeaudit-svcc-goal-type.html) | 支付審查－專業服務復能目標達成情形 |
| [支付審查－社區式服務交通接送服務使用類型](ValueSet-vs-tw-ltc-feeaudit-bd03-type.html) | 支付審查－社區式服務交通接送服務使用類型 |
| [支付審查－AA10 申報狀態](ValueSet-vs-tw-ltc-feeaudit-aa10-status.html) | 支付審查－AA10 申報狀態 |
| [支付審查－服務紀錄補充資訊類別](ValueSet-vs-tw-ltc-feeaudit-supporting-info.html) | 支付審查－服務紀錄補充資訊類別 |
| [支付審查－核銷狀況](ValueSet-vs-tw-ltc-feeaudit-case-status.html) | 支付審查－核銷狀況 |
| [支付審查－API 執行狀況](ValueSet-vs-tw-ltc-feeaudit-api-status.html) | 支付審查－API 執行狀況 |
| [支付審查－API 功能](ValueSet-vs-tw-ltc-feeaudit-api-function.html) | 支付審查－API 功能 |
| [支付審查－核定金額類別](ValueSet-vs-tw-ltc-feeaudit-adjudication.html) | 支付審查－核定金額類別 |
| [支付審查－清冊文件類別](ValueSet-vs-tw-ltc-feeaudit-doc-type.html) | 支付審查－清冊文件類別 |
| [支付審查－錯誤代碼](ValueSet-vs-tw-ltc-feeaudit-error-code.html) | 支付審查－錯誤代碼 |
| [支付審查－API 回覆結果代碼](ValueSet-vs-tw-ltc-feeaudit-rtncode.html) | 支付審查－API 回覆結果代碼 |
| [支付審查－縣市代碼](ValueSet-vs-tw-ltc-feeaudit-city.html) | 支付審查－縣市代碼 |

### 注意事項

<div style="padding-left: 10px;">
<ul>
<li>支審年月（<code>writeoff_yyyymm</code>）為西元年月格式 <code>yyyyMM</code>（例如 <code>201901</code>），<strong>非民國年</strong>，與本 IG 長照 SDK 模組所使用的民國年月（<code>YYYMM</code>）不同，實作時請特別留意。</li>
<li>查詢 B 須先執行查詢 A 取得核銷案號、核銷狀況與總表版次；僅在為新核銷案號，或核銷狀況、總表版次有異動時才可執行查詢 B。查詢 A 每次查詢間隔至少 20 分鐘。</li>
<li>案件一旦執行申報確認通知（<code>appCompletionNotice</code>），支審系統即不再受理該案件之服務紀錄申報（<code>FeeApply</code>）與刪除（<code>ObjDel</code>）。</li>
<li>本模組之縣市代碼（<a href="CodeSystem-cs-tw-ltc-feeaudit-city.html">支付審查－縣市代碼</a>）為支付審查系統之行政區代碼，與 TW Core 之郵遞區號代碼系統用途不同，兩者不可互相替代。</li>
<li>下列三組術語為<strong>參照用術語</strong>，未繫結（bind）於任何 Profile 元素，供實作者於傳輸層或系統整合時對照使用：<a href="ValueSet-vs-tw-ltc-feeaudit-rtncode.html">API 回覆結果代碼</a>（<code>rtncode</code>，屬回覆封套欄位）、<a href="ValueSet-vs-tw-ltc-feeaudit-api-status.html">API 執行狀況</a>（<code>status</code>，於 FHIR 中已對應至 <code>Task.status</code> 之標準取值，故不另行繫結）、<a href="ValueSet-vs-tw-ltc-feeaudit-city.html">縣市代碼</a>（<code>city_cd</code>，於 FHIR 中係以 <code>Organization.identifier</code>（system 為 <code>http://ltc-ig.fhir.tw/identifier/feeaudit/city-cd</code>）或 <code>Task.input[cityCd]</code> 之字串值表達，非 coded 元素）。</li>
<li>各項金額類別代碼中，申請核銷金額（<code>submitted</code>）、自付額（<code>copayment</code>）與單價（<code>price</code>）語意與 HL7 標準代碼系統 <code>http://terminology.hl7.org/CodeSystem/adjudication</code> 之 <code>submitted</code>、<code>copay</code>、<code>eligible</code> 相近；本 IG 為維持同一組金額類別之一致性而收錄於本土代碼系統，相關繫結強度為 extensible，跨國情境交換時得改用標準代碼。</li>
<li>傳輸封套之校驗碼（<code>checksum</code>）計算邏輯、Base64 編碼方式與 IP 白名單等傳輸層規範，請逕行參照規格書原文，本 IG 不予規範。</li>
</ul>
</div>
