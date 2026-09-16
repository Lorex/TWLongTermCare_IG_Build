CodeSystem: CS_TW_LTC_BenefitType
Id: cs-tw-ltc-benefit-type
Title: "長照 SDK－核定額度－金流欄位"
Description: "此 CodeSystem 定義長照 SDK 核定額度中的金流欄位代碼。"
* ^identifier[0].system = "urn:ietf:rfc:3986"
* ^identifier[0].value = "urn:oid:2.25.252440327269316918026599523118404482708"

* ^url = "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-benefit-type"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #total      "總額度"
* #subsidy    "補助額度"
* #copay      "部分負擔"
* #copay-rate "部分負擔比率(%)"
