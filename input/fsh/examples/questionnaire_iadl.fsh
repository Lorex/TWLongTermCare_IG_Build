Instance: ltc-questionnaire-iadl
InstanceOf: LTCQuestionnaire
Title: "工具性日常活動功能問卷"
Description: "CMS評估表中IADL問卷"
Usage: #example
* url = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-iadl"
* name = "LTCQuestionnaireIADL"
* status = #active
* item[0].linkId = "iadl-1"
* item[0].type = #choice
* item[0].text = "使用電話"
* item[0].answerOption[0].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[0].answerOption[0].valueCoding.code = #independent
* item[0].answerOption[0].valueCoding.display = "獨立"
* item[0].answerOption[1].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[0].answerOption[1].valueCoding.code = #assisted
* item[0].answerOption[1].valueCoding.display = "需協助"
* item[0].answerOption[2].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[0].answerOption[2].valueCoding.code = #dependent
* item[0].answerOption[2].valueCoding.display = "依賴"
* item[1].linkId = "iadl-2"
* item[1].type = #choice
* item[1].text = "購物"

* item[2].linkId = "iadl-3"
* item[2].type = #choice
* item[2].text = "備餐"
* item[2].answerOption[0].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[2].answerOption[0].valueCoding.code = #independent
* item[2].answerOption[0].valueCoding.display = "獨立"
* item[2].answerOption[1].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[2].answerOption[1].valueCoding.code = #assisted
* item[2].answerOption[1].valueCoding.display = "需協助"
* item[2].answerOption[2].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[2].answerOption[2].valueCoding.code = #dependent
* item[2].answerOption[2].valueCoding.display = "依賴"

* item[3].linkId = "iadl-4"
* item[3].type = #choice
* item[3].text = "處理家務"
* item[3].answerOption[0].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[3].answerOption[0].valueCoding.code = #independent
* item[3].answerOption[0].valueCoding.display = "獨立"
* item[3].answerOption[1].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[3].answerOption[1].valueCoding.code = #assisted
* item[3].answerOption[1].valueCoding.display = "需協助"
* item[3].answerOption[2].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[3].answerOption[2].valueCoding.code = #dependent
* item[3].answerOption[2].valueCoding.display = "依賴"

* item[4].linkId = "iadl-5"
* item[4].type = #choice
* item[4].text = "洗衣服"
* item[4].answerOption[0].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[4].answerOption[0].valueCoding.code = #independent
* item[4].answerOption[0].valueCoding.display = "獨立"
* item[4].answerOption[1].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[4].answerOption[1].valueCoding.code = #assisted
* item[4].answerOption[1].valueCoding.display = "需協助"
* item[4].answerOption[2].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[4].answerOption[2].valueCoding.code = #dependent
* item[4].answerOption[2].valueCoding.display = "依賴"

* item[5].linkId = "iadl-6"
* item[5].type = #choice
* item[5].text = "外出"
* item[5].answerOption[0].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[5].answerOption[0].valueCoding.code = #independent
* item[5].answerOption[0].valueCoding.display = "獨立"
* item[5].answerOption[1].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[5].answerOption[1].valueCoding.code = #assisted
* item[5].answerOption[1].valueCoding.display = "需協助"
* item[5].answerOption[2].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[5].answerOption[2].valueCoding.code = #dependent
* item[5].answerOption[2].valueCoding.display = "依賴"

* item[6].linkId = "iadl-7"
* item[6].type = #choice
* item[6].text = "服用藥物"
* item[6].answerOption[0].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[6].answerOption[0].valueCoding.code = #independent
* item[6].answerOption[0].valueCoding.display = "獨立"
* item[6].answerOption[1].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[6].answerOption[1].valueCoding.code = #assisted
* item[6].answerOption[1].valueCoding.display = "需協助"
* item[6].answerOption[2].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[6].answerOption[2].valueCoding.code = #dependent
* item[6].answerOption[2].valueCoding.display = "依賴"

* item[7].linkId = "iadl-8"
* item[7].type = #choice
* item[7].text = "處理財務能力"
* item[7].answerOption[0].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[7].answerOption[0].valueCoding.code = #independent
* item[7].answerOption[0].valueCoding.display = "獨立"
* item[7].answerOption[1].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[7].answerOption[1].valueCoding.code = #assisted
* item[7].answerOption[1].valueCoding.display = "需協助"
* item[7].answerOption[2].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[7].answerOption[2].valueCoding.code = #dependent
* item[7].answerOption[2].valueCoding.display = "依賴"
* item[1].answerOption[0].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[1].answerOption[0].valueCoding.code = #independent
* item[1].answerOption[0].valueCoding.display = "獨立"
* item[1].answerOption[1].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[1].answerOption[1].valueCoding.code = #assisted
* item[1].answerOption[1].valueCoding.display = "需協助"
* item[1].answerOption[2].valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[1].answerOption[2].valueCoding.code = #dependent
* item[1].answerOption[2].valueCoding.display = "依賴"


