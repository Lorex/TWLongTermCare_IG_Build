Profile: LTCCarePlanCS100
Parent: LTCCarePlanPayload
Id: LTC-CarePlan-CS100
Title: "長照 SDK－照顧計畫（CS100）"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 CarePlan Resource，以呈現 CS100 個案總查詢之照顧計畫資料，規則同 LTCCarePlanPayload。"
* ^url = "http://ltc-ig.fhir.tw/StructureDefinition/LTC-CarePlan-CS100"
* ^version = "0.1.0"
* ^status = #draft

// CS100 新增的約束（父 Profile LTCCarePlanPayload 已定義 status, intent, subject, period, activity, activity.detail, activity.detail.code）
* period.start 1..1 MS
* period.end 0..1
* careTeam 0..*
* careTeam only Reference(LTCCareTeam)
* supportingInfo 0..*
* supportingInfo only Reference(CoverageEligibilityResponse)
* activity.detail.scheduled[x] only Timing
* activity.detail.performer 0..*
* activity.detail.performer only Reference(LTCPractitionerRole or LTCPractitioner or LTCOrganization)
