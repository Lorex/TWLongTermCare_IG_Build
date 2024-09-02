Profile: LTCQuestionnaireResponseCMSCaregiverLoad
Parent: LTCQuestionnaireResponse
Id: LTCQuestionnaireResponseCMSCaregiverLoad
Title: "TW Long Term Care QuestionnaireResponse CMS Caregiver Load"
Description: "照顧管理評估量表－主要照顧者負荷問卷回覆"

* item 5..5 MS
* item ^short = "問卷回覆的內容"
* item.linkId 1..1 MS
* item.linkId only string
* item.linkId ^short = "問題或量表項目的編號。[應填入以下字串之一：J01 | J02 | J03 | J04 | J05]"
* item.text 1..1 MS
* item.text ^short = "問題或量表項目的內容描述。[應填入以下問題之一：睡眠受到干擾 | 體力上的負荷 | 需分配時間照顧其他家人 | 對個案的行為感到困擾 | 無法承受照顧壓力]"
* item.answer 1..1 MS
* item.answer ^short = "問題或量表項目的回覆"
* item.answer.value[x] 1..1 MS
* item.answer.value[x] only boolean
* item.answer.valueBoolean 1..1 MS
* item.answer.valueBoolean ^short = "回覆的內容。[應填入 true 或 false]"