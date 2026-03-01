Profile: LTCClaimExport
Parent: Claim
Id: LTC-Claim-Export
Title: "長照 SDK－照管全量匯出（Claim）"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Claim Resource，以呈現長照照管全量匯出之服務代碼、數量、單價及小計等申報資料。"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/LTC-Claim-Export"
* ^version = "0.1.0"
* ^status = #draft

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
* item.productOrService from http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-service-item (preferred)
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
