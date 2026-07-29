Profile: LTCBundleFeeAuditStatus
Parent: Bundle
Id: LTCBundleFeeAuditStatus
Title: "長照支付審查－分案審核狀態回覆打包"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Bundle Resource，以呈現支付審核系統「(查詢A)服務單位各分案審核狀態查詢」（……/appResultQuery，query_type = A）之回覆內容。該查詢以支審年月與交易序號取得服務提供單位該申報年月各分案之核銷案號、核銷狀況、總表版次與簽證編號（city_info／case_infos），並回傳各交易單之 API 執行結果（webapi_process_info，含 API Function、來源系統別、交易序號、API 執行狀態、批次處理結果與筆數）。本 Bundle 以 searchset 型態打包上述內容，並得一併回傳分案異常資料（exception_records）與服務紀錄刪除失敗資料（delete_exception_records）之錯誤訊息。"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/LTCBundleFeeAuditStatus"
* ^version = "0.1.0"
* ^status = #draft

* type 1..1 MS
* type ^short = "Bundle 的類型，固定為 searchset（查詢結果集）"
* type = #searchset

* total 0..1 MS
* total ^short = "查詢結果總筆數"

* entry 1..* MS
* entry ^short = "回覆之資源項目，至少包含一筆交易單處理狀態"
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    task 1..* MS and
    operationOutcome 0..* MS

* entry[task] ^short = "各交易單處理狀態與各分案核銷狀況，對應(查詢A)回覆之 webapi_process_info 與 city_info／case_infos"
* entry[task].resource 1..1 MS
* entry[task].resource ^short = "交易單處理狀態與分案核銷狀況（Task）"
* entry[task].resource only LTCTaskFeeAudit

* entry[operationOutcome] ^short = "分案異常與刪除失敗資料，對應(查詢A)回覆之 exception_records 與 delete_exception_records"
* entry[operationOutcome].resource 1..1 MS
* entry[operationOutcome].resource ^short = "檢核錯誤訊息（OperationOutcome）"
* entry[operationOutcome].resource only LTCOperationOutcomeFeeAudit
