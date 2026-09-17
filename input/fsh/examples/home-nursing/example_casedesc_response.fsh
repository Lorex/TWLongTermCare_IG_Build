Instance: hn-casedesc-example
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "居家護理－共照紀錄範例"
Description: "示範共照紀錄結構與未作答欄位。資料為虛構。"
* meta.profile[0] = Canonical(HNCaseDescResponse)
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/hn-casedesc"
* status = #in-progress
* authored = "2025-12-08T09:00:00+08:00"
* subject = Reference(hn-patient-example)
* extension[0].url = Canonical(ExtHNEpisode)
* extension[0].valueReference = Reference(hn-episode-example)
* item[0].linkId = "CaseID"
* item[0].answer[0].valueString = "A123456789"
* item[1].linkId = "EndDate"
* item[1].answer[0].valueDate = "2025-12-08"
* item[2].linkId = "Date"
* item[2].answer[0].valueDate = "2025-12-08"
* item[3].linkId = "Time"
* item[3].answer[0].valueTime = "09:00:00"
* item[4].linkId = "Time2"
* item[4].answer[0].valueTime = "09:00:00"
* item[5].linkId = "MedicalName"
* item[5].answer[0].valueString = "王美玲"
* item[6].linkId = "Title"
* item[6].item[0].linkId = "Title.Value"
* item[6].item[0].answer[0].valueCoding = HNAnswerCS#cdbb50d002e8b "護理師"
* item[7].linkId = "Statement"
* item[7].answer[0].valueString = "已說明居家照護注意事項"
