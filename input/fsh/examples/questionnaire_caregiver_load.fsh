Instance: ltc-questionnaire-caregiver-load
InstanceOf: LTCQuestionnaire
Title: "照顧者負荷問卷"
Description: "CMS評估表中照顧者負荷問卷"
Usage: #example
* url = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-caregiver-load"
* name = "LTCQuestionnaireCaregiverLoad"
* status = #active
* item[0].linkId = "caregiver-load-1"
* item[0].type = #choice
* item[0].text = "照顧負擔程度"
* item[0].answerOption[0].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[0].answerOption[0].valueCoding.code = #light
* item[0].answerOption[0].valueCoding.display = "輕"
* item[0].answerOption[1].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[0].answerOption[1].valueCoding.code = #moderate
* item[0].answerOption[1].valueCoding.display = "中"
* item[0].answerOption[2].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[0].answerOption[2].valueCoding.code = #heavy
* item[0].answerOption[2].valueCoding.display = "重"
* item[1].linkId = "caregiver-load-2"
* item[1].type = #boolean
* item[1].text = "需要支援服務"


