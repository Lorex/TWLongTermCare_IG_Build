Alias: $Questionnaire = http://hl7.org/fhir/StructureDefinition/Questionnaire
Alias: $VSPublicationStatus = http://hl7.org/fhir/ValueSet/publication-status

Profile: LTCQuestionnaire
Parent: $Questionnaire
Id: LTCQuestionnaire
Title: "TWLTC Questionnaire"
Description: "問卷，用以表述長期照顧情境中涉及之問卷或量表內容。"

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

