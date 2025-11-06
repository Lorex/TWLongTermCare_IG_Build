Profile: CommunicationTWLTCIncidentCS100
Parent: CommunicationTWLTCIncident
Id: Communication-TW-LTC-Incident-CS100
Title: "長照 SDK－異常服務紀錄（CS100）"
Description: "對應 CS100 報表/頁面使用之事件/異常通報記錄；在通用 Incident Base 之上僅標示 CS100 情境，便於與 SDK/其他情境區分。"
* ^url = "https://ltc-ig.fhir.tw/StructureDefinition/Communication-TW-LTC-Incident-CS100"
* ^version = "0.1.0"
* ^status = #draft

* status 1..1 MS
* subject 1..1 MS
* subject only Reference(TWCorePatient)
* sender 0..1
* sender only Reference(TWCorePractitionerRole or TWCorePractitioner)
* recipient 0..*
* recipient only Reference(TWCoreOrganization or TWCorePractitionerRole or TWCorePractitioner)
* sent 1..1
* reasonCode 1..*
* payload 1..* MS
* payload.content[x] only string
* about 0..*
* about only Reference(EpisodeOfCare or CarePlan)
