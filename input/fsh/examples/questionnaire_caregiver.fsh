Instance: ltc-questionnaire-caregiver
InstanceOf: LTCQuestionnaire
Title: "照顧者問卷"
Description: "轉介流程中照顧者問卷"
Usage: #example
* url = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-caregiver"
* name = "LTCQuestionnaireCaregiver"
* status = #active
* item[0].linkId = "caregiver-1"
* item[0].type = #choice
* item[0].text = "主要照顧者關係"
* item[0].answerOption[0].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[0].answerOption[0].valueCoding.code = #spouse
* item[0].answerOption[0].valueCoding.display = "配偶"
* item[0].answerOption[1].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[0].answerOption[1].valueCoding.code = #child
* item[0].answerOption[1].valueCoding.display = "子女"
* item[0].answerOption[2].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[0].answerOption[2].valueCoding.code = #other
* item[0].answerOption[2].valueCoding.display = "其他"
* item[1].linkId = "caregiver-2"
* item[1].type = #choice
* item[1].text = "照顧能力"
* item[1].answerOption[0].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[1].answerOption[0].valueCoding.code = #limited
* item[1].answerOption[0].valueCoding.display = "有限"


