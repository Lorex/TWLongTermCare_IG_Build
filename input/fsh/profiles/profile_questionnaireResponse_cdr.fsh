Alias: $QuestionnaireResponse = http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse

Profile: LTCQuestionnaireResponseCDR
Parent: $QuestionnaireResponse
Id: LTCQuestionnaireResponseCDR
Title: "長期照顧－臨床失智評估量表回覆"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現臨床失智評估量表 (CDR) 的回覆內容。"

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

// Example
Instance: ltc-questionnaire-response-cdr-example
InstanceOf: LTCQuestionnaireResponseCDR
Title: "臨床失智評估量表回覆範例"
Description: "一個臨床失智評估量表回覆的範例，展示如何使用 LTCQuestionnaireResponseCDR Profile"
Usage: #example

* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-cdr"
* status = #completed
* subject = Reference(ltc-patient-chen-ming-hui)
* authored = "2024-01-15T10:30:00+08:00"
* author = Reference(ltc-practitioner-physician-aa12-example)
* source = Reference(ltc-patient-chen-ming-hui)
* meta.profile[0] = "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCDR"

// 記憶力 (Memory)
* item[0].linkId = "CDR-1"
* item[0].text = "記憶力"
* item[0].answer[0].valueInteger = 1

// 定向感 (Orientation)
* item[1].linkId = "CDR-2"
* item[1].text = "定向感"
* item[1].answer[0].valueInteger = 1

// 解決問題能力 (Problem Solving)
* item[2].linkId = "CDR-3"
* item[2].text = "解決問題能力"
* item[2].answer[0].valueInteger = 1

// 社區活動能力 (Community Activities)
* item[3].linkId = "CDR-4"
* item[3].text = "社區活動能力"
* item[3].answer[0].valueInteger = 1

// 家居嗜好 (Home Hobbies)
* item[4].linkId = "CDR-5"
* item[4].text = "家居嗜好"
* item[4].answer[0].valueInteger = 1

// 自我照料 (Self-care)
* item[5].linkId = "CDR-6"
* item[5].text = "自我照料"
* item[5].answer[0].valueInteger = 0

// 總分期
* item[6].linkId = "CDR-Total"
* item[6].text = "目前的失智期"
* item[6].answer[0].valueInteger = 1

// 總分計算
* extension[0].url = "http://ltc-ig.fhir.tw/StructureDefinition/cdr-total-score"
* extension[0].valueInteger = 1
