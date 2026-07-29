// =====================================================================
// 長照支付審查－服務記錄申報（FeeApply）範例：DA01 交通接送
// 資料來源：衛生福利部 支付審核系統 API 規格說明書（照管平台）v2.2.1
//           貳、API 功能 一、服務記錄申報（……/FeeApply）範例電文（PAGE 14-15）
//
// 原始電文摘要：
//   apply_info.writeoff_yyyymm = "201901"、trans_no = "A0001"、records = 1、cases = 1
//   case_svc_records[0]：
//     objid = "00000000000000000006"、idn = "A123456789"、svc_dt = "20190105"
//     gov_item_cd = "DA01"、svc_fee_tp = "1"、price = 430、amount = 1
//     svc_user_no1 = "A123456789"、svc_user_no2 = "C123456789"、svc_user_no3 = "D123456789"
//     start_hh/start_mm = "13"/"30"、end_hh/end_mm = "14"/"00"、remark = "1"
//     last_svc = "N"、addr1 = "個案住家"、addr2 = "亞東醫院"
//     car_no = "1111-AA"、driver = "黃OO"、apply_aa09 = "N"
//     aa10_status = "0"、missed_visit = "N"
//
// 說明：
//   1. 個案（Patient）、服務提供單位（Organization）、照顧服務員（Practitioner）
//      直接引用本 IG 既有範例資源，避免重複建立同性質範例。
//   2. 本檔所用之外部代碼系統別名（$ClaimType、$ProcessPriority、$UCUM、$V3RoleCode）
//      統一定義於 input/fsh/aliases.fsh。
//   3. 交通接送之起訖地採 LTCLocationFeeAuditPlace（type 不設固定值），
//      以正確表達目的地為醫院等非住家地點。
// =====================================================================



// ---------------------------------------------------------------------
// 一、出發地與目的地（交通接送 addr1 / addr2 與其經緯度）
// ---------------------------------------------------------------------
Instance: ltc-location-feeapply-home-example
InstanceOf: LTCLocationFeeAuditPlace
Title: "長照支付審查－交通接送出發地（個案住家）範例"
Description: "服務記錄申報（FeeApply）DA01 交通接送之出發地範例，對應規格書欄位 addr1（出發地）「個案住家」，並以 Location.position 承載出發地緯度（addrlat1）與出發地經度（addrlng1）。地點類型為個案住所（PTRES）。"
Usage: #example

* status = #active
* mode = #instance
* type = $V3RoleCode#PTRES "Patient's Residence"
* name = "個案住家"
* description = "個案王小明之住家，為本次交通接送（DA01）之出發地。"
* address.use = #home
* address.type = #physical
* address.text = "台北市中山區中山北路100號"
* position.latitude = 25.0625
* position.longitude = 121.5240


Instance: ltc-location-feeapply-hospital-example
InstanceOf: LTCLocationFeeAuditPlace
Title: "長照支付審查－交通接送目的地（亞東醫院）範例"
Description: "服務記錄申報（FeeApply）DA01 交通接送之目的地範例，對應規格書欄位 addr2（目的地）「亞東醫院」，並以 Location.position 承載目的地緯度（addrlat2）與目的地經度（addrlng2）。地點類型為醫院（HOSP），非個案住所。"
Usage: #example

* status = #active
* mode = #instance
* type = $V3RoleCode#HOSP "Hospital"
* name = "亞東醫院"
* description = "本次交通接送（DA01）之目的地，個案前往就醫之醫療機構。"
* address.use = #work
* address.type = #physical
* address.text = "新北市板橋區南雅南路二段21號"
* position.latitude = 25.0022
* position.longitude = 121.4527


// ---------------------------------------------------------------------
// 二、個案服務紀錄（一筆 objid 對應一個 Claim）
// ---------------------------------------------------------------------
Instance: ltc-claim-feeapply-da01-example
InstanceOf: LTCClaimFeeApply
Title: "長照支付審查－個案服務紀錄申報（DA01 交通接送）範例"
Description: "服務記錄申報（FeeApply）之單筆個案服務紀錄範例，對應規格書 PAGE 14-15 範例電文之 case_svc_records[0]：服務紀錄識別碼（objid）00000000000000000006、個案身分證字號（idn）A123456789、服務日期（svc_dt）2019 年 1 月 5 日、照顧組合代碼（gov_item_cd）DA01 交通接送、服務類別（svc_fee_tp）補助、單價（price）430 元、數量（amount）1、服務時段 13:30 至 14:00、出發地（addr1）個案住家、目的地（addr2）亞東醫院、車號（car_no）1111-AA、駕駛員（driver）黃OO。"
Usage: #example

// ── 基本欄位（FHIR Claim 必填）────────────────────────────────────
* status = #active
* type.coding.system = $ClaimType
* type.coding.code = #professional
* use = #claim
* patient = Reference(ltc-patient-sdk-example)
* created = "2019-02-05T10:00:00+08:00"
* provider = Reference(ltc-organization-sdk-example)
* priority.coding.system = $ProcessPriority
* priority.coding.code = #normal

// 最小保險區塊（FHIR Claim 必填結構）；長照情境以 display 註明給付來源
* insurance[0].sequence = 1
* insurance[0].focal = true
* insurance[0].coverage.display = "長期照顧給付及支付基準"

// ── 業務識別碼 ────────────────────────────────────────────────────
// objid：服務紀錄識別碼（20 碼）
* identifier[objid].system = "http://ltc-ig.fhir.tw/identifier/feeaudit/objid"
* identifier[objid].value = "00000000000000000006"
// trans_no：交易序號
* identifier[transNo].system = "http://ltc-ig.fhir.tw/identifier/feeaudit/trans-no"
* identifier[transNo].value = "A0001"
// writeoff_yyyymm：支審年月（西元 yyyyMM）
* identifier[yyyymm].system = "http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm"
* identifier[yyyymm].value = "201901"

// ── 照顧服務員（svc_user_no1 ～ svc_user_no5）──────────────────────
// careTeam.sequence 1 對應 svc_user_no1（申報 DA01 時為必填）。
// 規格書範例另有 svc_user_no2 = C123456789、svc_user_no3 = D123456789，
// 於實務上以 careTeam.sequence 2、3 各自指向對應之 Practitioner 表達；
// 本範例為重複利用 IG 既有資源，僅示範 svc_user_no1。
* careTeam[0].sequence = 1
* careTeam[0].provider = Reference(ltc-practitioner-sdk-example)

// ── 服務明細（一筆服務紀錄僅一個 item）────────────────────────────
* item.sequence = 1
* item.productOrService = CS_TW_LTC_ServiceItem#DA01 "交通接送"
* item.category = CS_TW_LTC_FeeAuditFeeType#1 "補助"
* item.quantity.value = 1
* item.unitPrice.value = 430
* item.unitPrice.currency = #TWD
* item.net.value = 430
* item.net.currency = #TWD
// svc_dt = 20190105、start_hh:start_mm = 13:30、end_hh:end_mm = 14:00
// svc_end_dt 為空白，表示服務結束日期與服務日期同一日
* item.servicedPeriod.start = "2019-01-05T13:30:00+08:00"
* item.servicedPeriod.end = "2019-01-05T14:00:00+08:00"
* item.locationReference = Reference(ltc-location-feeapply-hospital-example)

* total.value = 430
* total.currency = #TWD

// ── 碼別特化欄位（交通接送組：BD03、DA01）──────────────────────────
// addr1：出發地（含 addrlat1、addrlng1）
* supportingInfo[addrFrom].sequence = 1
* supportingInfo[addrFrom].valueReference = Reference(ltc-location-feeapply-home-example)
// addr2：目的地（含 addrlat2、addrlng2）
* supportingInfo[addrTo].sequence = 2
* supportingInfo[addrTo].valueReference = Reference(ltc-location-feeapply-hospital-example)
// car_no：車號
* supportingInfo[carNo].sequence = 3
* supportingInfo[carNo].valueString = "1111-AA"
// driver：駕駛員
* supportingInfo[driver].sequence = 4
* supportingInfo[driver].valueString = "黃OO"
// milage：里程數（申報 BD03、DA01 必填），以公里表示
* supportingInfo[milage].sequence = 5
* supportingInfo[milage].valueQuantity.value = 12
* supportingInfo[milage].valueQuantity.unit = "公里"
* supportingInfo[milage].valueQuantity.system = $UCUM
* supportingInfo[milage].valueQuantity.code = #km

// ── 申報旗標與其他 ────────────────────────────────────────────────
// last_svc = "N"（非臨終日照顧）
* supportingInfo[lastSvc].sequence = 6
* supportingInfo[lastSvc].valueBoolean = false
// missed_visit = "N"（訪視/服務正常）
* supportingInfo[missedVisit].sequence = 7
* supportingInfo[missedVisit].valueBoolean = false
// apply_aa09 = "N"（未申報 AA09）
* supportingInfo[applyAA09].sequence = 8
* supportingInfo[applyAA09].valueBoolean = false
// aa10_status = "0"（未申報）
* supportingInfo[aa10Status].sequence = 9
* supportingInfo[aa10Status].code = CS_TW_LTC_FeeAuditAA10Status#0 "未申報"
// remark = "1"
* supportingInfo[remark].sequence = 10
* supportingInfo[remark].valueString = "1"


// ---------------------------------------------------------------------
// 三、一次申報交易之打包（trans_no = A0001）
// ---------------------------------------------------------------------
Instance: ltc-bundle-feeapply-da01-example
InstanceOf: LTCBundleFeeApply
Title: "長照支付審查－服務記錄申報交易（DA01 交通接送）範例"
Description: "服務記錄申報（FeeApply）一次申報交易之打包範例，對應規格書 PAGE 14-15 範例電文：交易序號（trans_no）A0001、支審年月（writeoff_yyyymm）201901、服務紀錄筆數（records）1 筆、個案數（cases）1 位。Bundle 以 collection 型態收納該次申報之個案服務紀錄（Claim）、服務對象（Patient）、服務提供單位（Organization）、照顧服務員（Practitioner）及交通接送之出發地與目的地（Location）。"
Usage: #example

* type = #collection
* identifier.system = "http://ltc-ig.fhir.tw/identifier/feeaudit/trans-no"
* identifier.value = "A0001"
* timestamp = "2019-02-05T10:00:00+08:00"

// 個案服務紀錄（case_svc_records）
* entry[claim].fullUrl = "http://example.org/Claim/ltc-claim-feeapply-da01-example"
* entry[claim].resource = ltc-claim-feeapply-da01-example

// 服務對象（idn）
* entry[patient].fullUrl = "http://example.org/Patient/ltc-patient-sdk-example"
* entry[patient].resource = ltc-patient-sdk-example

// 服務提供單位
* entry[organization].fullUrl = "http://example.org/Organization/ltc-organization-sdk-example"
* entry[organization].resource = ltc-organization-sdk-example

// 照顧服務員（svc_user_no1）
* entry[practitioner].fullUrl = "http://example.org/Practitioner/ltc-practitioner-sdk-example"
* entry[practitioner].resource = ltc-practitioner-sdk-example

// 交通接送出發地（addr1）與目的地（addr2）
* entry[location][0].fullUrl = "http://example.org/Location/ltc-location-feeapply-home-example"
* entry[location][0].resource = ltc-location-feeapply-home-example
* entry[location][1].fullUrl = "http://example.org/Location/ltc-location-feeapply-hospital-example"
* entry[location][1].resource = ltc-location-feeapply-hospital-example
