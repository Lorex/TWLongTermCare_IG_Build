Instance: ltc-questionnaire-communication
InstanceOf: LTCQuestionnaire
Title: "溝通表達能力問卷"
Description: "CMS評估表中溝通表達能力問卷"
Usage: #example
* url = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-communication"
* name = "LTCQuestionnaireCommunication"
* status = #active
* item[0].linkId = "communication-1"
* item[0].type = #boolean
* item[0].text = "是否能表達基本需求"
* item[1].linkId = "communication-2"
* item[1].type = #choice
* item[1].text = "語言理解能力"
* item[1].answerOption[0].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[1].answerOption[0].valueCoding.code = #good
* item[1].answerOption[0].valueCoding.display = "良好"


