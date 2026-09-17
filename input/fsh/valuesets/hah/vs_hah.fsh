ValueSet: HAHServiceVS
Id: hah-service
Title: "在宅急症－服務項目值集"
Description: "服務請求與工作可用的本地分類；詳細檢驗或處置仍應使用適切標準代碼。"
* ^status = #draft
* ^experimental = false
* HAHActivityCS#visit
* HAHActivityCS#consultation
* HAHActivityCS#referral
* HAHActivityCS#laboratory
* HAHActivityCS#nursing
* HAHActivityCS#medicine-delivery
* HAHActivityCS#education

ValueSet: HAHCommunicationVS
Id: hah-communication
Title: "在宅急症－溝通類型值集"
Description: "區分照會、交班與衛教內容。"
* ^status = #draft
* ^experimental = false
* HAHActivityCS#consultation
* HAHActivityCS#handover
* HAHActivityCS#education

ValueSet: HAHOutcomeVS
Id: hah-outcome
Title: "在宅急症－療程結束原因值集"
Description: "本次療程已結束時填寫的原因。"
* ^status = #draft
* ^experimental = false
* include codes from system HAHOutcomeCS

ValueSet: HAHVisitModeVS
Id: hah-visit-mode
Title: "在宅急症－訪視方式值集"
Description: "實地、視訊或電話評估。"
* ^status = #draft
* ^experimental = false
* include codes from system HAHVisitModeCS

ValueSet: HAHSummaryTypeVS
Id: hah-summary-type
Title: "在宅急症－摘要種類值集"
Description: "結案或轉銜摘要。"
* ^status = #draft
* ^experimental = false
* HAHDocumentCS#discharge-summary
* HAHDocumentCS#transfer-summary

ValueSet: HAHSectionVS
Id: hah-section
Title: "在宅急症－摘要章節值集"
Description: "摘要文件中的臨床章節。"
* ^status = #draft
* ^experimental = false
* HAHDocumentCS#course
* HAHDocumentCS#problems
* HAHDocumentCS#allergies
* HAHDocumentCS#medications
* HAHDocumentCS#results
* HAHDocumentCS#care
* HAHDocumentCS#follow-up

ValueSet: HAHEligibilityVS
Id: hah-eligibility
Title: "在宅急症－收案評估結果值集"
Description: "本次收案評估的建議結果。"
* ^status = #draft
* ^experimental = false
* include codes from system HAHEligibilityCS
