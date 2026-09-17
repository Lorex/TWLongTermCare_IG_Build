Instance: hn-pain-verbal-example
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "居家護理－疼痛評估可以言語範例"
Description: "示範疼痛評估結構與未作答欄位。資料為虛構。"
* meta.profile[0] = Canonical(HNPainEvaluationsResponse)
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/hn-painevaluations"
* status = #completed
* authored = "2025-12-08T09:00:00+08:00"
* subject = Reference(hn-patient-example)
* extension[0].url = Canonical(ExtHNEpisode)
* extension[0].valueReference = Reference(hn-episode-example)
* item[0].linkId = "Date"
* item[0].answer[0].valueDate = "2025-12-08"
* item[1].linkId = "NurseID"
* item[1].answer[0].valueString = "B123456789"
* item[2].linkId = "Scale"
* item[2].answer.valueCoding = HNAnswerCS#cf2f51c4dab7b "可以言語"
* item[4].linkId = "IsTemporary"
* item[4].answer.valueCoding = HNAnswerCS#c0c70665b6eb6 "否"
* item[3].linkId = "Questions"
* item[3].item[0].linkId = "Questions.qc6065ee9"
* item[3].item[0].item[0].linkId = "Questions.qc6065ee9.Answer"
* item[3].item[0].item[0].answer.valueString = "左腳底"
* item[3].item[1].linkId = "Questions.qabb84b45"
* item[3].item[1].item[0].linkId = "Questions.qabb84b45.Answer"
* item[3].item[1].item[0].answer.valueString = "3"
* item[3].item[2].linkId = "Questions.q09558b2c"
* item[3].item[2].item[0].linkId = "Questions.q09558b2c.Answer"
* item[3].item[2].item[0].answer.valueString = "清晨"
* item[3].item[3].linkId = "Questions.q62ecf378"
* item[3].item[3].item[0].linkId = "Questions.q62ecf378.Answer"
* item[3].item[3].item[0].answer.valueString = "痠痛"
* item[3].item[4].linkId = "Questions.q3ae9ab7d"
* item[3].item[4].item[0].linkId = "Questions.q3ae9ab7d.Answer"
* item[3].item[4].item[0].answer.valueString = "可用言語表達"
