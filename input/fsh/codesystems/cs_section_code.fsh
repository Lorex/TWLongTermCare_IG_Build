CodeSystem: CS_TW_LTC_SectionCode
Id: cs-tw-ltc-section-code
Title: "長照 SDK－Composition 章節代碼"
Description: "用於長照 Composition 資源中各章節（section）的區段識別代碼。"
* ^identifier[0].system = "urn:ietf:rfc:3986"
* ^identifier[0].value = "urn:oid:2.25.84085560949791310614098238931249319533"

* ^url = "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-section-code"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #case        "案件資訊"
* #assessment  "評估核定摘要"
* #careplan    "照顧計畫"
* #eligibility "核定額度"
* #incidents   "近期異動/通報"
