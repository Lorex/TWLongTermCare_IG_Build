Alias: $TWCoreCarePlan = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/CarePlan-twcore

Alias: $TWCoreEncounter = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Encounter-twcore
Alias: $TWCoreOrganization = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Organization-twcore
Alias: $TWCoreOrganizationHospital = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Organization-hosp-twcore
Alias: $TWCoreMedicationRequest = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/MedicationRequest-twcore


Profile: LTCCarePlan
Parent: $TWCoreCarePlan
Id: LTCCarePlan
Title: "TWLTC CarePlan"
Description: "照顧計畫，用以表述長期照顧情境中涉及之照顧計畫內容。"

* basedOn 0..*
* basedOn ^short = "照顧計畫的來源，即這項照顧計畫是基於哪個照顧計畫？"
* basedOn only Reference(LTCCarePlan)
* basedOn.reference 1..1
* basedOn.reference ^short = "照顧計畫的來源。[應輸入 CarePlan Resource ID]"
* replaces 0..*
* replaces ^short = "照顧計畫的替代，即這項照顧計畫已經被哪個照顧計畫替代？"
* replaces only Reference(LTCCarePlan)
* replaces.reference 1..1
* replaces.reference ^short = "照顧計畫的替代。[應輸入 CarePlan Resource ID]"
* partOf 0..* MS
* partOf ^short = "照顧計畫的緊急備用方案，即這項照顧計畫使用哪個緊急備用方案？"
* partOf only Reference(LTCCarePlan)
* partOf.reference 1..1 MS
* partOf.reference ^short = "照顧計畫的緊急備用方案。[應輸入 CarePlan Resource ID]"
* subject 1..1 MS
* subject ^short = "照顧計畫的適用主體，即這個照顧計畫的適用對象是誰？"
* subject only Reference(LTCPatient)
* subject.reference 1..1 MS
* subject.reference ^short = "照顧計畫的適用主體。[應輸入 Patient Resource ID]"
* encounter 0..1 MS
* encounter ^short = "照顧計畫對應的就診資訊，即這個照顧計畫是哪個就診資訊的一部分？"
* encounter only Reference(TWCoreEncounter)
* encounter.reference 1..1 MS
* encounter.reference ^short = "照顧計畫對應的就診資訊。[應輸入 Encounter Resource ID]"
* period 0..1 MS
* period ^short = "照顧計畫的有效期間，即這個照顧計畫的有效期間是多久？"
* period.start 1..1 MS
* period.start ^short = "照顧計畫的開始日期。[應填入日期或日期時間]"
* period.end 0..1 MS
* period.end ^short = "照顧計畫的結束日期。[應填入日期或日期時間]"
* author 0..1 MS
* author ^short = "照顧計畫的提出者，即這個照顧計畫是由誰提出或計畫的？"
* author only Reference(LTCPractitioner or LTCRelatedPerson or LTCPractitionerRole or $TWCoreOrganization or $TWCoreOrganizationHospital or LTCOrganization or LTCCareTeam)
* author.reference 1..1 MS
* author.reference ^short = "照顧計畫的提出者。[應輸入 Practitioner / RelatedPerson / PractitionerRole / Organization / CareTeam Resource ID]"
* contributor 0..* MS
* contributor ^short = "照顧計畫的參與者，即這個照顧計畫是由誰來參與的？"
* contributor only Reference(LTCPractitioner or LTCRelatedPerson or LTCPractitionerRole or $TWCoreOrganization or $TWCoreOrganizationHospital or LTCOrganization or LTCCareTeam)
* contributor.reference 1..1 MS
* contributor.reference ^short = "照顧計畫的參與者。[應輸入 Practitioner / RelatedPerson / PractitionerRole / Organization / CareTeam Resource ID]"
* addresses 0..* MS
* addresses ^short = "照顧計畫對應的需求，即這個照顧計畫是針對哪些問題或需求而設計的？"
* addresses only Reference(LTCCondition)
* addresses.reference 1..1 MS
* addresses.reference ^short = "照顧計畫對應的需求。[應輸入 Condition Resource ID]"
* supportingInfo 0..* MS
* supportingInfo ^short = "照顧計畫的輔助資訊，即這個照顧計畫應該考量到哪些資訊？"
* goal 0..* MS
* goal ^short = "照顧計畫的目標，即這個照顧計畫預期達成哪些目標？"
* goal only Reference(LTCGoal)
* goal.reference 1..1 MS
* goal.reference ^short = "照顧計畫的目標。[應輸入 Goal Resource ID]"
* activity 1..* MS
* activity ^short = "照顧計畫的活動，即這個照顧計畫包含哪些活動？這裡可以使用 Reference 或是純文字來表述。"
* activity.detail 0..1 MS
* activity.detail ^short = "照顧計畫的活動詳細資訊，即這個照顧計畫的活動內容是什麼？這裡可以直接描述活動內容，或是針對 Reference 內容進行更進一步的描述。"
* activity.reference 0..1 MS
* activity.reference ^short = "照顧計畫的活動參考 Resource。"
* note 0..* MS
* note ^short = "照顧計畫的附註。"