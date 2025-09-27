Logical: LTCMMSEAssessmentModel
Id: LTCMMSEAssessmentModel
Title: "簡易智能狀態測驗評估"
Description: "簡易智能狀態測驗 (Mini-Mental Status Examination, MMSE) 的邏輯模型，用於認知功能評估"
* ^status = #active
* ^experimental = false
* ^publisher = "台灣長期照顧 Implementation Guide"
* ^copyright = "Copyright © 2024 Taiwan Long-Term Care Implementation Guide"

// 基本資訊
* assessmentDate 1..1 dateTime "評估日期時間" "MMSE 評估執行的日期時間"
* assessor 1..1 Reference(Practitioner) "評估者" "執行 MMSE 評估的醫療人員"
* subject 1..1 Reference(Patient) "受評估者" "接受 MMSE 評估的患者"

// 定向感 (Orientation) - 10分
* orientation 0..1 BackboneElement "定向感評估" "時間、地點、人物的定向感評估"
  * year 0..1 integer "年份" "今年是那一年? (1分)"
  * season 0..1 integer "季節" "現在是什麼季節? (1分)"
  * date 0..1 integer "日期" "今天是幾號? (1分)"
  * dayOfWeek 0..1 integer "星期" "今天是禮拜幾? (1分)"
  * month 0..1 integer "月份" "現在是那一個月份? (1分)"
  * province 0..1 integer "省份" "我們現在是在那一個省? (1分)"
  * city 0..1 integer "縣市" "我們現在是在那一個縣、市? (1分)"
  * district 0..1 integer "區鄉鎮" "這裡屬於哪一個區或是鄉鎮? (1分)"
  * facility 0..1 integer "機構名稱" "這個社區單位(醫院、診所)的名稱? (1分)"
  * floor 0..1 integer "樓層" "現在我們是在幾樓? (1分)"
  * score 0..1 integer "定向感總分" "定向感評估總分 (0-10分)"

// 記憶登錄 (Registration) - 3分
* registration 0..1 BackboneElement "記憶登錄" "立即記憶登錄評估"
  * word1 0..1 integer "藍色" "第一個詞彙記憶 (1分)"
  * word2 0..1 integer "悲傷" "第二個詞彙記憶 (1分)"
  * word3 0..1 integer "火車" "第三個詞彙記憶 (1分)"
  * score 0..1 integer "記憶登錄總分" "記憶登錄評估總分 (0-3分)"

// 注意力和計算 (Attention and Calculation) - 5分
* attention 0..1 BackboneElement "注意力和計算" "注意力集中和計算能力評估"
  * serial7s 0..1 integer "連續減7" "從100開始連續減7的次數 (0-5分)"
  * score 0..1 integer "注意力總分" "注意力和計算評估總分 (0-5分)"

// 記憶回憶 (Recall) - 3分
* recall 0..1 BackboneElement "記憶回憶" "延遲記憶回憶評估"
  * recallWord1 0..1 integer "回憶藍色" "回憶第一個詞彙 (1分)"
  * recallWord2 0..1 integer "回憶悲傷" "回憶第二個詞彙 (1分)"
  * recallWord3 0..1 integer "回憶火車" "回憶第三個詞彙 (1分)"
  * score 0..1 integer "記憶回憶總分" "記憶回憶評估總分 (0-3分)"

// 命名 (Naming) - 2分
* naming 0..1 BackboneElement "命名" "物品命名能力評估"
  * watch 0..1 integer "手錶命名" "手錶命名能力 (1分)"
  * pencil 0..1 integer "鉛筆命名" "鉛筆命名能力 (1分)"
  * score 0..1 integer "命名總分" "命名能力評估總分 (0-2分)"

// 複述 (Repetition) - 1分
* repetition 0..1 BackboneElement "複述" "語言複述能力評估"
  * sentence 0..1 integer "句子複述" "句子複述能力 (1分)"
  * score 0..1 integer "複述總分" "複述能力評估總分 (0-1分)"

// 三階段指令 (Three-Stage Command) - 4分
* command 0..1 BackboneElement "三階段指令" "複雜指令執行能力評估"
  * closeEyes 0..1 integer "閉眼指令" "閉眼指令執行 (1分)"
  * threeStepTask 0..1 integer "三步驟任務" "三步驟任務執行 (3分)"
  * score 0..1 integer "指令總分" "三階段指令評估總分 (0-4分)"

// 書寫 (Writing) - 1分
* writing 0..1 BackboneElement "書寫" "書寫能力評估"
  * sentence 0..1 integer "句子書寫" "完整句子書寫能力 (1分)"
  * score 0..1 integer "書寫總分" "書寫能力評估總分 (0-1分)"

// 複製圖形 (Copying) - 1分
* copying 0..1 BackboneElement "複製圖形" "視覺空間複製能力評估"
  * figure 0..1 integer "圖形複製" "重疊五邊形圖形複製 (1分)"
  * score 0..1 integer "複製總分" "複製圖形評估總分 (0-1分)"

// 總分和評估結果
* totalScore 1..1 integer "總分" "MMSE 評估總分 (0-30分)"
* assessmentNotes 0..1 string "評估備註" "評估過程中的特殊狀況或備註"

// 範例
Instance: mmse-assessment-example
InstanceOf: LTCMMSEAssessmentModel
Title: "MMSE 評估範例"
Description: "一個完整的 MMSE 評估範例"
Usage: #example

* assessmentDate = "2024-01-15T14:30:00+08:00"
* assessor = Reference(ltc-practitioner-physician-aa12-example)
* subject = Reference(ltc-patient-chen-ming-hui)

// 定向感評估 (10分)
* orientation.year = 1
* orientation.season = 1
* orientation.date = 1
* orientation.dayOfWeek = 1
* orientation.month = 1
* orientation.province = 1
* orientation.city = 1
* orientation.district = 1
* orientation.facility = 1
* orientation.floor = 1
* orientation.score = 10

// 記憶登錄 (3分)
* registration.word1 = 1
* registration.word2 = 1
* registration.word3 = 1
* registration.score = 3

// 注意力和計算 (5分)
* attention.serial7s = 5
* attention.score = 5

// 記憶回憶 (3分)
* recall.recallWord1 = 1
* recall.recallWord2 = 1
* recall.recallWord3 = 1
* recall.score = 3

// 命名 (2分)
* naming.watch = 1
* naming.pencil = 1
* naming.score = 2

// 複述 (1分)
* repetition.sentence = 1
* repetition.score = 1

// 三階段指令 (4分)
* command.closeEyes = 1
* command.threeStepTask = 3
* command.score = 4

// 書寫 (1分)
* writing.sentence = 1
* writing.score = 1

// 複製圖形 (1分)
* copying.figure = 1
* copying.score = 1

// 總分
* totalScore = 30
* assessmentNotes = "患者配合度良好，評估過程順利完成"
