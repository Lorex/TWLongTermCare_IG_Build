Instance: ltc-questionnaire-response-cdr-complete-example
InstanceOf: LTCQuestionnaireResponseCDR
Title: "臨床失智評估量表完整回覆範例"
Description: "一個完整的臨床失智評估量表回覆範例，展示所有 6 個領域的評估"
Usage: #example

* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-cdr"
* status = #completed
* subject = Reference(ltc-patient-chen-ming-hui)
* authored = "2024-01-15T14:30:00+08:00"
* author = Reference(ltc-practitioner-physician-aa12-example)
* source = Reference(ltc-patient-chen-ming-hui)
* meta.profile[0] = "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCDR"

// 記憶力 (Memory) - 1分 (可疑)
* item[0].linkId = "CDR-1"
* item[0].text = "記憶力"
* item[0].answer[0].valueInteger = 1

// 定向感 (Orientation) - 1分 (可疑)
* item[1].linkId = "CDR-2"
* item[1].text = "定向感"
* item[1].answer[0].valueInteger = 1

// 解決問題能力 (Problem Solving) - 1分 (可疑)
* item[2].linkId = "CDR-3"
* item[2].text = "解決問題能力"
* item[2].answer[0].valueInteger = 1

// 社區活動能力 (Community Activities) - 1分 (可疑)
* item[3].linkId = "CDR-4"
* item[3].text = "社區活動能力"
* item[3].answer[0].valueInteger = 1

// 家居嗜好 (Home Hobbies) - 1分 (可疑)
* item[4].linkId = "CDR-5"
* item[4].text = "家居嗜好"
* item[4].answer[0].valueInteger = 1

// 自我照料 (Self-care) - 0分 (無)
* item[5].linkId = "CDR-6"
* item[5].text = "自我照料"
* item[5].answer[0].valueInteger = 0

// 總分期 - 1分 (輕度失智)
* item[6].linkId = "CDR-Total"
* item[6].text = "目前的失智期"
* item[6].answer[0].valueInteger = 1

// 總分計算 (1分 - 輕度失智)
* extension[0].url = "http://ltc-ig.fhir.tw/StructureDefinition/cdr-total-score"
* extension[0].valueInteger = 1
