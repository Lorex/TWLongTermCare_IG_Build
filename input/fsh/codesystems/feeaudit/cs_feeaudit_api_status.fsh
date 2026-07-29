CodeSystem: CS_TW_LTC_FeeAuditApiStatus
Id: cs-tw-ltc-feeaudit-api-status
Title: "支付審查－API 執行狀況"
Description: "此 CodeSystem 定義《衛生福利部 支付審核系統 API 規格說明書（照管平台）》代碼說明章節中「status－API執行狀況」之代碼，用於表示服務單位所送交易單於支付審核系統之處理狀況。"
* ^url = "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-api-status"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #0 "待處理"
* #1 "處理中"
* #3 "錯誤"
* #4 "處理完成"
