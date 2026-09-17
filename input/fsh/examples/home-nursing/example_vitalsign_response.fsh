Instance: hn-vitalsign-example
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "居家護理－生命徵象範例"
Description: "示範生命徵象結構與未作答欄位。資料為虛構。"
* meta.profile[0] = Canonical(HNVitalSignResponse)
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/hn-vitalsign"
* status = #in-progress
* authored = "2025-12-08T09:00:00+08:00"
* subject = Reference(hn-patient-example)
* extension[0].url = Canonical(ExtHNEpisode)
* extension[0].valueReference = Reference(hn-episode-example)
* item[0].linkId = "CaseID"
* item[0].answer[0].valueString = "A123456789"
* item[1].linkId = "EndDate"
* item[1].answer[0].valueDate = "2025-12-08"
* item[2].linkId = "RecordDate"
* item[2].answer[0].valueDate = "2025-12-08"
* item[3].linkId = "RecordTime"
* item[3].answer[0].valueTime = "09:00:00"
* item[4].linkId = "Temperature"
* item[4].answer[0].valueDecimal = 36.5
* item[5].linkId = "Pulse"
* item[5].answer[0].valueInteger = 77
* item[6].linkId = "Respiration"
* item[6].answer[0].valueInteger = 16
* item[7].linkId = "BloodPressure1"
* item[7].answer[0].valueInteger = 112
* item[8].linkId = "BloodPressure2"
* item[8].answer[0].valueInteger = 73
* item[9].linkId = "BloodGlucose"
* item[9].answer[0].valueInteger = 120
* item[10].linkId = "BloodOxygen"
* item[10].answer[0].valueInteger = 98
* item[11].linkId = "CreateID"
* item[11].answer[0].valueString = "B123456789"
