Alias: $QuestionnaireResponse = http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse

Profile: LTCQuestionnaireResponseMMSE
Parent: $QuestionnaireResponse
Id: LTCQuestionnaireResponseMMSE
Title: "長期照顧－簡易智能狀態測驗回覆"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現簡易智能狀態測驗 (MMSE) 的回覆內容。"

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

// 總分計算的擴充 - 使用 Extension 來記錄 MMSE 總分

// Example
Instance: ltc-questionnaire-response-mmse-example
InstanceOf: LTCQuestionnaireResponseMMSE
Title: "簡易智能狀態測驗回覆範例"
Description: "一個簡易智能狀態測驗回覆的範例，展示如何使用 LTCQuestionnaireResponseMMSE Profile"
Usage: #example

* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-mmse"
* status = #completed
* subject = Reference(ltc-patient-chen-ming-hui)
* authored = "2024-01-15T10:30:00+08:00"
* author = Reference(ltc-practitioner-physician-aa12-example)
* source = Reference(ltc-patient-chen-ming-hui)
* meta.profile[0] = "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseMMSE"

// 定向感 (Orientation) - 項目 1-10
* item[0].linkId = "MMSE-1"
* item[0].text = "今年是那一年?"
* item[0].answer[0].valueInteger = 1

* item[1].linkId = "MMSE-2"
* item[1].text = "現在是什麼季節?"
* item[1].answer[0].valueInteger = 1

* item[2].linkId = "MMSE-3"
* item[2].text = "今天是幾號?"
* item[2].answer[0].valueInteger = 1

* item[3].linkId = "MMSE-4"
* item[3].text = "今天是禮拜幾?"
* item[3].answer[0].valueInteger = 1

* item[4].linkId = "MMSE-5"
* item[4].text = "現在是那一個月份?"
* item[4].answer[0].valueInteger = 1

* item[5].linkId = "MMSE-6"
* item[5].text = "我們現在是在那一個省?"
* item[5].answer[0].valueInteger = 1

* item[6].linkId = "MMSE-7"
* item[6].text = "我們現在是在那一個縣、市?"
* item[6].answer[0].valueInteger = 1

* item[7].linkId = "MMSE-8"
* item[7].text = "這裡屬於哪一個區或是鄉鎮?"
* item[7].answer[0].valueInteger = 1

* item[8].linkId = "MMSE-9"
* item[8].text = "這個社區單位(醫院、診所)的名稱?"
* item[8].answer[0].valueInteger = 1

* item[9].linkId = "MMSE-10"
* item[9].text = "現在我們是在幾樓?"
* item[9].answer[0].valueInteger = 1

// 記憶登錄 (Registration) - 項目 11
* item[10].linkId = "MMSE-11"
* item[10].text = "請重複這三個名稱,按第一次複述結果計分"
* item[10].answer[0].valueInteger = 3

// 注意力和計算 (Attention and Calculation) - 項目 12
* item[11].linkId = "MMSE-12"
* item[11].text = "請從100開始連續減7,一直減7直到我說停為止。(每減對一次得一分)"
* item[11].answer[0].valueInteger = 5

// 記憶回憶 (Recall) - 項目 13-15
* item[12].linkId = "MMSE-13"
* item[12].text = "藍色"
* item[12].answer[0].valueInteger = 1

* item[13].linkId = "MMSE-14"
* item[13].text = "悲傷"
* item[13].answer[0].valueInteger = 1

* item[14].linkId = "MMSE-15"
* item[14].text = "火車"
* item[14].answer[0].valueInteger = 1

// 命名 (Naming) - 項目 16-17
* item[15].linkId = "MMSE-16"
* item[15].text = "(拿出手錶)這是什麼?"
* item[15].answer[0].valueInteger = 1

* item[16].linkId = "MMSE-17"
* item[16].text = "(拿出鉛筆)這是什麼?"
* item[16].answer[0].valueInteger = 1

// 複述 (Repetition) - 項目 18
* item[17].linkId = "MMSE-18"
* item[17].text = "請跟我唸一句話『白紙真正寫黑字』"
* item[17].answer[0].valueInteger = 1

// 三階段指令 (Three-Stage Command) - 項目 19-20
* item[18].linkId = "MMSE-19"
* item[18].text = "請唸一遍並做做看『請閉上眼睛』"
* item[18].answer[0].valueInteger = 1

* item[19].linkId = "MMSE-20"
* item[19].text = "請用左/右手(非利手)拿這張紙(三步驟指令,每對一步驟得一分)"
* item[19].answer[0].valueInteger = 3

// 書寫 (Writing) - 項目 21
* item[20].linkId = "MMSE-21"
* item[20].text = "請在紙上寫一句語意完整的句子。(含主詞動詞且語意完整的句子)"
* item[20].answer[0].valueInteger = 1

// 複製圖形 (Copying) - 項目 22
* item[21].linkId = "MMSE-22"
* item[21].text = "這裡有一個圖形,請在旁邊畫出一個相同的圖形。(兩五邊形,交一四邊形,有兩交點,則給分)"
* item[21].answer[0].valueInteger = 1

// 總分計算
* extension[0].url = "http://ltc-ig.fhir.tw/StructureDefinition/mmse-total-score"
* extension[0].valueInteger = 28
