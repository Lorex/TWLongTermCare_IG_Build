Instance: questionnaire-aa02-example
InstanceOf: $LTCQuestionnaire
Title: "照顧管理問卷 (AA02)"
Description: "依 AA02 追蹤服務適應與介入、各項服務使用情形、計畫適切性與需求異動、其他處理事項之書寫範例而設計。"
Usage: #definition

* url = "http://ltc-ig.fhir.tw/Questionnaire/questionnaire-aa02-example"
* identifier.system = "http://ltc-ig.fhir.tw/questionnaire-id"
* identifier.value = "AA02"
* version = "1.0"
* name = "AA02"
* title = "照顧管理問卷 (AA02)"
* status = #active

// 追蹤服務適應與介入情形
* item[0].linkId = "serviceAdaptation"
* item[0].text = "追蹤服務適應與介入情形"
* item[0].type = #group
* item[0].required = true

// 聯繫時間
* item[0].item[0].linkId = "contactTime"
* item[0].item[0].text = "聯繫時間"
* item[0].item[0].type = #dateTime
* item[0].item[0].required = true

// 電訪對象
* item[0].item[1].linkId = "contactTarget"
* item[0].item[1].text = "電訪對象"
* item[0].item[1].type = #string
* item[0].item[1].repeats = true

// 核定服務類別及頻率（填入最新一筆計劃核定碼別及各碼別適應情形）
* item[1].linkId = "approvedServices"
* item[1].text = "核定服務類別及頻率（填入最新一筆計劃核定碼別及各碼別適應情形）"
* item[1].type = #group

* item[1].item[0].linkId = "homeServicePlan"
* item[1].item[0].text = "居家服務（應填寫碼別與服務單位）"
* item[1].item[0].type = #text
* item[1].item[0].repeats = true

* item[1].item[1].linkId = "transportationPlan"
* item[1].item[1].text = "交通服務（金額/頻率/使用規劃）"
* item[1].item[1].type = #text

* item[1].item[2].linkId = "professionalServicePlan"
* item[1].item[2].text = "專業服務（代碼/目標/對象/時間）"
* item[1].item[2].type = #text

* item[1].item[3].linkId = "respitePlan"
* item[1].item[3].text = "喘息服務"
* item[1].item[3].type = #text

* item[1].item[4].linkId = "assistiveDevicesPlan"
* item[1].item[4].text = "輔具服務（購置/租賃/品項）"
* item[1].item[4].type = #text

* item[1].item[5].linkId = "otherReferralPlan"
* item[1].item[5].text = "其他轉介資源、服務（無論有無轉介皆須說明）"
* item[1].item[5].type = #text
* item[1].item[5].repeats = true

* item[1].item[6].linkId = "closeCaseNote"
* item[1].item[6].text = "複評後無失能欲結案，已提供相對應之資源訊息"
* item[1].item[6].type = #text


// 各項服務目標及整體計畫目標達成情形
* item[2].linkId = "serviceUsageTracking"
* item[2].text = "各項服務目標及整體計畫目標達成情形"
* item[2].type = #group

* item[2].item[0].linkId = "homeServiceTarget"
* item[2].item[0].text = "長照服務使用情形追蹤"
* item[2].item[0].type = #group


* item[2].item[0].item[0].linkId = "homeServiceStatus"
* item[2].item[0].item[0].text = "居家服務"
* item[2].item[0].item[0].type = #text

* item[2].item[0].item[1].linkId = "professionalServiceStatus"
* item[2].item[0].item[1].text = "專業服務"
* item[2].item[0].item[1].type = #text

* item[2].item[0].item[2].linkId = "transportationServiceStatus"
* item[2].item[0].item[2].text = "交通服務"
* item[2].item[0].item[2].type = #text

* item[2].item[0].item[3].linkId = "respiteServiceStatus"
* item[2].item[0].item[3].text = "喘息服務"
* item[2].item[0].item[3].type = #text

* item[2].item[0].item[4].linkId = "assistiveDevicesStatus"
* item[2].item[0].item[4].text = "輔具服務"
* item[2].item[0].item[4].type = #text

* item[2].item[0].item[5].linkId = "referralProgress"
* item[2].item[0].item[5].text = "轉介家照服務資源"
* item[2].item[0].item[5].type = #text

// 計畫適切性與需求異動
* item[3].linkId = "planSuitabilityChange"
* item[3].text = "整體計畫的適切性及需求異動"
* item[3].type = #text

// 其他處理事項
* item[4].linkId = "otherHandling"
* item[4].text = "其他處理事項（服務諮詢、申訴處理）"
* item[4].type = #text


