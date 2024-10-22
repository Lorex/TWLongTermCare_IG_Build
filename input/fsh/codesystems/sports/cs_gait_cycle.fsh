CodeSystem: GaitCycleCSSport
Id: GaitCycleCS-Sport
Title: "身體活動量測-步態週期"
Description: "一個步伐的完整過程，從一隻腳接觸地面開始到同一隻腳再次接觸地面結束。這個過程可以分為兩個主要階段：支撐期（stance phase）和擺動期（swing phase）。本 CodeSystem 繼承自身體活動量測 IG，後續將配合原始 IG 進行更新。"

* ^status = #active
* ^experimental = false
* ^date = "2024-06-04"
* ^caseSensitive = true


* ^property[0].code = #updateDate
* ^property[=].uri = "http://ltc-ig.fhir.tw/fhir/StructureDefinition/updateDate"
* ^property[=].description = "異動日期"
* ^property[=].type = #string

* ^property[+].code = #event
* ^property[=].uri = "http://ltc-ig.fhir.tw/fhir/StructureDefinition/event"
* ^property[=].description = "異動方式"
* ^property[=].type = #string

* #1 "支撐期(stance phase)" 
* #1 ^property[0].code = #updateDate
* #1 ^property[=].valueString = "2024-06"
* #1 ^property[+].code = #event
* #1 ^property[=].valueString = "新增"

* #2 "擺動期(swing phase)"
* #2 ^property[0].code = #updateDate
* #2 ^property[=].valueString = "2024-06"
* #2 ^property[+].code = #event
* #2 ^property[=].valueString = "新增"
