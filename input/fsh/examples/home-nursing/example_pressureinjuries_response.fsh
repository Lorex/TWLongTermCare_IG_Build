Instance: hn-pressureinjuries-example
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "居家護理－壓力性損傷危險評估範例"
Description: "示範壓力性損傷危險評估結構與未作答欄位。資料為虛構。"
* meta.profile[0] = Canonical(HNPressureInjuriesResponse)
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/hn-pressureinjuries"
* status = #in-progress
* authored = "2025-12-08T09:00:00+08:00"
* subject = Reference(hn-patient-example)
* extension[0].url = Canonical(ExtHNEpisode)
* extension[0].valueReference = Reference(hn-episode-example)
* item[0].linkId = "Date"
* item[0].answer[0].valueDate = "2025-12-08"
* item[1].linkId = "NurseID"
* item[1].answer[0].valueString = "B123456789"
* item[2].linkId = "Questions"
* item[2].item[0].linkId = "Questions.q77f132a8"
* item[2].item[0].item[0].linkId = "Questions.q77f132a8.Answer"
* item[2].item[1].linkId = "Questions.qb093cea2"
* item[2].item[1].item[0].linkId = "Questions.qb093cea2.Answer"
* item[2].item[2].linkId = "Questions.qda68c82c"
* item[2].item[2].item[0].linkId = "Questions.qda68c82c.Answer"
* item[2].item[3].linkId = "Questions.qb03d6393"
* item[2].item[3].item[0].linkId = "Questions.qb03d6393.Answer"
* item[2].item[4].linkId = "Questions.q68dfbe5f"
* item[2].item[4].item[0].linkId = "Questions.q68dfbe5f.Answer"
* item[2].item[5].linkId = "Questions.q52107185"
* item[2].item[5].item[0].linkId = "Questions.q52107185.Answer"
