Alias: $QuestionnaireResponse = http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse

Profile: LTCQuestionnaireResponseReferralSOF
Parent: LTCQuestionnaireResponse
Id: LTCQuestionnaireResponseReferralSOF
Title: "轉介單－衰弱評估問卷回覆"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現轉介單－衰弱評估問卷的回覆資料。"

* item 3..3 MS
* item ^short = "問卷回覆的內容"
* item.text 1..1 MS
* item.text ^short = "問題或量表項目的內容描述。[應填入以下問題之一：體重減輕 / 下肢功能 / 精力降低]"
* item.answer 0..* MS
* item.answer ^short = "問題或量表項目的回覆"
* item.answer.value[x] 1..1 MS
* item.answer.value[x] only boolean
* item.answer.value[x] ^short = "回覆的內容"
* item.answer.valueBoolean ^short = "回覆的內容。[應填入以下值之一：true (是) / false (否)]"