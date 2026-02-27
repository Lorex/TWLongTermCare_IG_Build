Alias: $LTCQuestionnaireResponse = http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponse
Alias: $LTCQuestionnaire = http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaire


Profile: LTCQuestionnaireResponseAA01
Parent: $LTCQuestionnaireResponse
Id: LTCQuestionnaireResponseAA01
Title: "長期照顧－AA01照顧計畫擬訂與服務連結問卷回應"
Description: "此 Profile 說明本 IG 如何進一步定義 FHIR 的 QuestionnaireResponse Resource，以呈現長期照顧情境中 AA01 照顧計畫擬訂與服務連結問卷的回應內容。"

* status 1..1 MS
* status ^short = "問卷回應的狀態"
* status = #completed

* authored 1..1 MS
* authored ^short = "問卷回應的填寫日期時間"

* questionnaire 1..1 MS
* questionnaire ^short = "問卷的參考，即這個回應是針對哪個問卷？"
* questionnaire only Canonical($LTCQuestionnaire)

* subject 1..1 MS
* subject ^short = "問卷回應的主體，即這個問卷回應的適用對象是誰？"
* subject only Reference(LTCPatient)
* subject.reference 1..1 MS
* subject.reference ^short = "問卷回應的主體。[應輸入 Patient Resource ID]"

* author 0..1 MS
* author ^short = "問卷回應的填寫者，即這個問卷回應是由誰填寫的？"
* author only Reference(LTCPractitioner or LTCPractitionerRole)
* author.reference 1..1 MS
* author.reference ^short = "問卷回應的填寫者。[應輸入 Practitioner Resource ID]"

* item 1..* MS
* item ^short = "問卷回應的項目，即這個問卷回應包含哪些填答項目？"
* item.linkId 1..1 MS
* item.linkId ^short = "問題的唯一識別碼"
* item.text 0..1 MS
* item.text ^short = "問題的內容描述"
* item.answer 0..* MS
* item.answer ^short = "問題的回覆"
* item.answer.value[x] 0..1 MS
* item.answer.value[x] ^short = "回覆的內容"

// Example
Instance: ltc-questionnaire-response-aa01-example
InstanceOf: LTCQuestionnaireResponseAA01
Title: "長期照顧－AA01照顧計畫擬訂與服務連結問卷回應範例"
Description: "一個AA01照顧計畫擬訂與服務連結問卷回應的範例，展示如何使用 LTCQuestionnaireResponseAA01 Profile"
Usage: #example

* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/questionnaire-aa01-example"

* status = #completed

* subject = Reference(ltc-patient-chen-ming-hui)

* authored = "2024-01-15T10:30:00+08:00"

* author = Reference(ltc-practitioner-role-nurse-example)

// 計畫目標
* item[0].linkId = "planTarget"
* item[0].text = "計畫目標"
// 群組項目不需 answer，以下填答置於子項中

// 電聯日期
* item[0].item[0].linkId = "phoneContactDate"
* item[0].item[0].text = "電聯日期"
* item[0].item[0].answer[0].valueDateTime = "2024-01-10T14:00:00+08:00"

// 家訪日期
* item[0].item[1].linkId = "homeVisitDate"
* item[0].item[1].text = "家訪日期"
* item[0].item[1].answer[0].valueDateTime = "2024-01-15T09:00:00+08:00"

// 偕同訪視者
* item[0].item[2].linkId = "coVisitors"
* item[0].item[2].text = "偕同訪視者"
* item[0].item[2].answer[0].valueString = "陳明輝(個案本人)"
* item[0].item[2].answer[1].valueString = "陳美玲(女兒，主要照顧者)"

// 個案概況
* item[0].item[3].linkId = "caseOverview"
* item[0].item[3].text = "個案概況"

// 身心概況
* item[0].item[3].item[0].linkId = "physicalMentalCondition"
* item[0].item[3].item[0].text = "身心概況"
* item[0].item[3].item[0].answer[0].valueString = "個案意識清楚，因中風導致左側偏癱，身障等級為中度，目前定期至復健科就診，服用抗凝血藥物。"

// 經濟收入
* item[0].item[3].item[1].linkId = "economicIncome"
* item[0].item[3].item[1].text = "經濟收入"
* item[0].item[3].item[1].answer[0].valueString = "領有身障津貼每月4,872元，女兒提供生活費，無其他收入來源。"

// 居住環境
* item[0].item[3].item[2].linkId = "livingEnvironment"
* item[0].item[3].item[2].text = "居住環境"
* item[0].item[3].item[2].answer[0].valueString = "與女兒同住於3樓公寓，環境整潔，已安裝扶手及防滑墊，使用助行器輔助行走。"

// 社會支持
* item[0].item[3].item[3].linkId = "socialSupport"
* item[0].item[3].item[3].text = "社會支持"
* item[0].item[3].item[3].answer[0].valueString = "女兒為主要照顧者，支持度高，鄰里關係良好，已申請居家服務，無高風險因子。"

// 其他
* item[0].item[3].item[4].linkId = "other"
* item[0].item[3].item[4].text = "其他"
* item[0].item[3].item[4].answer[0].valueString = "退休前為公務員，生活規律，重視家庭關係。"

// 複評評值
* item[0].item[3].item[5].linkId = "reassessmentValue"
* item[0].item[3].item[5].text = "複評評值"
* item[0].item[3].item[5].answer[0].valueString = "個案狀況穩定，各項服務執行良好，目標達成率達80%以上。"

// 照顧目標
* item[0].item[4].linkId = "careGoals"
* item[0].item[4].text = "照顧目標"
* item[0].item[4].answer[0].valueString = "1. 維持基本日常生活功能 2. 提升行動能力 3. 預防跌倒 4. 維持社會參與"

// 與照專建議服務項目不一致原因說明
* item[0].item[5].linkId = "discrepancyExplanation"
* item[0].item[5].text = "與照專建議服務項目、問題清單不一致原因說明及未來規劃、後續追蹤計劃等"
* item[0].item[5].answer[0].valueString = "經與案家討論，目前暫無備餐之意願，改為代購服務。個案身體狀況穩定，同意接受專業服務。"

// 計畫執行規劃
* item[1].linkId = "executionPlan"
* item[1].text = "計畫執行規劃"

// 長照服務核定項目、頻率
* item[1].item[0].linkId = "approvedServices"
* item[1].item[0].text = "長照服務核定項目、頻率"

// B碼服務
* item[1].item[0].item[0].linkId = "bCodeServices"
* item[1].item[0].item[0].text = "B碼(輪派/指定○○○單位)"
* item[1].item[0].item[0].answer[0].valueString = "BA13[陪同外出]*32: 每週3次,一次2個單位(3*2*4.5=27),陪同個案推助步車到公園散步及購置晚餐。每月5次,搭配陪同就醫使用。共計27+5=32(單位/月)"
* item[1].item[0].item[0].answer[1].valueString = "BA14[陪同就醫]*5: 每週1次,陪同個案至XX醫院XX科及XX科回診。"

// C碼服務
* item[1].item[0].item[1].linkId = "cCodeServices"
* item[1].item[0].item[1].text = "C碼:(輪派/指定○○○單位)"
* item[1].item[0].item[1].answer[0].valueString = "CA01[身體照顧服務]: 協助個案進行日常生活活動，包括個人衛生、穿衣等，提升生活品質。"

// D碼服務
* item[1].item[0].item[2].linkId = "dCodeServices"
* item[1].item[0].item[2].text = "D碼"
* item[1].item[0].item[2].answer[0].valueString = "DA01[居家復健]: 每週2次，協助個案進行肢體復健訓練，提升左側肢體功能。"

// E.F碼服務
* item[1].item[0].item[3].linkId = "eFCodeServices"
* item[1].item[0].item[3].text = "E.F碼"
* item[1].item[0].item[3].answer[0].valueString = "EA01[輔具服務]: 提供助行器維護及調整服務，確保使用安全。"

// G碼服務
* item[1].item[0].item[4].linkId = "gCodeServices"
* item[1].item[0].item[4].text = "G碼"
* item[1].item[0].item[4].answer[0].valueString = "GA01[交通接送]: 每月4次，接送個案至醫院就診及復健。"

// SC碼服務
* item[1].item[0].item[5].linkId = "scCodeServices"
* item[1].item[0].item[5].text = "SC碼"
* item[1].item[0].item[5].answer[0].valueString = "SC01[喘息服務]: 每月2次，提供家屬喘息服務，每次4小時。"

// 營養餐飲服務
* item[1].item[0].item[6].linkId = "mealServices"
* item[1].item[0].item[6].text = "營養餐飲服務: 1日核定○○餐(午/晚餐)"
* item[1].item[0].item[6].answer[0].valueString = "1日核定2餐(午/晚餐)"

// 緊急救援服務
* item[1].item[0].item[7].linkId = "emergencyServices"
* item[1].item[0].item[7].text = "緊急救援服務"
* item[1].item[0].item[7].answer[0].valueString = "緊急救援連線服務，24小時監控，遇緊急狀況立即通報。"

// 轉介其他服務資源
* item[1].item[1].linkId = "otherServices"
* item[1].item[1].text = "轉介其他服務資源"
* item[1].item[1].answer[0].valueString = "轉介至社區關懷據點，參與健康促進活動，維持社會參與。"

// 其他備註（最上層）
* item[2].linkId = "otherNotes"
* item[2].text = "其他備註"
* item[2].answer[0].valueString = "個案家屬配合度高，建議定期追蹤服務品質，如有需要可調整服務內容。"


