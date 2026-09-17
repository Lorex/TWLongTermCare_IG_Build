Profile: HAHAssessmentResponse
Parent: LTCQuestionnaireResponse
Id: HAHAssessmentResponse
Title: "在宅急症－收案評估回覆"
Description: "記錄評估依據、居家環境、照顧者支援與收案建議。此為本 IG 的交換表單，不宣稱為健保署官方收案表。"
* ^status = #draft
* questionnaire 1..1 MS
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/hah-intake-assessment|1.1.0"
* subject only Reference(HAHPatient)
* author 1..1 MS
* author only Reference(LTCPractitioner or LTCPractitionerRole)
* extension contains ExtHAHEpisode named episode 1..1 MS
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #closed
* item contains
    criteria 1..1 MS and
    homeSafety 1..1 MS and
    caregiverSupport 1..1 MS and
    decision 1..1 MS and
    reason 0..1 MS
* item.item 0..0
* item.answer 0..1
* item.answer.item 0..0
* item[criteria].linkId = "criteria"
* item[criteria].answer.value[x] only string
* item[criteria] ^short = "評估所依據的計畫名稱與版本"
* item[homeSafety].linkId = "home-safety"
* item[homeSafety].answer.value[x] only string
* item[homeSafety] ^short = "居家環境與設備可行性評估"
* item[caregiverSupport].linkId = "caregiver-support"
* item[caregiverSupport].answer.value[x] only string
* item[caregiverSupport] ^short = "照顧者支援與照護能力"
* item[decision].linkId = "decision"
* item[decision].answer.value[x] only Coding
* item[decision].answer.valueCoding from HAHEligibilityVS (required)
* item[decision] ^short = "收案建議"
* item[reason].linkId = "reason"
* item[reason].answer.value[x] only string
* item[reason] ^short = "不建議收案或待確認的原因"
* obeys hah-assessment-completed and hah-assessment-reason

Invariant: hah-assessment-completed
Description: "已完成或修訂的評估，四項必要題目都應有答案。"
Severity: #error
Expression: "(status = 'completed' or status = 'amended') implies item.where(linkId = 'criteria' or linkId = 'home-safety' or linkId = 'caregiver-support' or linkId = 'decision').all(answer.value.exists())"

Invariant: hah-assessment-reason
Description: "不建議收案或待確認時應填寫原因。"
Severity: #error
Expression: "item.where(linkId='decision').answer.value.ofType(Coding).where(code='ineligible' or code='pending').exists() implies item.where(linkId='reason').answer.value.exists()"

Instance: hah-intake-assessment
InstanceOf: LTCQuestionnaire
Usage: #definition
Title: "在宅急症收案評估問卷"
Description: "本 IG 定義的收案資料交換表單；正式計畫條件須依實際採用的版本評估。"
* url = "http://ltc-ig.fhir.tw/Questionnaire/hah-intake-assessment"
* version = "1.1.0"
* name = "HAHIntakeAssessment"
* title = "在宅急症收案評估"
* status = #active
* experimental = false
* subjectType = #Patient
* item[0].linkId = "criteria"
* item[0].text = "評估依據的計畫名稱與版本"
* item[0].type = #string
* item[0].required = true
* item[1].linkId = "home-safety"
* item[1].text = "居家環境與設備可行性"
* item[1].type = #string
* item[1].required = true
* item[2].linkId = "caregiver-support"
* item[2].text = "照顧者支援與照護能力"
* item[2].type = #string
* item[2].required = true
* item[3].linkId = "decision"
* item[3].text = "收案建議"
* item[3].type = #choice
* item[3].required = true
* item[3].answerValueSet = Canonical(HAHEligibilityVS)
* item[4].linkId = "reason"
* item[4].text = "不建議收案或待確認的原因"
* item[4].type = #string
* item[4].required = false
