// ===== Patient / Organization / Practitioner =====
Instance: ex-pt-sdk
InstanceOf: LTCPatient
Description: "長照 SDK 範例用的個案（Patient）資源。"
Usage: #example
* identifier[member].use = #official
* identifier[member].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[member].type.coding.code = #PRN
* identifier[member].system = "https://example.org/mrn"
* identifier[member].value = "A0001"
* name[usual].use = #usual
* name[usual].text = "王小明"
* telecom[0].system = #phone
* telecom[0].value = "0912345678"
* gender = #male
* birthDate = "1950-01-01"
* address[home].use = #home
* address[home].text = "台北市中山區中山北路100號"
* contact[0].relationship = http://terminology.hl7.org/CodeSystem/v2-0131#N "Next-of-Kin"
* contact[0].name.text = "王大明"
* contact[0].telecom[0].system = #phone
* contact[0].telecom[0].value = "0987654321"

Instance: ex-org-sdk
InstanceOf: LTCOrganization
Description: "長照 SDK 範例用的長期照顧管理中心（Organization）資源。"
Usage: #example
* identifier.system = "http://www.moi.gov.tw"
* identifier.value = "0131060099"
* type = http://terminology.hl7.org/CodeSystem/organization-type#prov "Healthcare Provider"
* name = "OOO長期照顧管理中心"

Instance: ex-prac-sdk
InstanceOf: LTCPractitioner
Description: "長照 SDK 範例用的照顧管理專員（Practitioner）資源。"
Usage: #example
* identifier[0].system = "http://example.org/fhir/NamingSystem/practitioner-id"
* identifier[0].value = "P001"
* name[0].text = "李小華"


// ===== EpisodeOfCare (LTC 案件) =====
Instance: ex-case-sdk
InstanceOf: LTCEpisodeOfCarePayload
Description: "長照 SDK 範例用的長照案件（EpisodeOfCare）資源。"
Usage: #example
* status = #active
* period.start = "2025-01-01"
* patient = Reference(ex-pt-sdk)
* managingOrganization = Reference(ex-org-sdk)
* identifier[caseSerial].system = "https://ltc-ig.fhir.tw/identifier/sdk/r1.1-case-serial"
* identifier[caseSerial].value = "123456789"


// ===== Observation (評估核定摘要) =====
Instance: ex-assess-sdk
InstanceOf: LTCObservationAssessmentPayload
Description: "長照 SDK 範例用的評估核定摘要（Observation）資源。"
Usage: #example
* status = #final
* code = $LOINC#8357-6 "Blood pressure method"
* subject = Reference(ex-pt-sdk)
* effectiveDateTime = "2025-01-01"
* component[welfare-identity].valueCodeableConcept = CS_TW_LTC_WelfareIdentity#cat3 "第3類"
* component[cms-level].valueCodeableConcept = CS_TW_LTC_CMSLevel#1a "1a"
* component[assessment-type].valueCodeableConcept = CS_TW_LTC_AssessmentType#initial "初評"
* component[plan-start].valueDateTime = "2025-01-01"



// ===== Coverage（核付對象保險覆蓋；供 CER 必填 coverage 參照）=====
Instance: ex-coverage-sdk
InstanceOf: Coverage
Description: "長照 SDK 範例用的保險覆蓋（Coverage）資源。"
Usage: #example
* status = #active
* beneficiary = Reference(ex-pt-sdk)
* payor = Reference(ex-org-sdk)


// ===== CoverageEligibilityRequest（CER 必填 request 參照）=====
Instance: ex-elig-req-sdk
InstanceOf: CoverageEligibilityRequest
Description: "長照 SDK 範例用的核定請求（CoverageEligibilityRequest）資源。"
Usage: #example
* status = #active
* purpose = #benefits
* patient = Reference(ex-pt-sdk)
* created = "2025-08-04T17:00:00+08:00"
* insurer = Reference(ex-org-sdk)
* insurance[0].coverage = Reference(ex-coverage-sdk)


// ===== CoverageEligibilityResponse（核定額度：修正所有必填與 allowedDecimal）=====
Instance: ex-elig-sdk
InstanceOf: LTCCoverageEligibilityResponse
Description: "長照 SDK 範例用的核定額度回應（CoverageEligibilityResponse）資源。"
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
* insurance.item[0].category = CS_TW_LTC_ServiceGroup#care-pro "照顧及專業服務"
* insurance.item[0].benefit[0].type = CS_TW_LTC_BenefitType#total
* insurance.item[0].benefit[0].allowedMoney.value = 15460
* insurance.item[0].benefit[0].allowedMoney.currency = #TWD
* insurance.item[0].benefit[+].type = CS_TW_LTC_BenefitType#subsidy
* insurance.item[0].benefit[=].allowedMoney.value = 12987
* insurance.item[0].benefit[=].allowedMoney.currency = #TWD
* insurance.item[0].benefit[+].type = CS_TW_LTC_BenefitType#copay
* insurance.item[0].benefit[=].allowedMoney.value = 2473
* insurance.item[0].benefit[=].allowedMoney.currency = #TWD
// * insurance.item[0].benefit[+].type = CS_TW_LTC_BenefitType#copay-rate
// * insurance.item[0].benefit[=].allowedUnsignedInt = 16 // 以百分比 16% 表示


// ===== CarePlan（照顧計畫：補 activity.detail.status；count 不可為 0）=====
Instance: ex-plan-sdk
InstanceOf: LTCCarePlanPayload
Description: "長照 SDK 範例用的照顧計畫（CarePlan）資源。"
Usage: #example
* status = #active
* intent = #plan
* subject = Reference(ex-pt-sdk)
* activity[0].detail.status = #scheduled
* activity[0].detail.code = CS_TW_LTC_ServiceItem#AA01 "照顧計畫擬定與服務連結"
* activity[0].detail.extension[unitPrice].valueMoney.value = 195
* activity[0].detail.extension[unitPrice].valueMoney.currency = #TWD
* activity[0].detail.quantity.value = 19
* activity[0].detail.scheduledString = "每週 2 次（週二、週五）"
