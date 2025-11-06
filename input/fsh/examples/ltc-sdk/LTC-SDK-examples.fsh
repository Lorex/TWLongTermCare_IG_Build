// ===== Patient / Organization / Practitioner =====
Instance: ex-pt-sdk
InstanceOf: Patient
Usage: #example
* identifier.system = "https://example.org/mrn"
* identifier.value = "A0001"
* name.text = "王小明"

Instance: ex-org-sdk
InstanceOf: Organization
Usage: #example
* name = "OOO長期照顧管理中心"

Instance: ex-prac-sdk
InstanceOf: Practitioner
Usage: #example
* name.text = "李小華"


// ===== EpisodeOfCare (LTC 案件) =====
Instance: ex-case-sdk
InstanceOf: EpisodeOfCare-TW-LTC-Case-SDK
Usage: #example
* status = CS_TW_LTC_CaseStatus_SDK#active "服務中"
* period.start = "2025-01-01"
* patient = Reference(ex-pt-sdk)
* managingOrganization = Reference(ex-org-sdk)
* identifier[caseSerial].system = "https://ltc-ig.fhir.tw/identifier/sdk/r1.1-case-serial"
* identifier[caseSerial].value = "123456789"


// ===== Observation (評估核定摘要) =====
Instance: ex-assess-sdk
InstanceOf: Observation-TW-LTC-AssessmentSummary-SDK
Usage: #example
* status = #final
* code = LOINC#8357-6 "Assessment note"
* subject = Reference(ex-pt-sdk)
* effectiveDateTime = "2025-01-01"
* component[welfare-identity].valueCodeableConcept = CS_TW_LTC_WelfareIdentity_SDK#cat3 "第3類"
* component[cms-level].valueCodeableConcept = CS_TW_LTC_CMSLevel_SDK#1a "1a"
* component[assessment-type].valueCodeableConcept = CS_TW_LTC_AssessmentType_SDK#initial "初評"
* component[plan-start].valueDateTime = "2025-01-01"



// ===== Coverage（核付對象保險覆蓋；供 CER 必填 coverage 參照）=====
Instance: ex-coverage-sdk
InstanceOf: Coverage
Usage: #example
* status = #active
* beneficiary = Reference(ex-pt-sdk)
* payor = Reference(ex-org-sdk)


// ===== CoverageEligibilityRequest（CER 必填 request 參照）=====
Instance: ex-elig-req-sdk
InstanceOf: CoverageEligibilityRequest
Usage: #example
* status = #active
* purpose = #benefits
* patient = Reference(ex-pt-sdk)
* created = "2025-08-04T17:00:00+08:00"
* insurer = Reference(ex-org-sdk)
* insurance[0].coverage = Reference(ex-coverage-sdk)


// ===== CoverageEligibilityResponse（核定額度：修正所有必填與 allowedDecimal）=====
Instance: ex-elig-sdk
InstanceOf: CoverageEligibilityResponse-TW-LTC-Benefit-SDK
Usage: #example
* status = #active
* purpose = #benefits
* patient = Reference(ex-pt-sdk)
* created = "2025-08-04T17:02:19+08:00"
// ---- 補齊 R4 必填欄位 ----
* request = Reference(ex-elig-req-sdk)
* outcome = #complete
* insurer = Reference(ex-org-sdk)
* insurance[0].coverage = Reference(ex-coverage-sdk)

// ---- 服務群組 + 各項額度（注意：沒有 allowedDecimal，百分比改用 allowedUnsignedInt）----
* insurance.item[0].category = CS_TW_LTC_ServiceGroup_SDK#care-pro "照顧及專業服務"
* insurance.item[0].benefit[0].type = CS_TW_LTC_BenefitType_SDK#total
* insurance.item[0].benefit[0].allowedMoney.value = 15460
* insurance.item[0].benefit[0].allowedMoney.currency = #TWD
* insurance.item[0].benefit[+].type = CS_TW_LTC_BenefitType_SDK#subsidy
* insurance.item[0].benefit[=].allowedMoney.value = 12987
* insurance.item[0].benefit[=].allowedMoney.currency = #TWD
* insurance.item[0].benefit[+].type = CS_TW_LTC_BenefitType_SDK#copay
* insurance.item[0].benefit[=].allowedMoney.value = 2473
* insurance.item[0].benefit[=].allowedMoney.currency = #TWD
// * insurance.item[0].benefit[+].type = CS_TW_LTC_BenefitType_SDK#copay-rate
// * insurance.item[0].benefit[=].allowedUnsignedInt = 16 // 以百分比 16% 表示


// ===== CarePlan（照顧計畫：補 activity.detail.status；count 不可為 0）=====
Instance: ex-plan-sdk
InstanceOf: CarePlan-TW-LTC-Plan-SDK
Usage: #example
* status = #active
* intent = #plan
* subject = Reference(ex-pt-sdk)
* activity[0].detail.status = #scheduled
* activity[0].detail.code = CS_TW_LTC_ServiceItem#AA01 "照顧計畫 擬定與服務連結"
* activity[0].detail.extension[unitPrice].valueMoney.value = 195
* activity[0].detail.extension[unitPrice].valueMoney.currency = #TWD
* activity[0].detail.quantity.value = 19
* activity[0].detail.extension[freqLabel].valueString = "每週 2 次（週二、週五）"
