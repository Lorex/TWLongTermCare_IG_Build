Instance: hn-adls-example
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "居家護理－日常生活功能評估範例"
Description: "示範日常生活功能評估結構與未作答欄位。資料為虛構。"
* meta.profile[0] = Canonical(HNADLsResponse)
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/hn-adls"
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
* item[2].item[0].linkId = "Questions.q46787535"
* item[2].item[0].item[0].linkId = "Questions.q46787535.Answer"
* item[2].item[1].linkId = "Questions.q0bc7e44d"
* item[2].item[1].item[0].linkId = "Questions.q0bc7e44d.Answer"
* item[2].item[2].linkId = "Questions.qb93b932f"
* item[2].item[2].item[0].linkId = "Questions.qb93b932f.Answer"
* item[2].item[3].linkId = "Questions.q96220a06"
* item[2].item[3].item[0].linkId = "Questions.q96220a06.Answer"
* item[2].item[4].linkId = "Questions.q92ee129c"
* item[2].item[4].item[0].linkId = "Questions.q92ee129c.Answer"
* item[2].item[5].linkId = "Questions.qb8f96793"
* item[2].item[5].item[0].linkId = "Questions.qb8f96793.Answer"
* item[2].item[6].linkId = "Questions.q1cb17d5b"
* item[2].item[6].item[0].linkId = "Questions.q1cb17d5b.Answer"
* item[2].item[7].linkId = "Questions.qd949ce2d"
* item[2].item[7].item[0].linkId = "Questions.qd949ce2d.Answer"
* item[2].item[8].linkId = "Questions.qfe7de24a"
* item[2].item[8].item[0].linkId = "Questions.qfe7de24a.Answer"
* item[2].item[9].linkId = "Questions.q13cca4d4"
* item[2].item[9].item[0].linkId = "Questions.q13cca4d4.Answer"
