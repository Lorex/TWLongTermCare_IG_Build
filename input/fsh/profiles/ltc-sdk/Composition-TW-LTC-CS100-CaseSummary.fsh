Profile: Composition_TW_LTC_CS100_CaseSummary
Parent: Composition
Id: Composition-TW-LTC-CS100-CaseSummary
Title: "個案總查詢（CS100 對應版）Case Summary"
Description: """
本文件為『個案總查詢（Case Summary）』之 CS100 專用版本，
其內容與章節配置對應衛生福利部照顧服務管理資訊平臺功能
《CS100 個案總查詢》之查詢結果欄位與區塊。
"""
* ^url = "https://ltc-ig.fhir.tw/StructureDefinition/Composition-TW-LTC-CS100-CaseSummary"
* ^version = "0.1.0"
* ^status = #draft
* ^jurisdiction = urn:iso:std:iso:3166#TW "Taiwan (Province of China)"

// ===== 核心欄位 =====
* status 1..1 MS
* status = #final
* type 1..1 MS
* type = LOINC#11506-3 "Patient Summary"
* subject 1..1 MS
* subject only Reference(TWCorePatient)
* date 1..1 MS
* title 1..1 MS

// ===== 報表識別（不要切片 identifier；直接固定 system/value 規則）=====
* identifier 1..1 MS
* identifier.system 1..1 MS
* identifier.system = "https://ltc-ig.fhir.tw/identifier/cs100/report-id"
* identifier.value 1..1 MS

// ===== 章節切片：以 code 做 discriminator =====
* section 4..* MS
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section ^slicing.ordered = false

* section contains
    patient 1..1 MS and
    case 1..1 MS and
    assessment 0..1 and
    careplan 0..1 and
    eligibility 0..1 and
    incidents 0..1

// A. 個案基本
* section[patient].code = LOINC#8716-3 "Patient demographics"
* section[patient].title = "CS100-個案基本"
* section[patient].entry 0..*
* section[patient].entry only Reference(TWCorePatient or Observation)

// B. 案件（CS100）
* section[case].code.text = "CS100-LTC Case (EpisodeOfCare)"
* section[case].title = "CS100-案件資訊"
* section[case].entry 1..*
* section[case].entry only Reference(EpisodeOfCare-TW-LTC-Case-CS100)

// C. 評估核定摘要
* section[assessment].code.text = "CS100-Assessment Summary"
* section[assessment].title = "CS100-評估核定摘要"
* section[assessment].entry 0..*
* section[assessment].entry only Reference(Observation-TW-LTC-AssessmentSummary)

// D. 照顧計畫
* section[careplan].code.text = "CS100-CarePlan"
* section[careplan].title = "CS100-照顧計畫"
* section[careplan].entry 0..*
* section[careplan].entry only Reference(CarePlan-TW-LTC-Plan-SDK)

// E. 核定額度
* section[eligibility].code.text = "CS100-Eligibility/Benefit"
* section[eligibility].title = "CS100-核定額度"
* section[eligibility].entry 0..*
* section[eligibility].entry only Reference(CoverageEligibilityResponse-TW-LTC-Benefit)

// F. 近期事件（通報）
* section[incidents].code.text = "CS100-Recent Incidents"
* section[incidents].title = "CS100-近期異動/通報"
* section[incidents].entry 0..*
* section[incidents].entry only Reference(Communication-TW-LTC-Incident)

// Profile: Composition_TW_LTC_CS100_CaseSummary
// Parent: Composition
// Id: Composition-TW-LTC-CS100-CaseSummary
// Title: "個案總查詢（CS100 對應版）Case Summary"
// Description: """
// 本文件為『個案總查詢（Case Summary）』之 CS100 專用版本，
// 其內容與章節配置對應衛生福利部照顧服務管理資訊平臺功能
// 《CS100 個案總查詢》之查詢結果欄位與區塊。
// """
// * ^url = "https://ltc-ig.fhir.tw/StructureDefinition/Composition-TW-LTC-CS100-CaseSummary"
// * ^version = "0.1.0"
// * ^status = #draft
// * ^jurisdiction = urn:iso:std:iso:3166#TW "Taiwan (Province of China)"

// * status 1..1 MS
// * status = #final
// * type 1..1 MS
// * type = LOINC#11506-3 "Patient Summary"
// * subject 1..1 MS
// * subject only Reference(TWCorePatient)
// * date 1..1 MS
// * title 1..1 MS

// // CS100 報表執行識別
// * identifier ^slicing.discriminator.type = #value
// * identifier ^slicing.discriminator.path = "system"
// * identifier ^slicing.rules = #open
// * identifier 1..* MS
// * identifier contains reportId 1..1 MS
// * identifier[reportId].system 1..1 MS
// * identifier[reportId].system = "https://ltc-ig.fhir.tw/identifier/cs100/report-id"
// * identifier[reportId].value 1..1 MS

// * section 4..* MS
// * section ^slicing.discriminator.type = #value
// * section ^slicing.discriminator.path = "code"
// * section ^slicing.rules = #open

// // A. 個案基本
// * section contains patient 1..1 MS
// * section[patient].code = LOINC#8716-3 "Patient demographics"
// * section[patient].title = "CS100-個案基本"
// * section[patient].entry 0..*
// * section[patient].entry only Reference(TWCorePatient or Observation)

// // B. 案件（CS100）
// * section contains case 1..1 MS
// * section[case].code.text = "CS100-LTC Case (EpisodeOfCare)"
// * section[case].title = "CS100-案件資訊"
// * section[case].entry 1..*
// * section[case].entry only Reference(EpisodeOfCare_TW_LTC_Case_CS100)

// // C. 評估核定摘要
// * section contains assessment 0..1
// * section[assessment].code.text = "CS100-Assessment Summary"
// * section[assessment].title = "CS100-評估核定摘要"
// * section[assessment].entry 0..*
// * section[assessment].entry only Reference(Observation_TW_LTC_AssessmentSummary)

// // D. 照顧計畫
// * section contains careplan 0..1
// * section[careplan].code.text = "CS100-CarePlan"
// * section[careplan].title = "CS100-照顧計畫"
// * section[careplan].entry 0..*
// * section[careplan].entry only Reference(CarePlan_TW_LTC_Plan_SDK)

// // E. 核定額度
// * section contains eligibility 0..1
// * section[eligibility].code.text = "CS100-Eligibility/Benefit"
// * section[eligibility].title = "CS100-核定額度"
// * section[eligibility].entry 0..*
// * section[eligibility].entry only Reference(CoverageEligibilityResponse_TW_LTC_Benefit)

// // F. 近期事件（通報）
// * section contains incidents 0..1
// * section[incidents].code.text = "CS100-Recent Incidents"
// * section[incidents].title = "CS100-近期異動/通報"
// * section[incidents].entry 0..*
// * section[incidents].entry only Reference(Communication_TW_LTC_Incident)
