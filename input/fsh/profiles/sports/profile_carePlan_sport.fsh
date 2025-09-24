Alias: $TWCoreCarePlan = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/CarePlan-twcore
Alias: $TWCoreDevice = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Device-twcore
Alias: $TempCodeCS = http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS-Sport

Profile: PASportCarePlan
// TWCore 規範的是"照護計畫"，與本 IG 的運動計畫不同，因此使用 CarePlan 而非 TWCoreCarePlan
Parent: CarePlan
Id: PASportCarePlan
Title: "運動處方－運動計畫"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 CarePlan Resource，以呈現長期照顧情境中涉及之運動計畫內容。"

* status 1..1 MS
* intent 1..1 MS
* category 1..1 MS
* category.coding 1..1 MS
* category.coding.code 1..1 MS
* category.coding.code = #PhysicalActivity
* category.coding.system 1..1 MS
* category.coding.system = $TempCodeCS
* description 1..1 MS
* description ^short = "依照運動處方設計運動方向"
* subject 1..1 MS
* subject ^short = "運動處方的適用主體，即這個運動處方是為誰設計的？"
* subject only Reference(LTCPatient)
* subject.reference 1..1 MS
* subject.reference ^short = "運動處方的適用主體。[應輸入 Patient Resource ID]"
* author 1..1 MS
* author ^short = "運動處方的開立人，即這個運動處方是由誰開立的？"
* author only Reference(LTCPatient or LTCPractitioner or LTCPractitionerRole or $TWCoreDevice or LTCRelatedPerson or LTCOrganization or LTCCareTeam)
* author.reference 1..1 MS
* author.reference ^short = "運動處方的開立人。[應輸入 Patient / Practitioner / PractitionerRole / Device / RelatedPerson / Organization / CareTeam Resource ID]"
* goal 1..1 MS
* goal ^short = "運動處方的目標，即這個運動處方的目標是什麼？"
* goal only Reference(PASportGoal)
* goal.reference 1..1 MS
* goal.reference ^short = "運動處方的目標。[應輸入 Goal Resource ID]"
* activity 1..* MS
* activity ^short = "運動處方中的活動，即這個運動處方中需要進行哪些活動？"
* activity.progress 1..1 MS
* activity.progress ^short = "依照運動處方箋設計運動計畫"
* activity.progress.time 1..1 MS
* activity.progress.text 1..1 MS
* activity.detail 1..1 MS
* activity.detail.status 1..1 MS
* activity.detail.description 1..1 MS
* activity.detail.description ^short = "紀錄病患執行運動計畫後的狀況"
* note 0..* MS
* note.time 1..1 MS
* note.text 1..1 MS

// Example
Instance: pasport-careplan-walking-exercise-example
InstanceOf: PASportCarePlan
Title: "運動計畫－步行運動範例"
Description: "一個運動計畫的範例，展示如何使用 PASportCarePlan Profile 來表示步行運動計畫"
Usage: #example

* status = #active
* intent = #plan

* description = "依照運動處方設計步行運動計畫，每日步行30分鐘，目標達到每日8000步"

* subject = Reference(ltc-patient-chen-ming-hui)

* author = Reference(ltc-practitioner-role-nurse-example)

* goal = Reference(pasport-goal-walking-steps-example)

* period.start = "2024-01-15"
* period.end = "2024-04-15"

* activity[0].progress.time = "2024-01-15T09:00:00+08:00"
* activity[0].progress.text = "開始執行步行運動計畫，第一週目標每日5000步"

* activity[0].detail.status = #in-progress
* activity[0].detail.description = "每日早晨步行30分鐘，逐步增加步數目標。第一週5000步，第二週6000步，第三週7000步，第四週達到8000步目標。"

* activity[0].detail.scheduledPeriod.start = "2024-01-15"
* activity[0].detail.scheduledPeriod.end = "2024-04-15"

* note[0].time = "2024-01-15"
* note[0].text = "患者配合度良好，體能狀況適合進行步行運動，建議循序漸進增加運動強度"
