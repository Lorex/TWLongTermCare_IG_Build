Profile: CoverageEligibilityResponseTWLTCBenefitSDK
Parent: CoverageEligibilityResponse
Id: CoverageEligibilityResponse-TW-LTC-Benefit-SDK
Title: "長照 SDK－核定額度"
Description: "對應 SDK r3：各服務別的總額/補助/部分負擔/比率。"
* ^url = "https://ltc-ig.fhir.tw/StructureDefinition/CoverageEligibilityResponse-TW-LTC-Benefit-SDK"
* ^version = "0.1.0"
* ^status = #draft
* status 1..1 MS
* purpose 1..1 MS
* purpose = #benefits
* patient 1..1 MS
* patient only Reference(TWCorePatient)
* created 1..1 MS
* insurance 1..1 MS
* insurance.item 1..* MS
* insurance.item.category 1..1 MS 
// from system https://ltc-ig.fhir.tw/ValueSet/VS_TW_LTC_ServiceGroup_SDK (required)
* insurance.item.benefit 3..* MS
* insurance.item.benefit.type 
// from system https://ltc-ig.fhir.tw/ValueSet/VS_TW_LTC_BenefitType_SDK (required)
* insurance.item.benefit.allowed[x] only Money 
Invariant: ltc-sdk-copay-rate-0-100
Description: "部分負擔比率(%) 必須介於 0..100"
Severity: #error
Expression: "insurance.item.benefit.where(type.coding.code='copay-rate').allowed.as(decimal) >= 0 and insurance.item.benefit.where(type.coding.code='copay-rate').allowed.as(decimal) <= 100"
// * insurance.item obeys ltc-sdk-copay-rate-0-100
