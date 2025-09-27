Instance: ltc-questionnaire-cdr
InstanceOf: LTCQuestionnaire
Title: "臨床失智評估量表 (CDR)"
Description: "臨床失智評估量表 (Clinical Dementia Rating Scale, CDR) 問卷"
Usage: #example

* url = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-cdr"
* identifier.use = #official
* identifier.system = "http://ltc-ig.fhir.tw/questionnaire-id"
* identifier.value = "CDR-001"
* version = "1.0"
* name = "CDR"
* title = "臨床失智評估量表"
* status = #active

// LOINC code for CDR
* code.system = "http://loinc.org"
* code.code = #72088-8
* code.display = "Clinical Dementia Rating scale [CDR]"

* subjectType = #Patient
* description = "Clinical Dementia Rating scale [CDR] - 臨床失智評估量表"

// 記憶力 (Memory)
* item[0].linkId = "CDR-1"
* item[0].prefix = "1."
* item[0].type = #choice
* item[0].text = "記憶力"
* item[0].required = true
* item[0].answerOption[0].valueInteger = 0
* item[0].answerOption[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[0].answerOption[0].extension[0].valueString = "無 - 無記憶障礙"
* item[0].answerOption[1].valueInteger = 1
* item[0].answerOption[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[0].answerOption[1].extension[0].valueString = "可疑 - 輕度健忘，只記得事件的部分"
* item[0].answerOption[2].valueInteger = 2
* item[0].answerOption[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[0].answerOption[2].extension[0].valueString = "輕度 - 中度記憶障礙，特別是近期事件"
* item[0].answerOption[3].valueInteger = 3
* item[0].answerOption[3].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[0].answerOption[3].extension[0].valueString = "中度 - 嚴重記憶障礙，只記得高度學習的事實"
* item[0].answerOption[4].valueInteger = 4
* item[0].answerOption[4].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[0].answerOption[4].extension[0].valueString = "嚴重 - 深度記憶障礙，只記得片段"

// 定向感 (Orientation)
* item[1].linkId = "CDR-2"
* item[1].prefix = "2."
* item[1].type = #choice
* item[1].text = "定向感"
* item[1].required = true
* item[1].answerOption[0].valueInteger = 0
* item[1].answerOption[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[1].answerOption[0].extension[0].valueString = "無 - 完全定向"
* item[1].answerOption[1].valueInteger = 1
* item[1].answerOption[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[1].answerOption[1].extension[0].valueString = "可疑 - 完全定向，但時間/日期稍有困難"
* item[1].answerOption[2].valueInteger = 2
* item[1].answerOption[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[1].answerOption[2].extension[0].valueString = "輕度 - 時間/日期/地點定向中度困難"
* item[1].answerOption[3].valueInteger = 3
* item[1].answerOption[3].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[1].answerOption[3].extension[0].valueString = "中度 - 時間/日期/地點定向嚴重困難"
* item[1].answerOption[4].valueInteger = 4
* item[1].answerOption[4].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[1].answerOption[4].extension[0].valueString = "嚴重 - 只維持對人的定向"

// 解決問題能力 (Problem Solving)
* item[2].linkId = "CDR-3"
* item[2].prefix = "3."
* item[2].type = #choice
* item[2].text = "解決問題能力"
* item[2].required = true
* item[2].answerOption[0].valueInteger = 0
* item[2].answerOption[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[2].answerOption[0].extension[0].valueString = "無 - 良好的問題解決能力"
* item[2].answerOption[1].valueInteger = 1
* item[2].answerOption[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[2].answerOption[1].extension[0].valueString = "可疑 - 問題解決能力稍有困難"
* item[2].answerOption[2].valueInteger = 2
* item[2].answerOption[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[2].answerOption[2].extension[0].valueString = "輕度 - 問題解決能力中度困難"
* item[2].answerOption[3].valueInteger = 3
* item[2].answerOption[3].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[2].answerOption[3].extension[0].valueString = "中度 - 問題解決能力嚴重受損"
* item[2].answerOption[4].valueInteger = 4
* item[2].answerOption[4].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[2].answerOption[4].extension[0].valueString = "嚴重 - 無法做出判斷或解決問題"

// 社區活動能力 (Community Activities)
* item[3].linkId = "CDR-4"
* item[3].prefix = "4."
* item[3].type = #choice
* item[3].text = "社區活動能力"
* item[3].required = true
* item[3].answerOption[0].valueInteger = 0
* item[3].answerOption[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[3].answerOption[0].extension[0].valueString = "無 - 獨立的社區活動"
* item[3].answerOption[1].valueInteger = 1
* item[3].answerOption[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[3].answerOption[1].extension[0].valueString = "可疑 - 社區活動能力稍有受損"
* item[3].answerOption[2].valueInteger = 2
* item[3].answerOption[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[3].answerOption[2].extension[0].valueString = "輕度 - 無法完全參與社區活動"
* item[3].answerOption[3].valueInteger = 3
* item[3].answerOption[3].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[3].answerOption[3].extension[0].valueString = "中度 - 無法處理獨立工作/購物"
* item[3].answerOption[4].valueInteger = 4
* item[3].answerOption[4].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[3].answerOption[4].extension[0].valueString = "嚴重 - 無法處理獨立工作/購物"

// 家居嗜好 (Home Hobbies)
* item[4].linkId = "CDR-5"
* item[4].prefix = "5."
* item[4].type = #choice
* item[4].text = "家居嗜好"
* item[4].required = true
* item[4].answerOption[0].valueInteger = 0
* item[4].answerOption[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[4].answerOption[0].extension[0].valueString = "無 - 良好的家居嗜好"
* item[4].answerOption[1].valueInteger = 1
* item[4].answerOption[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[4].answerOption[1].extension[0].valueString = "可疑 - 家居嗜好稍有受損"
* item[4].answerOption[2].valueInteger = 2
* item[4].answerOption[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[4].answerOption[2].extension[0].valueString = "輕度 - 家居生活輕度受損"
* item[4].answerOption[3].valueInteger = 3
* item[4].answerOption[3].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[4].answerOption[3].extension[0].valueString = "中度 - 很少嗜好，難以維持"
* item[4].answerOption[4].valueInteger = 4
* item[4].answerOption[4].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[4].answerOption[4].extension[0].valueString = "嚴重 - 無法做家務"

// 自我照料 (Self-care)
* item[5].linkId = "CDR-6"
* item[5].prefix = "6."
* item[5].type = #choice
* item[5].text = "自我照料"
* item[5].required = true
* item[5].answerOption[0].valueInteger = 0
* item[5].answerOption[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[5].answerOption[0].extension[0].valueString = "無 - 完全自我照料"
* item[5].answerOption[1].valueInteger = 1
* item[5].answerOption[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[5].answerOption[1].extension[0].valueString = "可疑 - 完全自我照料"
* item[5].answerOption[2].valueInteger = 2
* item[5].answerOption[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[5].answerOption[2].extension[0].valueString = "輕度 - 自我照料需要偶爾提醒"
* item[5].answerOption[3].valueInteger = 3
* item[5].answerOption[3].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[5].answerOption[3].extension[0].valueString = "中度 - 個人照料需要幫助"
* item[5].answerOption[4].valueInteger = 4
* item[5].answerOption[4].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[5].answerOption[4].extension[0].valueString = "嚴重 - 個人照料需要顯著幫助"

// 總分期
* item[6].linkId = "CDR-Total"
* item[6].prefix = "總分期"
* item[6].type = #choice
* item[6].text = "目前的失智期"
* item[6].required = true
* item[6].answerOption[0].valueInteger = 0
* item[6].answerOption[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[6].answerOption[0].extension[0].valueString = "0 - 沒有失智"
* item[6].answerOption[1].valueInteger = 1
* item[6].answerOption[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[6].answerOption[1].extension[0].valueString = "0.5 - 未確定或待觀察"
* item[6].answerOption[2].valueInteger = 2
* item[6].answerOption[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[6].answerOption[2].extension[0].valueString = "1 - 輕度失智"
* item[6].answerOption[3].valueInteger = 3
* item[6].answerOption[3].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[6].answerOption[3].extension[0].valueString = "2 - 中度失智"
* item[6].answerOption[4].valueInteger = 4
* item[6].answerOption[4].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[6].answerOption[4].extension[0].valueString = "3 - 重度失智"
* item[6].answerOption[5].valueInteger = 5
* item[6].answerOption[5].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[6].answerOption[5].extension[0].valueString = "4 - 深度失智"
* item[6].answerOption[6].valueInteger = 6
* item[6].answerOption[6].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[6].answerOption[6].extension[0].valueString = "5 - 末期失智"
