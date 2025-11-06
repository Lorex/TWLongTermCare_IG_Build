Profile: CoverageEligibilityResponseTWLTCBenefit
Parent: CoverageEligibilityResponse
Id: CoverageEligibilityResponse-TW-LTC-Benefit
Title: "長照 SDK－核定額度（CoverageEligibilityResponse）"
Description: "各服務別的總額/補助/自付/比率等核定摘要。"
* ^url = "https://ltc-ig.fhir.tw/StructureDefinition/CoverageEligibilityResponse-TW-LTC-Benefit"
* ^version = "0.1.0"
* ^status = #draft

* status 1..1 MS
* purpose 1..1 MS
* purpose = #benefits
* patient 1..1 MS
* patient only Reference(TWCorePatient)
* created 1..1 MS
* insurer 1..1 MS
* requestor 1..1 MS
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
