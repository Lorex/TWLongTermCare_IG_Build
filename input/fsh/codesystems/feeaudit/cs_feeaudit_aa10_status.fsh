CodeSystem: CS_TW_LTC_FeeAuditAA10Status
Id: cs-tw-ltc-feeaudit-aa10-status
Title: "支付審查－AA10 申報狀態"
Description: "衛生福利部支付審核系統 API（照管平台）服務記錄申報之「AA10 申報狀態」（aa10_status）代碼，用以表示夜間緊急服務（AA10）之申報與確認情形，預設為 0（未申報）。"
* ^url = "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-aa10-status"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete

* #0 "未申報"
* #1 "申請待確認"
* #2 "確認為非緊急服務"
* #3 "確認為緊急服務"
