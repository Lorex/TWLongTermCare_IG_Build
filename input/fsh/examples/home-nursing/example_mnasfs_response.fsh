Instance: hn-mnasfs-example
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "居家護理－簡易營養評估範例"
Description: "示範簡易營養評估結構與未作答欄位。資料為虛構。"
* meta.profile[0] = Canonical(HNMNASFsResponse)
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/hn-mnasfs"
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
* item[2].item[0].linkId = "Questions.q9eab1f0b"
* item[2].item[0].item[0].linkId = "Questions.q9eab1f0b.Answer"
* item[2].item[1].linkId = "Questions.qc9c61c04"
* item[2].item[1].item[0].linkId = "Questions.qc9c61c04.Answer"
* item[2].item[2].linkId = "Questions.qb3e55f55"
* item[2].item[2].item[0].linkId = "Questions.qb3e55f55.Answer"
* item[2].item[3].linkId = "Questions.q99f746cb"
* item[2].item[3].item[0].linkId = "Questions.q99f746cb.Answer"
* item[2].item[4].linkId = "Questions.qa4ab5839"
* item[2].item[4].item[0].linkId = "Questions.qa4ab5839.Answer"
* item[2].item[5].linkId = "Questions.q6073598b"
* item[2].item[5].item[0].linkId = "Questions.q6073598b.Answer"
* item[2].item[6].linkId = "Questions.qd38a556c"
* item[2].item[6].item[0].linkId = "Questions.qd38a556c.Answer"
