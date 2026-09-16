CodeSystem: CS_TW_LTC_FeeAuditDocType
Id: cs-tw-ltc-feeaudit-doc-type
Title: "支付審查－清冊文件類別"
Description: "此 CodeSystem 定義《衛生福利部 支付審核系統 API 規格說明書（照管平台）》「(查詢B)分案審核明細查詢」回覆明細中各項下載路徑所對應的清冊與總表文件類別代碼。"
* ^identifier[0].system = "urn:ietf:rfc:3986"
* ^identifier[0].value = "urn:oid:2.25.317166629504320931196084751276735561505"

* ^url = "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-feeaudit-doc-type"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #tempPaymentDoc "暫付總表"
* #caseSummaryNotice "總表"
* #caseSvcList "清冊"
* #caseSvcListExcel "清冊EXCEL"
* #caseASvcList "A碼清冊"
* #caseASvcListExcel "A碼清冊EXCEL"
* #caseErrList "申請記錄不通過清冊"
* #caseErrListExcel "申請記錄不通過EXCEL清冊"
