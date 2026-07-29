// =====================================================================
// 長照支付審查－服務記錄申報（FeeApply）範例
// 資料來源：衛生福利部 支付審核系統 API 規格說明書（照管平台）v2.2.1
//           貳、API 功能 一、服務記錄申報（……/FeeApply）
//           (三) 傳送資料（PAGE 11-15）、(五) 表1: 支付碼必填欄位一覽表（PAGE 16-18）
// 本檔內容：
//   1. ltc-claim-feeapply-aa00-example    ：A 單位（個案管理）服務紀錄，gov_item_cd = AA00
//   2. ltc-claim-feeapply-c-code-example  ：C 碼專業服務服務紀錄（CA03）
// 說明：規格書之照顧組合代碼「AA00」（A 單位服務紀錄專用）已收錄於本 IG 之
//       CS_TW_LTC_ServiceItem，故以 item.productOrService.coding 承載，
//       使 invariant ltc-feeaudit-3（AA00 之條件必填檢核）得以正確觸發。
// =====================================================================

// =====================================================================
// 一、AA00：A 單位（個案管理）服務紀錄申報範例
// =====================================================================
Instance: ltc-claim-feeapply-aa00-example
InstanceOf: LTCClaimFeeApply
Title: "長照支付審查－A 單位服務紀錄（AA00）申報範例"
Description: "A 個管單位向衛生福利部支付審核系統（照管平台）執行「服務記錄申報（FeeApply）」之單筆個案服務紀錄範例。照顧組合代碼（gov_item_cd）為 AA00（A 單位服務紀錄）；AA00 已收錄於臺灣長照服務項目代碼系統（CS_TW_LTC_ServiceItem），故以 item.productOrService.coding 承載，使本 IG 之條件必填檢核（invariant ltc-feeaudit-3）得以觸發。本範例示範 AA00 之必填特化欄位：服務項目（svc_item = 1|2，電訪與家訪，以兩個 supportingInfo 切片表示）、服務對象（svc_people = 1|2，服務使用者與家庭照顧者）與服務內容（svc_content）；並示範選填欄位：服務重點（svc_point = 1|2）、追蹤服務適應與介入情形（svc_trace）、各項服務目標及整體計畫目標達成情形（svc_goal）、整體計畫的適切性及需求異動（svc_suitable）、備註（remark）與各項預設旗標。照顧服務員身分證字號 1（svc_user_no1）依規格書表 1 為必填，於 AA00 應帶入 A 個管之身分證字號，以 careTeam.sequence = 1 之 careTeam 呈現。"
Usage: #example

// ── 基本欄位 ──────────────────────────────────────────────────────────
* status = #active
* type = $ClaimType#professional "Professional"
* use = #claim
* patient = Reference(ltc-patient-sdk-example)
* created = "2025-08-05T10:00:00+08:00"
* provider = Reference(ltc-organization-sdk-example)
* priority = $ProcessPriority#normal "Normal"
* insurer = Reference(ltc-organization-sdk-example)

// 最小保險區塊（FHIR Claim 必填結構）
* insurance[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage = Reference(ltc-coverage-sdk-example)

// ── 業務識別碼（objid／trans_no／writeoff_yyyymm）──────────────────────
* identifier[objid].system = "http://ltc-ig.fhir.tw/identifier/feeaudit/objid"
* identifier[objid].value = "00000000000000000101"
* identifier[transNo].system = "http://ltc-ig.fhir.tw/identifier/feeaudit/trans-no"
* identifier[transNo].value = "A000000101"
* identifier[yyyymm].system = "http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm"
* identifier[yyyymm].value = "202507"

// ── 照顧服務員身分證字號 1（svc_user_no1）：AA00 帶入 A 個管身分證字號 ──
* careTeam[0].sequence = 1
* careTeam[0].provider = Reference(ltc-practitioner-sdk-example)
* careTeam[0].provider.identifier.system = "http://www.moi.gov.tw"
* careTeam[0].provider.identifier.value = "A123456789"
* careTeam[0].provider.display = "李小華（A 個管單位個案管理師）"

// ── 服務明細 ─────────────────────────────────────────────────────────
* item.sequence = 1
// gov_item_cd = AA00（A 單位服務紀錄）
* item.productOrService = CS_TW_LTC_ServiceItem#AA00 "A 單位服務紀錄"
* item.category = CS_TW_LTC_FeeAuditFeeType#1 "補助"
* item.quantity.value = 1
// 服務日期 svc_dt = 20250708，起訖時段 09:30-10:30（AA00 之起訖時段依表 1 為非必填，本範例仍填寫）
* item.servicedPeriod.start = "2025-07-08T09:30:00+08:00"
* item.servicedPeriod.end = "2025-07-08T10:30:00+08:00"

// ── AA00 必填特化欄位 ────────────────────────────────────────────────
// 服務項目 svc_item = "1|2"（電訪、家訪）
* supportingInfo[svcItem][0].sequence = 1
* supportingInfo[svcItem][0].category = CS_TW_LTC_FeeAuditSupportingInfo#svcItem "服務項目"
* supportingInfo[svcItem][0].code = CS_TW_LTC_FeeAuditSvcItem#1 "電訪"
* supportingInfo[svcItem][1].sequence = 2
* supportingInfo[svcItem][1].category = CS_TW_LTC_FeeAuditSupportingInfo#svcItem "服務項目"
* supportingInfo[svcItem][1].code = CS_TW_LTC_FeeAuditSvcItem#2 "家訪"

// 服務對象 svc_people = "1|2"（服務使用者、家庭照顧者）
* supportingInfo[svcPeople][0].sequence = 3
* supportingInfo[svcPeople][0].category = CS_TW_LTC_FeeAuditSupportingInfo#svcPeople "服務對象"
* supportingInfo[svcPeople][0].code = CS_TW_LTC_FeeAuditSvcPeople#1 "服務使用者"
* supportingInfo[svcPeople][1].sequence = 4
* supportingInfo[svcPeople][1].category = CS_TW_LTC_FeeAuditSupportingInfo#svcPeople "服務對象"
* supportingInfo[svcPeople][1].code = CS_TW_LTC_FeeAuditSvcPeople#2 "家庭照顧者"

// 服務內容 svc_content
* supportingInfo[svcContent].sequence = 5
* supportingInfo[svcContent].category = CS_TW_LTC_FeeAuditSupportingInfo#svcContent "服務內容"
* supportingInfo[svcContent].valueString = "以電話訪視確認長照需要者出院返家後之照顧情形，並於同日進行家庭訪視，說明照顧服務（BA01、BA02）與喘息服務之使用方式，並與家庭照顧者討論服務時段調整需求。"

// ── AA00 選填特化欄位 ────────────────────────────────────────────────
// 服務重點 svc_point = "1|2"
* supportingInfo[svcPoint][0].sequence = 6
* supportingInfo[svcPoint][0].category = CS_TW_LTC_FeeAuditSupportingInfo#svcPoint "服務重點"
* supportingInfo[svcPoint][0].code = CS_TW_LTC_FeeAuditSvcPoint#1 "追蹤長照需要者與各項服務之連結情形"
* supportingInfo[svcPoint][1].sequence = 7
* supportingInfo[svcPoint][1].category = CS_TW_LTC_FeeAuditSupportingInfo#svcPoint "服務重點"
* supportingInfo[svcPoint][1].code = CS_TW_LTC_FeeAuditSvcPoint#2 "計畫與內容異動討論"

// 追蹤服務適應與介入情形 svc_trace
* supportingInfo[svcTrace].sequence = 8
* supportingInfo[svcTrace].category = CS_TW_LTC_FeeAuditSupportingInfo#svcTrace "追蹤服務適應與介入情形"
* supportingInfo[svcTrace].valueString = "長照需要者自 114 年 6 月起接受居家照顧服務，適應情形良好；家庭照顧者反映上午時段人力銜接困難，已協調服務提供單位將服務時段調整為上午 9 時至 11 時，後續持續追蹤服務銜接情形。"

// 各項服務目標及整體計畫目標達成情形 svc_goal
* supportingInfo[svcGoal].sequence = 9
* supportingInfo[svcGoal].category = CS_TW_LTC_FeeAuditSupportingInfo#svcGoal "各項服務目標及整體計畫目標達成情形"
* supportingInfo[svcGoal].valueString = "服務目標「維持長照需要者基本日常生活自理能力」達成情形良好；「減輕家庭照顧者照顧負荷」目標持續進行中，整體照顧計畫目標達成約八成。"

// 整體計畫的適切性及需求異動 svc_suitable
* supportingInfo[svcSuitable].sequence = 10
* supportingInfo[svcSuitable].category = CS_TW_LTC_FeeAuditSupportingInfo#svcSuitable "整體計畫的適切性及需求異動"
* supportingInfo[svcSuitable].valueString = "現行照顧計畫尚屬適切。因家庭照顧者將於 114 年 8 月返回職場，照顧人力需求異動，擬於次月複評時檢討是否增加日間照顧服務時數。"

// ── 申報旗標與備註（採規格書預設值）────────────────────────────────────
* supportingInfo[missedVisit].sequence = 11
* supportingInfo[missedVisit].category = CS_TW_LTC_FeeAuditSupportingInfo#missedVisit "訪視/服務未遇"
* supportingInfo[missedVisit].valueBoolean = false

* supportingInfo[lastSvc].sequence = 12
* supportingInfo[lastSvc].category = CS_TW_LTC_FeeAuditSupportingInfo#lastSvc "臨終日照顧"
* supportingInfo[lastSvc].valueBoolean = false

* supportingInfo[aa10Status].sequence = 13
* supportingInfo[aa10Status].category = CS_TW_LTC_FeeAuditSupportingInfo#aa10Status "AA10申報狀態"
* supportingInfo[aa10Status].code = CS_TW_LTC_FeeAuditAA10Status#0 "未申報"

* supportingInfo[remark].sequence = 14
* supportingInfo[remark].category = CS_TW_LTC_FeeAuditSupportingInfo#remark "備註"
* supportingInfo[remark].valueString = "本次同時完成 114 年 7 月份服務紀錄核對。"


// =====================================================================
// 二、C 碼：專業服務服務紀錄申報範例
// =====================================================================
Instance: ltc-claim-feeapply-c-code-example
InstanceOf: LTCClaimFeeApply
Title: "長照支付審查－C 碼專業服務紀錄申報範例"
Description: "C 單位（專業服務提供單位）向衛生福利部支付審核系統（照管平台）執行「服務記錄申報（FeeApply）」之單筆個案服務紀錄範例。照顧組合代碼（gov_item_cd）為 CA03（ADLs 復能照護－居家）。本範例示範規格書中申報 C 碼時填寫之五個專業服務欄位：專業服務復能目標達成情形（svcc_goal_type）、專業服務復能目標（svcc_goal）、專業服務指導對象（svcc_content_target）、專業服務服務內容（svcc_content）與專業服務指導建議摘要（svcc_suggest）。依規格書表 1，申報 C 碼時照顧服務員身分證字號 1（svc_user_no1）、數量與起訖時段為必填，服務項目（svc_item）、服務對象（svc_people）與服務內容（svc_content）則不填寫。"
Usage: #example

// ── 基本欄位 ──────────────────────────────────────────────────────────
* status = #active
* type = $ClaimType#professional "Professional"
* use = #claim
* patient = Reference(ltc-patient-sdk-example)
* created = "2025-08-05T10:30:00+08:00"
* provider = Reference(ltc-organization-sdk-example)
* priority = $ProcessPriority#normal "Normal"
* insurer = Reference(ltc-organization-sdk-example)

* insurance[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage = Reference(ltc-coverage-sdk-example)

// ── 業務識別碼 ───────────────────────────────────────────────────────
* identifier[objid].system = "http://ltc-ig.fhir.tw/identifier/feeaudit/objid"
* identifier[objid].value = "00000000000000000102"
* identifier[transNo].system = "http://ltc-ig.fhir.tw/identifier/feeaudit/trans-no"
* identifier[transNo].value = "C000000101"
* identifier[yyyymm].system = "http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm"
* identifier[yyyymm].value = "202507"

// ── 提供專業服務之人員（svc_user_no1，申報 C 碼為必填）──────────────────
* careTeam[0].sequence = 1
* careTeam[0].provider = Reference(ltc-practitioner-example)
* careTeam[0].provider.identifier.system = "http://www.moi.gov.tw"
* careTeam[0].provider.identifier.value = "B223456789"
* careTeam[0].provider.display = "王美玲（C 單位專業服務人員）"

// ── 服務明細 ─────────────────────────────────────────────────────────
* item.sequence = 1
* item.productOrService = CS_TW_LTC_ServiceItem#CA03 "ADLs復能照護--居家"
* item.category = CS_TW_LTC_FeeAuditFeeType#1 "補助"
* item.quantity.value = 1
// 服務日期 svc_dt = 20250715，起訖時段 14:00-15:00（申報 C 碼為必填）
* item.servicedPeriod.start = "2025-07-15T14:00:00+08:00"
* item.servicedPeriod.end = "2025-07-15T15:00:00+08:00"

// ── C 碼專業服務欄位 ─────────────────────────────────────────────────
// 專業服務復能目標達成情形 svcc_goal_type
* supportingInfo[svccGoalType].sequence = 1
* supportingInfo[svccGoalType].category = CS_TW_LTC_FeeAuditSupportingInfo#svccGoalType "專業服務復能目標達成情形"
* supportingInfo[svccGoalType].code = CS_TW_LTC_FeeAuditSvccGoalType#3 "已滿1照顧組合之次數，但尚未達目標"

// 專業服務復能目標 svcc_goal
* supportingInfo[svccGoal].sequence = 2
* supportingInfo[svccGoal].category = CS_TW_LTC_FeeAuditSupportingInfo#svccGoal "專業服務復能目標"
* supportingInfo[svccGoal].valueString = "三個月內提升長照需要者下肢肌力與床邊坐站轉位能力，達到在他人口頭提示下可自行完成床邊坐站轉位。"

// 專業服務指導對象 svcc_content_target
* supportingInfo[svccContentTarget].sequence = 3
* supportingInfo[svccContentTarget].category = CS_TW_LTC_FeeAuditSupportingInfo#svccContentTarget "專業服務指導對象"
* supportingInfo[svccContentTarget].valueString = "長照需要者本人及其主要家庭照顧者（配偶）。"

// 專業服務服務內容 svcc_content
* supportingInfo[svccContent].sequence = 4
* supportingInfo[svccContent].category = CS_TW_LTC_FeeAuditSupportingInfo#svccContent "專業服務服務內容"
* supportingInfo[svccContent].valueString = "執行下肢肌力訓練與床邊坐站轉位訓練共 40 分鐘，並實地指導家庭照顧者正確之轉位協助技巧、輔具（助行器）使用方式及居家環境安全注意事項。"

// 專業服務指導建議摘要 svcc_suggest
* supportingInfo[svccSuggest].sequence = 5
* supportingInfo[svccSuggest].category = CS_TW_LTC_FeeAuditSupportingInfo#svccSuggest "專業服務指導建議摘要"
* supportingInfo[svccSuggest].valueString = "建議家庭照顧者每日協助長照需要者進行坐站訓練 2 次、每次 10 下，並於床邊加裝安全扶手；下次訪視時再評估轉位獨立程度並調整訓練強度。"

// ── 申報旗標（採規格書預設值）────────────────────────────────────────
* supportingInfo[missedVisit].sequence = 6
* supportingInfo[missedVisit].category = CS_TW_LTC_FeeAuditSupportingInfo#missedVisit "訪視/服務未遇"
* supportingInfo[missedVisit].valueBoolean = false
