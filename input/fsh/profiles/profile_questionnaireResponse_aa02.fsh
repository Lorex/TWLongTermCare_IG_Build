Alias: $LTCQuestionnaireResponse = http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponse
Alias: $LTCQuestionnaire = http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire


Profile: LTCQuestionnaireResponseAA02
Parent: $LTCQuestionnaireResponse
Id: LTCQuestionnaireResponseAA02
Title: "長期照顧－AA02照顧管理追蹤問卷回覆"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現 AA02 照顧管理追蹤問卷的回覆內容。"

* questionnaire 1..1 MS
* questionnaire ^short = "這份回覆對應的問卷"
* questionnaire only Canonical($LTCQuestionnaire)

* status 1..1 MS
* status ^short = "問卷回覆狀態"
* status = #completed

* subject 1..1 MS
* subject only Reference(LTCPatient)
* subject.reference 1..1 MS
* subject.reference ^short = "問卷回應的主體。[應輸入 Patient Resource ID]"

* authored 1..1 MS
* authored ^short = "問卷回應的填寫日期時間"

* author 0..1 MS
* author only Reference(LTCPractitioner or LTCPractitionerRole)
* author.reference 1..1 MS
* author.reference ^short = "問卷回應的填寫者。[應輸入 Practitioner Resource ID]"
* item 1..* MS
* item ^short = "照顧管理問卷回覆的內容"
* item.linkId 1..1 MS
* item.linkId ^short = "問題的唯一識別碼"
* item.text 0..1 MS
* item.text ^short = "問題的內容描述"
* item.answer 0..* MS
* item.answer ^short = "問題的回覆"
* item.answer.value[x] 0..1 MS
* item.answer.value[x] ^short = "回覆的內容"

// Example
Instance: ltc-questionnaire-response-aa02-example
InstanceOf: LTCQuestionnaireResponseAA02
Title: "長期照顧－AA02照顧管理追蹤問卷回應範例"
Description: "一個AA02照顧管理追蹤問卷回應的範例，展示如何使用 LTCQuestionnaireResponseAA02 Profile"
Usage: #example

* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/questionnaire-aa02-example"

* status = #completed

* subject = Reference(ltc-patient-chen-ming-hui)

* authored = "2024-04-05T10:00:00+08:00"

* author = Reference(ltc-practitioner-role-nurse-example)

// 追蹤服務適應與介入情形
* item[0].linkId = "serviceAdaptation"
* item[0].text = "追蹤服務適應與介入情形"

// 聯繫時間
* item[0].item[0].linkId = "contactTime"
* item[0].item[0].text = "聯繫時間"
* item[0].item[0].answer[0].valueDateTime = "2024-04-05T10:00:00+08:00"

// 電訪對象
* item[0].item[1].linkId = "contactTarget"
* item[0].item[1].text = "電訪對象"
* item[0].item[1].answer[0].valueString = "個案"
* item[0].item[1].answer[1].valueString = "女兒（主要照顧者）"

// 核定服務類別及頻率（填入最新一筆計劃核定碼別及各碼別適應情形）
* item[1].linkId = "approvedServices"
* item[1].text = "核定服務類別及頻率（填入最新一筆計劃核定碼別及各碼別適應情形）"

* item[1].item[0].linkId = "homeServicePlan"
* item[1].item[0].text = "居家服務（應填寫碼別與服務單位）"
* item[1].item[0].answer[0].valueString = "BA01×31；每週3次，每次120分鐘，輪派單位○○社區居服"

* item[1].item[1].linkId = "transportationPlan"
* item[1].item[1].text = "交通服務（金額/頻率/使用規劃）"
* item[1].item[1].answer[0].valueString = "每月1,840元，預計每三個月回診2趟"

* item[1].item[2].linkId = "professionalServicePlan"
* item[1].item[2].text = "專業服務（代碼/目標/對象/時間）"
* item[1].item[2].answer[0].valueString = "CA07×1；目標：提升移位能力；對象：個案及居服員；時間：每週一次共四週"

* item[1].item[3].linkId = "respitePlan"
* item[1].item[3].text = "喘息服務"
* item[1].item[3].answer[0].valueString = "GA09×42，區間4/01–4/30，單位：○○喘息服務中心"

* item[1].item[4].linkId = "assistiveDevicesPlan"
* item[1].item[4].text = "輔具服務（購置/租賃/品項）"
* item[1].item[4].answer[0].valueString = "EA01-2便盆椅、EA01-3沐浴椅"

* item[1].item[5].linkId = "otherReferralPlan"
* item[1].item[5].text = "其他轉介資源、服務（無論有無轉介皆須說明）"
* item[1].item[5].answer[0].valueString = "轉介家庭照顧者支持服務，安排喘息與照顧技巧課程"

* item[1].item[6].linkId = "closeCaseNote"
* item[1].item[6].text = "複評後無失能欲結案，已提供相對應之資源訊息"
* item[1].item[6].answer[0].valueString = "無"

// 各項服務目標及整體計畫目標達成情形
* item[2].linkId = "serviceUsageTracking"
* item[2].text = "各項服務目標及整體計畫目標達成情形"

// 長照服務使用情形追蹤
* item[2].item[0].linkId = "homeServiceTarget"
* item[2].item[0].text = "長照服務使用情形追蹤"

* item[2].item[0].item[0].linkId = "homeServiceStatus"
* item[2].item[0].item[0].text = "居家服務"
* item[2].item[0].item[0].answer[0].valueString = "4/10 啟動服務，狀況良好"

* item[2].item[0].item[1].linkId = "professionalServiceStatus"
* item[2].item[0].item[1].text = "專業服務"
* item[2].item[0].item[1].answer[0].valueString = "已完成3次家訪指導，學習情形佳"

* item[2].item[0].item[2].linkId = "transportationServiceStatus"
* item[2].item[0].item[2].text = "交通服務"
* item[2].item[0].item[2].answer[0].valueString = "本月使用2趟送醫"

* item[2].item[0].item[3].linkId = "respiteServiceStatus"
* item[2].item[0].item[3].text = "喘息服務"
* item[2].item[0].item[3].answer[0].valueString = "已完成申請，單位待安排"

* item[2].item[0].item[4].linkId = "assistiveDevicesStatus"
* item[2].item[0].item[4].text = "輔具服務"
* item[2].item[0].item[4].answer[0].valueString = "已購買便盆椅與沐浴椅，無其他問題"

* item[2].item[0].item[5].linkId = "referralProgress"
* item[2].item[0].item[5].text = "轉介家照服務資源"
* item[2].item[0].item[5].answer[0].valueString = "4/03 轉介○○社工，4/06 完成連結並安排4/20 家訪"

// 計畫適切性與需求異動
* item[3].linkId = "planSuitabilityChange"
* item[3].text = "整體計畫的適切性及需求異動"
* item[3].answer[0].valueString = "符合，家屬配合度高，無異動"

// 其他處理事項
* item[4].linkId = "otherHandling"
* item[4].text = "其他處理事項（服務諮詢、申訴處理）"
* item[4].answer[0].valueString = "無"


