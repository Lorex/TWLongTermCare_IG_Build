// 基本參照
Instance: ex-pt
InstanceOf: Patient
Usage: #example
* identifier.system = "https://example.org/mrn"
* identifier.value = "A0001"
* name.text = "王小明"

Instance: ex-org
InstanceOf: Organization
Usage: #example
* name = "某某長照管理中心"

Instance: ex-prac
InstanceOf: Practitioner
Usage: #example
* name.text = "張個管"

// r1: 案件（CS100）
Instance: ex-case-cs100
InstanceOf: EpisodeOfCare-TW-LTC-Case-CS100
Usage: #example
* status = #active
* period.start = "2025-10-01"
* patient = Reference(ex-pt)
* managingOrganization = Reference(ex-org)
* careManager = Reference(ex-prac)
* identifier[caseId].system = "https://ltc-ig.fhir.tw/identifier/cs100/case-id"
* identifier[caseId].value  = "CASE-00001"

// r2: 評估核定摘要
Instance: ex-assessment
InstanceOf: Observation-TW-LTC-AssessmentSummary
Usage: #example
* status = #final
* code = LOINC#8357-6 "Assessment note"
* subject = Reference(ex-pt)
* effectiveDateTime = "2025-10-02"
* component[0].code = CS_TW_LTC_AssessmentComponent#cms-level
* component[0].valueCodeableConcept.text = "1a"
* component[+].code = CS_TW_LTC_AssessmentComponent#welfare-identity
* component[=].valueCodeableConcept.text = "第3類"

// === CER 必填用的 Coverage 與 CoverageEligibilityRequest ===
Instance: ex-coverage
InstanceOf: Coverage
Usage: #example
* status = #active
* beneficiary = Reference(ex-pt)
* payor = Reference(ex-org)

Instance: ex-elig-req
InstanceOf: CoverageEligibilityRequest
Usage: #example
* status = #active
* purpose = #benefits
* patient = Reference(ex-pt)
* created = "2025-10-05T09:00:00+08:00"
* insurer = Reference(ex-org)
* insurance[0].coverage = Reference(ex-coverage)

// r3: 核定額度（補齊 requestor / request / outcome / insurer / insurance.coverage）
Instance: ex-elig
InstanceOf: CoverageEligibilityResponse-TW-LTC-Benefit
Usage: #example
* status = #active
* purpose = #benefits
* created = "2025-10-05T10:00:00+08:00"
* patient = Reference(ex-pt)
* requestor = Reference(ex-org)
* request   = Reference(ex-elig-req)
* outcome   = #complete
* insurer   = Reference(ex-org)
* insurance[0].coverage = Reference(ex-coverage)
* insurance.item[0].category = CS_TW_LTC_ServiceGroup#care-pro
* insurance.item[0].benefit[0].type = CS_TW_LTC_BenefitType#total
* insurance.item[0].benefit[0].allowedMoney.value = 15460
* insurance.item[0].benefit[0].allowedMoney.currency = #TWD
* insurance.item[0].benefit[+].type = CS_TW_LTC_BenefitType#subsidy
* insurance.item[0].benefit[=].allowedMoney.value = 12987
* insurance.item[0].benefit[=].allowedMoney.currency = #TWD
* insurance.item[0].benefit[+].type = CS_TW_LTC_BenefitType#copay
* insurance.item[0].benefit[=].allowedMoney.value = 2473
* insurance.item[0].benefit[=].allowedMoney.currency = #TWD

// r4: 計畫（補 activity.detail.status）
Instance: ex-plan
InstanceOf: CarePlan-TW-LTC-Plan-SDK
Usage: #example
* status = #active
* intent = #plan
* subject = Reference(ex-pt)
* period.start = "2025-10-10"
* activity[0].detail.status = #scheduled
* activity[0].detail.code = CS_TW_LTC_ServiceItem#BA13 "陪同外出"
* activity[0].detail.scheduledTiming.repeat.frequency = 8
* activity[0].detail.scheduledTiming.repeat.period = 1
* activity[0].detail.scheduledTiming.repeat.periodUnit = #wk
* supportingInfo = Reference(ex-elig)

// 通報（補必填 reasonCode）
Instance: ex-incident
InstanceOf: Communication-TW-LTC-Incident
Usage: #example
* status = #completed
* subject = Reference(ex-pt)
* sent = "2025-11-05T10:30:00+08:00"
* reasonCode[0].coding[0].system = "https://ltc-ig.fhir.tw/ValueSet/VS_TW_LTC_Incident_Category"
* reasonCode[0].coding[0].code = #fall
* reasonCode[0].coding[0].display = "跌倒"
* payload[0].contentString = "巡視時發現個案暈眩跌坐於地，已聯繫家屬與機構。"

// CS100 個案總查詢 Composition（移除不存在的 identifier slice，補 author）
Instance: ex-case-summary-cs100
InstanceOf: Composition-TW-LTC-CS100-CaseSummary
Usage: #example
* status = #final
* type = LOINC#11506-3 "Patient Summary"
* subject = Reference(ex-pt)
* date = "2025-11-06T12:00:00+08:00"
* title = "CS100 個案總查詢 - 王小明"
* author[0] = Reference(ex-prac)

* identifier.system = "https://ltc-ig.fhir.tw/identifier/cs100/report-id"
* identifier.value  = "CS-20251106-0001"

// A 基本
* section[0].code = LOINC#8716-3 "Patient demographics"
* section[0].title = "CS100-個案基本"
* section[0].entry[0] = Reference(ex-pt)

// B 案件
* section[+].code.text = "CS100-LTC Case (EpisodeOfCare)"
* section[=].title = "CS100-案件資訊"
* section[=].entry[0] = Reference(ex-case-cs100)

// C 評估摘要
* section[+].code.text = "CS100-Assessment Summary"
* section[=].title = "CS100-評估核定摘要"
* section[=].entry[0] = Reference(ex-assessment)

// D 照顧計畫
* section[+].code.text = "CS100-CarePlan"
* section[=].title = "CS100-照顧計畫"
* section[=].entry[0] = Reference(ex-plan)

// E 核定額度
* section[+].code.text = "CS100-Eligibility/Benefit"
* section[=].title = "CS100-核定額度"
* section[=].entry[0] = Reference(ex-elig)

// F 近期通報
* section[+].code.text = "CS100-Recent Incidents"
* section[=].title = "CS100-近期異動/通報"
* section[=].entry[0] = Reference(ex-incident)


// Instance: ex-pt
// InstanceOf: Patient
// Usage: #example
// * identifier.system = "https://example.org/mrn"
// * identifier.value = "A0001"
// * name.text = "王小明"

// Instance: ex-org
// InstanceOf: Organization
// Usage: #example
// * name = "某某長照管理中心"

// Instance: ex-prac
// InstanceOf: Practitioner
// Usage: #example
// * name.text = "張個管"

// // r1: 案件（CS100）
// Instance: ex-case-cs100
// InstanceOf: EpisodeOfCare-TW-LTC-Case-CS100
// Usage: #example
// * status = #active
// * period.start = "2025-10-01"
// * patient = Reference(ex-pt)
// * managingOrganization = Reference(ex-org)
// * careManager = Reference(ex-prac)
// * identifier[caseId].system = "https://ltc-ig.fhir.tw/identifier/cs100/case-id"
// * identifier[caseId].value  = "CASE-00001"

// // r2: 評估核定摘要
// Instance: ex-assessment
// InstanceOf: Observation-TW-LTC-AssessmentSummary
// Usage: #example
// * status = #final
// * code = LOINC#8357-6 "Assessment note"
// * subject = Reference(ex-pt)
// * effectiveDateTime = "2025-10-02"
// * component[0].code = CS_TW_LTC_AssessmentComponent#cms-level
// * component[0].valueCodeableConcept.text = "1a"
// * component[+].code = CS_TW_LTC_AssessmentComponent#welfare-identity
// * component[=].valueCodeableConcept.text = "第3類"

// // r3: 核定額度
// Instance: ex-elig
// InstanceOf: CoverageEligibilityResponse-TW-LTC-Benefit
// Usage: #example
// * status = #active
// * purpose = #benefits
// * created = "2025-10-05"
// * patient = Reference(ex-pt)
// * insurance.item[0].category = CS_TW_LTC_ServiceGroup#care-pro
// * insurance.item[0].benefit[0].type = CS_TW_LTC_BenefitType#total
// * insurance.item[0].benefit[0].allowedMoney.value = 15460
// * insurance.item[0].benefit[0].allowedMoney.currency = #TWD
// * insurance.item[0].benefit[+].type = CS_TW_LTC_BenefitType#subsidy
// * insurance.item[0].benefit[=].allowedMoney.value = 12987
// * insurance.item[0].benefit[=].allowedMoney.currency = #TWD
// * insurance.item[0].benefit[+].type = CS_TW_LTC_BenefitType#copay
// * insurance.item[0].benefit[=].allowedMoney.value = 2473
// * insurance.item[0].benefit[=].allowedMoney.currency = #TWD

// // r4: 計畫
// Instance: ex-plan
// InstanceOf: CarePlan-TW-LTC-Plan-SDK
// Usage: #example
// * status = #active
// * intent = #plan
// * subject = Reference(ex-pt)
// * period.start = "2025-10-10"
// * activity[0].detail.code = CS_TW_LTC_ServiceItem#BA13 "陪同外出"
// * activity[0].detail.scheduledTiming.repeat.frequency = 8
// * activity[0].detail.scheduledTiming.repeat.period = 1
// * activity[0].detail.scheduledTiming.repeat.periodUnit = #wk
// * supportingInfo = Reference(ex-elig)

// // 通報
// Instance: ex-incident
// InstanceOf: Communication-TW-LTC-Incident
// Usage: #example
// * status = #completed
// * subject = Reference(ex-pt)
// * sent = "2025-11-05T10:30:00+08:00"
// * payload[0].contentString = "巡視時發現個案暈眩跌坐於地，已聯繫家屬與機構。"

// // CS100 個案總查詢 Composition
// Instance: ex-case-summary-cs100
// InstanceOf: Composition-TW-LTC-CS100-CaseSummary
// Usage: #example
// * status = #final
// * type = LOINC#11506-3 "Patient Summary"
// * subject = Reference(ex-pt)
// * date = "2025-11-06T12:00:00+08:00"
// * title = "CS100 個案總查詢 - 王小明"
// * identifier[reportId].system = "https://ltc-ig.fhir.tw/identifier/cs100/report-id"
// * identifier[reportId].value  = "CS100-20251106-1200-UUID1234"

// // A
// * section[0].code = LOINC#8716-3 "Patient demographics"
// * section[0].title = "CS100-個案基本"
// * section[0].entry[0] = Reference(ex-pt)

// // B
// * section[+].code.text = "CS100-LTC Case (EpisodeOfCare)"
// * section[=].title = "CS100-案件資訊"
// * section[=].entry[0] = Reference(ex-case-cs100)

// // C
// * section[+].code.text = "CS100-Assessment Summary"
// * section[=].title = "CS100-評估核定摘要"
// * section[=].entry[0] = Reference(ex-assessment)

// // D
// * section[+].code.text = "CS100-CarePlan"
// * section[=].title = "CS100-照顧計畫"
// * section[=].entry[0] = Reference(ex-plan)

// // E
// * section[+].code.text = "CS100-Eligibility/Benefit"
// * section[=].title = "CS100-核定額度"
// * section[=].entry[0] = Reference(ex-elig)

// // F
// * section[+].code.text = "CS100-Recent Incidents"
// * section[=].title = "CS100-近期異動/通報"
// * section[=].entry[0] = Reference(ex-incident)
