Profile: LTCCoverageEligibilityResponse
Parent: CoverageEligibilityResponse
Id: LTC-CoverageEligibilityResponse
Title: "長照－核定額度（CoverageEligibilityResponse）"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 CoverageEligibilityResponse Resource，以呈現長照各服務別之核定額度摘要，包含總額、補助金額、自付額及比率等資料。"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/LTC-CoverageEligibilityResponse"
* ^version = "0.1.0"
* ^status = #draft

* status 1..1 MS
* purpose 1..1 MS
* purpose = #benefits
* patient 1..1 MS
* patient only Reference(LTCPatient)
* created 1..1 MS
* insurer 1..1 MS
* requestor 0..1 MS
* insurance 1..1 MS
* insurance.item 1..* MS
* insurance.item.category 1..1 MS
// from VS_TW_LTC_ServiceGroup (required)
* insurance.item.benefit 3..* MS
* insurance.item.benefit.type
// from VS_TW_LTC_BenefitType (required)
* insurance.item.benefit.allowed[x] only Money

Invariant: ltc-cer-copay-rate-0-100
Description: "copay-rate（部分負擔比率）必須介於 0..100"
Severity: #error
Expression: "insurance.item.benefit.where(type.coding.code='copay-rate').allowed.as(decimal) >= 0 and insurance.item.benefit.where(type.coding.code='copay-rate').allowed.as(decimal) <= 100"
// * insurance.item obeys ltc-cer-copay-rate-0-100
