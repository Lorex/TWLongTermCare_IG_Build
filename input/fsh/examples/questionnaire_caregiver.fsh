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
* item[0].text = "是否有照顧者"
* item[0].answerOption[0].valueString = "否"
* item[0].answerOption[1].valueString = "是，固定"
* item[0].answerOption[2].valueString = "是，無固定"
* item[1].linkId = "caregiver-2"
* item[1].type = #choice
* item[1].text = "主要照顧者關係"
// 應填入以下字串之一：spouse (配偶) | child (子女) | other (其他) 
* item[1].answerOption[0].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
* item[1].answerOption[0].valueCoding.code = #SPS
* item[1].answerOption[0].valueCoding.display = "spouse"
* item[1].answerOption[1].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
* item[1].answerOption[1].valueCoding.code = #CHILD
* item[1].answerOption[1].valueCoding.display = "child"
* item[1].answerOption[2].valueCoding.system = "http://terminology.hl7.org/CodeSystem/v2-0131"
* item[1].answerOption[2].valueCoding.code = #O
* item[1].answerOption[2].valueCoding.display = "other"


