Profile: LTCEpisodeOfCareCS100
Parent: LTCEpisodeOfCareBase
Id: LTC-EpisodeOfCare-CS100
Title: "長照案件（CS100 專用版）"
Description: """
對應衛生福利部照顧服務管理資訊平臺『CS100 個案總查詢』之案件列資料。
作為 CS100 匯出資料列的病例/案件載體，提供個案管理之基礎欄位（案件編號、狀態、期間、主責機構、個管等）。
"""
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/LTC-EpisodeOfCare-CS100"
* ^version = "0.1.0"
* ^status = #draft
* ^jurisdiction = urn:iso:std:iso:3166#TW "Taiwan (Province of China)"

// 繼承自 LTCEpisodeOfCareBase：status, period, patient, managingOrganization
* managingOrganization only Reference(LTCOrganization)
* careManager 0..1 MS
* careManager only Reference(LTCPractitionerRole or LTCPractitioner)

// CS100 專用案件編號 system
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier 1..* MS
* identifier contains caseId 1..1 MS
* identifier[caseId].system 1..1 MS
* identifier[caseId].system = "https://ltc-ig.fhir.tw/identifier/cs100/case-id"
* identifier[caseId].value 1..1 MS

// 申請來源（如 CS100 有提供）
* extension 0..*
* extension contains ExtTWLTCCaseSource named source 0..1 MS
