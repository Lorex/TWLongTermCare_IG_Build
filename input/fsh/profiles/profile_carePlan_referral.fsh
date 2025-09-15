Alias: $CarePlan = http://hl7.org/fhir/StructureDefinition/CarePlan

Alias: $TWCoreEncounter = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Encounter-twcore
Alias: $TWCoreOrganization = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Organization-twcore
Alias: $TWCoreOrganizationHospital = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Organization-hosp-twcore
Alias: $TWCoreMedicationRequest = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/MedicationRequest-twcore
Alias: $ReferralCarePlanVS-TWLTC = http://ltc-ig.fhir.tw/ValueSet/ReferralCarePlanVS-TWLTC


Profile: LTCCarePlanReferral
Parent: LTCCarePlan
Id: LTCCarePlanReferral
Title: "轉介單－服務種類"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 CarePlan Resource，以呈現轉診單中欲申請之服務種類。"


* activity.detail 1..1 MS
* activity.detail ^short = "服務種類"
* activity.detail.code 1..1 MS
* activity.detail.code ^short = "服務種類代碼"
* activity.detail.code from $ReferralCarePlanVS-TWLTC (required)

// Example
Instance: ltc-careplan-referral-home-service-example
InstanceOf: LTCCarePlanReferral
Title: "轉介單居家服務計畫範例"
Description: "一個轉介單居家服務計畫的範例，展示如何使用 LTCCarePlanReferral Profile"
Usage: #example

* status = #active
* intent = #proposal

* category[AssessPlan].coding.system = "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/careplan-category-tw"
* category[AssessPlan].coding.code = #assess-plan

* subject = Reference(ltc-patient-chen-ming-hui)

* period.start = "2024-02-01"
* period.end = "2024-08-01"

* author = Reference(ltc-practitioner-role-nurse-example)

* goal[0] = Reference(ltc-goal-mobility-improvement-example)

* activity[0].detail.status = #not-started
* activity[0].detail.code.coding.system = "http://ltc-ig.fhir.tw/CodeSystem/ReferralCarePlanCS-TWLTC"
* activity[0].detail.code.coding.code = #home-care-service
* activity[0].detail.code.coding.display = "居家照顧服務"
* activity[0].detail.description = "提供日常生活照顧、身體清潔、餐食準備等居家服務"
* activity[0].detail.performer[0] = Reference(ltc-organization-example)

* activity[1].detail.status = #not-started
* activity[1].detail.code.coding.system = "http://ltc-ig.fhir.tw/CodeSystem/ReferralCarePlanCS-TWLTC"
* activity[1].detail.code.coding.code = #rehabilitation-service
* activity[1].detail.code.coding.display = "復健服務"
* activity[1].detail.description = "物理治療及職能治療服務"
* activity[1].detail.performer[0] = Reference(ltc-organization-example)

* note[0].time = "2024-01-20"
* note[0].text = "個案需要居家照顧及復健服務，由照管中心評估後安排服務提供單位"