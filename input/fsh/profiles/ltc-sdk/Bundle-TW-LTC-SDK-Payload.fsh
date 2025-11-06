Profile: BundleTWLTCSDKPayload
Parent: Bundle
Id: Bundle-TW-LTC-SDK-Payload
Title: "長照 SDK－回傳包（4合1）"
Description: "對應 SDK：bdata + r1(案件) + r2(評估) + r3(核定額度) + r4(計畫) 一次交付之集合。"
* ^url = "https://ltc-ig.fhir.tw/StructureDefinition/Bundle-TW-LTC-SDK-Payload"
* ^version = "0.1.0"
* ^status = #draft
* type 1..1
* type = #collection
* entry 1..* MS
* entry.resource only Patient or EpisodeOfCareTWLTCCaseSDK or ObservationTWLTCAssessmentSummarySDK or CoverageEligibilityResponseTWLTCBenefitSDK or CarePlanTWLTCPlanSDK or Organization or Practitioner or CareTeam
