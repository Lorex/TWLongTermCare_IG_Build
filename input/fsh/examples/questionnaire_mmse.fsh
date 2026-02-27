Instance: ltc-questionnaire-mmse
InstanceOf: LTCQuestionnaire
Title: "簡易智能狀態測驗 (MMSE)"
Description: "簡易智能狀態測驗 (Mini-Mental Status Examination, MMSE) 問卷"
Usage: #example

* url = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-mmse"
* identifier.use = #official
* identifier.system = "http://ltc-ig.fhir.tw/questionnaire-id"
* identifier.value = "MMSE-001"
* version = "1.0"
* name = "MMSE"
* title = "簡易智能狀態測驗"
* status = #active

// LOINC code for MMSE
* code.system = "http://loinc.org"
* code.code = #72107-6
* code.display = "Mini-Mental State Examination [MMSE]"

* subjectType = #Patient
* description = "Mini-Mental State Examination [MMSE] - 簡易智能狀態測驗"

// 定向感 (Orientation) - 項目 1-10
* item[0].linkId = "MMSE-1"
* item[0].prefix = "1."
* item[0].type = #choice
* item[0].text = "今年是那一年?"
* item[0].required = true
* item[0].answerOption[0].valueInteger = 1
* item[0].answerOption[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[0].answerOption[0].extension[0].valueString = "正確"
* item[0].answerOption[1].valueInteger = 0
* item[0].answerOption[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[0].answerOption[1].extension[0].valueString = "錯誤"
* item[0].answerOption[2].valueInteger = 9
* item[0].answerOption[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[0].answerOption[2].extension[0].valueString = "不明"

* item[1].linkId = "MMSE-2"
* item[1].prefix = "2."
* item[1].type = #choice
* item[1].text = "現在是什麼季節?"
* item[1].required = true
* item[1].answerOption[0].valueInteger = 1
* item[1].answerOption[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[1].answerOption[0].extension[0].valueString = "正確"
* item[1].answerOption[1].valueInteger = 0
* item[1].answerOption[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[1].answerOption[1].extension[0].valueString = "錯誤"
* item[1].answerOption[2].valueInteger = 9
* item[1].answerOption[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[1].answerOption[2].extension[0].valueString = "不明"

* item[2].linkId = "MMSE-3"
* item[2].prefix = "3."
* item[2].type = #choice
* item[2].text = "今天是幾號?"
* item[2].required = true
* item[2].answerOption[0].valueInteger = 1
* item[2].answerOption[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[2].answerOption[0].extension[0].valueString = "正確"
* item[2].answerOption[1].valueInteger = 0
* item[2].answerOption[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[2].answerOption[1].extension[0].valueString = "錯誤"
* item[2].answerOption[2].valueInteger = 9
* item[2].answerOption[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[2].answerOption[2].extension[0].valueString = "不明"

* item[3].linkId = "MMSE-4"
* item[3].prefix = "4."
* item[3].type = #choice
* item[3].text = "今天是禮拜幾?"
* item[3].required = true
* item[3].answerOption[0].valueInteger = 1
* item[3].answerOption[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[3].answerOption[0].extension[0].valueString = "正確"
* item[3].answerOption[1].valueInteger = 0
* item[3].answerOption[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[3].answerOption[1].extension[0].valueString = "錯誤"
* item[3].answerOption[2].valueInteger = 9
* item[3].answerOption[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[3].answerOption[2].extension[0].valueString = "不明"

* item[4].linkId = "MMSE-5"
* item[4].prefix = "5."
* item[4].type = #choice
* item[4].text = "現在是那一個月份?"
* item[4].required = true
* item[4].answerOption[0].valueInteger = 1
* item[4].answerOption[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[4].answerOption[0].extension[0].valueString = "正確"
* item[4].answerOption[1].valueInteger = 0
* item[4].answerOption[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[4].answerOption[1].extension[0].valueString = "錯誤"
* item[4].answerOption[2].valueInteger = 9
* item[4].answerOption[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[4].answerOption[2].extension[0].valueString = "不明"

* item[5].linkId = "MMSE-6"
* item[5].prefix = "6."
* item[5].type = #choice
* item[5].text = "我們現在是在那一個省?"
* item[5].required = true
* item[5].answerOption[0].valueInteger = 1
* item[5].answerOption[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[5].answerOption[0].extension[0].valueString = "正確"
* item[5].answerOption[1].valueInteger = 0
* item[5].answerOption[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[5].answerOption[1].extension[0].valueString = "錯誤"
* item[5].answerOption[2].valueInteger = 9
* item[5].answerOption[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[5].answerOption[2].extension[0].valueString = "不明"

* item[6].linkId = "MMSE-7"
* item[6].prefix = "7."
* item[6].type = #choice
* item[6].text = "我們現在是在那一個縣、市?"
* item[6].required = true
* item[6].answerOption[0].valueInteger = 1
* item[6].answerOption[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[6].answerOption[0].extension[0].valueString = "正確"
* item[6].answerOption[1].valueInteger = 0
* item[6].answerOption[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[6].answerOption[1].extension[0].valueString = "錯誤"
* item[6].answerOption[2].valueInteger = 9
* item[6].answerOption[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[6].answerOption[2].extension[0].valueString = "不明"

* item[7].linkId = "MMSE-8"
* item[7].prefix = "8."
* item[7].type = #choice
* item[7].text = "這裡屬於哪一個區或是鄉鎮?"
* item[7].required = true
* item[7].answerOption[0].valueInteger = 1
* item[7].answerOption[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[7].answerOption[0].extension[0].valueString = "正確"
* item[7].answerOption[1].valueInteger = 0
* item[7].answerOption[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[7].answerOption[1].extension[0].valueString = "錯誤"
* item[7].answerOption[2].valueInteger = 9
* item[7].answerOption[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[7].answerOption[2].extension[0].valueString = "不明"

* item[8].linkId = "MMSE-9"
* item[8].prefix = "9."
* item[8].type = #choice
* item[8].text = "這個社區單位(醫院、診所)的名稱?"
* item[8].required = true
* item[8].answerOption[0].valueInteger = 1
* item[8].answerOption[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[8].answerOption[0].extension[0].valueString = "正確"
* item[8].answerOption[1].valueInteger = 0
* item[8].answerOption[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[8].answerOption[1].extension[0].valueString = "錯誤"
* item[8].answerOption[2].valueInteger = 9
* item[8].answerOption[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[8].answerOption[2].extension[0].valueString = "不明"

* item[9].linkId = "MMSE-10"
* item[9].prefix = "10."
* item[9].type = #choice
* item[9].text = "現在我們是在幾樓?"
* item[9].required = true
* item[9].answerOption[0].valueInteger = 1
* item[9].answerOption[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[9].answerOption[0].extension[0].valueString = "正確"
* item[9].answerOption[1].valueInteger = 0
* item[9].answerOption[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[9].answerOption[1].extension[0].valueString = "錯誤"
* item[9].answerOption[2].valueInteger = 9
* item[9].answerOption[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[9].answerOption[2].extension[0].valueString = "不明"

// 記憶登錄 (Registration) - 項目 11
* item[10].linkId = "MMSE-11"
* item[10].prefix = "11."
* item[10].type = #choice
* item[10].text = "請重複這三個名稱,按第一次複述結果計分"
* item[10].required = true
* item[10].answerOption[0].valueInteger = 3
* item[10].answerOption[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[10].answerOption[0].extension[0].valueString = "三個都對"
* item[10].answerOption[1].valueInteger = 2
* item[10].answerOption[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[10].answerOption[1].extension[0].valueString = "二個對"
* item[10].answerOption[2].valueInteger = 1
* item[10].answerOption[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[10].answerOption[2].extension[0].valueString = "一個對"
* item[10].answerOption[3].valueInteger = 0
* item[10].answerOption[3].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[10].answerOption[3].extension[0].valueString = "都不對"

// 注意力和計算 (Attention and Calculation) - 項目 12
* item[11].linkId = "MMSE-12"
* item[11].prefix = "12."
* item[11].type = #integer
* item[11].text = "請從100開始連續減7,一直減7直到我說停為止。(每減對一次得一分)"
* item[11].required = true
* item[11].maxLength = 2

// 記憶回憶 (Recall) - 項目 13-15
* item[12].linkId = "MMSE-13"
* item[12].prefix = "13."
* item[12].type = #choice
* item[12].text = "藍色"
* item[12].required = true
* item[12].answerOption[0].valueInteger = 1
* item[12].answerOption[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[12].answerOption[0].extension[0].valueString = "正確"
* item[12].answerOption[1].valueInteger = 0
* item[12].answerOption[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[12].answerOption[1].extension[0].valueString = "錯誤"

* item[13].linkId = "MMSE-14"
* item[13].prefix = "14."
* item[13].type = #choice
* item[13].text = "悲傷"
* item[13].required = true
* item[13].answerOption[0].valueInteger = 1
* item[13].answerOption[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[13].answerOption[0].extension[0].valueString = "正確"
* item[13].answerOption[1].valueInteger = 0
* item[13].answerOption[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[13].answerOption[1].extension[0].valueString = "錯誤"

* item[14].linkId = "MMSE-15"
* item[14].prefix = "15."
* item[14].type = #choice
* item[14].text = "火車"
* item[14].required = true
* item[14].answerOption[0].valueInteger = 1
* item[14].answerOption[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[14].answerOption[0].extension[0].valueString = "正確"
* item[14].answerOption[1].valueInteger = 0
* item[14].answerOption[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[14].answerOption[1].extension[0].valueString = "錯誤"

// 命名 (Naming) - 項目 16-17
* item[15].linkId = "MMSE-16"
* item[15].prefix = "16."
* item[15].type = #choice
* item[15].text = "(拿出手錶)這是什麼?"
* item[15].required = true
* item[15].answerOption[0].valueInteger = 1
* item[15].answerOption[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[15].answerOption[0].extension[0].valueString = "正確"
* item[15].answerOption[1].valueInteger = 0
* item[15].answerOption[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[15].answerOption[1].extension[0].valueString = "錯誤"

* item[16].linkId = "MMSE-17"
* item[16].prefix = "17."
* item[16].type = #choice
* item[16].text = "(拿出鉛筆)這是什麼?"
* item[16].required = true
* item[16].answerOption[0].valueInteger = 1
* item[16].answerOption[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[16].answerOption[0].extension[0].valueString = "正確"
* item[16].answerOption[1].valueInteger = 0
* item[16].answerOption[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[16].answerOption[1].extension[0].valueString = "錯誤"

// 複述 (Repetition) - 項目 18
* item[17].linkId = "MMSE-18"
* item[17].prefix = "18."
* item[17].type = #choice
* item[17].text = "請跟我唸一句話『白紙真正寫黑字』"
* item[17].required = true
* item[17].answerOption[0].valueInteger = 1
* item[17].answerOption[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[17].answerOption[0].extension[0].valueString = "正確"
* item[17].answerOption[1].valueInteger = 0
* item[17].answerOption[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[17].answerOption[1].extension[0].valueString = "錯誤"

// 三階段指令 (Three-Stage Command) - 項目 19-20
* item[18].linkId = "MMSE-19"
* item[18].prefix = "19."
* item[18].type = #choice
* item[18].text = "請唸一遍並做做看『請閉上眼睛』"
* item[18].required = true
* item[18].answerOption[0].valueInteger = 1
* item[18].answerOption[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[18].answerOption[0].extension[0].valueString = "正確"
* item[18].answerOption[1].valueInteger = 0
* item[18].answerOption[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[18].answerOption[1].extension[0].valueString = "錯誤"

* item[19].linkId = "MMSE-20"
* item[19].prefix = "20."
* item[19].type = #choice
* item[19].text = "請用左/右手(非利手)拿這張紙(三步驟指令,每對一步驟得一分)"
* item[19].required = true
* item[19].answerOption[0].valueInteger = 3
* item[19].answerOption[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[19].answerOption[0].extension[0].valueString = "三個步驟都對"
* item[19].answerOption[1].valueInteger = 2
* item[19].answerOption[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[19].answerOption[1].extension[0].valueString = "二個步驟對"
* item[19].answerOption[2].valueInteger = 1
* item[19].answerOption[2].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[19].answerOption[2].extension[0].valueString = "一個步驟對"
* item[19].answerOption[3].valueInteger = 0
* item[19].answerOption[3].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[19].answerOption[3].extension[0].valueString = "都不對"

// 書寫 (Writing) - 項目 21
* item[20].linkId = "MMSE-21"
* item[20].prefix = "21."
* item[20].type = #choice
* item[20].text = "請在紙上寫一句語意完整的句子。(含主詞動詞且語意完整的句子)"
* item[20].required = true
* item[20].answerOption[0].valueInteger = 1
* item[20].answerOption[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[20].answerOption[0].extension[0].valueString = "正確"
* item[20].answerOption[1].valueInteger = 0
* item[20].answerOption[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[20].answerOption[1].extension[0].valueString = "錯誤"

// 複製圖形 (Copying) - 項目 22
* item[21].linkId = "MMSE-22"
* item[21].prefix = "22."
* item[21].type = #choice
* item[21].text = "這裡有一個圖形,請在旁邊畫出一個相同的圖形。(兩五邊形,交一四邊形,有兩交點,則給分)"
* item[21].required = true
* item[21].answerOption[0].valueInteger = 1
* item[21].answerOption[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[21].answerOption[0].extension[0].valueString = "正確"
* item[21].answerOption[1].valueInteger = 0
* item[21].answerOption[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* item[21].answerOption[1].extension[0].valueString = "錯誤"
