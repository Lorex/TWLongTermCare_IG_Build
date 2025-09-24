Instance: ltc-questionnaire-iadl
InstanceOf: LTCQuestionnaire
Title: "工具性日常活動功能問卷"
Description: "CMS評估表中IADL問卷"
Usage: #example
* url = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-iadl"
* name = "LTCQuestionnaireIADL"
* status = #active
* item[0].linkId = "iadl-1"
* item[0].type = #choice
* item[0].text = "購物能力"
* item[0].answerOption[0].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[0].answerOption[0].valueCoding.code = #independent
* item[0].answerOption[0].valueCoding.display = "獨立"
* item[0].answerOption[1].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[0].answerOption[1].valueCoding.code = #assisted
* item[0].answerOption[1].valueCoding.display = "需協助"
* item[0].answerOption[2].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[0].answerOption[2].valueCoding.code = #dependent
* item[0].answerOption[2].valueCoding.display = "依賴"
* item[1].linkId = "iadl-2"
* item[1].type = #choice
* item[1].text = "使用電話能力"
* item[1].answerOption[0].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[1].answerOption[0].valueCoding.code = #independent
* item[1].answerOption[0].valueCoding.display = "獨立"
* item[1].answerOption[1].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[1].answerOption[1].valueCoding.code = #assisted
* item[1].answerOption[1].valueCoding.display = "需協助"
* item[1].answerOption[2].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[1].answerOption[2].valueCoding.code = #dependent
* item[1].answerOption[2].valueCoding.display = "依賴"


