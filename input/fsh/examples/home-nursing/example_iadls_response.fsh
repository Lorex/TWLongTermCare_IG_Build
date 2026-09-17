Instance: hn-iadls-example
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "居家護理－工具性日常生活活動功能評估範例"
Description: "示範工具性日常生活活動功能評估結構與未作答欄位。資料為虛構。"
* meta.profile[0] = Canonical(HNIADLsResponse)
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/hn-iadls"
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
* item[2].item[0].linkId = "Questions.q588e1a8f"
* item[2].item[0].item[0].linkId = "Questions.q588e1a8f.Answer"
* item[2].item[1].linkId = "Questions.q1652b964"
* item[2].item[1].item[0].linkId = "Questions.q1652b964.Answer"
* item[2].item[2].linkId = "Questions.qd5905863"
* item[2].item[2].item[0].linkId = "Questions.qd5905863.Answer"
* item[2].item[3].linkId = "Questions.qdb0b2a30"
* item[2].item[3].item[0].linkId = "Questions.qdb0b2a30.Answer"
* item[2].item[4].linkId = "Questions.q578f5fe3"
* item[2].item[4].item[0].linkId = "Questions.q578f5fe3.Answer"
* item[2].item[5].linkId = "Questions.q7177787c"
* item[2].item[5].item[0].linkId = "Questions.q7177787c.Answer"
* item[2].item[6].linkId = "Questions.qbd97434e"
* item[2].item[6].item[0].linkId = "Questions.qbd97434e.Answer"
* item[2].item[7].linkId = "Questions.q62f790cc"
* item[2].item[7].item[0].linkId = "Questions.q62f790cc.Answer"
