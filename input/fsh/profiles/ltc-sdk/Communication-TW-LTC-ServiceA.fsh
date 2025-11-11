Profile: CommunicationTWLTCServiceA
Id: Communication-TW-LTC-ServiceA
Parent: Communication
Title: "長照 SDK－服務活動紀錄（SERVICE_A）"
Description: "電訪/家訪等過程紀錄；可作為申報佐證 supportingInfo。"
* status 1..1
* sent 0..1
* received 0..1
* category from https://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-service-activity (preferred)
* topic from https://ltc-ig.fhir.tw/ValueSet/tw-ltc-service-item-sdk (preferred)
* extension contains
    ExtTWLTCExportCaseNo named caseNo 0..1
