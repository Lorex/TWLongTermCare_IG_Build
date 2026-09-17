Instance: hn-healthyhabits-example
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "居家護理－健康紀錄評估範例"
Description: "示範健康紀錄評估結構與未作答欄位。資料為虛構。"
* meta.profile[0] = Canonical(HNHealthyHabitsResponse)
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/hn-healthyhabits"
* status = #in-progress
* authored = "2025-12-08T09:00:00+08:00"
* subject = Reference(hn-patient-example)
* extension[0].url = Canonical(ExtHNEpisode)
* extension[0].valueReference = Reference(hn-episode-example)
* item[0].linkId = "Date"
* item[0].answer[0].valueDate = "2025-12-08"
* item[1].linkId = "NurseID"
* item[1].answer[0].valueString = "B123456789"
* item[2].linkId = "IsSmoking"
* item[2].answer[0].valueCoding = HNAnswerCS#ce7db7791df8d "不吸菸"
* item[3].linkId = "IsAlcohol"
* item[3].answer[0].valueCoding = HNAnswerCS#ca7ee52d8897f "不喝酒"
* item[4].linkId = "IsBetelNut"
* item[4].answer[0].valueCoding = HNAnswerCS#c9ff7aa9a2829 "不嚼"
* item[5].linkId = "IsAllergy"
* item[5].answer[0].valueCoding = HNAnswerCS#cda5930e53d54 "無"
* item[6].linkId = "IsAllergyDrug"
* item[6].answer[0].valueCoding = HNAnswerCS#cda5930e53d54 "無"
* item[7].linkId = "Vaccination"
* item[7].item[0].linkId = "Vaccination.Answer"
* item[7].item[0].answer[0].valueCoding = HNAnswerCS#cda5930e53d54 "無"
