Profile: LTCQuestionnaireResponseCMSSpecialCare
Parent: LTCQuestionnaireResponse
Id: LTCQuestionnaireResponseCMSSpecialCare
Title: "TW Long Term Care QuestionnaireResponse CMS Special Care"
Description: "照顧管理評估量表－個案特殊照護問卷回覆"

* item 19..30 MS
* item ^short = "特殊複雜照護需要"
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #open
* item contains
    item-G1 1..1 MS and
    item-G1a 1..1 MS and
    item-G1b 0..1 MS and
    item-G2a 1..1 MS and
    item-G2b 0..1 MS and
    item-G2c 1..1 MS and
    item-G2d 0..1 MS and
    item-G2d1 0..1 MS and
    item-G2d2 0..1 MS and
    item-G3a 1..1 MS and
    item-G3b 0..1 MS and
    item-G4a 1..1 MS and
    item-G4b 1..1 MS and
    item-G4c 1..1 MS and
    item-G4d1 1..1 MS and
    item-G4d2 1..1 MS and
    item-G4d3 1..1 MS and
    item-G4e 0..1 MS and
    item-G4f 1..1 MS and
    item-G5a 1..1 MS and
    item-G5a1 0..1 MS and
    item-G6a 0..1 MS and
    item-G6b 0..1 MS and
    item-G7 1..1 MS and
    item-G8a 1..1 MS and
    item-G8b 1..1 MS and
    item-G8c 1..1 MS and
    item-G8c1 0..1 MS and
    item-G8d 1..1 MS and
    item-G8e 1..1 MS

* item[item-G1] ^short = "G1. 疼痛狀況"
* item[item-G1].linkId 1..1 MS
* item[item-G1].linkId = "G1"
* item[item-G1].text 1..1 MS
* item[item-G1].text = "疼痛狀況"
* item[item-G1].answer 1..1 MS
* item[item-G1].answer ^short = "疼痛狀況的回覆"
* item[item-G1].answer.value[x] 1..1 MS
* item[item-G1].answer.value[x] only string
* item[item-G1].answer.valueString 1..1 MS
* item[item-G1].answer.valueString ^short = "疼痛狀況的回覆。[應填入以下字串之一：個案本人回答 | 由主要照顧者代答]"
* item[item-G1a] ^short = "G1a. 過去 1 個月中，個案身體疼痛的程度？"
* item[item-G1a].linkId 1..1 MS
* item[item-G1a].linkId = "G1a"
* item[item-G1a].text 1..1 MS
* item[item-G1a].text = "過去 1 個月中，個案身體疼痛的程度？"
* item[item-G1a].answer 1..1 MS
* item[item-G1a].answer ^short = "疼痛程度"
* item[item-G1a].answer.value[x] 1..1 MS
* item[item-G1a].answer.value[x] only string
* item[item-G1a].answer.valueString 1..1 MS
* item[item-G1a].answer.valueString ^short = "疼痛程度。[應填入以下字串之一：完全無疼痛 | 輕微的疼痛 | 中度疼痛 | 較嚴重的疼痛（尚可忍受的程度） | 非常嚴重的疼痛（無法忍受的程度） | 有疼痛狀況，無法判斷疼痛程度 | 不知道或無法判斷]"
* item[item-G1b] ^short = "G1b. 疼痛的頻率為："
* item[item-G1b].linkId 1..1 MS
* item[item-G1b].linkId = "G1b"
* item[item-G1b].text 1..1 MS
* item[item-G1b].text = "疼痛的頻率為："
* item[item-G1b].answer 1..1 MS
* item[item-G1b].answer.value[x] 1..1 MS
* item[item-G1b].answer.value[x] only string
* item[item-G1b].answer.valueString 1..1 MS
* item[item-G1b].answer.valueString ^short = "疼痛的頻率。[應填入以下字串之一：一個月數次 | 一週數次 | 每天疼痛 | 不知道或無法判斷]"
* item[item-G2a] ^short = "G2a. 請問個案現在的皮膚狀況？"
* item[item-G2a].linkId 1..1 MS
* item[item-G2a].linkId = "G2a"
* item[item-G2a].text 1..1 MS
* item[item-G2a].text = "請問個案現在的皮膚狀況？"
* item[item-G2a].answer 1..1 MS
* item[item-G2a].answer.value[x] 1..1 MS
* item[item-G2a].answer.value[x] only string
* item[item-G2a].answer.valueString 1..1 MS
* item[item-G2a].answer.valueString ^short = "皮膚狀況。[應填入以下字串之一：正常 | 異常]"
* item[item-G2b] ^short = "G2b. 皮膚暴露於潮溼環境的程度"
* item[item-G2b].linkId 1..1 MS
* item[item-G2b].linkId = "G2b"
* item[item-G2b].text 1..1 MS
* item[item-G2b].text = "皮膚暴露於潮溼環境的程度"
* item[item-G2b].answer 1..1 MS
* item[item-G2b].answer.value[x] 1..1 MS
* item[item-G2b].answer.value[x] only string
* item[item-G2b].answer.valueString 1..1 MS
* item[item-G2b].answer.valueString ^short = "皮膚暴露於潮溼環境的程度。[應填入以下字串之一：皮膚總是潮溼或整天包尿布 | 皮膚常常潮溼或半天包尿布 | 皮膚偶而潮溼或需要時才包尿布 | 乾燥、乾淨]"
* item[item-G2c] ^short = "G2c. 請問皮膚異常的狀況為何？"
* item[item-G2c].linkId 1..1 MS
* item[item-G2c].linkId = "G2c"
* item[item-G2c].text 1..1 MS
* item[item-G2c].text = "請問皮膚異常的狀況為何？"
* item[item-G2c].answer 1..* MS
* item[item-G2c].answer.value[x] 1..1 MS
* item[item-G2c].answer.value[x] only string
* item[item-G2c].answer.valueString 1..1 MS
* item[item-G2c].answer.valueString ^short = "皮膚異常的狀況。[應填入以下字串之一：乾燥有皮屑 | 瘀青 | 丘疹 | 傷口 | 疥瘡]"
* item[item-G2d] ^short = "G2d. 傷口情形"
* item[item-G2d].linkId 1..1 MS
* item[item-G2d].linkId = "G2d"
* item[item-G2d].text 1..1 MS
* item[item-G2d].text = "傷口情形"
* item[item-G2d].answer 1..* MS
* item[item-G2d].answer.value[x] 1..1 MS
* item[item-G2d].answer.value[x] only string
* item[item-G2d].answer.valueString 1..1 MS
* item[item-G2d].answer.valueString ^short = "傷口情形。[應填入以下字串之一：擦傷、割傷 | 壓傷 | 燒燙傷 | 術後傷口 | 延遲癒合之手術傷口 | 糖尿病足潰瘍 | 血管性潰瘍（動脈或靜脈；含足部以外的糖尿病潰瘍） | 其他]"
* item[item-G2d1] ^short = "G2d1. 壓傷等級"
* item[item-G2d1].linkId 1..1 MS
* item[item-G2d1].linkId = "G2d1"
* item[item-G2d1].text 1..1 MS
* item[item-G2d1].text = "壓傷等級"
* item[item-G2d1].answer 1..1 MS
* item[item-G2d1].answer.value[x] 1..1 MS
* item[item-G2d1].answer.value[x] only string
* item[item-G2d1].answer.valueString 1..1 MS
* item[item-G2d1].answer.valueString ^short = "壓傷等級。[應填入以下字串之一：第一級 | 第二級 | 第三級 | 第四級 | 無法分級 | 深層組織損傷]"
* item[item-G2d2] ^short = "G2d2. 何者有壓傷或傷口"
* item[item-G2d2].linkId 1..1 MS
* item[item-G2d2].linkId = "G2d2"
* item[item-G2d2].text 1..1 MS
* item[item-G2d2].text = "何者有壓傷或傷口"
* item[item-G2d2].answer 1..* MS
* item[item-G2d2].answer.value[x] 1..1 MS
* item[item-G2d2].answer.value[x] only string
* item[item-G2d2].answer.valueString 1..1 MS
* item[item-G2d2].answer.valueString ^short = "何者有壓傷或傷口。[應填入以下字串之一：右髖部皮膚不完整 | 左髖部皮膚不完整 | 背/臀部皮膚不完整 | 其他 | 其他接觸面皮膚不完整]"
* item[item-G3a] ^short = "G3a. 請問個案是否會因關節僵硬受限制，以致影響日常生活功能或造成照顧困難？"
* item[item-G3a].linkId 1..1 MS
* item[item-G3a].linkId = "G3a"
* item[item-G3a].text 1..1 MS
* item[item-G3a].text = "請問個案是否會因關節僵硬受限制，以致影響日常生活功能或造成照顧困難？"
* item[item-G3a].answer 1..1 MS
* item[item-G3a].answer.value[x] 1..1 MS
* item[item-G3a].answer.value[x] only string
* item[item-G3a].answer.valueString 1..1 MS
* item[item-G3a].answer.valueString ^short = "關節僵硬受限制的影響。[應填入以下字串之一：是，有影響日常生活功能 | 否，沒有影響日常生活功能 | 無法評估]"
* item[item-G3b] ^short = "G3b. 受限制的位置"
* item[item-G3b].linkId 1..1 MS
* item[item-G3b].linkId = "G3b"
* item[item-G3b].text 1..1 MS
* item[item-G3b].text = "受限制的位置"
* item[item-G3b].answer 1..* MS
* item[item-G3b].answer.value[x] 1..1 MS
* item[item-G3b].answer.value[x] only string
* item[item-G3b].answer.valueString 1..1 MS
* item[item-G3b].answer.valueString ^short = "受限制的位置。[應填入以下字串之一：肩關節 | 肘關節 | 腕指關節 | 髖關節 | 膝關節 | 踝關節 | 頸關節 | 全身關節]"
* item[item-G4a] ^short = "G4a. 個案過去 3 個月體重是否減輕？"
* item[item-G4a].linkId 1..1 MS
* item[item-G4a].linkId = "G4a"
* item[item-G4a].text 1..1 MS
* item[item-G4a].text = "個案過去 3 個月體重是否減輕？"
* item[item-G4a].answer 1..1 MS
* item[item-G4a].answer.value[x] 1..1 MS
* item[item-G4a].answer.value[x] only string
* item[item-G4a].answer.valueString 1..1 MS
* item[item-G4a].answer.valueString ^short = "個案過去 3 個月體重是否減輕？[應填入以下字串之一：非計畫性體重減輕超過 3 公斤 | 非計畫性體重減輕 1～3 公斤 | 體重無變化 | 不知道 | 其他]"
* item[item-G4b] ^short = "G4b. 個案身體質量指數（BMI）"
* item[item-G4b].linkId 1..1 MS
* item[item-G4b].linkId = "G4b"
* item[item-G4b].text 1..1 MS
* item[item-G4b].text = "個案身體質量指數（BMI）"
* item[item-G4b].answer 1..1 MS
* item[item-G4b].answer.value[x] 1..1 MS
* item[item-G4b].answer.value[x] only string
* item[item-G4b].answer.valueString 1..1 MS
* item[item-G4b].answer.valueString ^short = "請依照顧管理評估量表 G4b.個案身體質量指數（BMI）之欄位填答。"
* item[item-G4c] ^short = "G4c. 個案一般的飲食狀況，以週為單位"
* item[item-G4c].linkId 1..1 MS
* item[item-G4c].linkId = "G4c"
* item[item-G4c].text 1..1 MS
* item[item-G4c].text = "個案一般的飲食狀況，以週為單位"
* item[item-G4c].answer 1..1 MS
* item[item-G4c].answer.value[x] 1..1 MS
* item[item-G4c].answer.value[x] only string
* item[item-G4c].answer.valueString 1..1 MS
* item[item-G4c].answer.valueString ^short = "個案一般的飲食狀況，以週為單位。[應填入以下字串之一：未吃完，每餐進食量不超過整餐的 1/3，或除正餐外沒有補充任何點心，或被禁食（或採清流質或靜脈輸液超過 5 天），或灌食自製管灌飲食小於 1600c.c./日，或攝取的管灌飲食小於 800 大卡/日 | 未吃完，每餐進食量不超過整餐的 1/2，或偶爾吃點心，或灌食自製管灌飲食小於 2000c.c./日，或攝取的管灌飲食小於 1000 大卡/日 | 未吃完，每餐進食量超過整餐的 1/2，或有時拒絕用餐但會吃點心，或灌食自製管灌飲食小於 2400c.c./日，或攝取的管灌飲食小於 1200 大卡/日 | 每餐吃完，從不拒絕用餐，或不需任何補充食物，或灌食自製管灌飲食大於 2400c.c./日，或採用管灌飲食（或靜脈營養）大於 1200 大卡/日]"
* item[item-G4d1] ^short = "G4d1. 過去一年中體重減少了 5% 以上？"
* item[item-G4d1].linkId 1..1 MS
* item[item-G4d1].linkId = "G4d1"
* item[item-G4d1].text 1..1 MS
* item[item-G4d1].text = "過去一年中體重減少了 5% 以上？"
* item[item-G4d1].answer 1..1 MS
* item[item-G4d1].answer.value[x] 1..1 MS
* item[item-G4d1].answer.value[x] only string
* item[item-G4d1].answer.valueString 1..1 MS
* item[item-G4d1].answer.valueString ^short = "過去一年中體重減少了 5% 以上？[應填入以下字串之一：是 | 否 | 其他：（請說明）]"
* item[item-G4d2] ^short = "G4d2. 可以在不用手支撐的狀況下，從椅子上站起來 5 次？"
* item[item-G4d2].linkId 1..1 MS
* item[item-G4d2].linkId = "G4d2"
* item[item-G4d2].text 1..1 MS
* item[item-G4d2].text = "可以在不用手支撐的狀況下，從椅子上站起來 5 次？"
* item[item-G4d2].answer 1..1 MS
* item[item-G4d2].answer.value[x] 1..1 MS
* item[item-G4d2].answer.value[x] only string
* item[item-G4d2].answer.valueString 1..1 MS
* item[item-G4d2].answer.valueString ^short = "可以在不用手支撐的狀況下，從椅子上站起來 5 次？[應填入以下字串之一：是 | 否 | 其他：（請說明）]"
* item[item-G4d3] ^short = "G4d3. 經常有提不起勁來做事的感覺？"
* item[item-G4d3].linkId 1..1 MS
* item[item-G4d3].linkId = "G4d3"
* item[item-G4d3].text 1..1 MS
* item[item-G4d3].text = "經常有提不起勁來做事的感覺？"
* item[item-G4d3].answer 1..1 MS
* item[item-G4d3].answer.value[x] 1..1 MS
* item[item-G4d3].answer.value[x] only string
* item[item-G4d3].answer.valueString 1..1 MS
* item[item-G4d3].answer.valueString ^short = "經常有提不起勁來做事的感覺？[應填入以下字串之一：是 | 否 | 其他：（請說明）]"
* item[item-G4e] ^short = "G4e. 請問個案是否有經醫師診斷，且目前（6 個月內）仍存在的疾病"
* item[item-G4e].linkId 1..1 MS
* item[item-G4e].linkId = "G4e"
* item[item-G4e].text 1..1 MS
* item[item-G4e].text = "請問個案是否有經醫師診斷，且目前（6 個月內）仍存在的疾病"
* item[item-G4e].answer 1..* MS
* item[item-G4e].answer.value[x] 1..1 MS
* item[item-G4e].answer.value[x] only string
* item[item-G4e].answer.valueString 1..1 MS
* item[item-G4e].answer ^example.label = "Value"
* item[item-G4e].answer ^example.valueString = "否 | 是，高血壓，目前正在治療、目前使用藥物"
* item[item-G4f] ^short = "G4f. 個案尋求必要醫療時，是否需要服務介入協助？"
* item[item-G4f].linkId 1..1 MS
* item[item-G4f].linkId = "G4f"
* item[item-G4f].text 1..1 MS
* item[item-G4f].text = "個案尋求必要醫療時，是否需要服務介入協助？"
* item[item-G4f].answer 1..1 MS
* item[item-G4f].answer.value[x] 1..1 MS
* item[item-G4f].answer.value[x] only string
* item[item-G4f].answer.valueString 1..1 MS
* item[item-G4f].answer.valueString ^short = "個案尋求必要醫療時，是否需要服務介入協助？[應填入以下字串之一：不需要協助 | 需協助]"
* item[item-G5a] ^short = "G5a. 個案目前是否接受進階照顧？"
* item[item-G5a].linkId 1..1 MS
* item[item-G5a].linkId = "G5a"
* item[item-G5a].text 1..1 MS
* item[item-G5a].text = "個案目前是否接受進階照顧？"
* item[item-G5a].answer 1..1 MS
* item[item-G5a].answer.value[x] 1..1 MS
* item[item-G5a].answer.value[x] only string
* item[item-G5a].answer.valueString 1..1 MS
* item[item-G5a].answer.valueString ^short = "個案目前是否接受進階照顧？[應填入以下字串之一：無 | 有]"
* item[item-G5a1] ^short = "G5a1. 進階照顧的內容"
* item[item-G5a1].linkId 1..1 MS
* item[item-G5a1].linkId = "G5a1"
* item[item-G5a1].text 1..1 MS
* item[item-G5a1].text = "進階照顧的內容"
* item[item-G5a1].answer 1..* MS
* item[item-G5a1].answer.value[x] 1..1 MS
* item[item-G5a1].answer.value[x] only string
* item[item-G5a1].answer.valueString 1..1 MS
* item[item-G5a1].answer.valueString ^short = "進階照顧的內容。[應填入以下字串之一：插入（更換）鼻胃管或胃造口管護理 | 管灌餵食 | 氣切護理（更換氣切造口管、氣切造廔口處理） | 呼吸器 | 抽痰(含蒸氣吸入) | 氧氣治療 | 血氧濃度測量 | 中心靜脈營養導管護理 | 靜脈注射、肌肉注射、皮內注射、皮下注射、點滴加藥 | 更換腎臟引流或膀胱引流管 | 更換膀胱造口管(含膀胱造口管護理) | 留置導尿管護理（含尿袋、小腿袋使用） | 一般導尿(單次導尿) | 糞嵌塞清除、大小量灌腸、留置性灌腸 | 腸道造口護理（含造口灌洗） | 引流管灌洗 | 傷口護理、換藥（不包括三、四級壓傷傷口處理） | 壓傷處理 | 疼痛處置 | 血液透析 | 腹膜透析]"
* item[item-G6a] ^short = "G6a. 個案是否有任何關於吞嚥困難的情形或症狀？"
* item[item-G6a].linkId 1..1 MS
* item[item-G6a].linkId = "G6a"
* item[item-G6a].text 1..1 MS
* item[item-G6a].text = "個案是否有任何關於吞嚥困難的情形或症狀？"
* item[item-G6a].answer 1..* MS
* item[item-G6a].answer.value[x] 1..1 MS
* item[item-G6a].answer.value[x] only string
* item[item-G6a].answer.valueString 1..1 MS
* item[item-G6a].answer.valueString ^short = "個案是否有任何關於吞嚥困難的情形或症狀？[應填入以下字串之一：無吞嚥困難 | 抱怨吞嚥困難或吞嚥時會疼痛 | 吃東西或喝水的時候出現咳嗽或嗆咳 | 用餐後嘴中仍含著食物或留有殘餘食物 | 當喝或吃流質或固質的食物時，食物會從嘴角邊流失 | 有流口水之情形 | 無法評估]"
* item[item-G6b] ^short = "G6b. 個案有無接受過吞嚥訓練？"
* item[item-G6b].linkId 1..1 MS
* item[item-G6b].linkId = "G6b"
* item[item-G6b].text 1..1 MS
* item[item-G6b].text = "個案有無接受過吞嚥訓練？"
* item[item-G6b].answer 1..1 MS
* item[item-G6b].answer.value[x] 1..1 MS
* item[item-G6b].answer.value[x] only boolean
* item[item-G6b].answer.valueBoolean 1..1 MS
* item[item-G6b].answer.valueBoolean ^short = "個案有無接受過吞嚥訓練？"
* item[item-G7] ^short = "G7. 個案被診斷為失智症後，照顧者是否有接受護理人員或其他專業人員提供下列的教導？"
* item[item-G7].linkId 1..1 MS
* item[item-G7].linkId = "G7"
* item[item-G7].text 1..1 MS
* item[item-G7].text = "個案被診斷為失智症後，照顧者是否有接受護理人員或其他專業人員提供下列的教導？"
* item[item-G7].answer 1..* MS
* item[item-G7].answer.value[x] 1..1 MS
* item[item-G7].answer.value[x] only string
* item[item-G7].answer.valueString 1..1 MS
* item[item-G7].answer.valueString ^short = "個案被診斷為失智症後，照顧者是否有接受護理人員或其他專業人員提供下列的教導？[應填入以下字串之一：未接受過教導 | 維持認知功能 | 行為管理技巧 | 日常生活安排 | 安全與保護]"
* item[item-G8a] ^short = "G8a. 請問個案是否能維持坐姿的平衡？"
* item[item-G8a].linkId 1..1 MS
* item[item-G8a].linkId = "G8a"
* item[item-G8a].text 1..1 MS
* item[item-G8a].text = "請問個案是否能維持坐姿的平衡？（在沒有靠背支撐的狀況下）"
* item[item-G8a].answer 1..1 MS
* item[item-G8a].answer.value[x] 1..1 MS
* item[item-G8a].answer.value[x] only string
* item[item-G8a].answer.valueString 1..1 MS
* item[item-G8a].answer.valueString ^short = "請問個案是否能維持坐姿的平衡？[應填入以下字串之一：正常，不靠扶持能坐著達一分鐘以上 | 較差，不靠扶持只能坐著十秒鐘至一分鐘 | 極差，不靠扶持只能坐著少於十秒鐘（包括完全無法坐）]"
* item[item-G8b] ^short = "G8b. 請問個案是否能維持站立的平衡？"
* item[item-G8b].linkId 1..1 MS
* item[item-G8b].linkId = "G8b"
* item[item-G8b].text 1..1 MS
* item[item-G8b].text = "請問個案是否能維持站立的平衡？"
* item[item-G8b].answer 1..1 MS
* item[item-G8b].answer.value[x] 1..1 MS
* item[item-G8b].answer.value[x] only string
* item[item-G8b].answer.valueString 1..1 MS
* item[item-G8b].answer.valueString ^short = "請問個案是否能維持站立的平衡？[應填入以下字串之一：正常，不靠扶持能站立達一分鐘以上 | 較差，不靠扶持只能站立十秒鐘至一分鐘 | 極差，不靠扶持只能站立少於十秒鐘（包括完全無法站）]"
* item[item-G8c] ^short = "G8c. 在過去 12 個月中，個案有沒有跌倒或摔倒過？"
* item[item-G8c].linkId 1..1 MS
* item[item-G8c].linkId = "G8c"
* item[item-G8c].text 1..1 MS
* item[item-G8c].text = "在過去 12 個月中，個案有沒有跌倒或摔倒過？"
* item[item-G8c].answer 1..1 MS
* item[item-G8c].answer.value[x] 1..1 MS
* item[item-G8c].answer.value[x] only string
* item[item-G8c].answer.valueString 1..1 MS
* item[item-G8c].answer.valueString ^short = "在過去 12 個月中，個案有沒有跌倒或摔倒過？[應填入以下字串之一：沒有跌倒或摔倒過【跳答 G8d】 | 跌倒或摔倒 1 次【續答 G8c1】 | 跌倒或摔倒 2 次以上（含 2 次）【續答 G8c1】]"
* item[item-G8c1] ^short = "G8c1. 現在移位或走路時是否異常"
* item[item-G8c1].linkId 1..1 MS
* item[item-G8c1].linkId = "G8c1"
* item[item-G8c1].text 1..1 MS
* item[item-G8c1].text = "現在移位或走路時是否異常（指是否有困難）例如：頭暈、不穩或不安全"
* item[item-G8c1].answer 1..1 MS
* item[item-G8c1].answer.value[x] 1..1 MS
* item[item-G8c1].answer.value[x] only boolean
* item[item-G8c1].answer.valueBoolean 1..1 MS
* item[item-G8c1].answer.valueBoolean ^short = "現在移位或走路時是否異常"
* item[item-G8d] ^short = "G8d. 你的日常活動是否因擔心跌倒而不做？"
* item[item-G8d].linkId 1..1 MS
* item[item-G8d].linkId = "G8d"
* item[item-G8d].text 1..1 MS
* item[item-G8d].text = "你的日常活動是否因擔心跌倒而不做？"
* item[item-G8d].answer 1..1 MS
* item[item-G8d].answer.value[x] 1..1 MS
* item[item-G8d].answer.value[x] only string
* item[item-G8d].answer.valueString 1..1 MS
* item[item-G8d].answer.valueString ^short = "你的日常活動是否因擔心跌倒而不做？[應填入以下字串之一：不會擔心 | 會擔心 | 不適用（坐輪椅者、臥床者）]"
* item[item-G8e] ^short = "G8e. 個案對於危險的認知？"
* item[item-G8e].linkId 1..1 MS
* item[item-G8e].linkId = "G8e"
* item[item-G8e].text 1..1 MS
* item[item-G8e].text = "個案對於危險的認知？"
* item[item-G8e].answer 1..1 MS
* item[item-G8e].answer.value[x] 1..1 MS
* item[item-G8e].answer.value[x] only string
* item[item-G8e].answer.valueString 1..1 MS
* item[item-G8e].answer.valueString ^short = "個案對於危險的認知？[應填入以下字串之一：有能力：可以認識日常生活危險來源 | 大部分有能力：可以認識大部分於日常生活中的危險來源 | 小範圍有能力：對於常會碰到的危險（尤其是住家環境中會出現的危險），卻常不認為那是危險 | 無能力：完全不自知有危險]"