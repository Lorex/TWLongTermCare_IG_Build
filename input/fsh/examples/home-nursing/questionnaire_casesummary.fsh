Instance: hn-casesummary
InstanceOf: LTCQuestionnaire
Usage: #definition
Title: "居家護理－需求摘要問卷"
Description: "V5.0.16 需求摘要的問題結構與輸入型態。"
* url = "http://ltc-ig.fhir.tw/Questionnaire/hn-casesummary"
* version = "5.0.16"
* name = "HNCaseSummaryQuestionnaire"
* title = "居家護理－需求摘要"
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
* item[2].text = "紀錄日期"
* item[2].type = #date
* item[2].required = true
* item[2].repeats = false
* item[3].linkId = "NurseID"
* item[3].text = "護理人員身分證字號"
* item[3].type = #string
* item[3].required = true
* item[3].repeats = false
* item[3].maxLength = 10
* item[4].linkId = "Summary"
* item[4].text = "問題列表與摘要"
* item[4].type = #group
* item[4].required = true
* item[4].repeats = false
* item[4].item[0].linkId = "Summary.QuestionType"
* item[4].item[0].text = "需求類型"
* item[4].item[0].type = #choice
* item[4].item[0].required = true
* item[4].item[0].repeats = false
* item[4].item[0].answerValueSet = "http://ltc-ig.fhir.tw/ValueSet/hn-vs-bc943cb432ce"
* item[4].item[1].linkId = "Summary.Question"
* item[4].item[1].text = "需求項目"
* item[4].item[1].type = #string
* item[4].item[1].required = true
* item[4].item[1].repeats = false
* item[4].item[2].linkId = "Summary.Answer"
* item[4].item[2].text = "需求摘要備註"
* item[4].item[2].type = #string
* item[4].item[2].required = false
* item[4].item[2].repeats = false
* item[4].item[2].maxLength = 100
