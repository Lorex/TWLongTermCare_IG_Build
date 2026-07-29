CodeSystem: CS_TW_LTC_FeeAuditRtnCode
Id: cs-tw-ltc-feeaudit-rtncode
Title: "支付審查－API 回覆結果代碼"
Description: "此 CodeSystem 定義《衛生福利部 支付審核系統 API 規格說明書（照管平台）》Response 格式中「rtncode－回覆結果代碼」之代碼，用於表示支付審核系統對服務提供單位所送 API 請求之處理結果，包含成功回傳、參數檢核錯誤、權限與流量限制及系統異常等情形。"
* ^url = "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-rtncode"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #0 "成功回傳"
* #1 "Request 輸入參數錯誤"
* #2 "所屬申報縣市尚未開放支付審查系統"
* #3 "查無服務提供單位資料"
* #4 "申報年月錯誤"
* #5 "查無服務提供單位 hash 資料"
* #6 "交易序號重複"
* #7 "校驗碼檢驗錯誤"
* #8 "超出傳輸筆數"
* #9 "不允許撤回申請服務紀錄"
* #11 "無申請服務紀錄可撤回"
* #12 "無效的 IP"
* #13 "IP 不在設定範圍內"
* #14 "申報費用單位非特約機構"
* #20 "無訪問權限"
* #25 "執行頻率限制"
* #30 "輸入參數錯誤"
* #40 "查無資料"
* #50 "DB 錯誤"
* #90 "發生無法預期錯誤"
