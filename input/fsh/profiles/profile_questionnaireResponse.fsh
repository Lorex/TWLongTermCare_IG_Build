Alias: $QuestionnaireResponse = http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse

Profile: LTCQuestionnaireResponse
Parent: $QuestionnaireResponse
Id: LTCQuestionnaireResponse
Title: "長期照顧－問卷回覆"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現長期照顧情境中涉及之問卷或量表回覆內容。"

* questionnaire 0..1 MS
* questionnaire ^short = "這個問卷回覆所回答的問卷。[應填入問卷的 URL]"
* questionnaire only Canonical(LTCQuestionnaire)
* status 1..1 MS
* status ^short = "問卷回覆的狀態。[應填入 in-progress / completed / amended / entered-in-error / stopped]"
* subject 1..1 MS
* subject ^short = "問卷回覆的適用主體"
* subject only Reference(LTCPatient)
* subject.reference 1..1 MS
* subject.reference ^short = "問卷回覆的適用主體。[應輸入 Patient Resource ID]"
* authored 1..1 MS
* authored ^short = "問卷回覆的填寫日期"
* author 0..1 MS
* author ^short = "問卷回覆的填寫者"
* author only Reference(LTCPractitioner or LTCRelatedPerson or LTCPatient or LTCPractitionerRole)
* author.reference 1..1 MS
* author.reference ^short = "問卷回覆的填寫者。[應輸入 Practitioner / RelatedPerson / Patient / PractitionerRole Resource ID]"
* source 0..1 MS
* source ^short = "誰提供了問卷回覆的資料，意即誰回答了這份問卷"
* source only Reference(LTCPractitioner or LTCRelatedPerson or LTCPatient or LTCPractitionerRole)
* source.reference 1..1 MS
* source.reference ^short = "誰提供了問卷回覆的資料。[應輸入 Practitioner / RelatedPerson / Patient / PractitionerRole Resource ID]"
* item 1..* MS
* item ^short = "問卷回覆的內容"
* item.linkId 1..1 MS
* item.linkId ^short = "問題或量表項目的唯一識別碼。[應填入獨立的編號]"
* item.text 0..1 MS
* item.text ^short = "問題或量表項目的內容描述。[應填入問題或量表項目的內容]"
* item.answer 0..* MS
* item.answer ^short = "問題或量表項目的回覆"
* item.answer.value[x] 0..1 MS
* item.answer.value[x] ^short = "回覆的內容。[應填入回覆的內容]"
* item.item 0..* MS
* item.item ^short = "問卷的問題或量表項目（用於巢狀問卷）"

