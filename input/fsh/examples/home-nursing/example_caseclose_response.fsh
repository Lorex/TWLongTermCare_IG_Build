Instance: hn-caseclose-example
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "居家護理－個案結案範例"
Description: "示範個案結案結構與未作答欄位。資料為虛構。"
* meta.profile[0] = Canonical(HNCaseCloseResponse)
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/hn-caseclose"
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
* item[3].linkId = "UserID"
* item[3].answer[0].valueString = "B123456789"
* item[4].linkId = "Reason"
* item[4].item[0].linkId = "Reason.Value"
* item[4].item[0].answer[0].valueCoding = HNAnswerCS#c82d3130fa582 "死亡"
