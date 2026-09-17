Instance: hn-casesummary-example
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "居家護理－需求摘要範例"
Description: "示範需求摘要結構與未作答欄位。資料為虛構。"
* meta.profile[0] = Canonical(HNCaseSummaryResponse)
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/hn-casesummary"
* status = #in-progress
* authored = "2025-12-08T09:00:00+08:00"
* subject = Reference(hn-patient-example)
* extension[0].url = Canonical(ExtHNEpisode)
* extension[0].valueReference = Reference(hn-episode-example)
* item[0].linkId = "CaseID"
* item[0].answer[0].valueString = "A123456789"
* item[1].linkId = "EndDate"
* item[1].answer[0].valueDate = "2025-12-08"
* item[2].linkId = "Date"
* item[2].answer[0].valueDate = "2025-12-08"
* item[3].linkId = "NurseID"
* item[3].answer[0].valueString = "B123456789"
* item[4].linkId = "Summary"
* item[4].item[0].linkId = "Summary.QuestionType"
* item[4].item[0].answer[0].valueCoding = HNAnswerCS#c99ac875023d2 "功能狀態"
* item[4].item[1].linkId = "Summary.Question"
* item[4].item[1].answer[0].valueString = "需求項目範例"
* item[4].item[2].linkId = "Summary.Answer"
