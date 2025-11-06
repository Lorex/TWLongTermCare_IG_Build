Profile: EpisodeOfCareTWLTCCaseSDK
Parent: EpisodeOfCare
Id: EpisodeOfCare-TW-LTC-Case-SDK
Title: "長照 SDK－長照案件"
Description: "對應 SDK r1：案件流水號、最後更新、個案狀態、開/結案、主責中心/單位、個管/電話等。"
* ^url = "https://ltc-ig.fhir.tw/StructureDefinition/EpisodeOfCare-TW-LTC-Case-SDK"
* ^version = "0.1.0"
* ^status = #draft
* status 1..1 MS
* status from VS_TW_LTC_CaseStatus_SDK (required)
* period 1..1 MS
* period.start 1..1 MS
* period.end 0..1
* patient 1..1 MS
* patient only Reference(TWCorePatient)
* managingOrganization 1..1 MS
* managingOrganization only Reference(TWCoreOrganization)
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier 1..* MS
* identifier contains caseSerial 1..1 MS
* identifier[caseSerial].system 1..1 MS
* identifier[caseSerial].system = "https://ltc-ig.fhir.tw/identifier/sdk/r1.1-case-serial"
* identifier[caseSerial].value 1..1 MS
