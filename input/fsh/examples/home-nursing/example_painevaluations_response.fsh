Instance: hn-painevaluations-example
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "居家護理－疼痛評估範例"
Description: "示範疼痛評估結構與未作答欄位。資料為虛構。"
* meta.profile[0] = Canonical(HNPainEvaluationsResponse)
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/hn-painevaluations"
* status = #in-progress
* authored = "2025-12-08T09:00:00+08:00"
* subject = Reference(hn-patient-example)
* extension[0].url = Canonical(ExtHNEpisode)
* extension[0].valueReference = Reference(hn-episode-example)
* item[0].linkId = "Date"
* item[0].answer[0].valueDate = "2025-12-08"
* item[1].linkId = "NurseID"
* item[1].answer[0].valueString = "B123456789"
* item[3].linkId = "Scale"
* item[3].answer[0].valueCoding = HNAnswerCS#cf2f51c4dab7b "可以言語"
* item[2].linkId = "Statement"
* item[2].answer.valueString = "個案本次無法配合評估"
