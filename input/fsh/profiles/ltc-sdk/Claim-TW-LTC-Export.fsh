Profile: Claim-TW-LTC-Export
Parent: Claim
Id: Claim-TW-LTC-Export
Title: "長照 SDK－照管全量匯出（Claim）"
Description: "以 Claim 承載照管匯出的服務代碼、數量/單價/小計、案件與評估資訊。"

// --- 基本欄位 ---
* status 1..1 MS
* type 1..1 MS
* type.coding 1..1
* type.coding.system = "http://terminology.hl7.org/CodeSystem/claim-type"
* type.coding.code = #professional
* use 1..1 MS
* use from http://hl7.org/fhir/ValueSet/claim-use (required)

// --- 以 identifier 承載 caseNo / evaId / yyyymm（不使用 extension）---
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier 0..* MS
* identifier contains
    caseNo 0..1 MS and
    evaId  0..1 MS and
    yyyymm 0..1 MS
* identifier[caseNo].system = "https://ltc-ig.fhir.tw/identifier/export/case-no"
* identifier[caseNo].value  1..1
* identifier[evaId].system  = "https://ltc-ig.fhir.tw/identifier/export/eva-id"
* identifier[evaId].value   1..1
* identifier[yyyymm].system = "https://ltc-ig.fhir.tw/identifier/export/yyyymm-roc"
* identifier[yyyymm].value  1..1

// --- 服務明細 ---
* item 1..* MS
* item.productOrService 1..1 MS
* item.productOrService from http://ltc-ig.fhir.tw/ValueSet/VS-TW-LTC-ServiceItem (preferred)
* item.quantity 0..1
* item.unitPrice 0..1
* item.net 0..1

// 不新增 extension：以 programCode 承載 planId（純做容器，不綁定特定 VS）
* item.programCode 0..* 
* item.programCode ^short = "可放計畫識別（planId）等匯出輔助碼；若需一致性，建議 system 使用 https://ltc-ig.fhir.tw/identifier/export/plan-id"

// --- 其他預設不變 ---
* patient 1..1 MS
* created 1..1
* insurer 0..1
* provider 1..1
* supportingInfo 0..*

// Profile: Claim-TW-LTC-Export
// Parent: Claim
// Id: Claim-TW-LTC-Export
// Title: "長照—照管全量匯出（Claim）"
// Description: "以 Claim 承載照管匯出的服務代碼、數量/單價/小計、案件與評估資訊。"
// * status 1..1
// * type 1..1
// * type.coding 1..1
// * type.coding.system = http://terminology.hl7.org/CodeSystem/claim-type#professional
// * use 1..1
// * use from http://hl7.org/fhir/ValueSet/claim-use (required)
// * item 1..*
// * item.productOrService from http://ltc-ig.fhir.tw/ValueSet/VS-TW-LTC-ServiceItem (preferred)
// * item.quantity 0..1
// * item.unitPrice 0..1
// * item.net 0..1
// * extension contains
//     ext-tw-ltc-export-case-no named caseNo 0..1 and
//     Ext_TW_LTC_Export_EvaId  named evaId  0..1 and
//     Ext_TW_LTC_Export_Unit   named unit   0..* and
//     Ext_TW_LTC_Export_YYYMM_ROC named yyyymm 0..1
// * item.extension contains
//     Ext_TW_LTC_Export_PlanId named planId 0..1
// * supportingInfo 0..*
