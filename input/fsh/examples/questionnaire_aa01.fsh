Instance: questionnaire-aa01-example
InstanceOf: $LTCQuestionnaire
Title: "照顧計畫擬訂與服務連結問卷 (AA01)"
Description: "AA01照顧計畫擬訂與服務連結問卷，用於個案管理師擬定個人化照顧計畫"
Usage: #definition

* status = #active
* url = "http://ltc-ig.fhir.tw/Questionnaire/questionnaire-aa01-example"
* identifier.system = "http://ltc-ig.fhir.tw/questionnaire-id"
* identifier.value = "AA01"
* version = "1.0"
* name = "AA01"
* title = "照顧計畫擬訂與服務連結問卷 (AA01)"
* status = #active

// 計畫目標
* item[0].linkId = "planTarget"
* item[0].text = "計畫目標"
* item[0].type = #group
* item[0].required = true

// 電聯日期
* item[0].item[0].linkId = "phoneContactDate"
* item[0].item[0].text = "電聯日期"
* item[0].item[0].type = #dateTime
* item[0].item[0].required = true

// 家訪日期
* item[0].item[1].linkId = "homeVisitDate"
* item[0].item[1].text = "家訪日期"
* item[0].item[1].type = #dateTime
* item[0].item[1].required = true

// 出院日期
* item[0].item[2].linkId = "dischargeDate"
* item[0].item[2].text = "出院日期"
* item[0].item[2].type = #dateTime
* item[0].item[2].required = false

// 偕同訪視者
* item[0].item[3].linkId = "coVisitors"
* item[0].item[3].text = "偕同訪視者"
* item[0].item[3].type = #string
* item[0].item[3].repeats = true

// 個案概況
* item[0].item[4].linkId = "caseOverview"
* item[0].item[4].text = "個案概況"
* item[0].item[4].type = #group
* item[0].item[4].required = true

// 身心概況
* item[0].item[4].item[0].linkId = "physicalMentalCondition"
* item[0].item[4].item[0].text = "身心概況"
* item[0].item[4].item[0].type = #text
* item[0].item[4].item[0].required = true

// 經濟收入
* item[0].item[4].item[1].linkId = "economicIncome"
* item[0].item[4].item[1].text = "經濟收入"
* item[0].item[4].item[1].type = #text
* item[0].item[4].item[1].required = true

// 居住環境
* item[0].item[4].item[2].linkId = "livingEnvironment"
* item[0].item[4].item[2].text = "居住環境"
* item[0].item[4].item[2].type = #text
* item[0].item[4].item[2].required = true

// 社會支持
* item[0].item[4].item[3].linkId = "socialSupport"
* item[0].item[4].item[3].text = "社會支持"
* item[0].item[4].item[3].type = #text
* item[0].item[4].item[3].required = true

// 其他
* item[0].item[4].item[4].linkId = "other"
* item[0].item[4].item[4].text = "其他"
* item[0].item[4].item[4].type = #text
* item[0].item[4].item[4].required = false

// 複評評值
* item[0].item[4].item[5].linkId = "reassessmentValue"
* item[0].item[4].item[5].text = "複評評值"
* item[0].item[4].item[5].type = #text
* item[0].item[4].item[5].required = true

// 照顧目標
* item[0].item[5].linkId = "careGoals"
* item[0].item[5].text = "照顧目標"
* item[0].item[5].type = #text
* item[0].item[5].required = true

// 與照專建議服務項目不一致原因說明
* item[0].item[6].linkId = "discrepancyExplanation"
* item[0].item[6].text = "與照專建議服務項目、問題清單不一致原因說明及未來規劃、後續追蹤計劃等"
* item[0].item[6].type = #text
* item[0].item[6].required = false

// 計畫執行規劃
* item[1].linkId = "executionPlan"
* item[1].text = "計畫執行規劃"
* item[1].type = #group
* item[1].required = true

// 長照服務核定項目、頻率
* item[1].item[0].linkId = "approvedServices"
* item[1].item[0].text = "長照服務核定項目、頻率"
* item[1].item[0].type = #group
* item[1].item[0].required = true

// B碼服務
* item[1].item[0].item[0].linkId = "bCodeServices"
* item[1].item[0].item[0].text = "B碼(輪派/指定○○○單位)"
* item[1].item[0].item[0].type = #text
* item[1].item[0].item[0].required = false
* item[1].item[0].item[0].repeats = true

// C碼服務
* item[1].item[0].item[1].linkId = "cCodeServices"
* item[1].item[0].item[1].text = "C碼:(輪派/指定○○○單位)"
* item[1].item[0].item[1].type = #text
* item[1].item[0].item[1].required = false
* item[1].item[0].item[1].repeats = true

// D碼服務
* item[1].item[0].item[2].linkId = "dCodeServices"
* item[1].item[0].item[2].text = "D碼"
* item[1].item[0].item[2].type = #text
* item[1].item[0].item[2].required = false
* item[1].item[0].item[2].repeats = true

// E.F碼服務
* item[1].item[0].item[3].linkId = "eFCodeServices"
* item[1].item[0].item[3].text = "E.F碼"
* item[1].item[0].item[3].type = #text
* item[1].item[0].item[3].required = false
* item[1].item[0].item[3].repeats = true

// G碼服務
* item[1].item[0].item[4].linkId = "gCodeServices"
* item[1].item[0].item[4].text = "G碼"
* item[1].item[0].item[4].type = #text
* item[1].item[0].item[4].required = false
* item[1].item[0].item[4].repeats = true

// SC碼服務
* item[1].item[0].item[5].linkId = "scCodeServices"
* item[1].item[0].item[5].text = "SC碼"
* item[1].item[0].item[5].type = #text
* item[1].item[0].item[5].required = false
* item[1].item[0].item[5].repeats = true

// 營養餐飲服務
* item[1].item[0].item[6].linkId = "mealServices"
* item[1].item[0].item[6].text = "營養餐飲服務: 1日核定○○餐(午/晚餐)"
* item[1].item[0].item[6].type = #string
* item[1].item[0].item[6].required = false

// 緊急救援服務
* item[1].item[0].item[7].linkId = "emergencyServices"
* item[1].item[0].item[7].text = "緊急救援服務"
* item[1].item[0].item[7].type = #text
* item[1].item[0].item[7].required = false
* item[1].item[0].item[7].repeats = true

// 轉介其他服務資源
* item[1].item[1].linkId = "otherServices"
* item[1].item[1].text = "轉介其他服務資源"
* item[1].item[1].type = #text
* item[1].item[1].required = false
* item[1].item[1].repeats = true

// 其他備註
* item[2].linkId = "otherNotes"
* item[2].text = "其他備註"
* item[2].type = #text
* item[2].required = false
