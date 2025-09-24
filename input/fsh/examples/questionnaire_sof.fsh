Instance: ltc-questionnaire-sof
InstanceOf: LTCQuestionnaire
Title: "SOF問卷"
Description: "轉介流程中SOF問卷"
Usage: #example
* url = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-sof"
* name = "LTCQuestionnaireSOF"
* status = #active
* item[0].linkId = "sof-1"
* item[0].type = #choice
* item[0].text = "跌倒風險評估"
* item[0].answerOption[0].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[0].answerOption[0].valueCoding.code = #low-risk
* item[0].answerOption[0].valueCoding.display = "低風險"
* item[0].answerOption[1].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[0].answerOption[1].valueCoding.code = #moderate-risk
* item[0].answerOption[1].valueCoding.display = "中等風險"
* item[0].answerOption[2].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[0].answerOption[2].valueCoding.code = #high-risk
* item[0].answerOption[2].valueCoding.display = "高風險"
* item[1].linkId = "sof-2"
* item[1].type = #choice
* item[1].text = "平衡能力"
* item[1].answerOption[0].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[1].answerOption[0].valueCoding.code = #poor
* item[1].answerOption[0].valueCoding.display = "差"


