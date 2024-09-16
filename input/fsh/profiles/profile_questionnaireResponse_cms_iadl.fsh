Profile: LTCQuestionnaireResponseCMSADL
Parent: LTCQuestionnaireResponse
Id: LTCQuestionnaireResponseCMSADL
Title: "TWLTC QuestionnaireResponse CMS ADL"
Description: "照顧管理評估量表－個案日常生活能力問卷回覆"
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
* item[item-E1].answer ^short = "吃飯的回覆"
* item[item-E1].answer.value[x] 1..1 MS
* item[item-E1].answer.value[x] only string
* item[item-E1].answer.valueString 1..1 MS
* item[item-E1].answer.valueString ^short = "吃飯的回覆。[應填入以下字串之一：在合理時間（一小時）內，自行或用輔具進食餐盤食物 | 需要一些協助 | 需完全協助（完全依賴）]"
* item[item-E2] ^short = "E2. 洗澡"
* item[item-E2].linkId 1..1 MS
* item[item-E2].linkId = "E2"
* item[item-E2].text 1..1 MS
* item[item-E2].text = "洗澡"
* item[item-E2].answer 1..1 MS
* item[item-E2].answer ^short = "洗澡的回覆"
* item[item-E2].answer.value[x] 1..1 MS
* item[item-E2].answer.value[x] only string
* item[item-E2].answer.valueString 1..1 MS
* item[item-E2].answer.valueString ^short = "洗澡的回覆。[應填入以下字串之一：能自行完成 | 協助下完成]"
* item[item-E3] ^short = "E3. 個人修飾"
* item[item-E3].linkId 1..1 MS
* item[item-E3].linkId = "E3"
* item[item-E3].text 1..1 MS
* item[item-E3].text = "個人修飾"
* item[item-E3].answer 1..1 MS
* item[item-E3].answer ^short = "個人修飾的回覆"
* item[item-E3].answer.value[x] 1..1 MS
* item[item-E3].answer.value[x] only string
* item[item-E3].answer.valueString 1..1 MS
* item[item-E3].answer.valueString ^short = "個人修飾的回覆。[應填入以下字串之一：可自行洗臉、洗手、刷牙、梳頭、刮鬍子修飾 | 需協助]"
* item[item-E4] ^short = "E4. 穿脫衣物"
* item[item-E4].linkId 1..1 MS
* item[item-E4].linkId = "E4"
* item[item-E4].text 1..1 MS
* item[item-E4].text = "穿脫衣物"
* item[item-E4].answer 1..1 MS
* item[item-E4].answer ^short = "穿脫衣物的回覆"
* item[item-E4].answer.value[x] 1..1 MS
* item[item-E4].answer.value[x] only string
* item[item-E4].answer.valueString 1..1 MS
* item[item-E4].answer.valueString ^short = "穿脫衣物的回覆。[應填入以下字串之一：自行穿脫衣褲及鞋襪 | 需協助 | 需完全協助（完全依賴）]"
* item[item-E5] ^short = "E5. 大便控制"
* item[item-E5].linkId 1..1 MS
* item[item-E5].linkId = "E5"
* item[item-E5].text 1..1 MS
* item[item-E5].text = "大便控制"
* item[item-E5].answer 1..1 MS
* item[item-E5].answer ^short = "大便控制的回覆"
* item[item-E5].answer.value[x] 1..1 MS
* item[item-E5].answer.value[x] only string
* item[item-E5].answer.valueString 1..1 MS
* item[item-E5].answer.valueString ^short = "大便控制的回覆。[應填入以下字串之一：無失禁（控），或當便秘時，能自行用塞劑、甘油球 | 偶爾失禁（控），或當便秘時需協助用塞劑 | 需完全協助（完全依賴）]"
* item[item-E6] ^short = "E6. 小便控制"
* item[item-E6].linkId 1..1 MS
* item[item-E6].linkId = "E6"
* item[item-E6].text 1..1 MS
* item[item-E6].text = "小便控制"
* item[item-E6].answer 1..1 MS
* item[item-E6].answer ^short = "小便控制的回覆"
* item[item-E6].answer.value[x] 1..1 MS
* item[item-E6].answer.value[x] only string
* item[item-E6].answer.valueString 1..1 MS
* item[item-E6].answer.valueString ^short = "小便控制的回覆。[應填入以下字串之一：無失禁（控） | 偶爾失禁（控） | 需完全協助（完全依賴）]"
* item[item-E7] ^short = "E7. 上廁所"
* item[item-E7].linkId 1..1 MS
* item[item-E7].linkId = "E7"
* item[item-E7].text 1..1 MS
* item[item-E7].text = "上廁所"
* item[item-E7].answer 1..1 MS
* item[item-E7].answer ^short = "上廁所的回覆"
* item[item-E7].answer.value[x] 1..1 MS
* item[item-E7].answer.value[x] only string
* item[item-E7].answer.valueString 1..1 MS 
* item[item-E7].answer.valueString ^short = "上廁所的回覆。[應填入以下字串之一：可自行上下馬桶、整理衣褲、使用衛生紙、沖馬桶或清理便盆（尿壺） | 需協助整理衣物或使用衛生紙或需協助清理便盆（尿壺） | 需完全協助（完全依賴）]"
* item[item-E8] ^short = "E8. 移位"
* item[item-E8].linkId 1..1 MS
* item[item-E8].linkId = "E8"
* item[item-E8].text 1..1 MS
* item[item-E8].text = "移位"
* item[item-E8].answer 1..1 MS
* item[item-E8].answer ^short = "移位的回覆"
* item[item-E8].answer.value[x] 1..1 MS
* item[item-E8].answer.value[x] only string
* item[item-E8].answer.valueString 1..1 MS
* item[item-E8].answer.valueString ^short = "移位的回覆。[應填入以下字串之一：可自行維持坐姿平衡，移至椅子或用輪椅 | 移位時需少部分協助或提醒 | 可自行維持坐姿平衡，離床需大部分協助 | 需完全協助（完全依賴）]"
* item[item-E9] ^short = "E9. 走路"
* item[item-E9].linkId 1..1 MS
* item[item-E9].linkId = "E9"
* item[item-E9].text 1..1 MS
* item[item-E9].text = "走路"
* item[item-E9].answer 1..1 MS
* item[item-E9].answer ^short = "走路的回覆"
* item[item-E9].answer.value[x] 1..1 MS
* item[item-E9].answer.value[x] only string
* item[item-E9].answer.valueString 1..1 MS
* item[item-E9].answer.valueString ^short = "走路的回覆。[應填入以下字串之一：獨立走 50 公尺以上（可用輔具） | 需協助扶持走 50 公尺以上 | 不能步行 50 公尺，但能操縱輪椅 50 公尺 | 不能步行 50 公尺，且無法操縱輪椅]"
* item[item-E10] ^short = "E10. 上下樓梯"
* item[item-E10].linkId 1..1 MS
* item[item-E10].linkId = "E10"
* item[item-E10].text 1..1 MS
* item[item-E10].text = "上下樓梯"
* item[item-E10].answer 1..1 MS
* item[item-E10].answer ^short = "上下樓梯的回覆"
* item[item-E10].answer.value[x] 1..1 MS
* item[item-E10].answer.value[x] only string
* item[item-E10].answer.valueString 1..1 MS
* item[item-E10].answer.valueString ^short = "上下樓梯的回覆。[應填入以下字串之一：安全上下樓梯，可用扶手、拐杖 | 需協助、監督或持續敦促 | 無法上下樓]"
* item[item-E11] ^short = "E11. 行動能力"
* item[item-E11].linkId 1..1 MS
* item[item-E11].linkId = "E11"
* item[item-E11].text 1..1 MS
* item[item-E11].text = "請問您目前行動能力如何？"
* item[item-E11].answer 1..1 MS
* item[item-E11].answer ^short = "行動能力的回覆"
* item[item-E11].answer.value[x] 1..1 MS
* item[item-E11].answer.value[x] only string
* item[item-E11].answer.valueString 1..1 MS
* item[item-E11].answer.valueString ^short = "行動能力的回覆。[應填入以下字串之一：可以在平坦地面上跑跳 | 可在平坦地面上輕鬆行走，但在不平坦地面上行走相當吃力 | 自己行走需扶持穩定物或需透過他人扶持才能行走 | 無法跨步行走，坐在一般靠背高度有扶手的椅子上可保持坐姿穩定與平衡 | 坐在一般靠背高度有扶手的椅子上無法維持坐姿]"
