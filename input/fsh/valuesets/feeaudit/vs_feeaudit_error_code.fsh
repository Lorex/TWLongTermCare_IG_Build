ValueSet: VS_TW_LTC_FeeAuditErrorCode
Id: vs-tw-ltc-feeaudit-error-code
Title: "支付審查－錯誤代碼"
Description: "此 ValueSet 涵蓋《衛生福利部 支付審核系統 API 規格說明書（照管平台）》所定義之全部錯誤代碼（err_code），用於服務紀錄申報、撤回、審查結果回覆等交易之錯誤原因表達，包含欄位必填與長度檢核（E1xxx）、格式檢核（E2xxx）、資料查詢與寫入異常（E4xxx）、審核規則檢核（E5xxx）及各支付碼專屬檢核（EBA、EBC、ECB、EGA、EOT、ESC 系列）共 176 項代碼。"
* ^url = "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-feeaudit-error-code"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* include codes from system CS_TW_LTC_FeeAuditErrorCode
