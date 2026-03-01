ValueSet: VS_TW_LTC_CaseStatus
Id: vs-tw-ltc-case-status
Title: "長照 SDK－個案狀態"
Description: "此 ValueSet 用於表示長照 SDK 中個案的狀態，使用 FHIR EpisodeOfCare status 對應碼：active（服務中）、onhold（暫停服務）、finished（已結案）。"
* ^url = "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-case-status"
* ^version = "0.1.0"
* ^status = #active
* http://hl7.org/fhir/episode-of-care-status#active "Active"
* http://hl7.org/fhir/episode-of-care-status#onhold "On Hold"
* http://hl7.org/fhir/episode-of-care-status#finished "Finished"
