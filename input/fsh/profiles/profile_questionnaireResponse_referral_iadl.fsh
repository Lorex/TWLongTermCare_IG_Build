Alias: $QuestionnaireResponse = http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse

Profile: LTCQuestionnaireResponseReferralIADL
Parent: LTCQuestionnaireResponse
Id: LTCQuestionnaireResponseReferralIADL
Title: "轉介單－IADL 失能項目評估問卷回覆"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現轉介單－IADL 失能項目評估問卷的回覆資料。"

* item 8..8 MS
* item ^short = "問卷回覆的內容"
* item.text 1..1 MS
* item.text ^short = "問題或量表項目的內容描述。[應填入以下問題之一：使用電話 / 購物 / 備餐 / 處理家務 / 洗衣服 / 外出 / 服用藥物 / 處理財務能力]"
* item.answer 0..* MS
* item.answer ^short = "問題或量表項目的回覆"
* item.answer.value[x] 0..1 MS
* item.answer.value[x] ^short = "回覆的內容"
* item.answer.valueString 1..1 MS
* item.answer.valueString ^short = "回覆的內容。[應填入以下字串之一：需協助 / 不需協助]"