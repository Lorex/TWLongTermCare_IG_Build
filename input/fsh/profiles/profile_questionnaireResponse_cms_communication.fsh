Alias: $QuestionnaireResponse = http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse

Profile: LTCQuestionnaireResponseCMSCommunication
Parent: LTCQuestionnaireResponse
Id: LTCQuestionnaireResponseCMSCommunication
Title: "TW Long Term Care QuestionnaireResponse CMS Communication"
Description: "照顧管理評估量表－個案溝通能力問卷回覆"

* item 5..6 MS
* item ^short = "問卷回覆的內容"
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #open
* item contains
    item-c1 1..1 MS and
    item-c1a 0..1 MS and
    item-c2 1..1 MS and
    item-c3 1..1 MS and
    item-c4 1..1 MS and
    item-c5 1..1 MS
* item[item-c1] ^short = "C1. 個案意識狀態"
* item[item-c1].linkId 1..1 MS
* item[item-c1].linkId = "C1"
* item[item-c1].text 1..1 MS
* item[item-c1].text = "個案意識狀態"
* item[item-c1].answer 1..1 MS
* item[item-c1].answer ^short = "個案意識狀態的回覆"
* item[item-c1].answer.value[x] 1..1 MS
* item[item-c1].answer.value[x] only string
* item[item-c1].answer.valueString 1..1 MS
* item[item-c1].answer.valueString ^short = "個案意識狀態的回覆。[應填入以下字串之一：清醒 | 嗜睡 | 混亂 | 呆滯 | 昏迷 | 其他（同時描述內容）]"
* item[item-c1a] ^short = "C1a. 能對外來刺激做出有意義反應的能力"
* item[item-c1a].linkId 1..1 MS
* item[item-c1a].linkId = "C1a"
* item[item-c1a].text 1..1 MS
* item[item-c1a].text = "能對外來刺激做出有意義反應的能力"
* item[item-c1a].answer 1..1 MS
* item[item-c1a].answer ^short = "能對外來刺激做出有意義反應的能力的回覆"
* item[item-c1a].answer.value[x] 1..1 MS
* item[item-c1a].answer.value[x] only string
* item[item-c1a].answer.valueString 1..1 MS
* item[item-c1a].answer.valueString ^short = "能對外來刺激做出有意義反應的能力的回覆。[應填入以下字串之一：對疼痛刺激無反應，且無表情 | 僅對疼痛刺激有反應，但無法口頭表達 | 偶而可以口頭表達不適]"
* item[item-c2] ^short = "C2. 個案視力"
* item[item-c2].linkId 1..1 MS
* item[item-c2].linkId = "C2"
* item[item-c2].text 1..1 MS
* item[item-c2].text = "個案視力"
* item[item-c2].answer 1..1 MS
* item[item-c2].answer ^short = "個案視力的回覆"
* item[item-c2].answer.value[x] 1..1 MS
* item[item-c2].answer.value[x] only string
* item[item-c2].answer.valueString 1..1 MS
* item[item-c2].answer.valueString ^short = "個案視力的回覆。[應填入以下字串之一：正常 | 輕度障礙 | 中度障礙 | 重度障礙 | 極重度障礙 | 失明 | 無法評估]"
* item[item-c3] ^short = "C3. 個案聽力"
* item[item-c3].linkId 1..1 MS
* item[item-c3].linkId = "C3"
* item[item-c3].text 1..1 MS
* item[item-c3].text = "個案聽力"
* item[item-c3].answer 1..1 MS
* item[item-c3].answer ^short = "個案聽力的回覆"
* item[item-c3].answer.value[x] 1..1 MS
* item[item-c3].answer.value[x] only string
* item[item-c3].answer.valueString 1..1 MS
* item[item-c3].answer.valueString ^short = "個案聽力的回覆。[應填入以下字串之一：適當 | 輕度障礙 | 中度障礙 | 重度障礙 | 無法評估]"
* item[item-c4] ^short = "C4. 個案表達能力"
* item[item-c4].linkId 1..1 MS
* item[item-c4].linkId = "C4"
* item[item-c4].text 1..1 MS
* item[item-c4].text = "個案表達能力"
* item[item-c4].answer 1..1 MS
* item[item-c4].answer ^short = "個案表達能力的回覆"
* item[item-c4].answer.value[x] 1..1 MS
* item[item-c4].answer.value[x] only string
* item[item-c4].answer.valueString 1..1 MS
* item[item-c4].answer.valueString ^short = "個案表達能力的回覆。[應填入以下字串之一：良好 | 僅可表達簡單的意思 | 雖能表達簡單的意思，但多數難以理解 | 僅可表達零碎的字或詞 | 無法表達/無法令人理解/不具意義]"
* item[item-c5] ^short = "C5. 個案理解能力"
* item[item-c5].linkId 1..1 MS
* item[item-c5].linkId = "C5"
* item[item-c5].text 1..1 MS
* item[item-c5].text = "個案理解能力"
* item[item-c5].answer 1..1 MS
* item[item-c5].answer ^short = "個案理解能力的回覆"
* item[item-c5].answer.value[x] 1..1 MS
* item[item-c5].answer.value[x] only string
* item[item-c5].answer.valueString 1..1 MS
* item[item-c5].answer.valueString ^short = "個案理解能力的回覆。[應填入以下字串之一：良好 | 僅可理解簡單的句子 | 僅可理解關鍵的字或詞 | 無法理解 | 無法判斷理解能力]"