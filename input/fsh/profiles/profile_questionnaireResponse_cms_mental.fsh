Profile: LTCQuestionnaireResponseCMSMental
Parent: LTCQuestionnaireResponse
Id: LTCQuestionnaireResponseCMSMental
Title: "照顧管理評估量表－情緒及行為型態問卷回覆"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現照顧管理評估量表－情緒及行為型態問卷的回覆資料。"

* item 14..14 MS
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #open
* item contains
    item-I01 1..1 MS and
    item-I02 1..1 MS and
    item-I03 1..1 MS and
    item-I04 1..1 MS and
    item-I05 1..1 MS and
    item-I06 1..1 MS and
    item-I07 1..1 MS and
    item-I08 1..1 MS and
    item-I09 1..1 MS and
    item-I10 1..1 MS and
    item-I11 1..1 MS and
    item-I12 1..1 MS and
    item-I13 1..1 MS and
    item-I14 1..1 MS
* item[item-I01] ^short = "I01. 遊走"
* item[item-I01].linkId 1..1 MS
* item[item-I01].linkId = "I01"
* item[item-I01].text 1..1 MS
* item[item-I01].text = "遊走"
* item[item-I01].answer 1..1 MS
* item[item-I01].answer.value[x] 1..1 MS
* item[item-I01].answer.value[x] only string
* item[item-I01].answer.valueString 1..1 MS
* item[item-I01].answer.valueString ^short = "遊走[應填入以下字串之一：過去三個月內從未發生 | 過去三個月內有發生，但過去一週內從未發生 | 過去三個月內有發生，且過去一週內出現 1-3 天 | 過去三個月內有發生，且過去一週內出現 4-7 天]"
* item[item-I02] ^short = "I02. 日夜顛倒/作息混亂"
* item[item-I02].linkId 1..1 MS
* item[item-I02].linkId = "I02"
* item[item-I02].text 1..1 MS
* item[item-I02].text = "日夜顛倒/作息混亂"
* item[item-I02].answer 1..1 MS
* item[item-I02].answer.value[x] 1..1 MS
* item[item-I02].answer.value[x] only string
* item[item-I02].answer.valueString 1..1 MS
* item[item-I02].answer.valueString ^short = "日夜顛倒/作息混亂[應填入以下字串之一：過去三個月內從未發生 | 過去三個月內有發生，但過去一週內從未發生 | 過去三個月內有發生，且過去一週內出現 1-3 天 | 過去三個月內有發生，且過去一週內出現 4-7 天]"
* item[item-I03] ^short = "I03. 語言攻擊行為"
* item[item-I03].linkId 1..1 MS
* item[item-I03].linkId = "I03"
* item[item-I03].text 1..1 MS
* item[item-I03].text = "語言攻擊行為"
* item[item-I03].answer 1..1 MS
* item[item-I03].answer.value[x] 1..1 MS
* item[item-I03].answer.value[x] only string
* item[item-I03].answer.valueString 1..1 MS
* item[item-I03].answer.valueString ^short = "語言攻擊行為[應填入以下字串之一：過去三個月內從未發生 | 過去三個月內有發生，但過去一週內從未發生 | 過去三個月內有發生，且過去一週內出現 1-3 天 | 過去三個月內有發生，且過去一週內出現 4-7 天]"
* item[item-I04] ^short = "I04. 肢體攻擊行為"
* item[item-I04].linkId 1..1 MS
* item[item-I04].linkId = "I04"
* item[item-I04].text 1..1 MS
* item[item-I04].text = "肢體攻擊行為"
* item[item-I04].answer 1..1 MS
* item[item-I04].answer.value[x] 1..1 MS
* item[item-I04].answer.value[x] only string
* item[item-I04].answer.valueString 1..1 MS
* item[item-I04].answer.valueString ^short = "肢體攻擊行為[應填入以下字串之一：過去三個月內從未發生 | 過去三個月內有發生，但過去一週內從未發生 | 過去三個月內有發生，且過去一週內出現 1-3 天 | 過去三個月內有發生，且過去一週內出現 4-7 天]"
* item[item-I05] ^short = "I05. 干擾行為"
* item[item-I05].linkId 1..1 MS
* item[item-I05].linkId = "I05"
* item[item-I05].text 1..1 MS
* item[item-I05].text = "干擾行為"
* item[item-I05].answer 1..1 MS
* item[item-I05].answer.value[x] 1..1 MS
* item[item-I05].answer.value[x] only string
* item[item-I05].answer.valueString 1..1 MS
* item[item-I05].answer.valueString ^short = "干擾行為[應填入以下字串之一：過去三個月內從未發生 | 過去三個月內有發生，但過去一週內從未發生 | 過去三個月內有發生，且過去一週內出現 1-3 天 | 過去三個月內有發生，且過去一週內出現 4-7 天]"
* item[item-I06] ^short = "I06. 抗拒照護"
* item[item-I06].linkId 1..1 MS
* item[item-I06].linkId = "I06"
* item[item-I06].text 1..1 MS
* item[item-I06].text = "抗拒照護"
* item[item-I06].answer 1..1 MS
* item[item-I06].answer.value[x] 1..1 MS
* item[item-I06].answer.value[x] only string
* item[item-I06].answer.valueString 1..1 MS
* item[item-I06].answer.valueString ^short = "抗拒照護[應填入以下字串之一：過去三個月內從未發生 | 過去三個月內有發生，但過去一週內從未發生 | 過去三個月內有發生，且過去一週內出現 1-3 天 | 過去三個月內有發生，且過去一週內出現 4-7 天]"
* item[item-I07] ^short = "I07. 妄想"
* item[item-I07].linkId 1..1 MS
* item[item-I07].linkId = "I07"
* item[item-I07].text 1..1 MS
* item[item-I07].text = "妄想"
* item[item-I07].answer 1..1 MS
* item[item-I07].answer.value[x] 1..1 MS
* item[item-I07].answer.value[x] only string
* item[item-I07].answer.valueString 1..1 MS
* item[item-I07].answer.valueString ^short = "妄想[應填入以下字串之一：過去三個月內從未發生 | 過去三個月內有發生，但過去一週內從未發生 | 過去三個月內有發生，且過去一週內出現 1-3 天 | 過去三個月內有發生，且過去一週內出現 4-7 天]"
* item[item-I08] ^short = "I08. 幻覺"
* item[item-I08].linkId 1..1 MS
* item[item-I08].linkId = "I08"
* item[item-I08].text 1..1 MS
* item[item-I08].text = "幻覺"
* item[item-I08].answer 1..1 MS
* item[item-I08].answer.value[x] 1..1 MS
* item[item-I08].answer.value[x] only string
* item[item-I08].answer.valueString 1..1 MS
* item[item-I08].answer.valueString ^short = "幻覺[應填入以下字串之一：過去三個月內從未發生 | 過去三個月內有發生，但過去一週內從未發生 | 過去三個月內有發生，且過去一週內出現 1-3 天 | 過去三個月內有發生，且過去一週內出現 4-7 天]"
* item[item-I09] ^short = "I09. 恐懼或焦慮"
* item[item-I09].linkId 1..1 MS
* item[item-I09].linkId = "I09"
* item[item-I09].text 1..1 MS
* item[item-I09].text = "恐懼或焦慮"
* item[item-I09].answer 1..1 MS
* item[item-I09].answer.value[x] 1..1 MS
* item[item-I09].answer.value[x] only string
* item[item-I09].answer.valueString 1..1 MS
* item[item-I09].answer.valueString ^short = "恐懼或焦慮[應填入以下字串之一：過去三個月內從未發生 | 過去三個月內有發生，但過去一週內從未發生 | 過去三個月內有發生，且過去一週內出現 1-3 天 | 過去三個月內有發生，且過去一週內出現 4-7 天]"
* item[item-I10] ^short = "I10. 憂鬱及負性症狀"
* item[item-I10].linkId 1..1 MS
* item[item-I10].linkId = "I10"
* item[item-I10].text 1..1 MS
* item[item-I10].text = "憂鬱及負性症狀"
* item[item-I10].answer 1..1 MS
* item[item-I10].answer.value[x] 1..1 MS
* item[item-I10].answer.value[x] only string
* item[item-I10].answer.valueString 1..1 MS
* item[item-I10].answer.valueString ^short = "憂鬱及負性症狀[應填入以下字串之一：過去三個月內從未發生 | 過去三個月內有發生，但過去一週內從未發生 | 過去三個月內有發生，且過去一週內出現 1-3 天 | 過去三個月內有發生，且過去一週內出現 4-7 天]"
* item[item-I11] ^short = "I11. 自傷行為及自殺（包含意念及行為）"
* item[item-I11].linkId 1..1 MS
* item[item-I11].linkId = "I11"
* item[item-I11].text 1..1 MS
* item[item-I11].text = "自傷行為及自殺（包含意念及行為）"
* item[item-I11].answer 1..1 MS
* item[item-I11].answer.value[x] 1..1 MS
* item[item-I11].answer.value[x] only string
* item[item-I11].answer.valueString 1..1 MS
* item[item-I11].answer.valueString ^short = "自傷行為及自殺（包含意念及行為）[應填入以下字串之一：過去三個月內從未發生 | 過去三個月內有發生，但過去一週內從未發生 | 過去三個月內有發生，且過去一週內出現 1-3 天 | 過去三個月內有發生，且過去一週內出現 4-7 天]"
* item[item-I12] ^short = "I12. 重複行為"
* item[item-I12].linkId 1..1 MS
* item[item-I12].linkId = "I12"
* item[item-I12].text 1..1 MS
* item[item-I12].text = "重複行為"
* item[item-I12].answer 1..1 MS
* item[item-I12].answer.value[x] 1..1 MS
* item[item-I12].answer.value[x] only string
* item[item-I12].answer.valueString 1..1 MS
* item[item-I12].answer.valueString ^short = "重複行為[應填入以下字串之一：過去三個月內從未發生 | 過去三個月內有發生，但過去一週內從未發生 | 過去三個月內有發生，且過去一週內出現 1-3 天 | 過去三個月內有發生，且過去一週內出現 4-7 天]"
* item[item-I13] ^short = "I13. 對物品的攻擊行為"
* item[item-I13].linkId 1..1 MS
* item[item-I13].linkId = "I13"
* item[item-I13].text 1..1 MS
* item[item-I13].text = "對物品的攻擊行為"
* item[item-I13].answer 1..1 MS
* item[item-I13].answer.value[x] 1..1 MS
* item[item-I13].answer.value[x] only string
* item[item-I13].answer.valueString 1..1 MS
* item[item-I13].answer.valueString ^short = "對物品的攻擊行為[應填入以下字串之一：過去三個月內從未發生 | 過去三個月內有發生，但過去一週內從未發生 | 過去三個月內有發生，且過去一週內出現 1-3 天 | 過去三個月內有發生，且過去一週內出現 4-7 天]"
* item[item-I14] ^short = "I14. 其他不適當以及不潔行為"
* item[item-I14].linkId 1..1 MS
* item[item-I14].linkId = "I14"
* item[item-I14].text 1..1 MS
* item[item-I14].text = "其他不適當以及不潔行為"
* item[item-I14].answer 1..1 MS
* item[item-I14].answer.value[x] 1..1 MS
* item[item-I14].answer.value[x] only string
* item[item-I14].answer.valueString 1..1 MS
* item[item-I14].answer.valueString ^short = "其他不適當以及不潔行為[應填入以下字串之一：過去三個月內從未發生 | 過去三個月內有發生，但過去一週內從未發生 | 過去三個月內有發生，且過去一週內出現 1-3 天 | 過去三個月內有發生，且過去一週內出現 4-7 天]"