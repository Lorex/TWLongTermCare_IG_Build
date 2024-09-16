CodeSystem: ConditionDisabilityCSTWLTC
Id: ConditionDisabilityCS-TWLTC
Title: "個案身心障礙手冊持有狀態代碼"
Description: "用於表述個案的身心障礙手冊持有狀態代碼。"

//* ^url = "http://ltc-ig.fhir.tw/Codesystem-ConditionDisabilityCS-TWLTC"
* ^status = #active
* ^experimental = false
* ^date = "2024-08-25"

* #no-disability-handbook "無身心障礙手冊" "個案無身心障礙手冊。"
* #disability-handbook "有身心障礙手冊" "個案有身心障礙手冊，新舊制不分或未知。"
* #disability-handbook-new "有身心障礙手冊－新制" "個案有身心障礙手冊，為新制。"
* #disability-handbook-legacy "有身心障礙手冊－舊制" "個案有身心障礙手冊，為舊制。"