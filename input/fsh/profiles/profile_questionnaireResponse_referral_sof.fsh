Alias: $QuestionnaireResponse = http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse

Profile: LTCQuestionnaireResponseReferralSOF
Parent: LTCQuestionnaireResponse
Id: LTCQuestionnaireResponseReferralSOF
Title: "TW Long Term Care QuestionnaireResponse Referral SOF"
Description: "轉介單的長者衰弱評估問卷回復"

* item 10..10 MS
* item ^short = "問卷回覆的內容"
* item.text 1..1 MS
* item.text ^short = "問題或量表項目的內容描述。[應填入以下問題之一：體重減輕 / 下肢功能 / 精力降低]"
* item.answer 0..* MS
* item.answer ^short = "問題或量表項目的回覆"
* item.answer.value[x] 0..1 MS
* item.answer.value[x] ^short = "回覆的內容"
* item.answer.valueBoolean 1..1 MS
* item.answer.valueBoolean ^short = "回覆的內容。[應填入以下字串之一：是 true / 否 false]"