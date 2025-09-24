Instance: ltc-questionnaire-society
InstanceOf: LTCQuestionnaire
Title: "居家環境與社會參與問卷"
Description: "CMS評估表中居家環境與社會參與問卷"
Usage: #example
* url = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-society"
* name = "LTCQuestionnaireSociety"
* status = #active
* item[0].linkId = "society-1"
* item[0].type = #boolean
* item[0].text = "居住環境是否安全"
* item[1].linkId = "society-2"
* item[1].type = #choice
* item[1].text = "社會參與程度"
* item[1].answerOption[0].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[1].answerOption[0].valueCoding.code = #moderate
* item[1].answerOption[0].valueCoding.display = "中等"


