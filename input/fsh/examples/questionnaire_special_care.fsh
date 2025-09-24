Instance: ltc-questionnaire-special-care
InstanceOf: LTCQuestionnaire
Title: "特殊複雜照護需要問卷"
Description: "CMS評估表中特殊複雜照護需要問卷"
Usage: #example
* url = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-special-care"
* name = "LTCQuestionnaireSpecialCare"
* status = #active
* version = "0.3.0"
* date = "2024-09-01"
* publisher = "LTC-IG TW"
* item[0].linkId = "special-care-1"
* item[0].type = #boolean
* item[0].text = "是否需要特殊醫療照護"
* item[1].linkId = "special-care-2"
* item[1].type = #boolean
* item[1].text = "是否需要復健治療"


