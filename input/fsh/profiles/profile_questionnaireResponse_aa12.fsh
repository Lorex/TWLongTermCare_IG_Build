Alias: $LTCQuestionnaireResponse = http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponse
Alias: $LTCQuestionnaire = http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire
Alias: $LTCPractitioner = http://ltc-ig.fhir.tw/StructureDefinition/LTCPractitioner

Profile: LTCQuestionnaireResponseAA12
Parent: $LTCQuestionnaireResponse
Id: LTCQuestionnaireResponseAA12
Title: "長期照護醫師意見書問卷回覆 (AA12)"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現長期照護醫師意見書的問卷回覆內容。"

* questionnaire 1..1 MS
* questionnaire ^short = "這個問卷回覆所回答的醫師意見書問卷"
* questionnaire only Canonical($LTCQuestionnaire) 

* status 1..1 MS
* status ^short = "問卷回覆的狀態"
* status = #completed

* subject 1..1 MS
* subject ^short = "問卷回覆的適用主體（申請者）"
* subject only Reference(LTCPatient)
* subject.reference 1..1 MS
* subject.reference ^short = "申請者的 Patient Resource ID"

* authored 1..1 MS
* authored ^short = "醫師意見書的填寫日期"

* author 1..1 MS
* author ^short = "醫師意見書的填寫者（執業醫師）"
* author only Reference(LTCPractitioner)
* author.reference 1..1 MS
* author.reference ^short = "執業醫師的 PractitionerRole Resource ID"

* item 1..* MS
* item ^short = "醫師意見書問卷回覆的內容"
* item.linkId 1..1 MS
* item.linkId ^short = "問題的唯一識別碼"
* item.text 0..1 MS
* item.text ^short = "問題的內容描述"
* item.answer 0..* MS
* item.answer ^short = "問題的回覆"
* item.answer.value[x] 0..1 MS
* item.answer.value[x] ^short = "回覆的內容"

// Example
Instance: ltc-questionnaire-response-aa12-example
InstanceOf: LTCQuestionnaireResponseAA12
Title: "長期照護醫師意見書問卷回覆範例 (AA12)"
Description: "一個長期照護醫師意見書問卷回覆的範例，展示如何使用 LTCQuestionnaireResponseAA12 Profile"
Usage: #example

* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-aa12-example"

* status = #completed

* subject = Reference(ltc-patient-chen-ming-hui)

* authored = "2024-01-15T10:30:00+08:00"

* author = Reference(ltc-practitioner-physician-aa12-example)

// 基本資料欄位 - 以 reference 形式回答
* item[0].linkId = "applicant-reference"
* item[0].text = "申請者（Patient Resource ID）"
* item[0].answer[0].valueReference = Reference(ltc-patient-chen-ming-hui)

* item[1].linkId = "physician-reference"
* item[1].text = "開立醫師（PractitionerRole Resource ID）"
* item[1].answer[0].valueReference = Reference(ltc-practitioner-physician-aa12-example)

* item[2].linkId = "institution-reference"
* item[2].text = "醫療機構（Organization Resource ID）"
* item[2].answer[0].valueReference = Reference(twcore-organization-hospital-aa12-example)

* item[3].linkId = "last-consultation-date"
* item[3].text = "最近一次診察日期"
* item[3].answer[0].valueDate = "2024-01-10"

* item[4].linkId = "opinion-count"
* item[4].text = "製作意見書次數"
* item[4].answer[0].valueString = "初次"

* item[5].linkId = "previous-opinion-date"
* item[5].text = "前次意見書日期"

* item[6].linkId = "consultation-departments"
* item[6].text = "目前診察科別"
* item[6].answer[0].valueCoding.system = "http://snomed.info/sct"
* item[6].answer[0].valueCoding.code = #419192003
* item[6].answer[0].valueCoding.display = "Internal medicine"

* item[7].linkId = "disease-name"
* item[7].text = "診斷疾病名稱"
* item[7].answer[0].valueString = "糖尿病"
* item[7].answer[1].valueString = "高血壓"

* item[8].linkId = "disease-icd"
* item[8].text = "ICD代碼"
* item[8].answer[0].valueString = "E11.9"
* item[8].answer[1].valueString = "I10"

* item[9].linkId = "disease-onset"
* item[9].text = "發病日期"
* item[9].answer[0].valueDate = "2020-03-15"
* item[9].answer[1].valueDate = "2018-07-20"

* item[10].linkId = "condition-status"
* item[10].text = "病情狀態"
* item[10].answer[0].valueCoding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* item[10].answer[0].valueCoding.code = #active
* item[10].answer[0].valueCoding.display = "Active"

* item[11].linkId = "unstable-reason"
* item[11].text = "不穩定狀態說明"

* item[12].linkId = "recent-treatment"
* item[12].text = "過去7日內接受的治療"
* item[12].answer[0].valueString = "監測器"
* item[12].answer[1].valueString = "物理治療"

* item[13].linkId = "other-treatment"
* item[13].text = "其他重要治療"

* item[14].linkId = "care-precautions"
* item[14].text = "照顧應注意事項及處置方法"
* item[14].answer[0].valueString = "尿失禁"
* item[14].answer[1].valueString = "跌倒•骨折"

* item[15].linkId = "other-precautions"
* item[15].text = "其他注意事項"

* item[16].linkId = "treatment-suggestions"
* item[16].text = "處置建議"
* item[16].answer[0].valueString = "定期監測血糖和血壓，維持健康飲食"

* item[17].linkId = "recommended-services"
* item[17].text = "建議介入之醫事照護服務"
* item[17].answer[0].valueString = "ADLs復能照護一居家"

* item[18].linkId = "other-services"
* item[18].text = "其他醫事照護服務"

* item[19].linkId = "six-month-impact"
* item[19].text = "最近六個月內可能影響長照服務使用狀況及如何照顧特殊疾病的方法"
* item[19].answer[0].valueString = "需要定期醫療追蹤和血糖監測"

* item[20].linkId = "infectious-disease"
* item[20].text = "罹患感染症"
* item[20].answer[0].valueString = "無"

* item[21].linkId = "infectious-disease-name"
* item[21].text = "感染症病名"

* item[22].linkId = "isolation-required"
* item[22].text = "是否需要隔離"
* item[22].answer[0].valueBoolean = false

* item[23].linkId = "isolation-type"
* item[23].text = "隔離類型"

* item[24].linkId = "physical-mental-status"
* item[24].text = "身心狀態或特殊需要註記事項"
* item[24].answer[0].valueString = "患者意識清楚，配合度高，需要協助日常生活活動"


