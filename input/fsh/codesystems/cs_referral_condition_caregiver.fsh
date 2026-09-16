CodeSystem: ReferralConditionCaregiverCSTWLTC
Id: ReferralConditionCaregiverCS-TWLTC
Title: "轉介單看護狀況代碼"
Description: "用於表述個案雇用看護的狀況。"

//* ^url = "http://ltc-ig.fhir.tw/CodeSystem/ReferralConditionCaregiverCS-TWLTC"
* ^identifier[0].system = "urn:ietf:rfc:3986"
* ^identifier[0].value = "urn:oid:2.25.234945324398988787919068777619500322446"

* ^status = #active
* ^caseSensitive = true
* ^experimental = false
* ^date = "2024-08-25"

* #no-caregiver "無看護" "個案無雇用看護。"
* #caregiver "有看護" "個案有雇用看護。"
