// =====================================================================
// 長照支付審查－個案服務紀錄申報 (FeeApply) Profile
// 資料來源：衛生福利部 支付審核系統 API 規格說明書（照管平台）v2.2.1
//           貳、API 功能 一、服務記錄申報 (……/FeeApply)
//           (三) 傳送資料（PAGE 11-15）、(五) 表1: 支付碼必填欄位一覽表（PAGE 16-18）
// 設計原則：
//   1. Bundle = 一次申報交易 (trans_no)；Claim = 一筆服務紀錄 (objid)。
//   2. 業務識別碼一律以 identifier slicing 承載，不新增 Extension。
//   3. 碼別特化欄位（AA00 個管、C 碼專業服務、交通接送、各項旗標）
//      一律以 Claim.supportingInfo slicing 承載，category 綁定
//      VS_TW_LTC_FeeAuditSupportingInfo，不新增 Extension。
// =====================================================================

Profile: LTCClaimFeeApply
Parent: Claim
Id: LTCClaimFeeApply
Title: "長照支付審查－個案服務紀錄申報"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Claim Resource，以呈現服務提供單位向衛生福利部支付審核系統（照管平台）執行「服務記錄申報（FeeApply）」時所傳送之單筆個案服務紀錄。一筆 Claim 對應規格書中一筆具唯一識別碼（objid）之個案服務紀錄，識別碼不存在時於支審系統新增服務紀錄、已存在時則更新服務紀錄；同一次申報交易（trans_no，最多 5000 筆）之多筆服務紀錄以 Bundle 打包。共通欄位以 Claim 基本元素及 Claim.item 承載；隨照顧組合代碼（gov_item_cd）而特化之欄位，依規格書「表1: 支付碼必填欄位一覽表」以 Claim.supportingInfo 之具名切片承載。因 FHIR R4 之 Claim.supportingInfo.value[x] 型別僅允許 boolean、string、Quantity、Attachment 與 Reference，故代碼型欄位（服務項目、服務對象、服務重點、專業服務復能目標達成情形、BD03 服務使用類型、AA10 申報狀態）改以 supportingInfo.code 承載並綁定對應 ValueSet。條件必填規則因隨支付碼而異，於本 Profile 中以 severity 為 warning 之 invariant（ltc-feeaudit-1 至 ltc-feeaudit-4）表達。"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/LTCClaimFeeApply"
* ^version = "0.1.0"
* ^status = #draft

* obeys ltc-feeaudit-1 and ltc-feeaudit-2 and ltc-feeaudit-3 and ltc-feeaudit-4

// ---------------------------------------------------------------------
// 一、基本欄位
// ---------------------------------------------------------------------
* status 1..1 MS
* status = #active
* status ^short = "申報單狀態。個案服務紀錄申報固定為 active。"

* type 1..1 MS
* type ^short = "申報單類別。長照服務紀錄申報固定使用 professional（專業服務）。"
* type.coding 1..1 MS
* type.coding.system 1..1 MS
* type.coding.system = $ClaimType
* type.coding.code 1..1 MS
* type.coding.code = #professional

* use 1..1 MS
* use = #claim
* use ^short = "用途。個案服務紀錄申報為實際請款，固定為 claim。"

* patient 1..1 MS
* patient only Reference(LTCPatient)
* patient ^short = "接受服務之長照需要者，對應規格書欄位 idn（個案身分證字號）。"

* created 1..1 MS
* created ^short = "本筆服務紀錄之申報建立時間。"

* provider 1..1 MS
* provider only Reference(LTCOrganization)
* provider ^short = "申報之服務提供單位（特約單位）。"

* priority 1..1
* priority ^short = "申報處理優先序。長照支付審查情境無優先序區分，建議固定填 normal。"

* insurance 1..* MS
* insurance ^short = "保險／給付來源區塊。此為 FHIR Claim 之必填結構；長照情境下僅需一個最小保險區塊，填 insurance.sequence = 1、insurance.focal = true，並以 insurance.coverage 指向長照給付額度（如 Coverage 或以 display 註明「長期照顧給付及支付基準」）。"

* insurer 0..1 MS
* insurer ^short = "受理審查之單位，如直轄市、縣（市）主管機關或衛生福利部支付審核系統。"

* total 0..1 MS
* total ^short = "本筆服務紀錄之申報金額，對應規格書之服務紀錄金額（amount）。"

// ---------------------------------------------------------------------
// 二、業務識別碼（identifier slicing）
// ---------------------------------------------------------------------
* identifier 1..* MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^short = "支付審查業務識別碼，以 system 區分服務紀錄識別碼、交易序號與支審年月。"
* identifier contains
    objid 1..1 MS and
    transNo 0..1 MS and
    yyyymm 0..1 MS

* identifier[objid].system 1..1 MS
* identifier[objid].system = "http://ltc-ig.fhir.tw/identifier/feeaudit/objid"
* identifier[objid].value 1..1 MS
* identifier[objid] ^short = "服務紀錄識別碼（objid），字串長度 20，由服務提供單位系統產生且全域唯一；識別碼不存在時新增支審系統之服務紀錄，已存在時則更新之。"

* identifier[transNo].system 1..1 MS
* identifier[transNo].system = "http://ltc-ig.fhir.tw/identifier/feeaudit/trans-no"
* identifier[transNo].value 1..1 MS
* identifier[transNo] ^short = "交易序號（trans_no），字串長度 10，識別本筆服務紀錄所屬之申報交易批次；每個交易序號每次申報最多 5000 筆個案服務紀錄。"

* identifier[yyyymm].system 1..1 MS
* identifier[yyyymm].system = "http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm"
* identifier[yyyymm].value 1..1 MS
* identifier[yyyymm] ^short = "支審年月（writeoff_yyyymm），字串長度 6，為西元年月格式 yyyyMM（例如 201901），非民國年。"

// ---------------------------------------------------------------------
// 三、照顧服務員（careTeam）
// ---------------------------------------------------------------------
* careTeam 0..* MS
* careTeam ^short = "提供本筆服務之照顧服務員，對應規格書欄位 svc_user_no1 至 svc_user_no5（照顧服務員身分證字號 1 至 5）；careTeam.sequence 之 1 至 5 依序對應 svc_user_no1 至 svc_user_no5。申報 AA00、B 碼、G 碼、SC 碼、C 碼、BD03、DA01 時 svc_user_no1（sequence = 1）為必填。"
* careTeam.sequence 1..1 MS
* careTeam.sequence ^short = "照顧服務員序號，1 至 5 依序對應規格書之 svc_user_no1 至 svc_user_no5。"
* careTeam.provider 1..1 MS
* careTeam.provider only Reference(LTCPractitioner or LTCPractitionerRole or LTCOrganization)
* careTeam.provider ^short = "照顧服務員，以身分證字號作為 Practitioner.identifier 之值。"

// ---------------------------------------------------------------------
// 四、服務明細（item）：一筆服務紀錄僅一個 item
// ---------------------------------------------------------------------
* item 1..1 MS
* item ^short = "服務明細。一筆個案服務紀錄（objid）僅對應一個 item。"
* item.sequence 1..1
* item.sequence ^short = "服務明細序號。一筆服務紀錄僅一個 item，固定填 1。"

* item.productOrService 1..1 MS
* item.productOrService from VS_TW_LTC_ServiceItem (extensible)
* item.productOrService ^short = "照顧組合代碼，對應規格書欄位 gov_item_cd（字串長度 10）；A 單位之個案管理服務紀錄請填 AA00（該代碼已收錄於臺灣長照服務項目代碼系統 CS_TW_LTC_ServiceItem，須以 coding 承載，方能觸發 invariant ltc-feeaudit-3 之條件必填檢核）。"

* item.category 0..1 MS
* item.category from VS_TW_LTC_FeeAuditFeeType (required)
* item.category ^short = "服務類別，對應規格書欄位 svc_fee_tp。1：補助、2：自費。"

* item.quantity 0..1 MS
* item.quantity ^short = "申報數量，對應規格書欄位 amount（數量）。表1 中各支付碼皆為必填。"

* item.unitPrice 0..1 MS
* item.unitPrice ^short = "單價，對應規格書欄位 price。表1 條件必填：申報 BD03、DA01 為必填，其餘支付碼為非必填。"

* item.net 0..1 MS
* item.net ^short = "本筆服務明細之小計金額（單價 × 數量）。"

* item.serviced[x] 1..1 MS
* item.serviced[x] only Period
* item.serviced[x] ^short = "服務起訖時間。start 由服務日期（svc_dt，yyyyMMdd）與起始時段（start_hh、start_mm）組成；end 由服務結束日期（svc_end_dt，空白時同 svc_dt）與結束時段（end_hh、end_mm）組成。時段採 24 小時制且不足兩碼補 0。"

* item.location[x] 0..1
* item.location[x] only Reference(LTCLocationFeeAuditPlace)
* item.location[x] ^short = "服務地點。申報 BD03、DA01 交通接送時，可用以表達目的地；出發地與目的地之完整資訊另以 supportingInfo 之 addrFrom、addrTo 切片承載。"

// ---------------------------------------------------------------------
// 五、碼別特化欄位（supportingInfo slicing）
// ---------------------------------------------------------------------
* supportingInfo 0..* MS
* supportingInfo ^slicing.discriminator.type = #pattern
* supportingInfo ^slicing.discriminator.path = "category"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^short = "隨照顧組合代碼（gov_item_cd）而特化之補充資訊，依規格書「表1: 支付碼必填欄位一覽表」條件填寫。"
* supportingInfo.category from VS_TW_LTC_FeeAuditSupportingInfo (extensible)
* supportingInfo.category ^short = "補充資訊類別，取值自支付審查服務紀錄補充資訊類別代碼系統。"
* supportingInfo contains
    svcItem 0..* MS and
    svcItemOther 0..1 MS and
    svcPeople 0..* MS and
    svcContent 0..1 MS and
    svcPoint 0..* MS and
    svcPointOther 0..1 MS and
    svcTrace 0..1 MS and
    svcGoal 0..1 MS and
    svcSuitable 0..1 MS and
    svcUnit 0..1 MS and
    svccGoalType 0..1 MS and
    svccGoal 0..1 MS and
    svccContentTarget 0..1 MS and
    svccContent 0..1 MS and
    svccSuggest 0..1 MS and
    addrFrom 0..1 MS and
    addrTo 0..1 MS and
    carNo 0..1 MS and
    driver 0..1 MS and
    milage 0..1 MS and
    bd03Type 0..1 MS and
    lastSvc 0..1 MS and
    missedVisit 0..1 MS and
    applyCovid19 0..1 MS and
    applyAA03 0..1 MS and
    applyAA09 0..1 MS and
    aa10Status 0..1 MS and
    remark 0..1 MS

// ── AA00 個管服務組 ─────────────────────────────────────────────────
* supportingInfo[svcItem].category = CS_TW_LTC_FeeAuditSupportingInfo#svcItem
* supportingInfo[svcItem].code 1..1 MS
* supportingInfo[svcItem].code from VS_TW_LTC_FeeAuditSvcItem (required)
* supportingInfo[svcItem].value[x] 0..0
* supportingInfo[svcItem] ^short = "服務項目（svc_item）。申報 AA00 必填；申報 AA03 必填（填寫 C 碼服務）。原始電文可複選並以「|」分隔，於本 Profile 中每個選項各為一個 supportingInfo 切片實例；代碼以 supportingInfo.code 承載。選填「9 其他」時另以 svcItemOther 切片補充。"

* supportingInfo[svcItemOther].category = CS_TW_LTC_FeeAuditSupportingInfo#svcItemOther
* supportingInfo[svcItemOther].value[x] 1..1 MS
* supportingInfo[svcItemOther].value[x] only string
* supportingInfo[svcItemOther] ^short = "服務項目－其他（svc_item_other），字串長度 255。服務項目選填「9 其他」時填寫。"

* supportingInfo[svcPeople].category = CS_TW_LTC_FeeAuditSupportingInfo#svcPeople
* supportingInfo[svcPeople].code 1..1 MS
* supportingInfo[svcPeople].code from VS_TW_LTC_FeeAuditSvcPeople (required)
* supportingInfo[svcPeople].value[x] 0..0
* supportingInfo[svcPeople] ^short = "服務對象（svc_people）。申報 AA00 必填：1 服務使用者、2 家庭照顧者。原始電文可複選並以「|」分隔，於本 Profile 中每個選項各為一個 supportingInfo 切片實例；代碼以 supportingInfo.code 承載。"

* supportingInfo[svcContent].category = CS_TW_LTC_FeeAuditSupportingInfo#svcContent
* supportingInfo[svcContent].value[x] 1..1 MS
* supportingInfo[svcContent].value[x] only string
* supportingInfo[svcContent] ^short = "服務內容（svc_content），字串長度 4000。申報 AA00 必填。"

* supportingInfo[svcPoint].category = CS_TW_LTC_FeeAuditSupportingInfo#svcPoint
* supportingInfo[svcPoint].code 1..1 MS
* supportingInfo[svcPoint].code from VS_TW_LTC_FeeAuditSvcPoint (required)
* supportingInfo[svcPoint].value[x] 0..0
* supportingInfo[svcPoint] ^short = "服務重點（svc_point）。申報 AA00 填寫。原始電文可複選並以「|」分隔，於本 Profile 中每個選項各為一個 supportingInfo 切片實例；代碼以 supportingInfo.code 承載。選填「9 其他」時另以 svcPointOther 切片補充。"

* supportingInfo[svcPointOther].category = CS_TW_LTC_FeeAuditSupportingInfo#svcPointOther
* supportingInfo[svcPointOther].value[x] 1..1 MS
* supportingInfo[svcPointOther].value[x] only string
* supportingInfo[svcPointOther] ^short = "服務重點－其他（svc_point_other），字串長度 255。服務重點選填「9 其他」時填寫。"

* supportingInfo[svcTrace].category = CS_TW_LTC_FeeAuditSupportingInfo#svcTrace
* supportingInfo[svcTrace].value[x] 1..1 MS
* supportingInfo[svcTrace].value[x] only string
* supportingInfo[svcTrace] ^short = "追蹤服務適應與介入情形（svc_trace），字串長度 4000。申報 AA00 填寫。"

* supportingInfo[svcGoal].category = CS_TW_LTC_FeeAuditSupportingInfo#svcGoal
* supportingInfo[svcGoal].value[x] 1..1 MS
* supportingInfo[svcGoal].value[x] only string
* supportingInfo[svcGoal] ^short = "各項服務目標及整體計畫目標達成情形（svc_goal），字串長度 4000。申報 AA00 填寫。"

* supportingInfo[svcSuitable].category = CS_TW_LTC_FeeAuditSupportingInfo#svcSuitable
* supportingInfo[svcSuitable].value[x] 1..1 MS
* supportingInfo[svcSuitable].value[x] only string
* supportingInfo[svcSuitable] ^short = "整體計畫的適切性及需求異動（svc_suitable），字串長度 4000。申報 AA00 填寫。"

// ── C 碼專業服務組 ──────────────────────────────────────────────────
* supportingInfo[svcUnit].category = CS_TW_LTC_FeeAuditSupportingInfo#svcUnit
* supportingInfo[svcUnit].value[x] 1..1 MS
* supportingInfo[svcUnit].value[x] only string
* supportingInfo[svcUnit] ^short = "提供專業服務單位（svc_unit），字串長度 20，內容為 C 單位之單位代碼。申報 AA03 必填。"

* supportingInfo[svccGoalType].category = CS_TW_LTC_FeeAuditSupportingInfo#svccGoalType
* supportingInfo[svccGoalType].code 1..1 MS
* supportingInfo[svccGoalType].code from VS_TW_LTC_FeeAuditSvccGoalType (required)
* supportingInfo[svccGoalType].value[x] 0..0
* supportingInfo[svccGoalType] ^short = "專業服務復能目標達成情形（svcc_goal_type），單選。申報 C 碼填寫；代碼以 supportingInfo.code 承載。"

* supportingInfo[svccGoal].category = CS_TW_LTC_FeeAuditSupportingInfo#svccGoal
* supportingInfo[svccGoal].value[x] 1..1 MS
* supportingInfo[svccGoal].value[x] only string
* supportingInfo[svccGoal] ^short = "專業服務復能目標（svcc_goal），字串長度 4000。申報 C 碼填寫。"

* supportingInfo[svccContentTarget].category = CS_TW_LTC_FeeAuditSupportingInfo#svccContentTarget
* supportingInfo[svccContentTarget].value[x] 1..1 MS
* supportingInfo[svccContentTarget].value[x] only string
* supportingInfo[svccContentTarget] ^short = "專業服務指導對象（svcc_content_target），字串長度 4000。申報 C 碼填寫。"

* supportingInfo[svccContent].category = CS_TW_LTC_FeeAuditSupportingInfo#svccContent
* supportingInfo[svccContent].value[x] 1..1 MS
* supportingInfo[svccContent].value[x] only string
* supportingInfo[svccContent] ^short = "專業服務服務內容（svcc_content），字串長度 4000。申報 C 碼填寫。"

* supportingInfo[svccSuggest].category = CS_TW_LTC_FeeAuditSupportingInfo#svccSuggest
* supportingInfo[svccSuggest].value[x] 1..1 MS
* supportingInfo[svccSuggest].value[x] only string
* supportingInfo[svccSuggest] ^short = "專業服務指導建議摘要（svcc_suggest），字串長度 4000。申報 C 碼填寫。"

// ── 交通接送組（BD03、DA01）──────────────────────────────────────────
* supportingInfo[addrFrom].category = CS_TW_LTC_FeeAuditSupportingInfo#addrFrom
* supportingInfo[addrFrom].value[x] 1..1 MS
* supportingInfo[addrFrom].value[x] only Reference(LTCLocationFeeAuditPlace)
* supportingInfo[addrFrom] ^short = "出發地（addr1），申報 BD03、DA01 填寫，以 Reference(LTCLocationFeeAuditPlace) 表達。地址或地點名稱以 Location.name／Location.address 表達；出發地緯度（addrlat1）與經度（addrlng1）以 Location.position.latitude 與 Location.position.longitude 表達。依 v2.2.1 規定，出發地與出發地經緯度需至少填寫一組。"

* supportingInfo[addrTo].category = CS_TW_LTC_FeeAuditSupportingInfo#addrTo
* supportingInfo[addrTo].value[x] 1..1 MS
* supportingInfo[addrTo].value[x] only Reference(LTCLocationFeeAuditPlace)
* supportingInfo[addrTo] ^short = "目的地（addr2），申報 BD03、DA01 填寫，以 Reference(LTCLocationFeeAuditPlace) 表達。目的地可為醫院、社區式長照機構等非住家地點，故不使用 type 已固定為個案住所之 LTCLocation。地址或地點名稱以 Location.name／Location.address 表達；目的地緯度（addrlat2）與經度（addrlng2）以 Location.position.latitude 與 Location.position.longitude 表達。依 v2.2.1 規定，目的地與目的地經緯度需至少填寫一組。"

* supportingInfo[carNo].category = CS_TW_LTC_FeeAuditSupportingInfo#carNo
* supportingInfo[carNo].value[x] 1..1 MS
* supportingInfo[carNo].value[x] only string
* supportingInfo[carNo] ^short = "車號（car_no），字串長度 10。申報 BD03、DA01 必填。"

* supportingInfo[driver].category = CS_TW_LTC_FeeAuditSupportingInfo#driver
* supportingInfo[driver].value[x] 1..1 MS
* supportingInfo[driver].value[x] only string
* supportingInfo[driver] ^short = "駕駛員（driver），字串長度 20。申報 BD03、DA01 填寫。"

* supportingInfo[milage].category = CS_TW_LTC_FeeAuditSupportingInfo#milage
* supportingInfo[milage].value[x] 1..1 MS
* supportingInfo[milage].value[x] only Quantity
* supportingInfo[milage] ^short = "里程數（milage），數值型態，建議單位為公里（km）。申報 BD03、DA01 必填。"

* supportingInfo[bd03Type].category = CS_TW_LTC_FeeAuditSupportingInfo#bd03Type
* supportingInfo[bd03Type].code 1..1 MS
* supportingInfo[bd03Type].code from VS_TW_LTC_FeeAuditBD03Type (required)
* supportingInfo[bd03Type].value[x] 0..0
* supportingInfo[bd03Type] ^short = "社區式服務交通接送（BD03）服務使用類型（bd03_type），預設為 1（社區式長照機構）。申報 BD03 必填；代碼以 supportingInfo.code 承載。"

// ── 申報旗標與其他 ──────────────────────────────────────────────────
* supportingInfo[lastSvc].category = CS_TW_LTC_FeeAuditSupportingInfo#lastSvc
* supportingInfo[lastSvc].value[x] 1..1 MS
* supportingInfo[lastSvc].value[x] only boolean
* supportingInfo[lastSvc] ^short = "臨終日照顧（last_svc）。原始電文 Y 對應 true、N 對應 false，預設為 N（false）。"

* supportingInfo[missedVisit].category = CS_TW_LTC_FeeAuditSupportingInfo#missedVisit
* supportingInfo[missedVisit].value[x] 1..1 MS
* supportingInfo[missedVisit].value[x] only boolean
* supportingInfo[missedVisit] ^short = "訪視／服務未遇（missed_visit）。原始電文 Y（未遇）對應 true、N（正常）對應 false，預設為 N（false）。"

* supportingInfo[applyCovid19].category = CS_TW_LTC_FeeAuditSupportingInfo#applyCovid19
* supportingInfo[applyCovid19].value[x] 1..1 MS
* supportingInfo[applyCovid19].value[x] only boolean
* supportingInfo[applyCovid19] ^short = "是否為陪同施打 COVID-19 疫苗（apply_covid19）。原始電文 Y（陪同）對應 true、N（未陪同）對應 false，預設為 N（false）；僅開放 BA13、BA13a 申報。"

* supportingInfo[applyAA03].category = CS_TW_LTC_FeeAuditSupportingInfo#applyAA03
* supportingInfo[applyAA03].value[x] 1..1 MS
* supportingInfo[applyAA03].value[x] only boolean
* supportingInfo[applyAA03] ^short = "是否申報 AA03（apply_aa03）。原始電文 Y 對應 true、N 對應 false，預設為 N（false）。"

* supportingInfo[applyAA09].category = CS_TW_LTC_FeeAuditSupportingInfo#applyAA09
* supportingInfo[applyAA09].value[x] 1..1 MS
* supportingInfo[applyAA09].value[x] only boolean
* supportingInfo[applyAA09] ^short = "是否申報 AA09（apply_aa09）。原始電文 Y 對應 true、N 對應 false，預設為 Y（true）。"

* supportingInfo[aa10Status].category = CS_TW_LTC_FeeAuditSupportingInfo#aa10Status
* supportingInfo[aa10Status].code 1..1 MS
* supportingInfo[aa10Status].code from VS_TW_LTC_FeeAuditAA10Status (required)
* supportingInfo[aa10Status].value[x] 0..0
* supportingInfo[aa10Status] ^short = "AA10 申報狀態（aa10_status），預設為 0（未申報）；代碼以 supportingInfo.code 承載。"

* supportingInfo[remark].category = CS_TW_LTC_FeeAuditSupportingInfo#remark
* supportingInfo[remark].value[x] 1..1 MS
* supportingInfo[remark].value[x] only string
* supportingInfo[remark] ^short = "備註（remark），字串長度 4000。"

// ---------------------------------------------------------------------
// 六、支付碼條件必填規則（表1: 支付碼必填欄位一覽表）
// ---------------------------------------------------------------------
Invariant: ltc-feeaudit-1
Description: "申報照顧組合代碼 BD03 或 DA01（交通接送）時，應填寫里程數（milage）與車號（carNo）。"
Severity: #warning
Expression: "item.productOrService.coding.where(code = 'BD03' or code = 'DA01').exists() implies (supportingInfo.category.coding.where(code = 'milage').exists() and supportingInfo.category.coding.where(code = 'carNo').exists())"

Invariant: ltc-feeaudit-2
Description: "申報照顧組合代碼 BD03（社區式服務交通接送）時，應填寫服務使用類型（bd03Type）。"
Severity: #warning
Expression: "item.productOrService.coding.where(code = 'BD03').exists() implies supportingInfo.category.coding.where(code = 'bd03Type').exists()"

Invariant: ltc-feeaudit-3
Description: "申報照顧組合代碼 AA00（A 單位個案管理服務）時，應填寫服務項目（svcItem）、服務對象（svcPeople）與服務內容（svcContent）。"
Severity: #warning
Expression: "item.productOrService.coding.where(code = 'AA00').exists() implies (supportingInfo.category.coding.where(code = 'svcItem').exists() and supportingInfo.category.coding.where(code = 'svcPeople').exists() and supportingInfo.category.coding.where(code = 'svcContent').exists())"

Invariant: ltc-feeaudit-4
Description: "申報照顧組合代碼 AA03（專業服務）時，應填寫服務項目（svcItem）與提供專業服務單位（svcUnit）。"
Severity: #warning
Expression: "item.productOrService.coding.where(code = 'AA03').exists() implies (supportingInfo.category.coding.where(code = 'svcItem').exists() and supportingInfo.category.coding.where(code = 'svcUnit').exists())"
