Instance: hn-targets-example
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "居家護理－照護計畫目標範例"
Description: "示範照護計畫目標結構與未作答欄位。資料為虛構。"
* meta.profile[0] = Canonical(HNTargetsResponse)
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/hn-targets"
* status = #in-progress
* authored = "2025-12-08T09:00:00+08:00"
* subject = Reference(hn-patient-example)
* extension[0].url = Canonical(ExtHNEpisode)
* extension[0].valueReference = Reference(hn-episode-example)
* item[0].linkId = "CaseID"
* item[0].answer[0].valueString = "A123456789"
* item[1].linkId = "EndDate"
* item[1].answer[0].valueDate = "2025-12-08"
* item[2].linkId = "SummaryCreateDate"
* item[2].answer[0].valueDate = "2025-12-08"
* item[3].linkId = "Summary"
* item[3].answer[0].valueString = "跌倒問題"
* item[4].linkId = "SummaryAnswer"
* item[5].linkId = "TargetStatement"
* item[5].answer[0].valueString = "降低跌倒風險"
* item[6].linkId = "TargetCreateDate"
* item[6].answer[0].valueDate = "2025-12-08"
* item[7].linkId = "EstimatedDate"
* item[7].answer[0].valueDate = "2026-01-08"
* item[8].linkId = "IsMainTarget"
* item[8].answer[0].valueBoolean = false
* item[9].linkId = "NurseID"
* item[9].answer[0].valueString = "B123456789"
