Instance: hn-measures-example
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "居家護理－照護計畫措施範例"
Description: "示範照護計畫措施結構與未作答欄位。資料為虛構。"
* meta.profile[0] = Canonical(HNMeasuresResponse)
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/hn-measures"
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
* item[6].linkId = "MeasureCreateDate"
* item[6].answer[0].valueDate = "2025-12-08"
* item[7].linkId = "MeasureContent"
* item[7].answer[0].valueString = "每日檢查走道障礙物"
* item[8].linkId = "NurseID"
* item[8].answer[0].valueString = "B123456789"
* item[9].linkId = "MeasureStopDate"
* item[9].answer[0].valueDate = "2025-12-09"
* item[10].linkId = "MeasureStopContent"
* item[10].answer[0].valueString = "改採個別移位協助措施"
* item[11].linkId = "MeasureStopNurseID"
* item[11].answer[0].valueString = "B123456789"
