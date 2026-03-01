Profile: LTCCompositionCS100
Parent: LTCCompositionBase
Id: LTC-Composition-CS100
Title: "個案總查詢（CS100 對應版）Case Summary"
Description: """
本文件為『個案總查詢（Case Summary）』之 CS100 專用版本，
其內容與章節配置對應衛生福利部照顧服務管理資訊平臺功能
《CS100 個案總查詢》之查詢結果欄位與區塊。
"""
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/LTC-Composition-CS100"
* ^version = "0.1.0"
* ^status = #draft
* ^jurisdiction = urn:iso:std:iso:3166#TW "Taiwan (Province of China)"

// ===== 核心欄位（繼承自 LTCCompositionBase：status, type, subject, date, title, author）=====
* status = #final
* type = $LOINC#11506-3
* subject only Reference(LTCPatient)

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
* section[patient].code = $LOINC#8716-3
* section[patient].title = "CS100-個案基本"
* section[patient].entry 0..*
* section[patient].entry only Reference(LTCPatient or Observation)

// B. 案件（CS100）
* section[case].code = http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-section-code#case
* section[case].title = "CS100-案件資訊"
* section[case].entry 1..*
* section[case].entry only Reference(LTCEpisodeOfCareCS100)

// C. 評估核定摘要
* section[assessment].code = http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-section-code#assessment
* section[assessment].title = "CS100-評估核定摘要"
* section[assessment].entry 0..*
* section[assessment].entry only Reference(LTCObservationAssessmentCS100)

// D. 照顧計畫
* section[careplan].code = http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-section-code#careplan
* section[careplan].title = "CS100-照顧計畫"
* section[careplan].entry 0..*
* section[careplan].entry only Reference(LTCCarePlanPayload)

// E. 核定額度
* section[eligibility].code = http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-section-code#eligibility
* section[eligibility].title = "CS100-核定額度"
* section[eligibility].entry 0..*
* section[eligibility].entry only Reference(LTCCoverageEligibilityResponse)

// F. 近期事件（通報）
* section[incidents].code = http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-section-code#incidents
* section[incidents].title = "CS100-近期異動/通報"
* section[incidents].entry 0..*
* section[incidents].entry only Reference(LTCAdverseEvent)
