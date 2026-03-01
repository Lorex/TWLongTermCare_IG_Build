Profile: LTCEpisodeOfCareBase
Parent: EpisodeOfCare
Id: LTCEpisodeOfCareBase
Title: "長期照顧－案件管理基礎"
Description: "此 Profile 為所有長期照顧 EpisodeOfCare Profile 的共用基礎，定義案件管理之基本結構與共用欄位。"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/LTCEpisodeOfCareBase"
* ^status = #active
* status 1..1 MS
* period 1..1 MS
* period.start 1..1 MS
* period.end 0..1 MS
* patient 1..1 MS
* patient only Reference(LTCPatient)
* managingOrganization 1..1 MS
