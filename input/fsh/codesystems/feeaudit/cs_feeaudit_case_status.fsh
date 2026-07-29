CodeSystem: CS_TW_LTC_FeeAuditCaseStatus
Id: cs-tw-ltc-feeaudit-case-status
Title: "支付審查－核銷狀況"
Description: "此 CodeSystem 定義《衛生福利部 支付審核系統 API 規格說明書（照管平台）》代碼說明章節中「status－核銷狀況」之代碼，用於表示分案在支付審核流程中的核銷處理狀況。"
* ^url = "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-case-status"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #0 "已分案待電腦審核處理"
* #1 "待通知收件"
* #2 "已通知待收件"
* #3 "審核中"
* #4 "等待總表"
* #5 "審計待審"
* #6 "結案"
