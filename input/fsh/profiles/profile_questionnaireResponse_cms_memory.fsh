Profile: LTCQuestionnaireResponseCMSMemory
Parent: LTCQuestionnaireResponse
Id: LTCQuestionnaireResponseCMSMemory
Title: "照顧管理評估量表－個案短期記憶力問卷回覆"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現照顧管理評估量表－個案短期記憶力問卷的回覆資料。"

* item 1..5 MS
* item ^short = "問卷回覆的內容"
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #open
* item contains
    item-d0 1..1 MS and
    item-d1a 0..1 MS and
    item-d1b1 0..1 MS and
    item-d1b2 0..1 MS and
    item-d1b3 0..1 MS
* item[item-d0] ^short = "D0. 個案短期記憶力回答狀態"
* item[item-d0].linkId 1..1 MS
* item[item-d0].linkId = "D0" (exactly)
* item[item-d0].text 1..1 MS
* item[item-d0].text = "個案短期記憶力回答狀態"
* item[item-d0].answer 1..1 MS
* item[item-d0].answer ^short = "個案短期記憶力回答狀態的回覆"
* item[item-d0].answer.value[x] 1..1 MS
* item[item-d0].answer.value[x] only string
* item[item-d0].answer.valueString 1..1 MS
* item[item-d0].answer.valueString ^short = "個案短期記憶力回答狀態的回覆。[應填入以下字串之一：個案可回答 D 大題 | 個案本人無法回答 | 拒答]"
* item[item-d1a] ^short = "D1a. 個案能重複的詞數"
* item[item-d1a].linkId 1..1 MS
* item[item-d1a].linkId = "D1a"
* item[item-d1a].text 1..1 MS
* item[item-d1a].text = "個案能重複的詞數"
* item[item-d1a].answer 1..1 MS
* item[item-d1a].answer ^short = "個案能重複的詞數的回覆"
* item[item-d1a].answer.value[x] 1..1 MS
* item[item-d1a].answer.value[x] only integer
* item[item-d1a].answer.valueInteger 1..1 MS
* item[item-d1a].answer.valueInteger ^short = "個案能重複的詞數的回覆。[應填入 0-3 之間的整數]"
* item[item-d1b1] ^short = "D1b1. 回憶起「襪子」"
* item[item-d1b1].linkId 1..1 MS
* item[item-d1b1].linkId = "D1b1"
* item[item-d1b1].text 1..1 MS
* item[item-d1b1].text = "回憶起「襪子」"
* item[item-d1b1].answer 1..1 MS
* item[item-d1b1].answer ^short = "回憶起「襪子」的回覆"
* item[item-d1b1].answer.value[x] 1..1 MS
* item[item-d1b1].answer.value[x] only string
* item[item-d1b1].answer.valueString 1..1 MS
* item[item-d1b1].answer.valueString ^short = "回憶起「襪子」的回覆。[應填入以下字串之一：是，且不需提示 | 是，但須給予提示 | 否，無法回憶該品項]"
* item[item-d1b2] ^short = "D1b2. 回憶起「藍色」"
* item[item-d1b2].linkId 1..1 MS
* item[item-d1b2].linkId = "D1b2"
* item[item-d1b2].text 1..1 MS
* item[item-d1b2].text = "回憶起「藍色」"
* item[item-d1b2].answer 1..1 MS
* item[item-d1b2].answer ^short = "回憶起「藍色」的回覆"
* item[item-d1b2].answer.value[x] 1..1 MS
* item[item-d1b2].answer.value[x] only string
* item[item-d1b2].answer.valueString 1..1 MS
* item[item-d1b2].answer.valueString ^short = "回憶起「藍色」的回覆。[應填入以下字串之一：是，且不需提示 | 是，但須給予提示 | 否，無法回憶該品項]"
* item[item-d1b3] ^short = "D1b3. 回憶起「床鋪」"
* item[item-d1b3].linkId 1..1 MS
* item[item-d1b3].linkId = "D1b3"
* item[item-d1b3].text 1..1 MS
* item[item-d1b3].text = "回憶起「床鋪」"
* item[item-d1b3].answer 1..1 MS
* item[item-d1b3].answer ^short = "回憶起「床鋪」的回覆"
* item[item-d1b3].answer.value[x] 1..1 MS
* item[item-d1b3].answer.value[x] only string
* item[item-d1b3].answer.valueString 1..1 MS
* item[item-d1b3].answer.valueString ^short = "回憶起「床鋪」的回覆。[應填入以下字串之一：是，且不需提示 | 是，但須給予提示 | 否，無法回憶該品項]"
