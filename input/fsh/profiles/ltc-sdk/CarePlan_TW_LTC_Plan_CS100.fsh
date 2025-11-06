Profile: CarePlanTWLTCPlanCS100
Parent: CarePlanTWLTCPlanSDK
Id: CarePlan-TW-LTC-Plan-CS100
Title: "長照 SDK－照顧計畫（CS100）"
Description: "為避免與 SDK 版混淆而提供之 CS100 命名；規則同 CarePlan-TW-LTC-Plan-SDK。"
* ^url = "https://ltc-ig.fhir.tw/StructureDefinition/CarePlan-TW-LTC-Plan-CS100"
* ^version = "0.1.0"
* ^status = #draft

* status 1..1 MS
* intent 1..1 MS
* intent = #plan
* subject 1..1 MS
* subject only Reference(TWCorePatient)
* period 0..1 MS
* period.start 1..1 MS
* period.end 0..1
* careTeam 0..*
* careTeam only Reference(TWCoreCareTeam)
* supportingInfo 0..*
* supportingInfo only Reference(CoverageEligibilityResponse)

* activity 1..* MS
* activity.detail 1..1 MS
* activity.detail.code 1..1 MS 
// from VS_TW_LTC_ServiceItem (required)
* activity.detail.scheduled[x] only Timing
* activity.detail.performer 0..*
* activity.detail.performer only Reference(TWCorePractitionerRole or TWCorePractitioner or TWCoreOrganization)
