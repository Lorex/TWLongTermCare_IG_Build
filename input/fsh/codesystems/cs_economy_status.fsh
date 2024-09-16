CodeSystem: EconomyStatusCSTWLTC
Id: EconomyStatusCS-TWLTC
Title:  "經濟狀況代碼"
Description: "用於表述個案的經濟狀況，在長照機構住民經濟狀況 Extension 中使用。
此代碼比照警政署偵查筆錄制式格式之選項進行設計。"

//* ^url = "http://ltc-ig.fhir.tw/CodeSystem/EconomyStatusCS-TWLTC"
* ^status = #active
* ^caseSensitive = true
* ^experimental = false
* ^date = "2024-08-25"

* #poor "貧寒" "個案經濟狀況為貧寒。"
* #barely-maintain "勉持" "個案經濟狀況為勉持。"
* #well-off "小康" "個案經濟狀況為小康。"
* #middle-class "中產" "個案經濟狀況為中產。"
* #wealthy "富裕" "個案經濟狀況為富裕。"