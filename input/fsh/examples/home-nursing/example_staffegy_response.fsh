Instance: hn-staffegy-example
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "居家護理－人員緊急事件範例"
Description: "示範人員緊急事件結構與未作答欄位。資料為虛構。"
* meta.profile[0] = Canonical(HNStaffEgyResponse)
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/hn-staffegy"
* status = #in-progress
* authored = "2025-12-08T09:00:00+08:00"
* subject = Reference(hn-staff-example)
* author = Reference(hn-organization-example)
* item[0].linkId = "Title"
* item[0].item[0].linkId = "Title.Value"
* item[0].item[0].answer[0].valueCoding = HNAnswerCS#cdbb50d002e8b "護理師"
* item[1].linkId = "Name"
* item[1].answer[0].valueString = "林大文"
* item[2].linkId = "IDNo"
* item[2].answer[0].valueString = "C123456789"
* item[3].linkId = "EmergencyType"
* item[3].item[0].linkId = "EmergencyType.Value"
* item[3].item[0].answer[0].valueCoding = HNAnswerCS#c35b010f3899a "車禍"
* item[4].linkId = "Date"
* item[4].answer[0].valueDate = "2025-12-08"
* item[5].linkId = "Time"
* item[5].answer[0].valueTime = "09:00:00"
* item[6].linkId = "Reason"
* item[6].answer[0].valueString = "發生原因範例"
* item[7].linkId = "Description"
* item[7].answer[0].valueString = "事件敘述範例"
* item[8].linkId = "Process"
* item[8].answer[0].valueString = "通報及處理過程範例"
* item[9].linkId = "Report"
* item[9].answer[0].valueString = "檢討紀錄範例"
* item[10].linkId = "CreateID"
* item[10].answer[0].valueString = "3501010011"
