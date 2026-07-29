ValueSet: VS_TW_LTC_FeeAuditRtnCode
Id: vs-tw-ltc-feeaudit-rtncode
Title: "支付審查－API 回覆結果代碼"
Description: "此 ValueSet 涵蓋《衛生福利部 支付審核系統 API 規格說明書（照管平台）》Response 格式所定義之回覆結果代碼（rtncode），用於表示 API 交易之處理結果，代碼包含：0（成功回傳）、1～14（請求參數與申報條件檢核錯誤）、20（無訪問權限）、25（執行頻率限制）、30（輸入參數錯誤）、40（查無資料）、50（DB 錯誤）、90（發生無法預期錯誤）。"
* ^url = "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-feeaudit-rtncode"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* include codes from system CS_TW_LTC_FeeAuditRtnCode
