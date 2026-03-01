Profile: LTCEpisodeOfCarePayload
Parent: LTCEpisodeOfCareBase
Id: LTC-EpisodeOfCare-Payload
Title: "長照 SDK－長照案件"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 EpisodeOfCare Resource，以呈現長照 SDK 回傳之案件資訊，包含案件流水號、個案狀態、開結案時間及主責機構等資料。"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/LTC-EpisodeOfCare-Payload"
* ^version = "0.1.0"
* ^status = #draft
// 繼承自 LTCEpisodeOfCareBase：status, period, patient, managingOrganization
* status from VS_TW_LTC_CaseStatus (required)
* managingOrganization only Reference(LTCOrganization)
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier 1..* MS
* identifier contains caseSerial 1..1 MS
* identifier[caseSerial].system 1..1 MS
* identifier[caseSerial].system = "https://ltc-ig.fhir.tw/identifier/sdk/r1.1-case-serial"
* identifier[caseSerial].value 1..1 MS
