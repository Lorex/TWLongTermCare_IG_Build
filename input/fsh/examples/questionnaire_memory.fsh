Instance: ltc-questionnaire-memory
InstanceOf: LTCQuestionnaire
Title: "短期記憶力問卷"
Description: "CMS評估表中短期記憶力問卷"
Usage: #example
* url = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-memory"
* name = "LTCQuestionnaireMemory"
* status = #active
* item[0].linkId = "memory-1"
* item[0].type = #boolean
* item[0].text = "能否記住剛說過的話"
* item[1].linkId = "memory-2"
* item[1].type = #boolean
* item[1].text = "是否記得熟悉的人名"


