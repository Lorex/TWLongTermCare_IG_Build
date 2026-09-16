// 長照支付審查－申報檢核結果（OperationOutcome）
// 依據《衛生福利部 支付審核系統 API 規格說明書（照管平台）v2.2.1》：

Profile: LTCOperationOutcomeFeeAudit
Parent: OperationOutcome
Id: LTCOperationOutcomeFeeAudit
Title: "長照支付審查－申報檢核結果"
Description: "此 OperationOutcome 以衛生福利部支付審核系統的回覆資料為基礎，用以表述服務紀錄的檢核錯誤與申報處理結果。"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/LTCOperationOutcomeFeeAudit"
* ^version = "0.1.0"
* ^status = #draft
* ^purpose = "用於回覆申報檢核錯誤、分案異常及服務紀錄刪除失敗的原因。每個問題分別填寫一筆 issue，包含嚴重程度、問題類型、錯誤代碼及原因。"

* . ^short = "申報檢核結果"
* . ^definition = "應填寫本次檢核或處理過程發現的問題，並指出受影響的服務紀錄。"

// --- 檢核錯誤項目 ---
* issue 1..* MS
* issue ^short = "檢核錯誤的內容，如有多筆錯誤，則可放入多個 issue。"
* issue ^definition = "每個錯誤分別填寫一筆 issue。同一筆服務紀錄如有多個錯誤，應逐項列出。"

* issue.severity 1..1 MS
* issue.severity ^short = "錯誤的嚴重程度，如檢核錯誤造成申報、分案或刪除失敗，則填入 error。"

* issue.code 1..1 MS
* issue.code ^short = "FHIR 問題類型代碼"
* issue.code ^definition = "欄位必填或長度、格式錯誤（E1xxx、E2xxx）建議填入 required 或 value。資料查詢、寫入錯誤（E4xxx）建議填入 not-found 或 processing。審核規則與支付碼檢核錯誤（E5xxx、EBA／EBC／ECB／EGA／EOT／ESC 系列）建議填入 business-rule。"

* issue.details 1..1 MS
* issue.details ^short = "檢核錯誤的代碼與原因"
* issue.details.coding 1..1 MS
* issue.details.coding from VS_TW_LTC_FeeAuditErrorCode (extensible)
* issue.details.coding ^short = "檢核錯誤代碼。[應填入 Coding，code 為最長 5 個字元的支付審查錯誤代碼]"
* issue.details.coding ^definition = "代碼使用 VS_TW_LTC_FeeAuditErrorCode。例如 E1001 為服務紀錄識別碼不可空白，E4015 為單位已完成申報確認通知、不再受理新的服務紀錄，E4032 為服務紀錄不存在。"
* issue.details.text 0..1 MS
* issue.details.text ^short = "檢核錯誤原因。[應填入最長 200 個字元的字串]"

* issue.diagnostics 0..1 MS
* issue.diagnostics ^short = "錯誤的補充說明。[可填入完整錯誤訊息或批次處理結果]"
* issue.diagnostics ^definition = "應補充有助於判斷及修正問題的資訊。"

* issue.expression 0..* MS
* issue.expression ^short = "發生錯誤的服務紀錄。[應填入包含實際服務紀錄識別碼的 FHIRPath 表達式]"
* issue.expression ^definition = "應填入能指出受影響服務紀錄的 FHIRPath 表達式，並帶入實際識別碼。例如 Claim.identifier.where(system='http://ltc-ig.fhir.tw/identifier/feeaudit/objid' and value='882601914')。"

// 核銷案號
* extension contains
    ExtTWLTCExportCaseNo named caseNo 0..1
* extension[caseNo] MS
* extension[caseNo] ^short = "發生問題的核銷案號。[應在 valueString 填入最長 30 個字元的字串]"
* extension[caseNo] ^definition = "如問題涉及特定核銷案號，應在此填入該案號。"
