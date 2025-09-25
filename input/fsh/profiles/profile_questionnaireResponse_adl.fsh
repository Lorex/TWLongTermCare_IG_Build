Profile: LTCQuestionnaireResponseADL
Parent: LTCQuestionnaireResponse
Id: LTCQuestionnaireResponseADL
Title: "ADL 問卷回覆"
Description: "此 Profile 定義 FHIR 的 QuestionnaireResponse Resource，以呈現日常生活活動量表 (ADL) 的回覆資料。回覆採用整數分數（依題目配分），文字說明由問卷提供。"
* item 11..11 MS
* item ^short = "E. 個案日常活動功能量表"
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #open
* item contains
    item-E1 1..1 MS and
    item-E2 1..1 MS and
    item-E3 1..1 MS and
    item-E4 1..1 MS and
    item-E5 1..1 MS and
    item-E6 1..1 MS and
    item-E7 1..1 MS and
    item-E8 1..1 MS and
    item-E9 1..1 MS and
    item-E10 1..1 MS and
    item-E11 1..1 MS
* item[item-E1] ^short = "E1. 吃飯"
* item[item-E1].linkId 1..1 MS
* item[item-E1].linkId = "E1"
* item[item-E1].text 1..1 MS
* item[item-E1].text = "吃飯"
* item[item-E1].answer 1..1 MS
* item[item-E1].answer ^short = "吃飯的分數"
* item[item-E1].answer.value[x] 1..1 MS
* item[item-E1].answer.value[x] only integer
* item[item-E1].answer.valueInteger 1..1 MS
* item[item-E1].answer.valueInteger ^short = "整數分數（例如 10 / 5 / 0），文字說明由問卷提供"
* item[item-E2] ^short = "E2. 洗澡"
* item[item-E2].linkId 1..1 MS
* item[item-E2].linkId = "E2"
* item[item-E2].text 1..1 MS
* item[item-E2].text = "洗澡"
* item[item-E2].answer 1..1 MS
* item[item-E2].answer ^short = "洗澡的分數"
* item[item-E2].answer.value[x] 1..1 MS
* item[item-E2].answer.value[x] only integer
* item[item-E2].answer.valueInteger 1..1 MS
* item[item-E2].answer.valueInteger ^short = "整數分數（例如 5 / 0），文字說明由問卷提供"
* item[item-E3] ^short = "E3. 穿脫衣物"
* item[item-E3].linkId 1..1 MS
* item[item-E3].linkId = "E3"
* item[item-E3].text 1..1 MS
* item[item-E3].text = "穿脫衣物"
* item[item-E3].answer 1..1 MS
* item[item-E3].answer ^short = "個人修飾的分數"
* item[item-E3].answer.value[x] 1..1 MS
* item[item-E3].answer.value[x] only integer
* item[item-E3].answer.valueInteger 1..1 MS
* item[item-E3].answer.valueInteger ^short = "整數分數（例如 5 / 0），文字說明由問卷提供"
* item[item-E4] ^short = "E4. 個人修飾"
* item[item-E4].linkId 1..1 MS
* item[item-E4].linkId = "E4"
* item[item-E4].text 1..1 MS
* item[item-E4].text = "個人修飾"
* item[item-E4].answer 1..1 MS
* item[item-E4].answer ^short = "穿脫衣物的分數"
* item[item-E4].answer.value[x] 1..1 MS
* item[item-E4].answer.value[x] only integer
* item[item-E4].answer.valueInteger 1..1 MS
* item[item-E4].answer.valueInteger ^short = "整數分數（例如 10 / 5 / 0），文字說明由問卷提供"
* item[item-E5] ^short = "E5. 大便控制"
* item[item-E5].linkId 1..1 MS
* item[item-E5].linkId = "E5"
* item[item-E5].text 1..1 MS
* item[item-E5].text = "大便控制"
* item[item-E5].answer 1..1 MS
* item[item-E5].answer ^short = "大便控制的分數"
* item[item-E5].answer.value[x] 1..1 MS
* item[item-E5].answer.value[x] only integer
* item[item-E5].answer.valueInteger 1..1 MS
* item[item-E5].answer.valueInteger ^short = "整數分數（例如 10 / 5 / 0），文字說明由問卷提供"
* item[item-E6] ^short = "E6. 小便控制"
* item[item-E6].linkId 1..1 MS
* item[item-E6].linkId = "E6"
* item[item-E6].text 1..1 MS
* item[item-E6].text = "小便控制"
* item[item-E6].answer 1..1 MS
* item[item-E6].answer ^short = "小便控制的分數"
* item[item-E6].answer.value[x] 1..1 MS
* item[item-E6].answer.value[x] only integer
* item[item-E6].answer.valueInteger 1..1 MS
* item[item-E6].answer.valueInteger ^short = "整數分數（例如 10 / 5 / 0），文字說明由問卷提供"
* item[item-E7] ^short = "E7. 上廁所"
* item[item-E7].linkId 1..1 MS
* item[item-E7].linkId = "E7"
* item[item-E7].text 1..1 MS
* item[item-E7].text = "上廁所"
* item[item-E7].answer 1..1 MS
* item[item-E7].answer ^short = "上廁所的分數"
* item[item-E7].answer.value[x] 1..1 MS
* item[item-E7].answer.value[x] only integer
* item[item-E7].answer.valueInteger 1..1 MS 
* item[item-E7].answer.valueInteger ^short = "整數分數（例如 10 / 5 / 0），文字說明由問卷提供"
* item[item-E8] ^short = "E8. 移位"
* item[item-E8].linkId 1..1 MS
* item[item-E8].linkId = "E8"
* item[item-E8].text 1..1 MS
* item[item-E8].text = "移位"
* item[item-E8].answer 1..1 MS
* item[item-E8].answer ^short = "移位的分數"
* item[item-E8].answer.value[x] 1..1 MS
* item[item-E8].answer.value[x] only integer
* item[item-E8].answer.valueInteger 1..1 MS
* item[item-E8].answer.valueInteger ^short = "整數分數（例如 15 / 10 / 5 / 0），文字說明由問卷提供"
* item[item-E9] ^short = "E9. 走路"
* item[item-E9].linkId 1..1 MS
* item[item-E9].linkId = "E9"
* item[item-E9].text 1..1 MS
* item[item-E9].text = "走路"
* item[item-E9].answer 1..1 MS
* item[item-E9].answer ^short = "走路的分數"
* item[item-E9].answer.value[x] 1..1 MS
* item[item-E9].answer.value[x] only integer
* item[item-E9].answer.valueInteger 1..1 MS
* item[item-E9].answer.valueInteger ^short = "整數分數（例如 15 / 10 / 5 / 0），文字說明由問卷提供"
* item[item-E10] ^short = "E10. 上下樓梯"
* item[item-E10].linkId 1..1 MS
* item[item-E10].linkId = "E10"
* item[item-E10].text 1..1 MS
* item[item-E10].text = "上下樓梯"
* item[item-E10].answer 1..1 MS
* item[item-E10].answer ^short = "上下樓梯的分數"
* item[item-E10].answer.value[x] 1..1 MS
* item[item-E10].answer.value[x] only integer
* item[item-E10].answer.valueInteger 1..1 MS
* item[item-E10].answer.valueInteger ^short = "整數分數（例如 10 / 5 / 0），文字說明由問卷提供"
* item[item-E11] ^short = "E11. 行動能力"
* item[item-E11].linkId 1..1 MS
* item[item-E11].linkId = "E11"
* item[item-E11].text 1..1 MS
* item[item-E11].text = "床椅移位"
* item[item-E11].answer 1..1 MS
* item[item-E11].answer ^short = "行動能力的分數"
* item[item-E11].answer.value[x] 1..1 MS
* item[item-E11].answer.value[x] only integer
* item[item-E11].answer.valueInteger 1..1 MS
* item[item-E11].answer.valueInteger ^short = "整數分數（依題目定義），文字說明由問卷提供"
