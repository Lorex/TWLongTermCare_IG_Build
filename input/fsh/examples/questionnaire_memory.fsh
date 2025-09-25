Instance: ltc-questionnaire-memory
InstanceOf: LTCQuestionnaire
Title: "短期記憶力問卷"
Description: "CMS評估表中短期記憶力問卷"
Usage: #example
* url = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-memory"
* name = "LTCQuestionnaireMemory"
* status = #active

* item[0].linkId = "D0"
* item[0].type = #string
* item[0].text = "個案短期記憶力回答狀態"

* item[1].linkId = "D1a"
* item[1].type = #integer
* item[1].text = "個案能重複的詞數"

* item[2].linkId = "D1b1"
* item[2].type = #string
* item[2].text = "回憶起「襪子」"

* item[3].linkId = "D1b2"
* item[3].type = #string
* item[3].text = "回憶起「藍色」"

* item[4].linkId = "D1b3"
* item[4].type = #string
* item[4].text = "回憶起「床鋪」"

