Instance: ltc-questionnaire-response-cdr-moderate-example
InstanceOf: LTCQuestionnaireResponseCDR
Title: "臨床失智評估量表中度失智回覆範例"
Description: "一個中度失智患者的臨床失智評估量表回覆範例"
Usage: #example

* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-cdr"
* status = #completed
* subject = Reference(ltc-patient-chen-ming-hui)
* authored = "2024-01-15T14:30:00+08:00"
* author = Reference(ltc-practitioner-physician-aa12-example)
* source = Reference(ltc-patient-chen-ming-hui)
* meta.profile[0] = "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCDR"

// 記憶力 (Memory) - 3分 (中度)
* item[0].linkId = "CDR-1"
* item[0].text = "記憶力"
* item[0].answer[0].valueInteger = 3

// 定向感 (Orientation) - 3分 (中度)
* item[1].linkId = "CDR-2"
* item[1].text = "定向感"
* item[1].answer[0].valueInteger = 3

// 解決問題能力 (Problem Solving) - 3分 (中度)
* item[2].linkId = "CDR-3"
* item[2].text = "解決問題能力"
* item[2].answer[0].valueInteger = 3

// 社區活動能力 (Community Activities) - 3分 (中度)
* item[3].linkId = "CDR-4"
* item[3].text = "社區活動能力"
* item[3].answer[0].valueInteger = 3

// 家居嗜好 (Home Hobbies) - 3分 (中度)
* item[4].linkId = "CDR-5"
* item[4].text = "家居嗜好"
* item[4].answer[0].valueInteger = 3

// 自我照料 (Self-care) - 2分 (輕度)
* item[5].linkId = "CDR-6"
* item[5].text = "自我照料"
* item[5].answer[0].valueInteger = 2

// 總分期 - 2分 (中度失智)
* item[6].linkId = "CDR-Total"
* item[6].text = "目前的失智期"
* item[6].answer[0].valueInteger = 2

// 總分計算 (2分 - 中度失智)
* extension[0].url = "http://ltc-ig.fhir.tw/StructureDefinition/cdr-total-score"
* extension[0].valueInteger = 2
