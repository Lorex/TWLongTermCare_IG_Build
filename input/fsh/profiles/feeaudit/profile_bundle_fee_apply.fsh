Profile: LTCBundleFeeApply
Parent: Bundle
Id: LTCBundleFeeApply
Title: "長照支付審查－服務記錄申報文件打包"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Bundle Resource，以呈現衛生福利部支付審核系統（照管平台）「服務記錄申報」（FeeApply）API 之一次申報交易。一個 Bundle 對應一組交易序號（trans_no），以 collection 型態打包該次申報的所有個案服務紀錄（case_svc_records）與其關聯資源（服務對象、服務提供單位、照顧服務員、交通接送起訖地點）。依規格書規定，每個交易序號每次申報最多 5000 筆個案服務紀錄；每筆服務紀錄具唯一識別碼（objid），識別碼不存在者於支審系統新增服務紀錄，已存在者則更新之。"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/LTCBundleFeeApply"
* ^version = "0.1.0"
* ^status = #draft

* . ^short = "一次服務記錄申報交易（trans_no）之資料打包"

// --- Bundle 基本欄位 ---
* type 1..1 MS
* type = #collection
* type ^short = "Bundle 的類型，固定為 collection（資料集合）"

* identifier 0..1 MS
* identifier ^short = "交易序號（trans_no），支審系統用以識別單次申報交易之序號，最長 10 碼"
* identifier.system 1..1 MS
* identifier.system = "http://ltc-ig.fhir.tw/identifier/feeaudit/trans-no"
* identifier.system ^short = "交易序號的識別碼系統，固定為 http://ltc-ig.fhir.tw/identifier/feeaudit/trans-no"
* identifier.value 1..1 MS
* identifier.value ^short = "交易序號值（trans_no）"

* timestamp 0..1 MS
* timestamp ^short = "本次申報之申請日期時間，對應規格書 requestDt（原格式為 yyyyMMddhhmmss，此處以 FHIR instant 型別表述）"

// --- entry slicing ---
* entry 1..* MS
* entry ^short = "本次申報交易所打包的資源；其中個案服務紀錄（Claim）每次申報最多 5000 筆"
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    claim 1..* MS and
    patient 1..* MS and
    organization 1..1 MS and
    practitioner 0..* MS and
    location 0..* MS

* entry[claim].resource 1..1 MS
* entry[claim] ^short = "個案服務紀錄（case_svc_records），每一筆識別碼（objid）對應一個 Claim；每個交易序號每次申報最多 5000 筆"
* entry[claim].resource only LTCClaimFeeApply

* entry[patient].resource 1..1 MS
* entry[patient] ^short = "服務對象個案基本資料，以個案身分證字號（idn）識別"
* entry[patient].resource only LTCPatient

* entry[organization].resource 1..1 MS
* entry[organization] ^short = "申報之服務提供單位，以服務單位代碼（unitNo）識別"
* entry[organization].resource only LTCOrganization

* entry[practitioner].resource 1..1 MS
* entry[practitioner] ^short = "提供服務之照顧服務員（svc_user_no1～svc_user_no5）"
* entry[practitioner].resource only LTCPractitioner

* entry[location].resource 1..1 MS
* entry[location] ^short = "交通接送（BD03、DA01）之出發地（addrFrom）與目的地（addrTo）；採 LTCLocationFeeAuditPlace，其 type 不設固定值，得表達住家、醫院、社區式長照機構等各類起訖地"
* entry[location].resource only LTCLocationFeeAuditPlace
