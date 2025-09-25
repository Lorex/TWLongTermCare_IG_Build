Instance: ltc-questionnaire-communication
InstanceOf: LTCQuestionnaire
Title: "溝通表達能力問卷"
Description: "CMS評估表中溝通表達能力問卷"
Usage: #example
* url = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-communication"
* name = "LTCQuestionnaireCommunication"
* status = #active

* item[0].linkId = "C1"
* item[0].type = #string
* item[0].text = "個案意識狀態"

* item[1].linkId = "C2"
* item[1].type = #string
* item[1].text = "個案視力"

* item[2].linkId = "C3"
* item[2].type = #string
* item[2].text = "個案聽力"

* item[3].linkId = "C4"
* item[3].type = #string
* item[3].text = "個案表達能力"

* item[4].linkId = "C5"
* item[4].type = #string
* item[4].text = "個案理解能力"


