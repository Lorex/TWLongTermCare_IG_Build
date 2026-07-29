CodeSystem: CS_TW_LTC_FeeAuditApiFunction
Id: cs-tw-ltc-feeaudit-api-function
Title: "支付審查－API 功能"
Description: "此 CodeSystem 定義《衛生福利部 支付審核系統 API 規格說明書（照管平台）》代碼說明章節中「API Function－API Function 名稱」之代碼，用於表示交易單所對應的支付審核系統 API 功能。"
* ^url = "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-api-function"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #FeeApply "服務記錄申報"
* #ObjDel "服務紀錄刪除"
* #appCompletionNotice "申報確認通知"
* #appCancel "服務單位撤回"
* #CancelResultResponse "取消交易單處理結果回報"
