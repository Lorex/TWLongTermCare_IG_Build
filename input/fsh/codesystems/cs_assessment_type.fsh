CodeSystem: CS_TW_LTC_AssessmentType
Id: cs-tw-ltc-assessment-type
Title: "長照 SDK－評估類型"
Description: "對應 r2.8 / r3.21：出院銜接、初評、複評、計畫異動、舊系統無評估轉入、身障居服匯入、AA計劃異動。"
* ^url = "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-assessment-type"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #discharge-link "出院銜接評估"
* #initial        "初評"
* #reassess       "複評"
* #plan-change    "計畫異動"
* #legacy-import  "舊系統無評估轉入"
* #disability-hh  "身障居服匯入"
* #aa-change      "AA計劃異動"
