Instance: ltc-communication-servicea-example
InstanceOf: LTCCommunicationServiceA
Title: "長照－照管電訪活動（Communication）範例"
Description: "長照 SDK 照管SERVICE_A電訪的範例，展示如何記錄照顧管理服務活動。"
Usage: #example
* status = #completed
* sent = "2025-07-14T10:30:00+08:00"
* category = http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-service-activity#TEL
* topic = http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-service-item#AA02
* subject = Reference(ltc-patient-sdk-example)
* extension[caseNo].valueString = "106305420"
* note[0].text = "評估人員：吳麗竹；提醒：下週安排家訪。"
