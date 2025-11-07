Instance: Communication-TW-LTC-ServiceA-example
InstanceOf: CommunicationTWLTCServiceA
Title: "照管SERVICE_A—電訪（示例）"
Description: "長照 SDK 照管SERVICE_A電訪的範例，展示如何記錄照顧管理服務活動。"
Usage: #example
* status = #completed
* sent = "2025-07-14T10:30:00+08:00"
* category = http://ltc-ig.fhir.tw/CodeSystem/LTCServiceActivity#TEL
* topic = https://ltc-ig.fhir.tw/CodeSystem/tw-ltc-service-item#AA02
* subject = Reference(Patient/example)
* extension[caseNo].valueString = "106305420"
* note[0].text = "評估人員：吳麗竹；提醒：下週安排家訪。"
