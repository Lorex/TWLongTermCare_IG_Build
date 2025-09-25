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

* item[0].linkId = "E1"
* item[0].prefix = "1."
* item[0].type = #choice
* item[0].text = "吃飯"
* item[0].required = true
* item[0].answerOption[0].valueInteger = 10
* item[0].answerOption[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[0].answerOption[0].extension[0].valueString = "自已在合理時間內可用筷子取食或需用輔具時應自行穿脫"
* item[0].answerOption[1].valueInteger = 5
* item[0].answerOption[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[0].answerOption[1].extension[0].valueString = "偶爾需他人在旁協助或口頭提醒"
* item[0].answerOption[2].valueInteger = 0
* item[0].answerOption[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[0].answerOption[2].extension[0].valueString = "無法自行取食或需他人餵食"

* item[1].linkId = "E2"
* item[1].prefix = "2."
* item[1].type = #choice
* item[1].text = "洗澡"
* item[1].required = true
* item[1].answerOption[0].valueInteger = 5
* item[1].answerOption[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[1].answerOption[0].extension[0].valueString = "可獨立完成，不需他人在旁"
* item[1].answerOption[1].valueInteger = 0
* item[1].answerOption[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[1].answerOption[1].extension[0].valueString = "需他人協助"

* item[2].linkId = "E3"
* item[2].prefix = "3."
* item[2].type = #choice
* item[2].text = "穿脫衣物"
* item[2].required = true
* item[2].answerOption[0].valueInteger = 10
* item[2].answerOption[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[2].answerOption[0].extension[0].valueString = "可自行穿脫衣褲及鞋襪等"
* item[2].answerOption[1].valueInteger = 5
* item[2].answerOption[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[2].answerOption[1].extension[0].valueString = "在別人協助下可自行完成一半"
* item[2].answerOption[2].valueInteger = 0
* item[2].answerOption[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[2].answerOption[2].extension[0].valueString = "需別人協助"

* item[3].linkId = "E4"
* item[3].prefix = "4."
* item[3].type = #choice
* item[3].text = "個人修飾"
* item[3].required = true
* item[3].answerOption[0].valueInteger = 5
* item[3].answerOption[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[3].answerOption[0].extension[0].valueString = "可自行洗臉、洗手、刷牙及梳頭等"
* item[3].answerOption[1].valueInteger = 0
* item[3].answerOption[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[3].answerOption[1].extension[0].valueString = "需別人協助"

* item[4].linkId = "E5"
* item[4].prefix = "5."
* item[4].type = #choice
* item[4].text = "大便控制"
* item[4].required = true
* item[4].answerOption[0].valueInteger = 10
* item[4].answerOption[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[4].answerOption[0].extension[0].valueString = "不會失禁，並可自行使用塞劑"
* item[4].answerOption[1].valueInteger = 5
* item[4].answerOption[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[4].answerOption[1].extension[0].valueString = "偶而會失禁或需協助使用塞劑"
* item[4].answerOption[2].valueInteger = 0
* item[4].answerOption[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[4].answerOption[2].extension[0].valueString = "完全依賴"

* item[5].linkId = "E6"
* item[5].prefix = "6."
* item[5].type = #choice
* item[5].text = "小便控制"
* item[5].required = true
* item[5].answerOption[0].valueInteger = 10
* item[5].answerOption[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[5].answerOption[0].extension[0].valueString = "無失禁（控）"
* item[5].answerOption[1].valueInteger = 5
* item[5].answerOption[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[5].answerOption[1].extension[0].valueString = "偶爾失禁（控）"
* item[5].answerOption[2].valueInteger = 0
* item[5].answerOption[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[5].answerOption[2].extension[0].valueString = "完全依賴"

* item[6].linkId = "E7"
* item[6].prefix = "7."
* item[6].type = #choice
* item[6].text = "上廁所"
* item[6].required = true
* item[6].answerOption[0].valueInteger = 10
* item[6].answerOption[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[6].answerOption[0].extension[0].valueString = "可自行上下馬桶並整理衣物等"
* item[6].answerOption[1].valueInteger = 5
* item[6].answerOption[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[6].answerOption[1].extension[0].valueString = "需部分協助或提醒"
* item[6].answerOption[2].valueInteger = 0
* item[6].answerOption[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[6].answerOption[2].extension[0].valueString = "完全依賴"

* item[7].linkId = "E8"
* item[7].prefix = "8."
* item[7].type = #choice
* item[7].text = "移位"
* item[7].required = true
* item[7].answerOption[0].valueInteger = 15
* item[7].answerOption[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[7].answerOption[0].extension[0].valueString = "可獨立完成含輪椅之基本移轉"
* item[7].answerOption[1].valueInteger = 10
* item[7].answerOption[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[7].answerOption[1].extension[0].valueString = "需少部分協助"
* item[7].answerOption[2].valueInteger = 5
* item[7].answerOption[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[7].answerOption[2].extension[0].valueString = "需大部分協助"
* item[7].answerOption[3].valueInteger = 0
* item[7].answerOption[3].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[7].answerOption[3].extension[0].valueString = "完全依賴"

* item[8].linkId = "E9"
* item[8].prefix = "9."
* item[8].type = #choice
* item[8].text = "走路"
* item[8].required = true
* item[8].answerOption[0].valueInteger = 15
* item[8].answerOption[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[8].answerOption[0].extension[0].valueString = "使用或不使用輔具可行走≥50公尺"
* item[8].answerOption[1].valueInteger = 10
* item[8].answerOption[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[8].answerOption[1].extension[0].valueString = "需扶持可行走≥50公尺"
* item[8].answerOption[2].valueInteger = 5
* item[8].answerOption[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[8].answerOption[2].extension[0].valueString = "可操縱輪椅50公尺"
* item[8].answerOption[3].valueInteger = 0
* item[8].answerOption[3].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[8].answerOption[3].extension[0].valueString = "無法步行且無法操縱輪椅"

* item[9].linkId = "E10"
* item[9].prefix = "10."
* item[9].type = #choice
* item[9].text = "上下樓梯"
* item[9].required = true
* item[9].answerOption[0].valueInteger = 10
* item[9].answerOption[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[9].answerOption[0].extension[0].valueString = "可安全上下樓梯"
* item[9].answerOption[1].valueInteger = 5
* item[9].answerOption[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[9].answerOption[1].extension[0].valueString = "需協助或監督"
* item[9].answerOption[2].valueInteger = 0
* item[9].answerOption[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[9].answerOption[2].extension[0].valueString = "無法上下樓"

* item[10].linkId = "E11"
* item[10].prefix = "11."
* item[10].type = #choice
* item[10].text = "床椅移位"
* item[10].required = true
* item[10].answerOption[0].valueInteger = 10
* item[10].answerOption[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[10].answerOption[0].extension[0].valueString = "可自行由床至椅或相反方向移位"
* item[10].answerOption[1].valueInteger = 5
* item[10].answerOption[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[10].answerOption[1].extension[0].valueString = "需部分協助"
* item[10].answerOption[2].valueInteger = 0
* item[10].answerOption[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[10].answerOption[2].extension[0].valueString = "完全依賴"

// 說明：本問卷之所有題目採整數分數作為答案值，詳細文字敘述提供於各 answerOption 的 rendering-style 擴充說明中，供顯示與人工閱讀之用。
