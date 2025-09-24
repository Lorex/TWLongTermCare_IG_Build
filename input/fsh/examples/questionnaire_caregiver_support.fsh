Instance: ltc-questionnaire-caregiver-support
InstanceOf: LTCQuestionnaire
Title: "照顧者支持問卷"
Description: "CMS評估表中照顧者支持問卷"
Usage: #example
* url = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-caregiver-support"
* name = "LTCQuestionnaireCaregiverSupport"
* status = #active
* item[0].linkId = "caregiver-support-1"
* item[0].type = #choice
* item[0].text = "目前獲得的支持"
* item[0].answerOption[0].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[0].answerOption[0].valueCoding.code = #adequate
* item[0].answerOption[0].valueCoding.display = "充足"
* item[1].linkId = "caregiver-support-2"
* item[1].type = #boolean
* item[1].text = "額外支持需求"


