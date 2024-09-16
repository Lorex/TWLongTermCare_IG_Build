Alias: $CarePlan = http://hl7.org/fhir/StructureDefinition/CarePlan

Alias: $TWCoreEncounter = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Encounter-twcore
Alias: $TWCoreOrganization = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Organization-twcore
Alias: $TWCoreOrganizationHospital = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Organization-hosp-twcore
Alias: $TWCoreMedicationRequest = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/MedicationRequest-twcore
Alias: $ReferralCarePlanVS-TWLTC = http://ltc-ig.fhir.tw/ValueSet-ReferralCarePlanVS-TWLTC


Profile: LTCCarePlanReferral
Parent: LTCCarePlan
Id: LTCCarePlanReferral
Title: "TW Long Term Care CarePlan Referral"
Description: "轉診單中欲申請之服務種類。"


* activity.detail 1..1 MS
* activity.detail ^short = "服務種類"
* activity.detail.code 1..1 MS
* activity.detail.code ^short = "服務種類代碼"
* activity.detail.code from $ReferralCarePlanVS-TWLTC (required)