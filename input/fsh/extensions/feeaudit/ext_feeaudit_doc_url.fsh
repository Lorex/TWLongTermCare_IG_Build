// 長照支付審查－清冊文件下載路徑
// 資料來源：衛生福利部 支付審核系統 API 規格說明書（照管平台）v2.2.1
//           五、(查詢B)分案審核明細查詢 (……/appResultQuery) 回覆明細之各項下載路徑欄位

Extension: ExtTWLTCFeeAuditDocUrl
Id: Ext-TW-LTC-FeeAudit-DocUrl
Title: "長照支付審查－清冊文件下載路徑"
Description: "此 Extension 用於表示長照支付審查「(查詢B)分案審核明細查詢」回覆明細中各式總表與清冊檔案的下載路徑，包含暫付總表（temp_payment_doc_url）、總表（case_summary_notice_url）、清冊（case_svc_list_url）、清冊 EXCEL（case_svc_list_excel_url）、A 碼清冊（case_a_svc_list_url）、A 碼清冊 EXCEL（case_a_svc_list_excel_url）、申請記錄不通過清冊（case_err_list_url）及申請記錄不通過 EXCEL 清冊（case_err_list_excel_url）。每一份文件以一個本 Extension 實例表達，並以子元素 docType 標示文件類別、url 標示下載路徑。"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/Ext-TW-LTC-FeeAudit-DocUrl"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^context[0].type = #element
* ^context[=].expression = "ClaimResponse"

* extension contains
    docType 1..1 MS and
    url 1..1 MS

// 文件類別
* extension[docType] ^short = "清冊文件類別，標示本筆下載路徑所對應的總表或清冊種類"
* extension[docType].value[x] 1..1 MS
* extension[docType].value[x] only CodeableConcept
* extension[docType].value[x] from VS_TW_LTC_FeeAuditDocType (required)
* extension[docType].value[x] ^short = "清冊文件類別代碼。[應填入暫付總表、總表、清冊、清冊EXCEL、A碼清冊、A碼清冊EXCEL、申請記錄不通過清冊、申請記錄不通過EXCEL清冊之一]"

// 下載路徑
* extension[url] ^short = "文件下載路徑，長度上限 200"
* extension[url].value[x] 1..1 MS
* extension[url].value[x] only url
* extension[url].value[x] ^short = "總表或清冊檔案之下載網址。[應填入 URL 字串]"
