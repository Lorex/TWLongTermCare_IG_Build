Alias: $Questionnaire = http://hl7.org/fhir/StructureDefinition/Questionnaire
Alias: $VSPublicationStatus = http://hl7.org/fhir/ValueSet/publication-status

Profile: LTCQuestionnaire
Parent: $Questionnaire
Id: LTCQuestionnaire
Title: "長期照顧－問卷"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Questionnaire Resource，以呈現長期照顧情境中涉及之問卷或量表內容。"

* url 0..1 MS
* url ^short = "問卷的網址"
* identifier 0..* MS
* identifier ^short = "問卷的識別碼"
* version 0..1 MS
* version ^short = "問卷的版本"
* name 0..1 MS
* name ^short = "電腦可讀的問卷名稱，作為問卷的識別名稱"
* title 0..1 MS
* title ^short = "人類可讀的問卷名稱，通常為紙本問卷上方的標題"
* status 1..1 MS
* status ^short = "問卷的狀態。[應填入 draft / active / retired / unknown]"
* status from $VSPublicationStatus
* item 1..* MS
* item ^short = "問卷的問題或量表項目"
* item.linkId 1..1 MS
* item.linkId ^short = "問題或量表項目的唯一識別碼。[應填入獨立的編號]"
* item.prefix 0..1 MS
* item.prefix ^short = "問題或量表項目的前置標籤或人類可讀編號，通常為數字或字母。[應填入編號，如 1.、A.、I.、Q1. 等]"
* item.type 1..1 MS 
* item.type ^short = "問題或量表項目的資料型態。[應填入 group / display / boolean / decimal / integer / date / dateTime +]"
* item.text 1..1 MS
* item.text ^short = "問題或量表項目的內容描述。[應填入問題或量表項目的內容]"
* item.required 0..1 MS
* item.required ^short = "問題或量表項目是否為必填。[應填入 true / false]"
* item.repeats 0..1 MS
* item.repeats ^short = "問題或量表項目是否可重複填寫。[應填入 true / false]"
* item.readOnly 0..1 MS
* item.readOnly ^short = "問題或量表項目是否為唯讀。[應填入 true / false]"
* item.maxLength 0..1 MS
* item.maxLength ^short = "問題或量表項目的最大長度。[應填入數字]"
* item.answerOption 0..* MS
* item.answerOption ^short = "問題或量表項目的選項"
* item.initial 0..* MS
* item.initial ^short = "問題或量表項目的預設值"
* item.initial.value[x] 1..1 MS
* item.initial.value[x] ^short = "預設值。[應填入預設值]"
* item.item 0..* MS
* item.item ^short = "問卷的問題或量表項目（用於巢狀問卷）"

// Example
Instance: ltc-questionnaire-adl-assessment-example
InstanceOf: LTCQuestionnaire
Title: "日常生活能力評估問卷範例"
Description: "一個日常生活能力評估問卷的範例，展示如何使用 LTCQuestionnaire Profile"
Usage: #example

* url = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-adl-assessment-example"

* identifier.use = #official
* identifier.system = "http://ltc-ig.fhir.tw/questionnaire-id"
* identifier.value = "ADL-001"

* version = "1.0"
* name = "ADLAssessment"
* title = "日常生活能力評估量表"
* status = #active

* item[0].linkId = "adl-1"
* item[0].prefix = "1."
* item[0].type = #choice
* item[0].text = "吃飯"
* item[0].required = true
* item[0].answerOption[0].valueString = "完全獨立"
* item[0].answerOption[1].valueString = "需要部分協助"
* item[0].answerOption[2].valueString = "完全需要協助"

* item[1].linkId = "adl-2"
* item[1].prefix = "2."
* item[1].type = #choice
* item[1].text = "洗澡"
* item[1].required = true
* item[1].answerOption[0].valueString = "完全獨立"
* item[1].answerOption[1].valueString = "需要部分協助"
* item[1].answerOption[2].valueString = "完全需要協助"

* item[2].linkId = "adl-3"
* item[2].prefix = "3."
* item[2].type = #choice
* item[2].text = "穿脫衣物"
* item[2].required = true
* item[2].answerOption[0].valueString = "完全獨立"
* item[2].answerOption[1].valueString = "需要部分協助"
* item[2].answerOption[2].valueString = "完全需要協助"

* item[3].linkId = "adl-4"
* item[3].prefix = "4."
* item[3].type = #choice
* item[3].text = "個人修飾"
* item[3].required = true
* item[3].answerOption[0].valueString = "完全獨立"
* item[3].answerOption[1].valueString = "需要部分協助"
* item[3].answerOption[2].valueString = "完全需要協助"

* item[4].linkId = "adl-5"
* item[4].prefix = "5."
* item[4].type = #choice
* item[4].text = "大便控制"
* item[4].required = true
* item[4].answerOption[0].valueString = "完全獨立"
* item[4].answerOption[1].valueString = "需要部分協助"
* item[4].answerOption[2].valueString = "完全需要協助"

* item[5].linkId = "adl-6"
* item[5].prefix = "6."
* item[5].type = #choice
* item[5].text = "小便控制"
* item[5].required = true
* item[5].answerOption[0].valueString = "完全獨立"
* item[5].answerOption[1].valueString = "需要部分協助"
* item[5].answerOption[2].valueString = "完全需要協助"

* item[6].linkId = "adl-7"
* item[6].prefix = "7."
* item[6].type = #choice
* item[6].text = "上廁所"
* item[6].required = true
* item[6].answerOption[0].valueString = "完全獨立"
* item[6].answerOption[1].valueString = "需要部分協助"
* item[6].answerOption[2].valueString = "完全需要協助"

* item[7].linkId = "adl-8"
* item[7].prefix = "8."
* item[7].type = #choice
* item[7].text = "移位"
* item[7].required = true
* item[7].answerOption[0].valueString = "完全獨立"
* item[7].answerOption[1].valueString = "需要部分協助"
* item[7].answerOption[2].valueString = "完全需要協助"

* item[8].linkId = "adl-9"
* item[8].prefix = "9."
* item[8].type = #choice
* item[8].text = "走路"
* item[8].required = true
* item[8].answerOption[0].valueString = "完全獨立"
* item[8].answerOption[1].valueString = "需要部分協助"
* item[8].answerOption[2].valueString = "完全需要協助"

* item[9].linkId = "adl-10"
* item[9].prefix = "10."
* item[9].type = #choice
* item[9].text = "上下樓梯"
* item[9].required = true
* item[9].answerOption[0].valueString = "完全獨立"
* item[9].answerOption[1].valueString = "需要部分協助"
* item[9].answerOption[2].valueString = "完全需要協助"
