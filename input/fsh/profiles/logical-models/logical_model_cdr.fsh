Logical: LTCCDRAssessmentModel
Id: LTCCDRAssessmentModel
Title: "臨床失智評估量表評估"
Description: "臨床失智評估量表 (Clinical Dementia Rating Scale, CDR) 的邏輯模型，用於失智症分期評估"
* ^status = #active
* ^experimental = false
* ^publisher = "台灣長期照顧 Implementation Guide"
* ^copyright = "Copyright © 2024 Taiwan Long-Term Care Implementation Guide"

// 基本資訊
* assessmentDate 1..1 dateTime "評估日期時間" "CDR 評估執行的日期時間"
* assessor 1..1 Reference(Practitioner) "評估者" "執行 CDR 評估的醫療人員"
* subject 1..1 Reference(Patient) "受評估者" "接受 CDR 評估的患者"

// 記憶力 (Memory) - 0-4分
* memory 0..1 BackboneElement "記憶力評估" "記憶功能評估"
  * score 0..1 integer "記憶力分數" "記憶力評估分數 (0-4分)"
  * description 0..1 string "記憶力描述" "記憶力狀況的詳細描述"

// 定向感 (Orientation) - 0-4分
* orientation 0..1 BackboneElement "定向感評估" "時間、地點、人物定向感評估"
  * score 0..1 integer "定向感分數" "定向感評估分數 (0-4分)"
  * description 0..1 string "定向感描述" "定向感狀況的詳細描述"

// 解決問題能力 (Problem Solving) - 0-4分
* problemSolving 0..1 BackboneElement "解決問題能力評估" "問題解決和判斷能力評估"
  * score 0..1 integer "解決問題分數" "解決問題能力評估分數 (0-4分)"
  * description 0..1 string "解決問題描述" "解決問題能力狀況的詳細描述"

// 社區活動能力 (Community Activities) - 0-4分
* communityActivities 0..1 BackboneElement "社區活動能力評估" "社區參與和社會功能評估"
  * score 0..1 integer "社區活動分數" "社區活動能力評估分數 (0-4分)"
  * description 0..1 string "社區活動描述" "社區活動能力狀況的詳細描述"

// 家居嗜好 (Home Hobbies) - 0-4分
* homeHobbies 0..1 BackboneElement "家居嗜好評估" "家居生活和嗜好活動評估"
  * score 0..1 integer "家居嗜好分數" "家居嗜好評估分數 (0-4分)"
  * description 0..1 string "家居嗜好描述" "家居嗜好狀況的詳細描述"

// 自我照料 (Self-care) - 0-4分
* selfCare 0..1 BackboneElement "自我照料評估" "日常生活自我照料能力評估"
  * score 0..1 integer "自我照料分數" "自我照料能力評估分數 (0-4分)"
  * description 0..1 string "自我照料描述" "自我照料能力狀況的詳細描述"

// 總分期和評估結果
* totalScore 1..1 integer "總分期" "CDR 評估總分期 (0-5分)"
* dementiaStage 1..1 string "失智分期" "失智症分期描述"
* assessmentNotes 0..1 string "評估備註" "評估過程中的特殊狀況或備註"

// 範例
Instance: cdr-assessment-example
InstanceOf: LTCCDRAssessmentModel
Title: "CDR 評估範例"
Description: "一個完整的 CDR 評估範例"
Usage: #example

* assessmentDate = "2024-01-15T14:30:00+08:00"
* assessor = Reference(ltc-practitioner-physician-aa12-example)
* subject = Reference(ltc-patient-chen-ming-hui)

// 記憶力評估 (1分 - 可疑)
* memory.score = 1
* memory.description = "輕度健忘，只記得事件的部分"

// 定向感評估 (1分 - 可疑)
* orientation.score = 1
* orientation.description = "完全定向，但時間/日期稍有困難"

// 解決問題能力評估 (1分 - 可疑)
* problemSolving.score = 1
* problemSolving.description = "問題解決能力稍有困難"

// 社區活動能力評估 (1分 - 可疑)
* communityActivities.score = 1
* communityActivities.description = "社區活動能力稍有受損"

// 家居嗜好評估 (1分 - 可疑)
* homeHobbies.score = 1
* homeHobbies.description = "家居嗜好稍有受損"

// 自我照料評估 (0分 - 無)
* selfCare.score = 0
* selfCare.description = "完全自我照料"

// 總分期
* totalScore = 1
* dementiaStage = "輕度失智"
* assessmentNotes = "患者配合度良好，評估過程順利完成"
