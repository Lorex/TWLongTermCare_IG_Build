Instance: hn-caseclose
InstanceOf: LTCQuestionnaire
Usage: #definition
Title: "居家護理－個案結案問卷"
Description: "V5.0.16 個案結案的問題結構與輸入型態。"
* url = "http://ltc-ig.fhir.tw/Questionnaire/hn-caseclose"
* version = "5.0.16"
* name = "HNCaseCloseQuestionnaire"
* title = "居家護理－個案結案"
* status = #draft
* experimental = false
* date = "2025-12-08"
* item[0].linkId = "CaseID"
* item[0].text = "個案身分證字號"
* item[0].type = #string
* item[0].required = true
* item[0].repeats = false
* item[0].maxLength = 10
* item[1].linkId = "EndDate"
* item[1].text = "收案日期"
* item[1].type = #date
* item[1].required = true
* item[1].repeats = false
* item[2].linkId = "Date"
* item[2].text = "結案日期"
* item[2].type = #date
* item[2].required = true
* item[2].repeats = false
* item[3].linkId = "UserID"
* item[3].text = "結案護理人員身分證字號"
* item[3].type = #string
* item[3].required = true
* item[3].repeats = false
* item[3].maxLength = 10
* item[4].linkId = "Reason"
* item[4].text = "結案原因"
* item[4].type = #group
* item[4].required = true
* item[4].repeats = false
* item[4].item[0].linkId = "Reason.Value"
* item[4].item[0].text = "選項"
* item[4].item[0].type = #choice
* item[4].item[0].required = true
* item[4].item[0].repeats = false
* item[4].item[0].answerValueSet = "http://ltc-ig.fhir.tw/ValueSet/hn-vs-75dc5876369b"
* item[4].item[1].linkId = "Reason.Other"
* item[4].item[1].text = "補充說明"
* item[4].item[1].type = #string
* item[4].item[1].required = false
* item[4].item[1].repeats = false
* item[4].item[1].maxLength = 100
