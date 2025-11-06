Instance: Communication-TW-LTC-ServiceA-example
InstanceOf: Communication_TW_LTC_ServiceA
Title: "照管SERVICE_A—電訪（示例）"
Usage: #example
* status = #completed
* sent = "2025-07-14T10:30:00+08:00"
* category = http://ltc-ig.fhir.tw/CodeSystem/LTCServiceActivity#TEL
* topic = ttps://ltc-ig.fhir.tw/CodeSystem/tw-ltc-service-item#OT01
* subject = Reference(Patient/example)
* extension[caseNo].valueString = "106305420"
* note[0].text = "評估人員：吳麗竹；提醒：下週安排家訪。"
