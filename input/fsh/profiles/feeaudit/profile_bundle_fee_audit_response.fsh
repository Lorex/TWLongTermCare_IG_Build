Profile: LTCBundleFeeAuditResponse
Parent: Bundle
Id: LTCBundleFeeAuditResponse
Title: "長照支付審查－分案審核明細回覆打包"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Bundle Resource，以呈現支付審核系統「(查詢B)分案審核明細查詢」（……/appResultQuery，query_type = B）之回覆內容。該查詢須先執行「(查詢A)服務單位各分案審核狀態查詢」取得核銷案號、核銷狀況與總表版次，於新核銷案號或核銷狀況、總表版次有變動時，再以支審年月、縣市代碼與核銷案號查詢該分案之審核明細。本 Bundle 以 searchset 型態打包單一核銷案號之審核明細（服務記錄筆數、個案數、申請核銷金額、核定金額、政策鼓勵金額、暫付資訊、各式清冊下載路徑、核增核減、審核通過服務記錄與 A 碼加成資料），並得一併回傳錯誤服務記錄之檢核錯誤訊息。"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/LTCBundleFeeAuditResponse"
* ^version = "0.1.0"
* ^status = #draft

* type 1..1 MS
* type ^short = "Bundle 的類型，固定為 searchset（查詢結果集）"
* type = #searchset

* total 0..1 MS
* total ^short = "查詢結果總筆數"

* entry 1..* MS
* entry ^short = "回覆之資源項目，至少包含一筆分案審核明細"
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    claimResponse 1..1 MS and
    operationOutcome 0..* MS

* entry[claimResponse] ^short = "分案審核明細，對應(查詢B)回覆之單一核銷案號審核結果"
* entry[claimResponse].resource 1..1 MS
* entry[claimResponse].resource ^short = "分案審核明細（ClaimResponse）"
* entry[claimResponse].resource only LTCClaimResponseFeeAudit

* entry[operationOutcome] ^short = "檢核錯誤訊息，對應(查詢B)回覆之錯誤服務記錄（err_records）"
* entry[operationOutcome].resource 1..1 MS
* entry[operationOutcome].resource ^short = "檢核錯誤訊息（OperationOutcome）"
* entry[operationOutcome].resource only LTCOperationOutcomeFeeAudit
