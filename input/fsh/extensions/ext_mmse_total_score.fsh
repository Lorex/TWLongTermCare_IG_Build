Extension: MMSE_TotalScore
Id: mmse-total-score
Title: "MMSE 總分"
Description: "簡易智能狀態測驗的總分"
* ^status = #active
* ^experimental = false
* ^publisher = "台灣長期照顧 Implementation Guide"
* ^copyright = "Copyright © 2024 Taiwan Long-Term Care Implementation Guide"
* ^context[0].type = #element
* ^context[0].expression = "QuestionnaireResponse"

* value[x] only integer
* value[x] ^short = "MMSE 總分"
* value[x] ^definition = "簡易智能狀態測驗的總分，範圍為 0-30 分"
* value[x] ^code[0].system = "http://loinc.org"
* value[x] ^code[0].code = #72106-8
* value[x] ^code[0].display = "Total score [MMSE]"
