ValueSet: VS_TW_LTC_Case_Source
Id: vs-tw-ltc-case-source
Title: "長照 SDK－申請來源"
Description: "此 ValueSet 用於表示長照 SDK 中個案的申請來源。"
* ^identifier[0].system = "urn:ietf:rfc:3986"
* ^identifier[0].value = "urn:oid:2.25.181573312270388744808257498623487403042"

* ^url = "http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-case-source"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* include codes from system CS_TW_LTC_Case_Source
