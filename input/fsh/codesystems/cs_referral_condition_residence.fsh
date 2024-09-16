CodeSystem: ReferralConditionResidenceCSTWLTC
Id: ReferralConditionResidenceCS-TWLTC
Title: "轉介單居住狀況代碼"
Description: "用於表述個案的居住狀況"

//* ^url = "http://ltc-ig.fhir.tw/Codesystem-ReferralConditionResidenceCS-TWLTC"
* ^status = #active
* ^experimental = false
* ^date = "2024-08-25"

* #not-alone "非獨居" "個案非獨居。"
* #alone-managed "獨居 (社會局列冊管理個案)" "個案獨居，且社會局列冊管理。"
* #alone-not-managed "獨居 (社會局未列冊管理個案)" "個案獨居，但社會局未列冊管理。"