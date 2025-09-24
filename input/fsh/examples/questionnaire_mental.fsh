Instance: ltc-questionnaire-mental
InstanceOf: LTCQuestionnaire
Title: "認知功能與精神狀態問卷"
Description: "CMS評估表中認知功能與精神狀態問卷"
Usage: #example
* url = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-mental"
* name = "LTCQuestionnaireMental"
* status = #active
* item[0].linkId = "mental-1"
* item[0].type = #choice
* item[0].text = "認知功能評估"
* item[0].answerOption[0].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[0].answerOption[0].valueCoding.code = #mild-impairment
* item[0].answerOption[0].valueCoding.display = "輕度損害"
* item[0].answerOption[1].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[0].answerOption[1].valueCoding.code = #normal
* item[0].answerOption[1].valueCoding.display = "正常"
* item[0].answerOption[2].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[0].answerOption[2].valueCoding.code = #moderate-impairment
* item[0].answerOption[2].valueCoding.display = "中度以上損害"
* item[1].linkId = "mental-2"
* item[1].type = #choice
* item[1].text = "精神狀態"
* item[1].answerOption[0].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[1].answerOption[0].valueCoding.code = #stable
* item[1].answerOption[0].valueCoding.display = "穩定"


