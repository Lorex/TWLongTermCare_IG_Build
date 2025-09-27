Profile: LTCQuestionnaireResponseIADL
Parent: LTCQuestionnaireResponse
Id: LTCQuestionnaireResponseIADL
Title: "IADL 問卷回覆"
Description: "此 Profile 定義 FHIR 的 QuestionnaireResponse Resource，以呈現工具性日常活動功能問卷 (IADLs) 的回覆資料。"
* questionnaire 1..1 MS
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-iadl"
* item 8..8 MS
* item ^short = "E. 個案日常活動功能量表"
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #open
* item contains
   item-F1 1..1 MS and
   item-F2 1..1 MS and
   item-F3 1..1 MS and
   item-F4 1..1 MS and
   item-F5 1..1 MS and
   item-F6 1..1 MS and
   item-F7 1..1 MS and
   item-F8 1..1 MS
* item[item-F1] ^short = "F1. 使用電話"
* item[item-F1].linkId 1..1 MS
* item[item-F1].linkId = "F1" (exactly)
* item[item-F1].text 1..1 MS
* item[item-F1].text = "使用電話"
* item[item-F1].answer 1..1 MS
* item[item-F1].answer ^short = "使用電話的分數"
* item[item-F1].answer.value[x] 1..1 MS
* item[item-F1].answer.value[x] only integer
* item[item-F1].answer.valueInteger 1..1 MS
* item[item-F1].answer.valueInteger ^short = "整數分數（例如 0-4），文字說明由問卷提供"
* item[item-F2] ^short = "F2. 購物"
* item[item-F2].linkId 1..1 MS
* item[item-F2].linkId = "F2"
* item[item-F2].text 1..1 MS
* item[item-F2].text = "購物"
* item[item-F2].answer 1..1 MS
* item[item-F2].answer ^short = "購物的分數"
* item[item-F2].answer.value[x] 1..1 MS
* item[item-F2].answer.value[x] only integer
* item[item-F2].answer.valueInteger 1..1 MS
* item[item-F2].answer.valueInteger ^short = "整數分數（例如 0-4），文字說明由問卷提供"
* item[item-F3] ^short = "F3. 備餐"
* item[item-F3].linkId 1..1 MS
* item[item-F3].linkId = "F3"
* item[item-F3].text 1..1 MS
* item[item-F3].text = "備餐"
* item[item-F3].answer 1..1 MS
* item[item-F3].answer ^short = "備餐的分數"
* item[item-F3].answer.value[x] 1..1 MS
* item[item-F3].answer.value[x] only integer
* item[item-F3].answer.valueInteger 1..1 MS
* item[item-F3].answer.valueInteger ^short = "整數分數（例如 0-4），文字說明由問卷提供"
* item[item-F4] ^short = "F4. 處理家務"
* item[item-F4].linkId 1..1 MS
* item[item-F4].linkId = "F4"
* item[item-F4].text 1..1 MS
* item[item-F4].text = "處理家務"
* item[item-F4].answer 1..1 MS
* item[item-F4].answer ^short = "處理家務的分數"
* item[item-F4].answer.value[x] 1..1 MS
* item[item-F4].answer.value[x] only integer
* item[item-F4].answer.valueInteger 1..1 MS
* item[item-F4].answer.valueInteger ^short = "整數分數（例如 0-4），文字說明由問卷提供"
* item[item-F5] ^short = "F5. 洗衣服"
* item[item-F5].linkId 1..1 MS
* item[item-F5].linkId = "F5"
* item[item-F5].text 1..1 MS
* item[item-F5].text = "洗衣服"
* item[item-F5].answer 1..1 MS
* item[item-F5].answer ^short = "洗衣服的分數"
* item[item-F5].answer.value[x] 1..1 MS
* item[item-F5].answer.value[x] only integer
* item[item-F5].answer.valueInteger 1..1 MS
* item[item-F5].answer.valueInteger ^short = "整數分數（例如 0-4），文字說明由問卷提供"
* item[item-F6] ^short = "F6. 外出"
* item[item-F6].linkId 1..1 MS
* item[item-F6].linkId = "F6"
* item[item-F6].text 1..1 MS
* item[item-F6].text = "外出"
* item[item-F6].answer 1..1 MS
* item[item-F6].answer ^short = "外出的分數"
* item[item-F6].answer.value[x] 1..1 MS
* item[item-F6].answer.value[x] only integer
* item[item-F6].answer.valueInteger 1..1 MS
* item[item-F6].answer.valueInteger ^short = "整數分數（例如 0-4），文字說明由問卷提供"
* item[item-F7] ^short = "F7. 服用藥物"
* item[item-F7].linkId 1..1 MS
* item[item-F7].linkId = "F7"
* item[item-F7].text 1..1 MS
* item[item-F7].text = "服用藥物"
* item[item-F7].answer 1..1 MS
* item[item-F7].answer ^short = "服用藥物的分數"
* item[item-F7].answer.value[x] 1..1 MS
* item[item-F7].answer.value[x] only integer
* item[item-F7].answer.valueInteger 1..1 MS
* item[item-F7].answer.valueInteger ^short = "整數分數（例如 0-4），文字說明由問卷提供"
* item[item-F8] ^short = "F8. 處理財務的能力"
* item[item-F8].linkId 1..1 MS
* item[item-F8].linkId = "F8"
* item[item-F8].text 1..1 MS
* item[item-F8].text = "處理財務的能力"
* item[item-F8].answer 1..1 MS
* item[item-F8].answer ^short = "處理財務能力的分數"
* item[item-F8].answer.value[x] 1..1 MS
* item[item-F8].answer.value[x] only integer
* item[item-F8].answer.valueInteger 1..1 MS
* item[item-F8].answer.valueInteger ^short = "整數分數（例如 0-4），文字說明由問卷提供"
