Instance: ltc-questionnaire-caregiver-support
InstanceOf: LTCQuestionnaire
Title: "主要照護者工作與支持問卷"
Description: "CMS評估表中主要照護者工作與支持問卷"
Usage: #example
* url = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-caregiver-support"
* name = "LTCQuestionnaireCaregiverSupport"
* status = #active

* item[0].linkId = "K1"
* item[0].type = #boolean
* item[0].text = "請問您是否與個案同住？"

* item[1].linkId = "K2"
* item[1].type = #string
* item[1].text = "若您有事必須外出，一天之中（二十四小時），請問您可將個案單獨留置家中幾小時沒有問題？"

* item[2].linkId = "K3"
* item[2].type = #string
* item[2].text = "有無照顧其他失能家人或 3 歲以下幼兒？"

* item[3].linkId = "K4"
* item[3].type = #string
* item[3].text = "請問您已經照顧個案多久？"

* item[4].linkId = "K5"
* item[4].type = #string
* item[4].text = "請問您過去 1 個月的健康狀況好不好？"

* item[5].linkId = "K6"
* item[5].type = #string
* item[5].text = "整體來說，您覺得您生活品質好不好？"

* item[6].linkId = "K7"
* item[6].type = #boolean
* item[6].text = "請問您目前有沒有在工作？"

* item[7].linkId = "K8"
* item[7].type = #string
* item[7].text = "請寫出其他有關訪問過程、個案（家屬）期許或其他如虐待、疏忽、需緊急就醫、自費等特殊狀況或問題："


