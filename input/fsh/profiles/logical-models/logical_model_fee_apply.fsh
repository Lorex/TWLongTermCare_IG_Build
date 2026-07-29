// =====================================================================
// 長照支付審查－服務記錄申報 (FeeApply) 邏輯模型
// 資料來源：衛生福利部 支付審核系統 API 規格說明書（照管平台）v2.2.1
//           貳、API 功能 一、服務記錄申報 (……/FeeApply)
//           (三) 傳送資料、(五) 表1: 支付碼必填欄位一覽表
// 說明：本邏輯模型將 API Schema 原封不動轉為 FHIR Logical Model，
//       欄位名稱採規格書英文欄位名（camelCase 化），短標題採規格書中文欄位名。
// =====================================================================

Logical: LTCFeeApplyModel
Id: LTCFeeApplyModel
Title: "長照支付審查－服務記錄申報邏輯模型"
Description: "此邏輯模型以衛生福利部「支付審核系統 API 規格說明書（照管平台）v2.2.1」之「服務記錄申報 (FeeApply)」傳送資料為基礎，完整描述服務提供單位向支付審核系統申報個案服務紀錄時所需的資料結構與欄位準備指引。每個交易序號每次申報最多 5000 筆個案服務紀錄；每筆服務記錄具唯一的識別碼 (objid)，識別碼不存在時新增服務紀錄，已存在時更新服務紀錄。欄位之必填規則除傳送資料表所標示者外，另依規格書「表1: 支付碼必填欄位一覽表」隨照顧組合代碼 (govItemCd) 而異，屬條件必填，故於本模型中一律以 0..1 表示並於定義中說明條件。"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/LTCFeeApplyModel"
* ^version = "0.1.0"
* ^status = #draft
* ^experimental = false

// ---------------------------------------------------------------------
// 第一層：apply_info 申報資料
// ---------------------------------------------------------------------
* applyInfo 1..1 BackboneElement "申報資料" "服務記錄申報之申報資料本體 (apply_info)，單筆物件，包含本次申報批次的表頭資訊與其下的個案服務紀錄集合。"
  * writeoffYyyymm 1..1 string "支審年月" "本次申報所屬之支付審核年月，字串長度 6，格式為 yyyyMM（例如 201901）。必填欄位。"
  * transNo 1..1 string "交易序號" "本次申報之交易序號，字串長度 10，由服務提供單位自訂且於同一支審年月內唯一；同一個月可多次執行服務紀錄申報。必填欄位。"
  * records 1..1 integer "服務記錄筆數" "本次申報所傳送的個案服務紀錄總筆數，數值型態，應與 caseSvcRecords 實際筆數一致。必填欄位。"
  * amount 0..1 decimal "服務紀錄金額" "本次申報所傳送之服務紀錄總金額，數值型態。非必填欄位。"
  * cases 1..1 integer "申請個案數" "本次申報所涵蓋之申請個案數（不重複個案人數），數值型態。必填欄位。"

  // -------------------------------------------------------------------
  // 第二層：case_svc_records 個案服務紀錄（多筆，最多 5000 筆）
  // -------------------------------------------------------------------
  * caseSvcRecords 1..* BackboneElement "個案服務紀錄" "個案服務紀錄 (case_svc_records)，多筆物件；每個交易序號每次申報最多 5000 筆。該服務記錄之案件若已執行「申報確認通知」，則不允許再執行服務紀錄申報。必填欄位。"

    // === 共通核心欄位（各支付碼共同適用） ===
    * objid 1..1 string "識別碼" "服務紀錄之唯一識別碼，字串長度 20，由服務提供單位系統產生。申報之識別碼不存在時，於支審系統新增服務紀錄；識別碼已存在時，則更新支審系統之服務紀錄。表1 中各支付碼皆為必填。"
    * idn 1..1 string "個案身分證字號" "接受服務之個案（長照需要者）身分證字號，字串長度 10。表1 中各支付碼皆為必填。"
    * svcDt 1..1 date "服務日期" "提供服務之日期，原始格式為字串長度 8 之 yyyyMMdd。表1 中各支付碼皆為必填。"
    * svcEndDt 0..1 date "服務結束日期" "服務結束之日期，原始格式為字串長度 8 之 yyyyMMdd；空白時表示與服務日期 (svcDt) 為同一日。表1 中為非必填欄位。"
    * govItemCd 1..1 code "照顧組合代碼" "政府核定之照顧組合（支付）代碼，字串長度 10；A 單位服務紀錄請輸入 AA00。此欄位決定其他欄位之條件必填規則（詳見表1: 支付碼必填欄位一覽表）。表1 中各支付碼皆為必填。"
    * svcFeeTp 1..1 code "服務類別" "服務之費用類別，字串長度 1；1:補助、2:自費。表1 中各支付碼皆為必填。"
    * price 0..1 decimal "單價" "該筆服務之單價，數值型態。表1 條件必填：申報 BD03、DA01 為必填；申報 AA00、B 碼、G 碼、SC 碼、C 碼、AA03 為非必填。"
    * amount 1..1 decimal "數量" "該筆服務之申報數量，數值型態。表1 中各支付碼皆為必填。"
    * svcUserNo1 0..1 string "照顧服務員身分證字號1" "提供服務之第 1 位照顧服務員身分證字號，字串長度 40。表1 條件必填：申報 AA00、B 碼、G 碼、SC 碼、C 碼、BD03、DA01 為必填；申報 AA03 為非必填。"
    * svcUserNo2 0..1 string "照顧服務員身分證字號2" "提供服務之第 2 位照顧服務員身分證字號，字串長度 40。表1 中為非必填欄位。"
    * svcUserNo3 0..1 string "照顧服務員身分證字號3" "提供服務之第 3 位照顧服務員身分證字號，字串長度 40。表1 中為非必填欄位。"
    * svcUserNo4 0..1 string "照顧服務員身分證字號4" "提供服務之第 4 位照顧服務員身分證字號，字串長度 40。表1 中為非必填欄位。"
    * svcUserNo5 0..1 string "照顧服務員身分證字號5" "提供服務之第 5 位照顧服務員身分證字號，字串長度 40。表1 中為非必填欄位。"
    * startHh 0..1 string "起始時段-小時" "服務起始時間之小時，字串長度 2，採 24 小時制，不足兩碼補 0（9 應填 09）。表1 條件必填：申報 B 碼、G 碼、SC 碼、C 碼、BD03、DA01 為必填；申報 AA00、AA03 為非必填。"
    * startMm 0..1 string "起始時段-分鐘" "服務起始時間之分鐘，字串長度 2，不足兩碼補 0（5 應填 05）。表1 條件必填：申報 B 碼、G 碼、SC 碼、C 碼、BD03、DA01 為必填；申報 AA00、AA03 為非必填。"
    * endHh 0..1 string "結束時段-小時" "服務結束時間之小時，字串長度 2，採 24 小時制，不足兩碼補 0（9 應填 09）。表1 條件必填：申報 B 碼、G 碼、SC 碼、C 碼、BD03、DA01 為必填；申報 AA00、AA03 為非必填。"
    * endMm 0..1 string "結束時段-分鐘" "服務結束時間之分鐘，字串長度 2，不足兩碼補 0（5 應填 05）。表1 條件必填：申報 B 碼、G 碼、SC 碼、C 碼、BD03、DA01 為必填；申報 AA00、AA03 為非必填。"
    * remark 0..1 string "備註" "該筆服務紀錄之備註說明，字串長度 4000。表1 中為非必填欄位。"

    // === AA00 個管紀錄組（A 單位個案管理服務紀錄專用） ===
    * svcItem 0..1 string "服務項目" "個案管理服務之服務項目，字串長度 20；1.電訪、2.家訪、3.與案家討論服務內容調整、4.接受申訴、5.照會或連結至服務提供單位、9.其他；多個選項以「|」分隔（例如 1|2）。表1 條件必填：申報 AA00 為必填、申報 AA03 為必填（填寫 C 碼服務）；申報 B 碼、G 碼、SC 碼、C 碼、BD03、DA01 不填。"
    * svcItemOther 0..1 string "服務項目-其他" "當服務項目 (svcItem) 選填「9.其他」時之補充說明，字串長度 255。表1 條件必填：申報 AA00 為非必填；其餘支付碼不填。"
    * svcPeople 0..1 string "服務對象" "個案管理服務之服務對象，字串長度 10；1.服務使用者、2.家庭照顧者；多個選項以「|」分隔（例如 1|2）。表1 條件必填：申報 AA00 為必填；其餘支付碼不填。"
    * svcContent 0..1 string "服務內容" "個案管理服務之服務內容描述，字串長度 4000。表1 條件必填：申報 AA00 為必填；其餘支付碼不填。"
    * svcPoint 0..1 string "服務重點" "個案管理服務之服務重點，字串長度 20；1.追蹤長照需要者與各項服務之連結情形、2.計畫與內容異動討論、3.協助長照需要者或其家屬其他資源連結、4.接受長照需要者及其家屬有關長照服務諮詢與處理、5.接受申訴、9.其他；多個選項以「|」分隔（例如 1|2）。表1 條件必填：申報 AA00 為非必填；其餘支付碼不填。"
    * svcPointOther 0..1 string "服務重點-其他" "當服務重點 (svcPoint) 選填「9.其他」時之補充說明，字串長度 255。表1 條件必填：申報 AA00 為非必填；其餘支付碼不填。"
    * svcTrace 0..1 string "追蹤服務適應與介入情形" "個案管理服務中追蹤長照需要者服務適應與介入情形之描述，字串長度 4000。表1 條件必填：申報 AA00 為非必填；其餘支付碼不填。"
    * svcGoal 0..1 string "各項服務目標及整體計畫目標達成情形" "個案管理服務中各項服務目標及整體照顧計畫目標達成情形之描述，字串長度 4000。表1 條件必填：申報 AA00 為非必填；其餘支付碼不填。"
    * svcSuitable 0..1 string "整體計畫的適切性及需求異動" "個案管理服務中整體照顧計畫適切性評估及需求異動之描述，字串長度 4000。表1 條件必填：申報 AA00 為非必填；其餘支付碼不填。"

    // === C 碼專業服務組（專業服務紀錄，含 AA03 專業服務單位） ===
    * svcUnit 0..1 string "提供專業服務單位" "提供專業服務之 C 單位（特約服務單位）之單位代碼，字串長度 20。表1 條件必填：申報 AA03 為必填；其餘支付碼不填。"
    * svccGoalType 0..1 code "專業服務復能目標達成情形" "專業服務復能目標之達成情形，字串長度 1；1.尚未滿 1 照顧組合之次數、2.已滿 1 照顧組合之次數且已達目標、3.已滿 1 照顧組合之次數但尚未達目標、4.未滿 1 照顧組合之次數且已達目標、5.未滿 1 照顧組合之次數但尚未達目標。表1 條件必填：申報 C 碼為非必填；其餘支付碼不填。"
    * svccGoal 0..1 string "專業服務復能目標" "專業服務所設定之復能目標描述，字串長度 4000。表1 條件必填：申報 C 碼為非必填；其餘支付碼不填。"
    * svccContentTarget 0..1 string "專業服務指導對象" "專業服務指導之對象描述，字串長度 4000。表1 條件必填：申報 C 碼為非必填；其餘支付碼不填。"
    * svccContent 0..1 string "專業服務服務內容" "專業服務實際提供之服務內容描述，字串長度 4000。表1 條件必填：申報 C 碼為非必填；其餘支付碼不填。"
    * svccSuggest 0..1 string "專業服務指導建議摘要" "專業服務指導之建議摘要，字串長度 4000。表1 條件必填：申報 C 碼為非必填；其餘支付碼不填。"

    // === 交通接送組（BD03 社區式服務交通接送、DA01 交通接送） ===
    * addr1 0..1 string "出發地" "交通接送之出發地地址或地點名稱，字串長度 40。表1 條件必填：申報 BD03、DA01 填寫，依 v2.2.1 規定（適用 113 年 6 月 1 日後服務紀錄），出發地 (addr1)、出發地-緯度 (addrlat1)、出發地-經度 (addrlng1) 需至少填寫一個欄位；已填寫出發地者可不必再填寫出發地經緯度。其餘支付碼不填。"
    * addr2 0..1 string "目的地" "交通接送之目的地地址或地點名稱，字串長度 40。表1 條件必填：申報 BD03、DA01 填寫，依 v2.2.1 規定（適用 113 年 6 月 1 日後服務紀錄），目的地 (addr2)、目的地-緯度 (addrlat2)、目的地-經度 (addrlng2) 需至少填寫一個欄位；已填寫目的地者可不必再填寫目的地經緯度。其餘支付碼不填。"
    * addrlat1 0..1 decimal "出發地-緯度" "交通接送出發地之緯度，數值型態。表1 條件必填：申報 BD03、DA01 填寫，依 v2.2.1 規定，出發地-緯度與出發地-經度同時填寫時，可不必再填寫出發地 (addr1)。其餘支付碼不填。"
    * addrlng1 0..1 decimal "出發地-經度" "交通接送出發地之經度，數值型態。表1 條件必填：申報 BD03、DA01 填寫，依 v2.2.1 規定，出發地-緯度與出發地-經度同時填寫時，可不必再填寫出發地 (addr1)。其餘支付碼不填。"
    * addrlat2 0..1 decimal "目的地-緯度" "交通接送目的地之緯度，數值型態。表1 條件必填：申報 BD03、DA01 填寫，依 v2.2.1 規定，目的地-緯度與目的地-經度同時填寫時，可不必再填寫目的地 (addr2)。其餘支付碼不填。"
    * addrlng2 0..1 decimal "目的地-經度" "交通接送目的地之經度，數值型態。表1 條件必填：申報 BD03、DA01 填寫，依 v2.2.1 規定，目的地-緯度與目的地-經度同時填寫時，可不必再填寫目的地 (addr2)。其餘支付碼不填。"
    * milage 0..1 decimal "里程數" "交通接送之行駛里程數，數值型態。表1 條件必填：申報 BD03、DA01 為必填（v2.2.1 起調整為必填欄位，適用 113 年 6 月 1 日後服務紀錄）；其餘支付碼不填。"
    * carNo 0..1 string "車號" "交通接送使用車輛之車牌號碼，字串長度 10。表1 條件必填：申報 BD03、DA01 為必填（v2.2.1 起調整為必填欄位，適用 113 年 6 月 1 日後服務紀錄）；其餘支付碼不填。"
    * driver 0..1 string "駕駛員" "交通接送之駕駛員姓名，字串長度 20。表1 條件必填：申報 BD03、DA01 為非必填；其餘支付碼不填。"
    * bd03Type 0..1 code "社區式服務交通接送(BD03)服務使用類型" "社區式服務交通接送之服務使用類型，字串長度 1；1.社區式長照機構、2.社區服務據點（不含身障類）、3.輔具中心、4.身障日間照顧服務，預設為 1。表1 條件必填：申報 BD03 為必填；其餘支付碼不填。"

    // === 旗標組（申報狀態與註記欄位） ===
    * lastSvc 0..1 code "臨終日照顧" "是否為臨終日照顧，字串長度 1；Y:是、N:否，預設為 N。表1 中為非必填欄位。"
    * missedVisit 0..1 code "訪視/服務未遇" "本次訪視或服務是否未遇個案，字串長度 1；Y.未遇、N.正常，預設為 N。表1 中預設為 N。"
    * applyCovid19 0..1 code "是否為陪同施打COVID-19疫苗" "本次服務是否為陪同施打 COVID-19 疫苗，字串長度 1；Y.陪同、N.未陪同，預設為 N。表1 條件必填：僅開放 BA13、BA13a 申報（B 碼）且為非必填；其餘支付碼不填。"
    * applyAa03 0..1 code "是否申報AA03" "是否一併申報 AA03（專業服務），字串長度 20；Y:是、N:否，預設為 N。表1 中為非必填欄位，預設為 N。"
    * applyAa09 0..1 code "是否申報AA09" "是否一併申報 AA09，字串長度 20；Y:是、N:否，預設為 Y。表1 中預設為 Y。"
    * aa10Status 0..1 code "AA10申報狀態" "AA10 之申報狀態，字串長度 1；0.未申報、1.申請待確認、2.確認為非緊急服務、3.確認為緊急服務，預設為 0。表1 中預設為 0。"


// =====================================================================
// Mapping：服務記錄申報邏輯模型對應至 FHIR Claim (LTCClaimFeeApply)
// =====================================================================
Mapping: LTCFeeApplyModelMapping
Id: LTCFeeApplyModelMapping
Title: "長照支付審查－服務記錄申報邏輯模型對應"
Description: "此對應說明「長照支付審查－服務記錄申報邏輯模型 (LTCFeeApplyModel)」各欄位與 FHIR 資源之對應關係，目標 Profile 為 LTCClaimFeeApply（Claim）。對應原則：識別性欄位對應至 Claim.identifier 之具名切片；個案對應至 Claim.patient；照顧組合代碼、服務期間、費用類別、單價與數量對應至 Claim.item；照顧服務員對應至 Claim.careTeam.provider；各支付碼特化欄位則以 Claim.supportingInfo 之具名切片承載，並以 supportingInfo.category 之代碼（取自 CS_TW_LTC_FeeAuditSupportingInfo）區分。須留意 FHIR R4 之 Claim.supportingInfo.value[x] 僅允許 boolean、string、Quantity、Attachment 與 Reference，不含 CodeableConcept，故代碼型欄位一律落在 supportingInfo.code（該切片之 value[x] 已收緊為 0..0）。批次表頭（apply_info）之欄位屬 Bundle 層級，不落在單一 Claim，另於下方標註。"
Source: LTCFeeApplyModel
Target: "http://ltc-ig.fhir.tw/StructureDefinition/LTCClaimFeeApply"

// --- 申報批次表頭（apply_info；屬 Bundle 層級，不落在單一 Claim）---
* applyInfo -> "Claim" "申報資料整體對應至一次申報交易，於 FHIR 中以 LTCBundleFeeApply 打包多個 LTCClaimFeeApply"
* applyInfo.writeoffYyyymm -> "Claim.identifier.where(system='http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm').value" "支審年月（yyyyMM），複寫於本批次內每一筆 Claim 之 identifier[yyyymm]"
* applyInfo.transNo -> "Claim.identifier.where(system='http://ltc-ig.fhir.tw/identifier/feeaudit/trans-no').value" "交易序號，落於 Bundle.identifier.value，並複寫於本批次內每一筆 Claim 之 identifier[transNo]"
* applyInfo.records -> "Claim" "服務記錄筆數，為統計值；等於 LTCBundleFeeApply 中 entry[claim] 之筆數（Bundle.entry.resource.ofType(Claim).count()），本 IG 不另設欄位"
* applyInfo.amount -> "Claim.total" "服務紀錄金額，為統計值；等於本批次內各 Claim.total.value 之合計，本 IG 不另設欄位"
* applyInfo.cases -> "Claim.patient" "申請個案數，為統計值；等於本批次內不重複 Claim.patient 之數量，本 IG 不另設欄位"

// --- 個案服務紀錄（每筆對應一個 Claim）---
* applyInfo.caseSvcRecords -> "Claim" "每筆個案服務紀錄對應一個 LTCClaimFeeApply (Claim) 實例"

// 共通核心欄位
* applyInfo.caseSvcRecords.objid -> "Claim.identifier.where(system='http://ltc-ig.fhir.tw/identifier/feeaudit/objid').value" "服務紀錄唯一識別碼"
* applyInfo.caseSvcRecords.idn -> "Claim.patient" "以 Reference(LTCPatient) 指向個案，個案身分證字號記錄於 Patient.identifier.value"
* applyInfo.caseSvcRecords.svcDt -> "Claim.item.servicedPeriod.start" "服務日期，與起始時段組成服務期間起點"
* applyInfo.caseSvcRecords.svcEndDt -> "Claim.item.servicedPeriod.end" "服務結束日期，空白時與服務日期同日"
* applyInfo.caseSvcRecords.govItemCd -> "Claim.item.productOrService" "照顧組合代碼，取值自 VS_TW_LTC_ServiceItem；A 單位個案管理服務紀錄填 AA00"
* applyInfo.caseSvcRecords.svcFeeTp -> "Claim.item.category" "服務類別（1:補助、2:自費），取值自 VS_TW_LTC_FeeAuditFeeType"
* applyInfo.caseSvcRecords.price -> "Claim.item.unitPrice" "單價"
* applyInfo.caseSvcRecords.amount -> "Claim.item.quantity" "數量"
* applyInfo.caseSvcRecords.svcUserNo1 -> "Claim.careTeam.where(sequence=1).provider" "照顧服務員1，以 Reference(Practitioner) 表示，身分證字號記錄於 Practitioner.identifier.value"
* applyInfo.caseSvcRecords.svcUserNo2 -> "Claim.careTeam.where(sequence=2).provider" "照顧服務員2"
* applyInfo.caseSvcRecords.svcUserNo3 -> "Claim.careTeam.where(sequence=3).provider" "照顧服務員3"
* applyInfo.caseSvcRecords.svcUserNo4 -> "Claim.careTeam.where(sequence=4).provider" "照顧服務員4"
* applyInfo.caseSvcRecords.svcUserNo5 -> "Claim.careTeam.where(sequence=5).provider" "照顧服務員5"
* applyInfo.caseSvcRecords.startHh -> "Claim.item.servicedPeriod.start" "起始時段-小時，與服務日期組成服務期間起點時間"
* applyInfo.caseSvcRecords.startMm -> "Claim.item.servicedPeriod.start" "起始時段-分鐘，與服務日期組成服務期間起點時間"
* applyInfo.caseSvcRecords.endHh -> "Claim.item.servicedPeriod.end" "結束時段-小時，與服務結束日期組成服務期間終點時間"
* applyInfo.caseSvcRecords.endMm -> "Claim.item.servicedPeriod.end" "結束時段-分鐘，與服務結束日期組成服務期間終點時間"
* applyInfo.caseSvcRecords.remark -> "Claim.supportingInfo.where(category.coding.code='remark').valueString" "備註，supportingInfo.category 代碼為 remark"

// AA00 個管紀錄組
* applyInfo.caseSvcRecords.svcItem -> "Claim.supportingInfo.where(category.coding.code='svcItem').code" "服務項目，為代碼型欄位，取值自 VS_TW_LTC_FeeAuditSvcItem；原始電文之複選（以「|」分隔）表達為多個同 category 之 supportingInfo 切片實例"
* applyInfo.caseSvcRecords.svcItemOther -> "Claim.supportingInfo.where(category.coding.code='svcItemOther').valueString" "服務項目-其他，supportingInfo.category 代碼為 svcItemOther"
* applyInfo.caseSvcRecords.svcPeople -> "Claim.supportingInfo.where(category.coding.code='svcPeople').code" "服務對象，為代碼型欄位，取值自 VS_TW_LTC_FeeAuditSvcPeople；複選時表達為多個切片實例"
* applyInfo.caseSvcRecords.svcContent -> "Claim.supportingInfo.where(category.coding.code='svcContent').valueString" "服務內容，supportingInfo.category 代碼為 svcContent"
* applyInfo.caseSvcRecords.svcPoint -> "Claim.supportingInfo.where(category.coding.code='svcPoint').code" "服務重點，為代碼型欄位，取值自 VS_TW_LTC_FeeAuditSvcPoint；複選時表達為多個切片實例"
* applyInfo.caseSvcRecords.svcPointOther -> "Claim.supportingInfo.where(category.coding.code='svcPointOther').valueString" "服務重點-其他，supportingInfo.category 代碼為 svcPointOther"
* applyInfo.caseSvcRecords.svcTrace -> "Claim.supportingInfo.where(category.coding.code='svcTrace').valueString" "追蹤服務適應與介入情形，supportingInfo.category 代碼為 svcTrace"
* applyInfo.caseSvcRecords.svcGoal -> "Claim.supportingInfo.where(category.coding.code='svcGoal').valueString" "各項服務目標及整體計畫目標達成情形，supportingInfo.category 代碼為 svcGoal"
* applyInfo.caseSvcRecords.svcSuitable -> "Claim.supportingInfo.where(category.coding.code='svcSuitable').valueString" "整體計畫的適切性及需求異動，supportingInfo.category 代碼為 svcSuitable"

// C 碼專業服務組
* applyInfo.caseSvcRecords.svcUnit -> "Claim.supportingInfo.where(category.coding.code='svcUnit').valueString" "提供專業服務單位，內容為 C 單位之單位代碼（長度 20），以字串承載；supportingInfo.category 代碼為 svcUnit"
* applyInfo.caseSvcRecords.svccGoalType -> "Claim.supportingInfo.where(category.coding.code='svccGoalType').code" "專業服務復能目標達成情形，為代碼型欄位，取值自 VS_TW_LTC_FeeAuditSvccGoalType"
* applyInfo.caseSvcRecords.svccGoal -> "Claim.supportingInfo.where(category.coding.code='svccGoal').valueString" "專業服務復能目標，supportingInfo.category 代碼為 svccGoal"
* applyInfo.caseSvcRecords.svccContentTarget -> "Claim.supportingInfo.where(category.coding.code='svccContentTarget').valueString" "專業服務指導對象，supportingInfo.category 代碼為 svccContentTarget"
* applyInfo.caseSvcRecords.svccContent -> "Claim.supportingInfo.where(category.coding.code='svccContent').valueString" "專業服務服務內容，supportingInfo.category 代碼為 svccContent"
* applyInfo.caseSvcRecords.svccSuggest -> "Claim.supportingInfo.where(category.coding.code='svccSuggest').valueString" "專業服務指導建議摘要，supportingInfo.category 代碼為 svccSuggest"

// 交通接送組（BD03、DA01）；出發地與目的地之名稱、地址與經緯度一併以 Location 表達
* applyInfo.caseSvcRecords.addr1 -> "Claim.supportingInfo.where(category.coding.code='addrFrom').valueReference" "出發地，以 Reference(LTCLocationFeeAuditPlace) 表示，地點名稱或地址記錄於 Location.name／Location.address；supportingInfo.category 代碼為 addrFrom"
* applyInfo.caseSvcRecords.addr2 -> "Claim.supportingInfo.where(category.coding.code='addrTo').valueReference" "目的地，以 Reference(LTCLocationFeeAuditPlace) 表示，地點名稱或地址記錄於 Location.name／Location.address；supportingInfo.category 代碼為 addrTo"
* applyInfo.caseSvcRecords.addrlat1 -> "Claim.supportingInfo.where(category.coding.code='addrFrom').valueReference" "出發地-緯度，記錄於出發地 Location 之 position.latitude"
* applyInfo.caseSvcRecords.addrlng1 -> "Claim.supportingInfo.where(category.coding.code='addrFrom').valueReference" "出發地-經度，記錄於出發地 Location 之 position.longitude"
* applyInfo.caseSvcRecords.addrlat2 -> "Claim.supportingInfo.where(category.coding.code='addrTo').valueReference" "目的地-緯度，記錄於目的地 Location 之 position.latitude"
* applyInfo.caseSvcRecords.addrlng2 -> "Claim.supportingInfo.where(category.coding.code='addrTo').valueReference" "目的地-經度，記錄於目的地 Location 之 position.longitude"
* applyInfo.caseSvcRecords.milage -> "Claim.supportingInfo.where(category.coding.code='milage').valueQuantity" "里程數，建議單位為公里（km）；supportingInfo.category 代碼為 milage"
* applyInfo.caseSvcRecords.carNo -> "Claim.supportingInfo.where(category.coding.code='carNo').valueString" "車號，supportingInfo.category 代碼為 carNo"
* applyInfo.caseSvcRecords.driver -> "Claim.supportingInfo.where(category.coding.code='driver').valueString" "駕駛員，supportingInfo.category 代碼為 driver"
* applyInfo.caseSvcRecords.bd03Type -> "Claim.supportingInfo.where(category.coding.code='bd03Type').code" "社區式服務交通接送服務使用類型，為代碼型欄位，取值自 VS_TW_LTC_FeeAuditBD03Type"

// 旗標組
* applyInfo.caseSvcRecords.lastSvc -> "Claim.supportingInfo.where(category.coding.code='lastSvc').valueBoolean" "臨終日照顧（Y 對應 true、N 對應 false），supportingInfo.category 代碼為 lastSvc"
* applyInfo.caseSvcRecords.missedVisit -> "Claim.supportingInfo.where(category.coding.code='missedVisit').valueBoolean" "訪視/服務未遇（Y 對應 true、N 對應 false），supportingInfo.category 代碼為 missedVisit"
* applyInfo.caseSvcRecords.applyCovid19 -> "Claim.supportingInfo.where(category.coding.code='applyCovid19').valueBoolean" "是否為陪同施打 COVID-19 疫苗（Y 對應 true、N 對應 false），supportingInfo.category 代碼為 applyCovid19"
* applyInfo.caseSvcRecords.applyAa03 -> "Claim.supportingInfo.where(category.coding.code='applyAA03').valueBoolean" "是否申報 AA03（Y 對應 true、N 對應 false），supportingInfo.category 代碼為 applyAA03（大小寫須完全相符，該代碼系統為 case sensitive）"
* applyInfo.caseSvcRecords.applyAa09 -> "Claim.supportingInfo.where(category.coding.code='applyAA09').valueBoolean" "是否申報 AA09（Y 對應 true、N 對應 false），supportingInfo.category 代碼為 applyAA09（大小寫須完全相符）"
* applyInfo.caseSvcRecords.aa10Status -> "Claim.supportingInfo.where(category.coding.code='aa10Status').code" "AA10 申報狀態，為代碼型欄位，取值自 VS_TW_LTC_FeeAuditAA10Status"
