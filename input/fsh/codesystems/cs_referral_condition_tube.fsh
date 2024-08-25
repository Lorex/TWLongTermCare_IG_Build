CodeSystem: ReferralConditionTubeCSTWLTC
Id: ReferralConditionTubeCSTWLTC
Title: "轉介單管路狀況代碼"
Description: "用於表述轉介單的狀況代碼，包含身心障礙手冊、管路、壓傷、居住狀況、看護、主要問題及需求等。"

* ^url = "http://ltc-ig.fhir.tw/Codesystem/ReferralConditionTubeCS-TWLTC"
* ^status = #active
* ^experimental = false
* ^date = "2024-08-25"

* #no-tube "無管路" "個案無管路。"
* #nasogastric-tube "鼻胃管" "個案使用鼻胃管。"
* #tracheostomy "氣切" "個案使用氣切管。"
* #catheter "導尿管" "個案使用導尿管。"
* #fistula "造瘻" "個案使用造瘻管。"
* #other "其他" "個案使用其他管路。"