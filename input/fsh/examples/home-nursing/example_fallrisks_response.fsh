Instance: hn-fallrisks-example
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "居家護理－跌倒危險性評估範例"
Description: "示範跌倒危險性評估結構與未作答欄位。資料為虛構。"
* meta.profile[0] = Canonical(HNFallRisksResponse)
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/hn-fallrisks"
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
* item[2].item[0].linkId = "Questions.q2f552b4a"
* item[2].item[0].item[0].linkId = "Questions.q2f552b4a.Answer"
* item[2].item[1].linkId = "Questions.q463dc41d"
* item[2].item[1].item[0].linkId = "Questions.q463dc41d.Answer"
* item[2].item[2].linkId = "Questions.qd680c277"
* item[2].item[2].item[0].linkId = "Questions.qd680c277.Answer"
* item[2].item[3].linkId = "Questions.qc1c1fb2c"
* item[2].item[3].item[0].linkId = "Questions.qc1c1fb2c.Answer"
* item[2].item[4].linkId = "Questions.q603c2de9"
* item[2].item[4].item[0].linkId = "Questions.q603c2de9.Answer"
* item[2].item[5].linkId = "Questions.qbf720dbc"
* item[2].item[5].item[0].linkId = "Questions.qbf720dbc.Answer"
* item[2].item[6].linkId = "Questions.q6fa60520"
* item[2].item[6].item[0].linkId = "Questions.q6fa60520.Answer"
* item[2].item[7].linkId = "Questions.qe6e35ded"
* item[2].item[7].item[0].linkId = "Questions.qe6e35ded.Answer"
