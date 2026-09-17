Instance: hn-pain-nonverbal-example
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "居家護理－疼痛評估無法言語範例"
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
* item[2].answer.valueCoding = HNAnswerCS#cc178d12c4348 "無法言語"
* item[4].linkId = "IsTemporary"
* item[4].answer.valueCoding = HNAnswerCS#c0c70665b6eb6 "否"
* item[3].linkId = "QuestionsNot"
* item[3].item[0].linkId = "QuestionsNot.qd14007fb"
* item[3].item[0].item[0].linkId = "QuestionsNot.qd14007fb.Answer"
* item[3].item[0].item[0].answer.valueString = "正常"
* item[3].item[1].linkId = "QuestionsNot.qe42750dd"
* item[3].item[1].item[0].linkId = "QuestionsNot.qe42750dd.Answer"
* item[3].item[1].item[0].answer.valueString = "沒有"
* item[3].item[2].linkId = "QuestionsNot.q3e683be4"
* item[3].item[2].item[0].linkId = "QuestionsNot.q3e683be4.Answer"
* item[3].item[2].item[0].answer.valueString = "微笑或是沒有表情"
* item[3].item[3].linkId = "QuestionsNot.q463fccdc"
* item[3].item[3].item[0].linkId = "QuestionsNot.q463fccdc.Answer"
* item[3].item[3].item[0].answer.valueString = "放鬆"
* item[3].item[4].linkId = "QuestionsNot.q9f3bcfc5"
* item[3].item[4].item[0].linkId = "QuestionsNot.q9f3bcfc5.Answer"
* item[3].item[4].item[0].answer.valueString = "不需要安撫"
