CodeSystem: ReferralConditionCrushCSTWLTC
Id: ReferralConditionCrushCS-TWLTC
Title: "轉介單壓傷狀況代碼"
Description: "用於表述個案的壓傷狀況。"

//* ^url = "http://ltc-ig.fhir.tw/CodeSystem/ReferralConditionCrushCS-TWLTC"
* ^identifier[0].system = "urn:ietf:rfc:3986"
* ^identifier[0].value = "urn:oid:2.25.276529238070119313889804260776559609845"

* ^status = #active
* ^caseSensitive = true
* ^experimental = false
* ^date = "2024-08-25"

* #no-crush "無壓傷" "個案無壓傷。"
* #crush "壓傷" "個案有壓傷。"