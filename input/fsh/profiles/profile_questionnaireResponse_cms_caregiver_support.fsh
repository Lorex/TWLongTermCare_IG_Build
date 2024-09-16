Profile: LTCQuestionnaireResponseCMSCaregiverSupport
Parent: LTCQuestionnaireResponse
Id: LTCQuestionnaireResponseCMSCaregiverSupport
Title: "TWLTC QuestionnaireResponse CMS Caregiver Support"
Description: "照顧管理評估量表－主要照顧者工作與支持"

* item 8..13 MS
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #open
* item contains
    item-K1 1..1 MS and
    item-K2 1..1 MS and
    item-K3 1..1 MS and
    item-K4 1..1 MS and
    item-K5 1..1 MS and
    item-K6 1..1 MS and
    item-K7 1..1 MS and
    item-K7a 0..1 MS and
    item-K7b 0..1 MS and
    item-K7c 0..1 MS and
    item-K7d 0..1 MS and
    item-K7e 0..1 MS and
    item-K8 1..1 MS
* item[item-K1] ^short = "K1.請問您是否與個案同住？"
* item[item-K1].linkId 1..1 MS 
* item[item-K1].linkId = "K1"
* item[item-K1].text 1..1 MS
* item[item-K1].text = "請問您是否與個案同住？"
* item[item-K1].answer 1..1 MS
* item[item-K1].answer.value[x] 1..1 MS
* item[item-K1].answer.value[x] only boolean
* item[item-K1].answer.valueBoolean 1..1 MS
* item[item-K1].answer.valueBoolean ^short = "請問您是否與個案同住？[應填入以下字串之一：true | false]"
* item[item-K2] ^short = "K2.若您有事必須外出，一天之中（二十四小時），請問您可將個案單獨留置家中幾小時沒有問題？"
* item[item-K2].linkId 1..1 MS
* item[item-K2].linkId = "K2"
* item[item-K2].text 1..1 MS
* item[item-K2].text = "若您有事必須外出，一天之中（二十四小時），請問您可將個案單獨留置家中幾小時沒有問題？"
* item[item-K2].answer 1..1 MS
* item[item-K2].answer.value[x] 1..1 MS
* item[item-K2].answer.value[x] only string
* item[item-K2].answer.valueString 1..1 MS
* item[item-K2].answer.valueString ^short = "若您有事必須外出，一天之中（二十四小時），請問您可將個案單獨留置家中幾小時沒有問題？[應填入以下字串之一：個案不能一個人在家 | 未滿一小時 | 一小時～未滿三小時 | 三小時～未滿六小時 | 六小時～未滿九小時 | 九小時以上]"
* item[item-K3] ^short = "K3.有無照顧其他失能家人或 3 歲以下幼兒？"
* item[item-K3].linkId 1..1 MS
* item[item-K3].linkId = "K3"
* item[item-K3].text 1..1 MS
* item[item-K3].text = "有無照顧其他失能家人或 3 歲以下幼兒？"
* item[item-K3].answer 1..1 MS
* item[item-K3].answer.value[x] 1..1 MS
* item[item-K3].answer.value[x] only string
* item[item-K3].answer.valueString 1..1 MS
* item[item-K3].answer.valueString ^short = "有無照顧其他失能家人或 3 歲以下幼兒？[應填入以下字串之一：沒有，僅個案 1 人 | 有，共________人（不包括個案）]"
* item[item-K4] ^short = "K4.請問您已經照顧個案多久？"
* item[item-K4].linkId 1..1 MS
* item[item-K4].linkId = "K4"
* item[item-K4].text 1..1 MS
* item[item-K4].text = "請問您已經照顧個案多久？"
* item[item-K4].answer 1..1 MS
* item[item-K4].answer.value[x] 1..1 MS
* item[item-K4].answer.value[x] only string
* item[item-K4].answer.valueString 1..1 MS
* item[item-K4].answer.valueString ^short = "請問您已經照顧個案多久？"
* item[item-K5] ^short = "K5.請問您過去 1 個月的健康狀況好不好？"
* item[item-K5].linkId 1..1 MS
* item[item-K5].linkId = "K5"
* item[item-K5].text 1..1 MS
* item[item-K5].text = "請問您過去 1 個月的健康狀況好不好？"
* item[item-K5].answer 1..1 MS
* item[item-K5].answer.value[x] 1..1 MS
* item[item-K5].answer.value[x] only string
* item[item-K5].answer.valueString 1..1 MS
* item[item-K5].answer.valueString ^short = "請問您過去 1 個月的健康狀況好不好？[應填入以下字串之一：非常好 | 很好 | 好 | 尚可 | 不好 | 非常不好]"
* item[item-K6] ^short = "K6.整體來說，您覺得您生活品質好不好？"
* item[item-K6].linkId 1..1 MS
* item[item-K6].linkId = "K6"
* item[item-K6].text 1..1 MS
* item[item-K6].text = "整體來說，您覺得您生活品質好不好？"
* item[item-K6].answer 1..1 MS
* item[item-K6].answer.value[x] 1..1 MS
* item[item-K6].answer.value[x] only string
* item[item-K6].answer.valueString 1..1 MS
* item[item-K6].answer.valueString ^short = "整體來說，您覺得您生活品質好不好？[應填入以下字串之一：非常好 | 很好 | 好 | 尚可 | 不好 | 非常不好]"
* item[item-K7] ^short = "K7.請問您目前有沒有在工作？"
* item[item-K7].linkId 1..1 MS
* item[item-K7].linkId = "K7"
* item[item-K7].text 1..1 MS
* item[item-K7].text = "請問您目前有沒有在工作？"
* item[item-K7].answer 1..1 MS
* item[item-K7].answer.value[x] 1..1 MS
* item[item-K7].answer.value[x] only boolean
* item[item-K7a] ^short = "K7a.您以前有沒有工作（有沒有工作賺錢）？"
* item[item-K7a].linkId 1..1 MS
* item[item-K7a].linkId = "K7a"
* item[item-K7a].text 1..1 MS
* item[item-K7a].text = "您以前有沒有工作（有沒有工作賺錢）？"
* item[item-K7a].answer 1..1 MS
* item[item-K7a].answer.value[x] 1..1 MS
* item[item-K7a].answer.value[x] only boolean
* item[item-K7b] ^short = "K7b.您是不是因為照顧個案而不再工作？【跳答 K8】"
* item[item-K7b].linkId 1..1 MS
* item[item-K7b].linkId = "K7b"
* item[item-K7b].text 1..1 MS
* item[item-K7b].text = "您是不是因為照顧個案而不再工作？【跳答 K8】"
* item[item-K7b].answer 1..1 MS
* item[item-K7b].answer.value[x] 1..1 MS
* item[item-K7b].answer.value[x] only boolean
* item[item-K7c] ^short = "K7c.您目前的工作是全職還是兼職？"
* item[item-K7c].linkId 1..1 MS
* item[item-K7c].linkId = "K7c"
* item[item-K7c].text 1..1 MS
* item[item-K7c].text = "您目前的工作是全職還是兼職？"
* item[item-K7c].answer 1..1 MS
* item[item-K7c].answer.value[x] 1..1 MS
* item[item-K7c].answer.value[x] only string
* item[item-K7c].answer.valueString 1..1 MS
* item[item-K7c].answer.valueString ^short = "您目前的工作是全職還是兼職？[應填入以下字串之一：全職 | 兼職（部分時間工作）]"
* item[item-K7d] ^short = "K7d.為了照顧個案，您的工作是否受到影響？"
* item[item-K7d].linkId 1..1 MS
* item[item-K7d].linkId = "K7d"
* item[item-K7d].text 1..1 MS
* item[item-K7d].text = "為了照顧個案，您的工作是否受到影響？"
* item[item-K7d].answer 1..1 MS
* item[item-K7d].answer.value[x] 1..1 MS
* item[item-K7d].answer.value[x] only boolean
* item[item-K7e] ^short = "K7e.若有影響，影響的結果為何？"
* item[item-K7e].linkId 1..1 MS
* item[item-K7e].linkId = "K7e"
* item[item-K7e].text 1..1 MS
* item[item-K7e].text = "若有影響，影響的結果為何？"
* item[item-K7e].answer 1..1 MS
* item[item-K7e].answer.value[x] 1..1 MS
* item[item-K7e].answer.value[x] only string
* item[item-K7e].answer.valueString 1..1 MS
* item[item-K7e].answer.valueString ^short = "若有影響，影響的結果為何？[應填入以下字串之一：必須減少工作時間 | 必須請假（事假、病假、家庭照顧假） | 必須彈性調整工作時間 | 其他（請說明）]"
* item[item-K8] ^short = "K8.請寫出其他有關訪問過程、個案（家屬）期許或其他如虐待、疏忽、需緊急就醫、自費等特殊狀況或問題"
* item[item-K8].linkId 1..1 MS
* item[item-K8].linkId = "K8"
* item[item-K8].text 1..1 MS
* item[item-K8].text = "請寫出其他有關訪問過程、個案（家屬）期許或其他如虐待、疏忽、需緊急就醫、自費等特殊狀況或問題："
* item[item-K8].answer 1..1 MS
* item[item-K8].answer.value[x] 1..1 MS
* item[item-K8].answer.value[x] only string