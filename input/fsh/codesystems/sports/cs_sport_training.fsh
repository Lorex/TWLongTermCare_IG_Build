CodeSystem: SportTrainingCS
Id: SportTrainingCS-Sports
Title: "身體活動量測-重量訓練代碼系統"
Description: "此代碼系統定義重量訓練各個方面的代碼，包括使用的重量、執行的組數以及每組的重複次數。本 CodeSystem 繼承自身體活動量測 IG，後續將配合原始 IG 進行更新。"

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

* #training-wt "訓練重量"
* #training-wt ^property[0].code = #updateDate
* #training-wt ^property[=].valueString = "2024-06"
* #training-wt ^property[+].code = #event
* #training-wt ^property[=].valueString = "新增"
* #sets "訓練組數"
* #sets ^property[0].code = #updateDate
* #sets ^property[=].valueString = "2024-06"
* #sets ^property[+].code = #event
* #sets ^property[=].valueString = "新增"