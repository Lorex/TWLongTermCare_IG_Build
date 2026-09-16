// =====================================================================
// 長照支付審查－個案服務紀錄申報 (FeeApply) Profile
// 資料來源：衛生福利部 支付審核系統 API 規格說明書（照管平台）v2.2.1
//           貳、API 功能 一、服務記錄申報 (……/FeeApply)
//           (三) 傳送資料（PAGE 11-15）、(五) 表1: 支付碼必填欄位一覽表（PAGE 16-18）
// 一個 Bundle 記錄一次申報交易，一筆 Claim 記錄一筆服務紀錄。
// 識別碼使用 identifier Slice，服務補充資料使用 supportingInfo Slice。
// =====================================================================

Profile: LTCClaimFeeApply
Parent: Claim
Id: LTCClaimFeeApply
Title: "長照支付審查－個案服務紀錄申報"
Description: "此 Claim 以衛生福利部支付審核系統的服務記錄申報資料為基礎，用以表述一筆個案服務紀錄的申報內容。"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/LTCClaimFeeApply"
* ^version = "0.1.0"
* ^status = #draft
* ^purpose = "每筆 Claim 填寫一筆個案服務紀錄，包含接受服務的個案、服務單位、照顧服務員、服務時間及費用。同次交易的服務紀錄以 Bundle 打包，每次最多 5000 筆。應依照顧組合代碼填寫所需的補充資料。"

* obeys ltc-feeaudit-1 and ltc-feeaudit-2 and ltc-feeaudit-3 and ltc-feeaudit-4

// ---------------------------------------------------------------------
// 一、基本欄位
// ---------------------------------------------------------------------
* status 1..1 MS
* status = #active
* status ^short = "申報單的狀態。[應填入 active]"

* type 1..1 MS
* type ^short = "申報單的類別。[應填入 professional]"
* type.coding 1..1 MS
* type.coding.system 1..1 MS
* type.coding.system = $ClaimType
* type.coding.code 1..1 MS
* type.coding.code = #professional

* use 1..1 MS
* use = #claim
* use ^short = "申報單的用途。[應填入 claim]"

* patient 1..1 MS
* patient only Reference(LTCPatient)
* patient ^short = "接受服務的個案。[應填入對應 Patient 的 Reference]"
* patient ^definition = "應參照符合 LTCPatient 的個案資料。"

* created 1..1 MS
* created ^short = "申報單的建立時間。[應填入日期時間，例如 2026-09-17T09:30:00+08:00]"

* provider 1..1 MS
* provider only Reference(LTCOrganization)
* provider ^short = "提出申報的特約服務單位。[應填入對應 Organization 的 Reference]"

* priority 1..1
* priority ^short = "申報處理的優先順序，長照申報一般填入 normal。"

* insurance 1..* MS
* insurance ^short = "長照給付來源，至少應填寫一筆。"
* insurance ^definition = "應填寫給付來源的序號，並以 focal 標示本次申報使用的給付來源。coverage 應填入對應 Coverage 的 Reference；如僅提供給付名稱，可在 coverage.display 填入「長期照顧給付及支付基準」。"

* insurer 0..1 MS
* insurer ^short = "受理審查的主管機關。[應填入對應 Organization 的 Reference]"

* total 0..1 MS
* total ^short = "本筆服務紀錄的申報金額。[應填入 Money，幣別為 TWD]"

// ---------------------------------------------------------------------
// 二、申報資料識別碼
// ---------------------------------------------------------------------
* identifier 1..* MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^short = "申報資料的識別碼"
* identifier ^definition = "應分別填寫服務紀錄識別碼、所屬交易序號及支審年月。每項識別資料的 system 填入指定的識別碼系統，value 填入實際內容。"
* identifier contains
    objid 1..1 MS and
    transNo 0..1 MS and
    yyyymm 0..1 MS

* identifier[objid].system 1..1 MS
* identifier[objid].system = "http://ltc-ig.fhir.tw/identifier/feeaudit/objid"
* identifier[objid].value 1..1 MS
* identifier[objid].value ^short = "服務紀錄識別碼。[應填入最長 20 個字元的字串]"
* identifier[objid] ^short = "服務紀錄識別碼。[應填入 Identifier]"
* identifier[objid] ^definition = "由服務提供單位的系統產生，應為全域唯一的識別碼。支審系統中沒有該識別碼時新增服務紀錄，已有該識別碼時更新紀錄。"

* identifier[transNo].system 1..1 MS
* identifier[transNo].system = "http://ltc-ig.fhir.tw/identifier/feeaudit/trans-no"
* identifier[transNo].value 1..1 MS
* identifier[transNo].value ^short = "交易序號。[應填入最長 10 個字元的字串]"
* identifier[transNo] ^short = "交易序號。[應填入 Identifier]"
* identifier[transNo] ^definition = "用以識別本筆服務紀錄所屬的申報交易。同一交易序號每次最多申報 5000 筆服務紀錄。"

* identifier[yyyymm].system 1..1 MS
* identifier[yyyymm].system = "http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm"
* identifier[yyyymm].value 1..1 MS
* identifier[yyyymm].value ^short = "支審年月。[應填入 6 碼西元年月，格式為 yyyyMM，例如 201901]"
* identifier[yyyymm] ^short = "支審年月。[應填入 Identifier]"

// ---------------------------------------------------------------------
// 三、照顧服務員
// ---------------------------------------------------------------------
* careTeam 0..* MS
* careTeam ^short = "提供服務的照顧服務員"
* careTeam ^definition = "每位照顧服務員分別填寫，序號由 1 起依序編列。申報 AA00、B 碼、G 碼、SC 碼、C 碼、BD03 或 DA01 時，應至少填寫第一位照顧服務員。"
* careTeam.sequence 1..1 MS
* careTeam.sequence ^short = "照顧服務員的序號。[應依序填入 1 至 5 的整數]"
* careTeam.provider 1..1 MS
* careTeam.provider only Reference(LTCPractitioner or LTCPractitionerRole or LTCOrganization)
* careTeam.provider ^short = "照顧服務員或服務提供者。[應填入對應 Practitioner、PractitionerRole 或 Organization 的 Reference]"

// ---------------------------------------------------------------------
// 四、服務明細
// ---------------------------------------------------------------------
* item 1..1 MS
* item ^short = "個案服務紀錄的內容，每筆服務紀錄應填寫一筆服務明細。"
* item.sequence 1..1
* item.sequence ^short = "服務明細的序號。[應填入 1]"

* item.productOrService 1..1 MS
* item.productOrService from VS_TW_LTC_ServiceItem (extensible)
* item.productOrService ^short = "照顧組合代碼，如為 A 單位個案管理服務，則填入 AA00。[應填入最長 10 個字元的代碼]"
* item.productOrService ^definition = "應在 coding 填入長照照顧組合值集的代碼。A 單位個案管理服務應填入 AA00，並續填服務項目、服務對象與服務內容。"

* item.category 0..1 MS
* item.category from VS_TW_LTC_FeeAuditFeeType (required)
* item.category ^short = "服務類別。[應填入以下代碼之一：1 補助 | 2 自費]"

* item.quantity 0..1 MS
* item.quantity ^short = "申報數量，申報各類服務時皆應填寫。[應填入 Quantity，value 為服務數量]"

* item.unitPrice 0..1 MS
* item.unitPrice ^short = "服務單價，申報 BD03、DA01 時必填，其餘服務可選填。[應填入 Money，幣別為 TWD]"

* item.net 0..1 MS
* item.net ^short = "服務明細的小計金額，為單價乘以數量。[應填入 Money，幣別為 TWD]"

* item.serviced[x] 1..1 MS
* item.serviced[x] only Period
* item.serviced[x] ^short = "服務的開始與結束時間。[應填入 Period]"
* item.serviced[x] ^definition = "start 填入服務開始的日期與時間，end 填入服務結束的日期與時間。時間採 24 小時制並包含時區，例如 2026-09-17T09:30:00+08:00。跨日服務應填寫實際結束日期。"

* item.location[x] 0..1
* item.location[x] only Reference(LTCLocationFeeAuditPlace)
* item.location[x] ^short = "服務地點。[應填入對應 Location 的 Reference]"
* item.location[x] ^definition = "申報 BD03、DA01 時，可參照接送的目的地。完整的出發地與目的地資料，應分別填寫於 supportingInfo 的 addrFrom、addrTo Slice。"

// ---------------------------------------------------------------------
// 五、服務紀錄補充資料
// ---------------------------------------------------------------------
* supportingInfo 0..* MS
* supportingInfo ^slicing.discriminator.type = #pattern
* supportingInfo ^slicing.discriminator.path = "category"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^short = "服務紀錄的補充資料，應依申報的照顧組合代碼填寫。"
* supportingInfo ^definition = "應依各 Slice 說明的適用服務與填寫條件提供資料。代碼類資料填入 code，文字、布林值、數量或地點參照則填入各 Slice 指定的 value[x]。"
* supportingInfo.category from VS_TW_LTC_FeeAuditSupportingInfo (extensible)
* supportingInfo.category ^short = "補充資料的類別。[應填入支付審查服務紀錄補充資訊類別代碼]"
* supportingInfo.code ^short = "補充資料的代碼。[應依資料類別填入對應 Slice 值集的代碼]"
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
* supportingInfo[svcItem] ^short = "服務項目，申報 AA00、AA03 時必填。如選擇其他，則續填服務項目的補充說明。"
* supportingInfo[svcItem] ^definition = "代碼填入 code。申報 AA03 時應填寫 C 碼服務項目。可複選，每個選項分別填寫一筆服務項目。選項為：1 電訪、2 家訪、3 與案家討論服務內容調整、4 接受申訴、5 照會或連結至服務提供單位、9 其他。選擇 9 時，應續填其他服務項目的說明。"

* supportingInfo[svcItemOther].category = CS_TW_LTC_FeeAuditSupportingInfo#svcItemOther
* supportingInfo[svcItemOther].value[x] 1..1 MS
* supportingInfo[svcItemOther].value[x] only string
* supportingInfo[svcItemOther] ^short = "其他服務項目的說明，服務項目選擇「9 其他」時填寫。[應在 valueString 填入最長 255 個字元的字串]"

* supportingInfo[svcPeople].category = CS_TW_LTC_FeeAuditSupportingInfo#svcPeople
* supportingInfo[svcPeople].code 1..1 MS
* supportingInfo[svcPeople].code from VS_TW_LTC_FeeAuditSvcPeople (required)
* supportingInfo[svcPeople].value[x] 0..0
* supportingInfo[svcPeople] ^short = "服務對象，申報 AA00 時必填。[可填入以下代碼，可複選：1 服務使用者 | 2 家庭照顧者]"
* supportingInfo[svcPeople] ^definition = "代碼填入 code。每個選項分別填寫一筆服務對象；如同時服務個案與家庭照顧者，則分別填入 1 與 2。"

* supportingInfo[svcContent].category = CS_TW_LTC_FeeAuditSupportingInfo#svcContent
* supportingInfo[svcContent].value[x] 1..1 MS
* supportingInfo[svcContent].value[x] only string
* supportingInfo[svcContent] ^short = "服務內容，申報 AA00 時必填。[應在 valueString 填入最長 4000 個字元的字串]"
* supportingInfo[svcContent] ^definition = "應填寫本次實際提供的服務內容。"

* supportingInfo[svcPoint].category = CS_TW_LTC_FeeAuditSupportingInfo#svcPoint
* supportingInfo[svcPoint].code 1..1 MS
* supportingInfo[svcPoint].code from VS_TW_LTC_FeeAuditSvcPoint (required)
* supportingInfo[svcPoint].value[x] 0..0
* supportingInfo[svcPoint] ^short = "服務重點，申報 AA00 時填寫。如選擇其他，則續填服務重點的補充說明。"
* supportingInfo[svcPoint] ^definition = "代碼填入 code。可複選，每個選項分別填寫一筆服務重點。選項為：1 追蹤長照需要者與各項服務的連結情形、2 計畫與內容異動討論、3 協助長照需要者或家屬連結其他資源、4 接受長照服務諮詢及處理、5 接受申訴、9 其他。選擇 9 時，應續填其他服務重點的說明。"

* supportingInfo[svcPointOther].category = CS_TW_LTC_FeeAuditSupportingInfo#svcPointOther
* supportingInfo[svcPointOther].value[x] 1..1 MS
* supportingInfo[svcPointOther].value[x] only string
* supportingInfo[svcPointOther] ^short = "其他服務重點的說明，服務重點選擇「9 其他」時填寫。[應在 valueString 填入最長 255 個字元的字串]"

* supportingInfo[svcTrace].category = CS_TW_LTC_FeeAuditSupportingInfo#svcTrace
* supportingInfo[svcTrace].value[x] 1..1 MS
* supportingInfo[svcTrace].value[x] only string
* supportingInfo[svcTrace] ^short = "服務適應情形與後續協助，申報 AA00 時填寫。[應在 valueString 填入最長 4000 個字元的字串]"
* supportingInfo[svcTrace] ^definition = "應填寫個案接受服務後的適應情形，以及已提供或需要安排的後續協助。"

* supportingInfo[svcGoal].category = CS_TW_LTC_FeeAuditSupportingInfo#svcGoal
* supportingInfo[svcGoal].value[x] 1..1 MS
* supportingInfo[svcGoal].value[x] only string
* supportingInfo[svcGoal] ^short = "各項服務與整體照顧計畫的目標達成情形，申報 AA00 時填寫。[應在 valueString 填入最長 4000 個字元的字串]"
* supportingInfo[svcGoal] ^definition = "應填寫各項服務目標與整體照顧計畫目標的達成情形。尚未達成的目標可補充原因與後續安排。"

* supportingInfo[svcSuitable].category = CS_TW_LTC_FeeAuditSupportingInfo#svcSuitable
* supportingInfo[svcSuitable].value[x] 1..1 MS
* supportingInfo[svcSuitable].value[x] only string
* supportingInfo[svcSuitable] ^short = "照顧計畫是否合適及需求變動的說明，申報 AA00 時填寫。[應在 valueString 填入最長 4000 個字元的字串]"
* supportingInfo[svcSuitable] ^definition = "應填寫目前照顧計畫是否符合個案需求，以及需要調整的服務內容。"

// ── C 碼專業服務組 ──────────────────────────────────────────────────
* supportingInfo[svcUnit].category = CS_TW_LTC_FeeAuditSupportingInfo#svcUnit
* supportingInfo[svcUnit].value[x] 1..1 MS
* supportingInfo[svcUnit].value[x] only string
* supportingInfo[svcUnit] ^short = "提供專業服務的 C 單位代碼，申報 AA03 時必填。[應在 valueString 填入最長 20 個字元的字串]"

* supportingInfo[svccGoalType].category = CS_TW_LTC_FeeAuditSupportingInfo#svccGoalType
* supportingInfo[svccGoalType].code 1..1 MS
* supportingInfo[svccGoalType].code from VS_TW_LTC_FeeAuditSvccGoalType (required)
* supportingInfo[svccGoalType].value[x] 0..0
* supportingInfo[svccGoalType] ^short = "復能目標達成情形，申報 C 碼時填寫。[應填入 1 至 5 其中一個代碼]"
* supportingInfo[svccGoalType] ^definition = "代碼填入 code。1 為尚未滿 1 照顧組合次數，2 為已滿且已達目標，3 為已滿但尚未達目標，4 為未滿且已達目標，5 為未滿但尚未達目標。"

* supportingInfo[svccGoal].category = CS_TW_LTC_FeeAuditSupportingInfo#svccGoal
* supportingInfo[svccGoal].value[x] 1..1 MS
* supportingInfo[svccGoal].value[x] only string
* supportingInfo[svccGoal] ^short = "專業服務的復能目標，申報 C 碼時填寫。[應在 valueString 填入最長 4000 個字元的字串]"
* supportingInfo[svccGoal] ^definition = "應填寫專業服務預期協助個案達成的復能目標。"

* supportingInfo[svccContentTarget].category = CS_TW_LTC_FeeAuditSupportingInfo#svccContentTarget
* supportingInfo[svccContentTarget].value[x] 1..1 MS
* supportingInfo[svccContentTarget].value[x] only string
* supportingInfo[svccContentTarget] ^short = "接受專業服務指導的對象，申報 C 碼時填寫。[應在 valueString 填入最長 4000 個字元的字串]"
* supportingInfo[svccContentTarget] ^definition = "應填寫本次接受專業服務指導的人員，例如個案、家庭照顧者或照顧服務員。"

* supportingInfo[svccContent].category = CS_TW_LTC_FeeAuditSupportingInfo#svccContent
* supportingInfo[svccContent].value[x] 1..1 MS
* supportingInfo[svccContent].value[x] only string
* supportingInfo[svccContent] ^short = "專業服務的內容，申報 C 碼時填寫。[應在 valueString 填入最長 4000 個字元的字串]"
* supportingInfo[svccContent] ^definition = "應填寫本次實際提供的專業服務與指導內容。"

* supportingInfo[svccSuggest].category = CS_TW_LTC_FeeAuditSupportingInfo#svccSuggest
* supportingInfo[svccSuggest].value[x] 1..1 MS
* supportingInfo[svccSuggest].value[x] only string
* supportingInfo[svccSuggest] ^short = "專業服務的指導與建議，申報 C 碼時填寫。[應在 valueString 填入最長 4000 個字元的字串]"
* supportingInfo[svccSuggest] ^definition = "應填寫專業人員提出的照顧建議及後續應執行的事項。"

// ── 交通接送組（BD03、DA01）──────────────────────────────────────────
* supportingInfo[addrFrom].category = CS_TW_LTC_FeeAuditSupportingInfo#addrFrom
* supportingInfo[addrFrom].value[x] 1..1 MS
* supportingInfo[addrFrom].value[x] only Reference(LTCLocationFeeAuditPlace)
* supportingInfo[addrFrom] ^short = "接送的出發地，申報 BD03、DA01 時填寫。[應在 valueReference 填入對應 Location 的 Reference]"
* supportingInfo[addrFrom] ^definition = "應參照符合 LTCLocationFeeAuditPlace 的地點資料。地點名稱填入 Location.name，地址填入 Location.address；如提供經緯度，應同時填寫 Location.position.latitude 與 Location.position.longitude。"

* supportingInfo[addrTo].category = CS_TW_LTC_FeeAuditSupportingInfo#addrTo
* supportingInfo[addrTo].value[x] 1..1 MS
* supportingInfo[addrTo].value[x] only Reference(LTCLocationFeeAuditPlace)
* supportingInfo[addrTo] ^short = "接送的目的地，申報 BD03、DA01 時填寫。[應在 valueReference 填入對應 Location 的 Reference]"
* supportingInfo[addrTo] ^definition = "應參照符合 LTCLocationFeeAuditPlace 的地點資料。地點名稱填入 Location.name，地址填入 Location.address；如提供經緯度，應同時填寫 Location.position.latitude 與 Location.position.longitude。"

* supportingInfo[carNo].category = CS_TW_LTC_FeeAuditSupportingInfo#carNo
* supportingInfo[carNo].value[x] 1..1 MS
* supportingInfo[carNo].value[x] only string
* supportingInfo[carNo] ^short = "接送車輛的車牌號碼，申報 BD03、DA01 時必填。[應在 valueString 填入最長 10 個字元的字串]"

* supportingInfo[driver].category = CS_TW_LTC_FeeAuditSupportingInfo#driver
* supportingInfo[driver].value[x] 1..1 MS
* supportingInfo[driver].value[x] only string
* supportingInfo[driver] ^short = "接送駕駛員的姓名，申報 BD03、DA01 時填寫。[應在 valueString 填入最長 20 個字元的字串]"

* supportingInfo[milage].category = CS_TW_LTC_FeeAuditSupportingInfo#milage
* supportingInfo[milage].value[x] 1..1 MS
* supportingInfo[milage].value[x] only Quantity
* supportingInfo[milage] ^short = "接送里程數，申報 BD03、DA01 時必填。[應在 valueQuantity 填入里程數與單位，建議單位為公里（km）]"

* supportingInfo[bd03Type].category = CS_TW_LTC_FeeAuditSupportingInfo#bd03Type
* supportingInfo[bd03Type].code 1..1 MS
* supportingInfo[bd03Type].code from VS_TW_LTC_FeeAuditBD03Type (required)
* supportingInfo[bd03Type].value[x] 0..0
* supportingInfo[bd03Type] ^short = "BD03 接送服務的使用類型，申報 BD03 時必填，預設為 1。[應填入以下代碼之一：1 社區式長照機構 | 2 社區服務據點（不含身障類）| 3 輔具中心 | 4 身障日間照顧服務]"
* supportingInfo[bd03Type] ^definition = "代碼填入 code。"

// 申報選項與其他資料
* supportingInfo[lastSvc].category = CS_TW_LTC_FeeAuditSupportingInfo#lastSvc
* supportingInfo[lastSvc].value[x] 1..1 MS
* supportingInfo[lastSvc].value[x] only boolean
* supportingInfo[lastSvc] ^short = "是否於個案臨終當天提供照顧，預設為 false。[應填入以下布林值之一：true 是 | false 否]"
* supportingInfo[lastSvc] ^definition = "應在 valueBoolean 填入 true 或 false。"

* supportingInfo[missedVisit].category = CS_TW_LTC_FeeAuditSupportingInfo#missedVisit
* supportingInfo[missedVisit].value[x] 1..1 MS
* supportingInfo[missedVisit].value[x] only boolean
* supportingInfo[missedVisit] ^short = "訪視或服務時是否未遇到個案，預設為 false。[應填入以下布林值之一：true 未遇到 | false 正常訪視或服務]"
* supportingInfo[missedVisit] ^definition = "應在 valueBoolean 填入 true 或 false。"

* supportingInfo[applyCovid19].category = CS_TW_LTC_FeeAuditSupportingInfo#applyCovid19
* supportingInfo[applyCovid19].value[x] 1..1 MS
* supportingInfo[applyCovid19].value[x] only boolean
* supportingInfo[applyCovid19] ^short = "是否陪同接種 COVID-19 疫苗，僅供 BA13、BA13a 申報，預設為 false。[應填入以下布林值之一：true 是 | false 否]"
* supportingInfo[applyCovid19] ^definition = "應在 valueBoolean 填入 true 或 false。"

* supportingInfo[applyAA03].category = CS_TW_LTC_FeeAuditSupportingInfo#applyAA03
* supportingInfo[applyAA03].value[x] 1..1 MS
* supportingInfo[applyAA03].value[x] only boolean
* supportingInfo[applyAA03] ^short = "是否申報 AA03，預設為 false。[應填入以下布林值之一：true 是 | false 否]"
* supportingInfo[applyAA03] ^definition = "應在 valueBoolean 填入 true 或 false。"

* supportingInfo[applyAA09].category = CS_TW_LTC_FeeAuditSupportingInfo#applyAA09
* supportingInfo[applyAA09].value[x] 1..1 MS
* supportingInfo[applyAA09].value[x] only boolean
* supportingInfo[applyAA09] ^short = "是否申報 AA09，預設為 true。[應填入以下布林值之一：true 是 | false 否]"
* supportingInfo[applyAA09] ^definition = "應在 valueBoolean 填入 true 或 false。"

* supportingInfo[aa10Status].category = CS_TW_LTC_FeeAuditSupportingInfo#aa10Status
* supportingInfo[aa10Status].code 1..1 MS
* supportingInfo[aa10Status].code from VS_TW_LTC_FeeAuditAA10Status (required)
* supportingInfo[aa10Status].value[x] 0..0
* supportingInfo[aa10Status] ^short = "AA10 申報狀態，預設為 0。[應填入以下代碼之一：0 未申報 | 1 申請待確認 | 2 確認為非緊急服務 | 3 確認為緊急服務]"
* supportingInfo[aa10Status] ^definition = "代碼填入 supportingInfo.code。"

* supportingInfo[remark].category = CS_TW_LTC_FeeAuditSupportingInfo#remark
* supportingInfo[remark].value[x] 1..1 MS
* supportingInfo[remark].value[x] only string
* supportingInfo[remark] ^short = "服務紀錄的備註。[應在 valueString 填入最長 4000 個字元的字串]"

// ---------------------------------------------------------------------
// 六、支付碼條件必填規則（表1: 支付碼必填欄位一覽表）
// ---------------------------------------------------------------------
Invariant: ltc-feeaudit-1
Description: "申報照顧組合代碼 BD03 或 DA01（交通接送）時，應填寫里程數與車號。"
Severity: #warning
Expression: "item.productOrService.coding.where(code = 'BD03' or code = 'DA01').exists() implies (supportingInfo.category.coding.where(code = 'milage').exists() and supportingInfo.category.coding.where(code = 'carNo').exists())"

Invariant: ltc-feeaudit-2
Description: "申報照顧組合代碼 BD03（社區式服務交通接送）時，應填寫服務使用類型。"
Severity: #warning
Expression: "item.productOrService.coding.where(code = 'BD03').exists() implies supportingInfo.category.coding.where(code = 'bd03Type').exists()"

Invariant: ltc-feeaudit-3
Description: "申報照顧組合代碼 AA00（A 單位個案管理服務）時，應填寫服務項目、服務對象與服務內容。"
Severity: #warning
Expression: "item.productOrService.coding.where(code = 'AA00').exists() implies (supportingInfo.category.coding.where(code = 'svcItem').exists() and supportingInfo.category.coding.where(code = 'svcPeople').exists() and supportingInfo.category.coding.where(code = 'svcContent').exists())"

Invariant: ltc-feeaudit-4
Description: "申報照顧組合代碼 AA03（專業服務）時，應填寫服務項目與提供專業服務單位。"
Severity: #warning
Expression: "item.productOrService.coding.where(code = 'AA03').exists() implies (supportingInfo.category.coding.where(code = 'svcItem').exists() and supportingInfo.category.coding.where(code = 'svcUnit').exists())"
