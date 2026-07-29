// 長照支付審查－(查詢B)分案審核明細查詢 回覆範例
// 資料來源：衛生福利部 支付審核系統 API 規格說明書（照管平台）v2.2.1
//           五、(查詢B)分案審核明細查詢（……/appResultQuery，query_type = B）
//           PAGE 25～28「(四) 回覆明細(Response.result)」欄位表與範例 JSON
//
// 對應 Profile：
//   - LTCClaimResponseFeeAudit      分案審核明細
//   - LTCOperationOutcomeFeeAudit   申報檢核結果
//   - LTCBundleFeeAuditResponse     分案審核明細回覆打包
//
// 說明：
//   1. 規格書範例之 err_records 兩筆的 err_code／err_message 皆為 null，無法填入
//      ClaimResponse.error（error.code 為 1..1 且綁定錯誤代碼值集），故本範例不建立
//      ClaimResponse.error，改以獨立的 LTCOperationOutcomeFeeAudit 示範一筆實際檢核錯誤。
//   2. 規格書範例之各下載路徑字串含 PDF 抽取造成的空白，本範例已移除空白以符合 url 型別。

// =====================================================================
// 一、受理本分案之縣市主管機關（ClaimResponse.insurer）
// =====================================================================
Instance: ltc-organization-feeaudit-authority-example
InstanceOf: LTCOrganization
Title: "長照支付審查－縣市主管機關（Organization）範例"
Description: "受理「(查詢B)分案審核明細查詢」該分案之縣市主管機關範例，對應規格書縣市代碼（city_cd）65000 新北市，供 LTCClaimResponseFeeAudit 之 insurer 元素參照。"
Usage: #example

* identifier.use = #official
* identifier.type = $IdType#PRN "Provider Number"
* identifier.system = "http://ltc-ig.fhir.tw/identifier/feeaudit/city-cd"
* identifier.value = "65000"
* active = true
* type = $OrganizationType#govt "Government"
* name = "新北市政府衛生局"
* telecom[0].system = #phone
* telecom[0].use = #work
* telecom[0].value = "02-22577155"
* address.use = #work
* address.type = #physical
* address.text = "新北市板橋區英士路192之1號"
* address.line = "英士路192之1號"
* address.city = "板橋區"
* address.state = "新北市"
* address.postalCode = "22054"
* address.country = "TW"


// =====================================================================
// 二、分案審核明細（ClaimResponse）
// =====================================================================
Instance: ltc-claimresponse-feeaudit-example
InstanceOf: LTCClaimResponseFeeAudit
Title: "長照支付審查－分案審核明細（ClaimResponse）範例"
Description: "支付審核系統「(查詢B)分案審核明細查詢」（……/appResultQuery，query_type = B）之回覆明細範例。核銷案號 201907C010163、支審年月 201907、總表版次 006、版次時間 20190723154351，申請核銷金額 4500 元、核定金額 1596 元、政策鼓勵金額 400 元、核增 4000 元（因個案身分異動）、核減 500 元（因個案CMS等級異動）、分案暫付金額 17500 元；含審核通過服務記錄一筆（單價 400 元、自付額 85 元）與 A 碼加成資料一筆（AA05，單價 200 元），並示範八份總表與清冊下載路徑；分案層級統計值（服務記錄筆數 3、個案數 2、核定個案數 2、核定服務記錄數 1）、暫付申請狀態、分案已處理之單號與承辦人員則以 auditSummary Extension 承載。"
Usage: #example

// --- 基本欄位 ---
* status = #active
* type = $ClaimType#professional "Professional"
* use = #claim
* patient = Reference(ltc-patient-chen-ming-hui)
// 版次時間 ver_dt：20190723154351
* created = "2019-07-23T15:43:51+08:00"
* insurer = Reference(ltc-organization-feeaudit-authority-example)
* outcome = #partial
// 承辦審核意見 audit_reason
* disposition = "請長照機構於5日內將總表送至本局"
// 承辦人員 audit_man（以 extension[auditSummary].auditMan 承載，見下方統計與承辦資訊區塊）

// --- 業務識別碼 ---
// 核銷案號 case_no
* identifier[caseNo].system = "http://ltc-ig.fhir.tw/identifier/feeaudit/case-no"
* identifier[caseNo].value = "201907C010163"
// 總表版次 doc_ver
* identifier[docVer].system = "http://ltc-ig.fhir.tw/identifier/feeaudit/doc-ver"
* identifier[docVer].value = "006"
// 支審年月 writeoff_yyyymm
* identifier[yyyymm].system = "http://ltc-ig.fhir.tw/identifier/feeaudit/yyyymm"
* identifier[yyyymm].value = "201907"

// --- 分案層級金額 ---
// 申請核銷金額 amount
* total[0].category = CS_TW_LTC_FeeAuditAdjudication#submitted "申請核銷金額"
* total[0].amount.value = 4500.0
* total[0].amount.currency = #TWD
// 核定金額 approve_fee
* total[+].category = CS_TW_LTC_FeeAuditAdjudication#approveFee "核定金額"
* total[=].amount.value = 1596.0
* total[=].amount.currency = #TWD
// 政策鼓勵金額 a_svc_fee
* total[+].category = CS_TW_LTC_FeeAuditAdjudication#aSvcFee "政策鼓勵金額"
* total[=].amount.value = 400.0
* total[=].amount.currency = #TWD
// 分案暫付金額 temp_payment_fee
* total[+].category = CS_TW_LTC_FeeAuditAdjudication#tempPaymentFee "分案暫付金額"
* total[=].amount.value = 17500
* total[=].amount.currency = #TWD
// 核增金額 inc_in_acc
* total[+].category = CS_TW_LTC_FeeAuditAdjudication#incInAcc "核增金額"
* total[=].amount.value = 4000
* total[=].amount.currency = #TWD
// 核減金額 dec_in_acc
* total[+].category = CS_TW_LTC_FeeAuditAdjudication#decInAcc "核減金額"
* total[=].amount.value = 500
* total[=].amount.currency = #TWD

// --- 審核通過服務記錄 approve_records（一筆）---
* item[0].itemSequence = 1
// 服務記錄識別資訊：objid 882601915／source_system TranCareCenter／trans_no A123456789
* item[0].extension[recordRef].extension[objid].valueString = "882601915"
* item[0].extension[recordRef].extension[sourceSystem].valueString = "TranCareCenter"
* item[0].extension[recordRef].extension[transNo].valueString = "A123456789"
* item[0].adjudication[0].category = CS_TW_LTC_FeeAuditAdjudication#price "單價"
* item[0].adjudication[0].amount.value = 400
* item[0].adjudication[0].amount.currency = #TWD
* item[0].adjudication[+].category = CS_TW_LTC_FeeAuditAdjudication#copayment "自付額"
* item[0].adjudication[=].amount.value = 85
* item[0].adjudication[=].amount.currency = #TWD

// --- A 碼加成資料區 a_svc_records（一筆）---
// ref_objid 882601915／ref_source_system TranCareCenter，即上方 itemSequence = 1 之審核通過服務記錄
* addItem[0].extension[recordRef].extension[objid].valueString = "882601915"
* addItem[0].extension[recordRef].extension[sourceSystem].valueString = "TranCareCenter"
* addItem[0].itemSequence[0] = 1
* addItem[0].productOrService = CS_TW_LTC_ServiceItem#AA05 "照顧困難之服務加計"
* addItem[0].adjudication[0].category = CS_TW_LTC_FeeAuditAdjudication#price "單價"
* addItem[0].adjudication[0].amount.value = 200
* addItem[0].adjudication[0].amount.currency = #TWD

// --- 審核附註 ---
// 核增原因 inc_in_reason
* processNote[0].number = 1
* processNote[0].type = #display
* processNote[0].text = "核增原因（inc_in_reason）：因個案身分異動"
// 核減原因 dec_in_reason
* processNote[+].number = 2
* processNote[=].type = #display
* processNote[=].text = "核減原因（dec_in_reason）：因個案CMS等級異動"

// --- 分案審核統計與承辦資訊（ExtTWLTCFeeAuditAuditSummary）---
// 服務記錄筆數 records：3（審核通過 1 筆 + 錯誤服務記錄 2 筆）
* extension[auditSummary].extension[records].valueInteger = 3
// 個案數 cases
* extension[auditSummary].extension[cases].valueInteger = 2
// 核定個案數 approve_case_num
* extension[auditSummary].extension[approveCaseNum].valueInteger = 2
// 核定服務記錄數 approve_record_count（等於 ClaimResponse.item 之筆數）
* extension[auditSummary].extension[approveRecordCount].valueInteger = 1
// 暫付申請狀態 temp_payment_status
* extension[auditSummary].extension[tempPaymentStatus].valueString = "1: 等待暫付總表"
// 分案已處理之單號 trans_nos
* extension[auditSummary].extension[transNo][0].valueString = "00106"
// 承辦人員 audit_man
* extension[auditSummary].extension[auditMan].valueString = "CG碼承辦人"

// --- 總表與清冊下載路徑（ExtTWLTCFeeAuditDocUrl）---
// 暫付總表 temp_payment_doc_url
* extension[docUrl][0].extension[docType].valueCodeableConcept = CS_TW_LTC_FeeAuditDocType#tempPaymentDoc "暫付總表"
* extension[docUrl][0].extension[url].valueUrl = "http://url/download/doc/dc6a"
// 總表 case_summary_notice_url
* extension[docUrl][+].extension[docType].valueCodeableConcept = CS_TW_LTC_FeeAuditDocType#caseSummaryNotice "總表"
* extension[docUrl][=].extension[url].valueUrl = "http://url/download/doc/dc6adc6a"
// 清冊 case_svc_list_url
* extension[docUrl][+].extension[docType].valueCodeableConcept = CS_TW_LTC_FeeAuditDocType#caseSvcList "清冊"
* extension[docUrl][=].extension[url].valueUrl = "http://url/download/doc/dc6afa306c"
// 清冊 EXCEL case_svc_list_excel_url
* extension[docUrl][+].extension[docType].valueCodeableConcept = CS_TW_LTC_FeeAuditDocType#caseSvcListExcel "清冊EXCEL"
* extension[docUrl][=].extension[url].valueUrl = "http://url/download/doc/dc6a6c"
// A 碼清冊 case_a_svc_list_url
* extension[docUrl][+].extension[docType].valueCodeableConcept = CS_TW_LTC_FeeAuditDocType#caseASvcList "A碼清冊"
* extension[docUrl][=].extension[url].valueUrl = "http://url/download/doc/dc6afa306cc554311c"
// A 碼清冊 EXCEL case_a_svc_list_excel_url
* extension[docUrl][+].extension[docType].valueCodeableConcept = CS_TW_LTC_FeeAuditDocType#caseASvcListExcel "A碼清冊EXCEL"
* extension[docUrl][=].extension[url].valueUrl = "http://url/download/doc9967-7bddc554311c"
// 申請記錄不通過清冊 case_err_list_url
* extension[docUrl][+].extension[docType].valueCodeableConcept = CS_TW_LTC_FeeAuditDocType#caseErrList "申請記錄不通過清冊"
* extension[docUrl][=].extension[url].valueUrl = "http://url/download/doc/dc6afa306cc-5ce29d30f843"
// 申請記錄不通過 EXCEL 清冊 case_err_list_excel_url
* extension[docUrl][+].extension[docType].valueCodeableConcept = CS_TW_LTC_FeeAuditDocType#caseErrListExcel "申請記錄不通過EXCEL清冊"
* extension[docUrl][=].extension[url].valueUrl = "http://url/download/doc/dc6afa306c-5ce29d30f843"


// =====================================================================
// 三、申報檢核結果（OperationOutcome）
// =====================================================================
Instance: ltc-operationoutcome-feeaudit-example
InstanceOf: LTCOperationOutcomeFeeAudit
Title: "長照支付審查－申報檢核結果（OperationOutcome）範例"
Description: "支付審核系統回覆之服務紀錄檢核錯誤範例，對應核銷案號 201907C010163 之錯誤服務記錄（err_records），示範錯誤碼 E4015「單位已執行申報確認通知，不在受理新的服務紀錄申報」，錯誤服務記錄識別碼（objid）為 882601914，來源系統別 TranCareCenter、交易序號 00106。"
Usage: #example

// 核銷案號 case_no
* extension[caseNo].valueString = "201907C010163"

* issue[0].severity = #error
* issue[0].code = #processing
* issue[0].details.coding = CS_TW_LTC_FeeAuditErrorCode#E4015 "單位已執行申報確認通知，不在受理新的服務紀錄申報"
* issue[0].details.text = "單位已執行申報確認通知，不在受理新的服務紀錄申報"
* issue[0].diagnostics = "錯誤服務記錄（err_records）：識別碼（objid）882601914；來源系統別（source_system）TranCareCenter；交易序號（trans_no）00106"
* issue[0].expression[0] = "Claim.identifier.where(system='http://ltc-ig.fhir.tw/identifier/feeaudit/objid' and value='882601914')"


// =====================================================================
// 四、分案審核明細回覆打包（Bundle）
// =====================================================================
Instance: ltc-bundle-feeaudit-response-example
InstanceOf: LTCBundleFeeAuditResponse
Title: "長照支付審查－分案審核明細回覆打包（Bundle）範例"
Description: "支付審核系統「(查詢B)分案審核明細查詢」（……/appResultQuery，query_type = B）回覆之 searchset Bundle 範例，收納核銷案號 201907C010163 之分案審核明細（ClaimResponse）一筆，以及該分案錯誤服務記錄之申報檢核結果（OperationOutcome）一筆。"
Usage: #example

* type = #searchset
* total = 2

// FHIR R4 規範要求 searchset Bundle 具備 self link 以標示本次查詢條件；
// 此處以等價之 FHIR 查詢式表達支審 API 之 query_type = B（依核銷案號查詢分案審核明細）
* link[0].relation = "self"
* link[0].url = "http://ltc-ig.fhir.tw/fhir/ClaimResponse?identifier=http://ltc-ig.fhir.tw/identifier/feeaudit/case-no|201907C010163"

* entry[claimResponse].fullUrl = "http://ltc-ig.fhir.tw/ClaimResponse/ltc-claimresponse-feeaudit-example"
* entry[claimResponse].resource = ltc-claimresponse-feeaudit-example
* entry[claimResponse].search.mode = #match

* entry[operationOutcome][0].fullUrl = "http://ltc-ig.fhir.tw/OperationOutcome/ltc-operationoutcome-feeaudit-example"
* entry[operationOutcome][0].resource = ltc-operationoutcome-feeaudit-example
* entry[operationOutcome][0].search.mode = #outcome
