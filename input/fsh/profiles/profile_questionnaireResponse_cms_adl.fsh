Profile: LTCQuestionnaireResponseCMSIADL
Parent: LTCQuestionnaireResponse
Id: LTCQuestionnaireResponseCMSIADL
Title: "TWLTC QuestionnaireResponse CMS IADL"
Description: "照顧管理評估量表－個案獨立生活能力問卷回覆"
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
* item[item-F1].linkId = "F1"
* item[item-F1].text 1..1 MS
* item[item-F1].text = "使用電話"
* item[item-F1].answer 1..1 MS
* item[item-F1].answer ^short = "使用電話的回覆"
* item[item-F1].answer.value[x] 1..1 MS
* item[item-F1].answer.value[x] only string
* item[item-F1].answer.valueString 1..1 MS
* item[item-F1].answer.valueString ^short = "使用電話的回覆。[應填入以下字串之一：能獨立使用電話，含查電話簿、撥號等 | 僅能撥熟悉的電話號碼 | 僅能接電話，但不能撥電話 | 完全不能使用電話]"
* item[item-F2] ^short = "F2. 購物"
* item[item-F2].linkId 1..1 MS
* item[item-F2].linkId = "F2"
* item[item-F2].text 1..1 MS
* item[item-F2].text = "購物"
* item[item-F2].answer 1..1 MS
* item[item-F2].answer ^short = "購物的回覆"
* item[item-F2].answer.value[x] 1..1 MS
* item[item-F2].answer.value[x] only string
* item[item-F2].answer.valueString 1..1 MS
* item[item-F2].answer.valueString ^short = "購物的回覆。[應填入以下字串之一：能獨立完成所有購物需求 | 只能獨立購買日常生活用品 | 每一次購物都需要有人陪 | 完全不能獨自購物]"
* item[item-F3] ^short = "F3. 備餐"
* item[item-F3].linkId 1..1 MS
* item[item-F3].linkId = "F3"
* item[item-F3].text 1..1 MS
* item[item-F3].text = "備餐"
* item[item-F3].answer 1..1 MS
* item[item-F3].answer ^short = "備餐的回覆"
* item[item-F3].answer.value[x] 1..1 MS
* item[item-F3].answer.value[x] only string
* item[item-F3].answer.valueString 1..1 MS
* item[item-F3].answer.valueString ^short = "備餐的回覆。[應填入以下字串之一：能獨立計畫、準備食材及佐料、烹煮和擺設一頓飯菜 | 如果準備好一切食材及佐料，能做一頓飯菜 | 能將已做好的飯菜加熱 | 需要別人把飯菜煮好、擺好]"
* item[item-F4] ^short = "F4. 處理家務"
* item[item-F4].linkId 1..1 MS
* item[item-F4].linkId = "F4"
* item[item-F4].text 1..1 MS
* item[item-F4].text = "處理家務"
* item[item-F4].answer 1..1 MS
* item[item-F4].answer ^short = "處理家務的回覆"
* item[item-F4].answer.value[x] 1..1 MS
* item[item-F4].answer.value[x] only string
* item[item-F4].answer.valueString 1..1 MS
* item[item-F4].answer.valueString ^short = "處理家務的回覆。[應填入以下字串之一：能單獨處理家事，或偶爾需要協助較繁重的家事 | 能做較簡單的家事，如洗碗、擦桌子 | 能做較簡單的家事，但不能達到可接受的清潔程度 | 所有的家事都需要別人協助方能完成 | 完全不能做家事]"
* item[item-F5] ^short = "F5. 洗衣服"
* item[item-F5].linkId 1..1 MS
* item[item-F5].linkId = "F5"
* item[item-F5].text 1..1 MS
* item[item-F5].text = "洗衣服"
* item[item-F5].answer 1..1 MS
* item[item-F5].answer ^short = "洗衣服的回覆"
* item[item-F5].answer.value[x] 1..1 MS
* item[item-F5].answer.value[x] only string
* item[item-F5].answer.valueString 1..1 MS
* item[item-F5].answer.valueString ^short = "洗衣服的回覆。[應填入以下字串之一：自己清洗所有衣物 | 需部份協助 | 需完全協助]"
* item[item-F6] ^short = "F6. 外出"
* item[item-F6].linkId 1..1 MS
* item[item-F6].linkId = "F6"
* item[item-F6].text 1..1 MS
* item[item-F6].text = "外出"
* item[item-F6].answer 1..1 MS
* item[item-F6].answer ^short = "外出的回覆"
* item[item-F6].answer.value[x] 1..1 MS
* item[item-F6].answer.value[x] only string
* item[item-F6].answer.valueString 1..1 MS
* item[item-F6].answer.valueString ^short = "外出的回覆。[應填入以下字串之一：能夠自己開車、騎車或自己搭乘大眾運輸工具 | 能夠自己搭乘計程車，但不能搭乘大眾運輸工具 | 當有人陪同時，可搭乘大眾運輸工具 | 只能在有人協助或陪同時，可搭乘計程車或自用車 | 完全不能出門]"
* item[item-F7] ^short = "F7. 服用藥物"
* item[item-F7].linkId 1..1 MS
* item[item-F7].linkId = "F7"
* item[item-F7].text 1..1 MS
* item[item-F7].text = "服用藥物"
* item[item-F7].answer 1..1 MS
* item[item-F7].answer ^short = "服用藥物的回覆"
* item[item-F7].answer.value[x] 1..1 MS
* item[item-F7].answer.value[x] only string
* item[item-F7].answer.valueString 1..1 MS
* item[item-F7].answer.valueString ^short = "服用藥物的回覆。[應填入以下字串之一：能自己負責在正確的時間用正確的藥物 | 如果事先準備好服用的藥物份量，可自行服用 | 完全不能自己服用藥物]"
* item[item-F8] ^short = "F8. 處理財務的能力"
* item[item-F8].linkId 1..1 MS
* item[item-F8].linkId = "F8"
* item[item-F8].text 1..1 MS
* item[item-F8].text = "處理財務的能力"
* item[item-F8].answer 1..1 MS
* item[item-F8].answer ^short = "處理財務的能力的回覆"
* item[item-F8].answer.value[x] 1..1 MS
* item[item-F8].answer.value[x] only string
* item[item-F8].answer.valueString 1..1 MS
* item[item-F8].answer.valueString ^short = "處理財務的能力的回覆。[應填入以下字串之一：可以獨立處理財務 | 可以處理日常的購買，但需別人協助與銀行往來或大宗買賣 | 完全不能處理錢財]"
