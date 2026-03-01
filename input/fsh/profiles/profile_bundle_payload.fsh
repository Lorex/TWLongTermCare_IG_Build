Profile: LTCBundlePayload
Parent: Bundle
Id: LTC-Bundle-Payload
Title: "長照 SDK－回傳包（4合1）"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Bundle Resource，以呈現長照 SDK 回傳之資料包，包含案件、評估、核定額度及照顧計畫等資源之集合。"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/LTC-Bundle-Payload"
* ^version = "0.1.0"
* ^status = #draft
* type 1..1
* type = #collection
* entry 1..* MS
* entry.resource only LTCPatient or LTCEpisodeOfCarePayload or LTCObservationAssessmentPayload or LTCCoverageEligibilityResponse or LTCCarePlanPayload or LTCOrganization or LTCPractitioner or LTCCareTeam
