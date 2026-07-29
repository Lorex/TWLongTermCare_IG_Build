CodeSystem: CS_TW_LTC_FeeAuditSupportingInfo
Id: cs-tw-ltc-feeaudit-supporting-info
Title: "支付審查－服務紀錄補充資訊類別"
Description: "《衛生福利部 支付審核系統 API 規格說明書（照管平台）v2.2.1》「服務記錄申報（FeeApply）」中，隨照顧組合代碼（gov_item_cd）而特化之欄位分類碼，作為 Claim.supportingInfo.category 之取值，用以承載 AA00 個管服務、C 碼專業服務、交通接送（BD03、DA01）及各項申報旗標等補充資訊。"
* ^url = "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-supporting-info"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete

// ── AA00 個管服務組（申報 AA00 填寫）──────────────────────────────
* #svcItem "服務項目" "對應規格書欄位 svc_item。申報 AA00 必填寫：1.電訪、2.家訪、3.與案家討論服務內容調整、4.接受申訴、5.照會或連結至服務提供單位、9.其他；多個選項以「|」分隔。申報 AA03 必填寫 C 碼服務。"
* #svcItemOther "服務項目-其他" "對應規格書欄位 svc_item_other。服務項目為其他（9）時填寫。"
* #svcPeople "服務對象" "對應規格書欄位 svc_people。申報 AA00 填寫（必填）：1.服務使用者、2.家庭照顧者；多個選項以「|」分隔。"
* #svcContent "服務內容" "對應規格書欄位 svc_content。申報 AA00 填寫（必填）。"
* #svcPoint "服務重點" "對應規格書欄位 svc_point。申報 AA00 填寫：1.追蹤長照需要者與各項服務之連結情形、2.計畫與內容異動討論、3.協助長照需要者或其家屬其他資源連結、4.接受長照需要者及其家屬有關長照服務諮詢、處理、5.接受申訴、9.其他；多個選項以「|」分隔。"
* #svcPointOther "服務重點-其他" "對應規格書欄位 svc_point_other。服務重點為其他（9）時填寫。"
* #svcTrace "追蹤服務適應與介入情形" "對應規格書欄位 svc_trace。申報 AA00 填寫。"
* #svcGoal "各項服務目標及整體計畫目標達成情形" "對應規格書欄位 svc_goal。申報 AA00 填寫。"
* #svcSuitable "整體計畫的適切性及需求異動" "對應規格書欄位 svc_suitable。申報 AA00 填寫。"

// ── C 碼專業服務組（申報 C 碼填寫）────────────────────────────────
* #svccGoalType "專業服務復能目標達成情形" "對應規格書欄位 svcc_goal_type。申報 C 碼填寫：1.尚未滿 1 照顧組合之次數、2.已滿 1 照顧組合之次數且已達目標、3.已滿 1 照顧組合之次數但尚未達目標、4.未滿 1 照顧組合之次數且已達目標、5.未滿 1 照顧組合之次數但尚未達目標。"
* #svccGoal "專業服務復能目標" "對應規格書欄位 svcc_goal。申報 C 碼填寫。"
* #svccContentTarget "專業服務指導對象" "對應規格書欄位 svcc_content_target。申報 C 碼填寫。"
* #svccContent "專業服務服務內容" "對應規格書欄位 svcc_content。申報 C 碼填寫。"
* #svccSuggest "專業服務指導建議摘要" "對應規格書欄位 svcc_suggest。申報 C 碼填寫。"
* #svcUnit "提供專業服務單位" "對應規格書欄位 svc_unit。申報 AA03 填寫（必填），內容為 C 單位之單位代碼。"

// ── 交通接送組（申報 BD03、DA01 填寫）─────────────────────────────
* #addrFrom "出發地" "對應規格書欄位 addr1。申報 BD03、DA01 填寫；另可搭配出發地-緯度（addrlat1）與出發地-經度（addrlng1）。"
* #addrTo "目的地" "對應規格書欄位 addr2。申報 BD03、DA01 填寫；另可搭配目的地-緯度（addrlat2）與目的地-經度（addrlng2）。"
* #carNo "車號" "對應規格書欄位 car_no。申報 BD03、DA01 必填寫。"
* #driver "駕駛員" "對應規格書欄位 driver。申報 BD03、DA01 填寫。"
* #milage "里程數" "對應規格書欄位 milage。申報 BD03、DA01 必填寫。"
* #bd03Type "社區式服務交通接送服務使用類型" "對應規格書欄位 bd03_type，即社區式服務交通接送（BD03）服務使用類型。申報 BD03 必填寫：1.社區式長照機構、2.社區服務據點（不含身障類）、3.輔具中心、4.身障日間照顧服務；預設為 1。"

// ── 申報旗標與其他────────────────────────────────────────────────
* #lastSvc "臨終日照顧" "對應規格書欄位 last_svc。Y：是、N：否，預設為 N。"
* #missedVisit "訪視/服務未遇" "對應規格書欄位 missed_visit。Y：未遇、N：正常，預設為 N。"
* #applyCovid19 "是否為陪同施打COVID-19疫苗" "對應規格書欄位 apply_covid19。Y：陪同、N：未陪同，預設為 N。"
* #applyAA03 "是否申報AA03" "對應規格書欄位 apply_aa03。Y：是、N：否，預設為 N。"
* #applyAA09 "是否申報AA09" "對應規格書欄位 apply_aa09。Y：是、N：否，預設為 Y。"
* #aa10Status "AA10申報狀態" "對應規格書欄位 aa10_status。0.未申報、1.申請待確認、2.確認為非緊急服務、3.確認為緊急服務；預設為 0。"
* #remark "備註" "對應規格書欄位 remark，最長 4000 字。"
