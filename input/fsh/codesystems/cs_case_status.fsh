CodeSystem: CS_TW_LTC_CaseStatus
Id: cs-tw-ltc-case-status
Title: "長照 SDK－個案狀態"
Description: "對應 r1.3：服務中、暫停服務、已結案。使用 FHIR EpisodeOfCare status 對應碼。"
* ^url = "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-case-status"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #active    "服務中"
* #onhold    "暫停服務"
* #finished  "已結案"
