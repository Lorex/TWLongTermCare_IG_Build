// 長照支付審查－申報檢核結果（OperationOutcome）
// 依據《衛生福利部 支付審核系統 API 規格說明書（照管平台）v2.2.1》：
//   - 壹、三、Response 格式（rtncode、errmsg）
//   - 服務記錄申報之回覆明細：err_record（objid）／err_info（err_code、err_message）
//   - (查詢A) 申報結果查詢之 exception_records、delete_exception_records（objid、err_code、err_message）

Profile: LTCOperationOutcomeFeeAudit
Parent: OperationOutcome
Id: LTCOperationOutcomeFeeAudit
Title: "長照支付審查－申報檢核結果"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 OperationOutcome Resource，以呈現衛生福利部支付審核系統（照管平台）回覆的服務紀錄檢核錯誤與 API 回覆結果代碼。適用情境包含：（1）「服務記錄申報」（FeeApply）之回覆明細中的錯誤服務記錄（err_record），每筆含識別碼（objid）與多筆錯誤訊息（err_info：err_code 錯誤碼、err_message 錯誤原因）；（2）「(查詢A) 申報結果查詢」回覆之分案異常資料（exception_records）與服務紀錄刪除失敗資料（delete_exception_records），其結構同為 objid、err_code、err_message；（3）API 交易層級之回覆結果代碼（rtncode）與回覆訊息（errmsg）。每一筆錯誤訊息（err_info）對應一個 OperationOutcome.issue。"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/LTCOperationOutcomeFeeAudit"
* ^version = "0.1.0"
* ^status = #draft

* . ^short = "支付審核系統之申報檢核結果；API 交易層級之回覆結果代碼（rtncode）由 VS_TW_LTC_FeeAuditRtnCode（vs-tw-ltc-feeaudit-rtncode）表達，例：0 成功回傳、1 Request 輸入參數錯誤、40 查無資料、90 發生無法預期錯誤；本 Profile 之 issue 則表達個別服務紀錄之檢核錯誤（err_code／err_message）"

// --- 檢核錯誤項目 ---
* issue 1..* MS
* issue ^short = "檢核錯誤項目；每一筆錯誤訊息（err_info／exception_records／delete_exception_records）對應一個 issue，同一筆服務紀錄有多筆錯誤時以多個 issue 表達"

* issue.severity 1..1 MS
* issue.severity ^short = "錯誤嚴重程度；因檢核未通過而導致該筆服務紀錄申報、分案或刪除失敗者，使用 error"

* issue.code 1..1 MS
* issue.code ^short = "FHIR 問題類型代碼；欄位必填或長度／格式檢核（E1xxx、E2xxx）建議使用 required 或 value，資料查詢與寫入異常（E4xxx）建議使用 not-found 或 processing，審核規則與支付碼專屬檢核（E5xxx、EBA／EBC／ECB／EGA／EOT／ESC 系列）建議使用 business-rule"

* issue.details 1..1 MS
* issue.details ^short = "錯誤內容，承載回覆明細之錯誤碼（err_code，最長 5 碼）與錯誤原因（err_message，最長 200 字）"
* issue.details.coding 1..1 MS
* issue.details.coding from VS_TW_LTC_FeeAuditErrorCode (extensible)
* issue.details.coding ^short = "錯誤碼（err_code），綁定支付審查錯誤代碼值集 VS_TW_LTC_FeeAuditErrorCode，例：E1001（服務紀錄識別碼不可空白）、E4015（單位已執行申報確認通知，不在受理新的服務紀錄申報）、E4032（此筆服務紀錄不存在）"
* issue.details.text 0..1 MS
* issue.details.text ^short = "錯誤原因（err_message）之顯示文字"

* issue.diagnostics 0..1 MS
* issue.diagnostics ^short = "錯誤原因原文或補充說明，可放回覆明細之 err_message 全文，或 API 層級之回覆訊息（errmsg）、批次處理結果（batch_proc_result）等敘述文字"

* issue.expression 0..* MS
* issue.expression ^short = "指向出錯的服務紀錄識別碼（objid），即 err_record.objid、exception_records.objid 或 delete_exception_records.objid。表述時須將實際的 objid 值寫入條件，方能唯一指出是哪一筆服務紀錄，例：Claim.identifier.where(system='http://ltc-ig.fhir.tw/identifier/feeaudit/objid' and value='882601914')；僅寫出路徑而未帶入 objid 值者無法定位錯誤來源"

// --- 核銷案號（OperationOutcome 無 identifier 元素，沿用既有 Extension 承載）---
* extension contains
    ExtTWLTCExportCaseNo named caseNo 0..1
* extension[caseNo] MS
* extension[caseNo] ^short = "核銷案號（case_no，最長 30 碼）；OperationOutcome 無 identifier 元素，故沿用既有 Extension ExtTWLTCExportCaseNo（Ext-TW-LTC-Export-CaseNo）承載案件編號，該 Extension 之 ^context 已涵蓋 OperationOutcome，於本 Profile 中其語意為支付審核系統之核銷案號"
