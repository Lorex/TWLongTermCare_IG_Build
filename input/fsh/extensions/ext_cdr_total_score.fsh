Extension: CDR_TotalScore
Id: cdr-total-score
Title: "CDR 總分"
Description: "臨床失智評估量表的總分"
* ^status = #active
* ^experimental = false
* ^publisher = "台灣長期照顧 Implementation Guide"
* ^copyright = "Copyright © 2024 Taiwan Long-Term Care Implementation Guide"
* ^context[0].type = #element
* ^context[0].expression = "QuestionnaireResponse"

* value[x] only integer
* value[x] ^short = "CDR 總分"
* value[x] ^definition = "臨床失智評估量表的總分，範圍為 0-5 分"