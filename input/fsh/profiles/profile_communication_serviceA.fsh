Profile: LTCCommunicationServiceA
Id: LTC-Communication-ServiceA
Parent: Communication
Title: "長照 SDK－服務活動紀錄（SERVICE_A）"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 Communication Resource，以呈現長照服務活動紀錄，包含電訪、家訪等過程資料。"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/LTC-Communication-ServiceA"
* ^version = "0.1.0"
* ^status = #draft
* ^publisher = "LTC SDK Working Group"
* status 1..1
* sent 0..1
* received 0..1
* category from http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-service-activity (preferred)
* topic from http://ltc-ig.fhir.tw/ValueSet/vs-tw-ltc-service-item (preferred)
* extension contains
    ExtTWLTCExportCaseNo named caseNo 0..1
