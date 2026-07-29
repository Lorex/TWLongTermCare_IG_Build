// 長照支付審查－分案審核統計與承辦資訊
// 資料來源：衛生福利部 支付審核系統 API 規格說明書（照管平台）v2.2.1
//           五、(查詢B)分案審核明細查詢 (……/appResultQuery) 回覆明細（PAGE 25-26）
//           records、cases、approve_case_num、approve_record_count、
//           temp_payment_status、trans_nos、audit_man
//
// 設計說明：
//   上述欄位皆為分案（核銷案號）層級之統計值、狀態值或承辦資訊，於 FHIR R4 的
//   ClaimResponse 中並無語意相符之標準元素：
//     - 統計值（records、cases、approve_case_num、approve_record_count）不宜以
//       ClaimResponse.total 表達（total 為金額 Money 型別）；
//     - 暫付申請狀態（temp_payment_status）非 ClaimResponse.outcome 之取值範圍；
//     - 分案已處理之單號（trans_nos）為多筆字串，ClaimResponse.request 於 R4 為
//       0..1 Reference，無法承載；
//     - 承辦人員（audit_man）為付款／審查機關之審核承辦人，與 ClaimResponse.requestor
//       （提出申報之服務提供方）語意方向相反，不可混用。
//   原先以 processNote 自由文字承載雖可行，但不具可運算性，故改以本 Extension 表達。

Extension: ExtTWLTCFeeAuditAuditSummary
Id: Ext-TW-LTC-FeeAudit-AuditSummary
Title: "長照支付審查－分案審核統計與承辦資訊"
Description: "此 Extension 用於在長照支付審查之分案審核明細（ClaimResponse）中，結構化承載「(查詢B)分案審核明細查詢」回覆明細之分案層級統計值、暫付申請狀態、分案已處理之單號與承辦人員：服務記錄筆數（records）、個案數（cases）、核定個案數（approve_case_num）、核定服務記錄數（approve_record_count）、暫付申請狀態（temp_payment_status）、分案已處理之單號（trans_nos，多筆）與承辦人員（audit_man）。上述欄位於 FHIR R4 之 ClaimResponse 均無語意相符之標準元素，故以本 Extension 承載。"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-AuditSummary"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^context[0].type = #element
* ^context[=].expression = "ClaimResponse"

* extension contains
    records 0..1 MS and
    cases 0..1 MS and
    approveCaseNum 0..1 MS and
    approveRecordCount 0..1 MS and
    tempPaymentStatus 0..1 MS and
    transNo 0..* MS and
    auditMan 0..1 MS

* extension[records] ^short = "服務記錄筆數（records），本分案所申請之服務記錄總筆數；等於審核通過服務記錄（ClaimResponse.item）與錯誤服務記錄（ClaimResponse.error）之筆數合計"
* extension[records].value[x] 1..1 MS
* extension[records].value[x] only integer
* extension[records].value[x] ^short = "服務記錄總筆數"

* extension[cases] ^short = "個案數（cases），本分案所申請之不重複個案人數"
* extension[cases].value[x] 1..1 MS
* extension[cases].value[x] only integer
* extension[cases].value[x] ^short = "申請個案數"

* extension[approveCaseNum] ^short = "核定個案數（approve_case_num），審核核定通過之個案人數"
* extension[approveCaseNum].value[x] 1..1 MS
* extension[approveCaseNum].value[x] only integer
* extension[approveCaseNum].value[x] ^short = "核定個案數"

* extension[approveRecordCount] ^short = "核定服務記錄數（approve_record_count），審核核定通過之服務記錄筆數；等於 ClaimResponse.item 之筆數"
* extension[approveRecordCount].value[x] 1..1 MS
* extension[approveRecordCount].value[x] only integer
* extension[approveRecordCount].value[x] ^short = "核定服務記錄數"

* extension[tempPaymentStatus] ^short = "暫付申請狀態（temp_payment_status），長度上限 15，有申請暫付才顯示，例如「1: 等待暫付總表」"
* extension[tempPaymentStatus].value[x] 1..1 MS
* extension[tempPaymentStatus].value[x] only string
* extension[tempPaymentStatus].value[x] ^short = "暫付申請狀態說明"

* extension[transNo] ^short = "分案已處理之單號（trans_nos），本分案已處理之申請單交易序號，可有多筆，故逐筆各為一個子擴充實例"
* extension[transNo].value[x] 1..1 MS
* extension[transNo].value[x] only string
* extension[transNo].value[x] ^short = "已處理之申請單交易序號，例如 00106"

* extension[auditMan] ^short = "承辦人員（audit_man），長度上限 10，即受理本分案之縣市主管機關執行審核之承辦人；不得以 ClaimResponse.requestor 表達，該元素於 FHIR R4 之語意為提出申報之服務提供方"
* extension[auditMan].value[x] 1..1 MS
* extension[auditMan].value[x] only string
* extension[auditMan].value[x] ^short = "承辦人員姓名或代號，例如「CG碼承辦人」"
