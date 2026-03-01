// ===== Patient / Organization / Practitioner =====
Instance: ltc-patient-sdk-example
InstanceOf: LTCPatient
Title: "長照 SDK－個案（Patient）範例"
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

Instance: ltc-organization-sdk-example
InstanceOf: LTCOrganization
Title: "長照 SDK－長照管理中心（Organization）範例"
Description: "長照 SDK 範例用的長期照顧管理中心（Organization）資源。"
Usage: #example
* identifier.system = "http://www.moi.gov.tw"
* identifier.value = "0131060099"
* type = http://terminology.hl7.org/CodeSystem/organization-type#prov "Healthcare Provider"
* name = "OOO長期照顧管理中心"

Instance: ltc-practitioner-sdk-example
InstanceOf: LTCPractitioner
Title: "長照 SDK－照顧管理專員（Practitioner）範例"
Description: "長照 SDK 範例用的照顧管理專員（Practitioner）資源。"
Usage: #example
* identifier[0].system = "http://example.org/fhir/NamingSystem/practitioner-id"
* identifier[0].value = "P001"
* name[0].text = "李小華"


// ===== EpisodeOfCare (LTC 案件) =====
Instance: ltc-episodeofcare-sdk-example
InstanceOf: LTCEpisodeOfCarePayload
Title: "長照 SDK－長照案件（EpisodeOfCare）範例"
Description: "長照 SDK 範例用的長照案件（EpisodeOfCare）資源。"
Usage: #example
* status = #active
* period.start = "2025-01-01"
* patient = Reference(ltc-patient-sdk-example)
* managingOrganization = Reference(ltc-organization-sdk-example)
* identifier[caseSerial].system = "https://ltc-ig.fhir.tw/identifier/sdk/r1.1-case-serial"
* identifier[caseSerial].value = "123456789"


// ===== Observation (評估核定摘要) =====
Instance: ltc-observation-assessment-sdk-example
InstanceOf: LTCObservationAssessmentPayload
Title: "長照 SDK－評估核定摘要（Observation）範例"
Description: "長照 SDK 範例用的評估核定摘要（Observation）資源。"
Usage: #example
* status = #final
* code = $LOINC#8357-6 "Blood pressure method"
* subject = Reference(ltc-patient-sdk-example)
* effectiveDateTime = "2025-01-01"
* component[welfare-identity].valueCodeableConcept = CS_TW_LTC_WelfareIdentity#cat3 "第3類"
* component[cms-level].valueCodeableConcept = CS_TW_LTC_CMSLevel#1a "1a"
* component[assessment-type].valueCodeableConcept = CS_TW_LTC_AssessmentType#initial "初評"
* component[plan-start].valueDateTime = "2025-01-01"



// ===== Coverage（核付對象保險覆蓋；供 CER 必填 coverage 參照）=====
Instance: ltc-coverage-sdk-example
InstanceOf: Coverage
Title: "長照 SDK－保險覆蓋（Coverage）範例"
Description: "長照 SDK 範例用的保險覆蓋（Coverage）資源。"
Usage: #example
* status = #active
* beneficiary = Reference(ltc-patient-sdk-example)
* payor = Reference(ltc-organization-sdk-example)


// ===== CoverageEligibilityRequest（CER 必填 request 參照）=====
Instance: ltc-coverageeligibilityrequest-sdk-example
InstanceOf: CoverageEligibilityRequest
Title: "長照 SDK－核定請求（CoverageEligibilityRequest）範例"
Description: "長照 SDK 範例用的核定請求（CoverageEligibilityRequest）資源。"
Usage: #example
* status = #active
* purpose = #benefits
* patient = Reference(ltc-patient-sdk-example)
* created = "2025-08-04T17:00:00+08:00"
* insurer = Reference(ltc-organization-sdk-example)
* insurance[0].coverage = Reference(ltc-coverage-sdk-example)


// ===== CoverageEligibilityResponse（核定額度：修正所有必填與 allowedDecimal）=====
Instance: ltc-coverageeligibilityresponse-sdk-example
InstanceOf: LTCCoverageEligibilityResponse
Title: "長照 SDK－核定額度回應（CoverageEligibilityResponse）範例"
Description: "長照 SDK 範例用的核定額度回應（CoverageEligibilityResponse）資源。"
Usage: #example
* status = #active
* purpose = #benefits
* patient = Reference(ltc-patient-sdk-example)
* created = "2025-08-04T17:02:19+08:00"
// ---- 補齊 R4 必填欄位 ----
* request = Reference(ltc-coverageeligibilityrequest-sdk-example)
* outcome = #complete
* insurer = Reference(ltc-organization-sdk-example)
* insurance[0].coverage = Reference(ltc-coverage-sdk-example)

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
Instance: ltc-careplan-sdk-example
InstanceOf: LTCCarePlanPayload
Title: "長照 SDK－照顧計畫（CarePlan）範例"
Description: "長照 SDK 範例用的照顧計畫（CarePlan）資源。"
Usage: #example
* status = #active
* intent = #plan
* subject = Reference(ltc-patient-sdk-example)
* activity[0].detail.status = #scheduled
* activity[0].detail.code = CS_TW_LTC_ServiceItem#AA01 "照顧計畫擬定與服務連結"
* activity[0].detail.extension[unitPrice].valueMoney.value = 195
* activity[0].detail.extension[unitPrice].valueMoney.currency = #TWD
* activity[0].detail.quantity.value = 19
* activity[0].detail.scheduledString = "每週 2 次（週二、週五）"
