Logical: HNCareRecordModel
Id: HNCareRecordModel
Title: "居家護理－照護紀錄邏輯模型"
Description: "描述居家護理照護紀錄的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。"
* ^status = #draft
* ^version = "5.0.16"
* caseID 1..1 string "個案身分證字號" "個案身分證字號"
* endDate 1..1 date "收案日期" "收案日期"
* date 1..1 date "紀錄日期" "紀錄日期"
* nurseID 1..1 string "護理人員身分證字號" "護理人員身分證字號"
* time 1..1 time "照護開始時間" "照護開始時間"
* time2 1..1 time "照護結束時間" "照護結束時間"
* recordSource 1..1 BackboneElement "紀錄來源" "紀錄來源"
* recordSource.value 1..1 Coding "選項" "選項"
* recordSource.value from hn-vs-04e9c37073f4 (required)
* recordSource.other 0..1 string "補充說明" "補充說明。選擇其他時應填寫說明。"
* height 0..1 decimal "身高（公分）" "身高（公分）。0 至 200，至小數一位。"
* height ^minValueDecimal = 0
* height ^maxValueDecimal = 200
* weight 0..1 decimal "體重（公斤）" "體重（公斤）。0 至 200，至小數一位。"
* weight ^minValueDecimal = 0
* weight ^maxValueDecimal = 200
* bMI 0..1 decimal "身體質量指數" "身體質量指數。0 至 200，至小數一位。"
* bMI ^minValueDecimal = 0
* bMI ^maxValueDecimal = 200
* armW 0..1 decimal "臂中圍（公分）" "臂中圍（公分）。0 至 200，至小數一位。"
* armW ^minValueDecimal = 0
* armW ^maxValueDecimal = 200
* legW 0..1 decimal "小腿圍（公分）" "小腿圍（公分）。0 至 200，至小數一位。"
* legW ^minValueDecimal = 0
* legW ^maxValueDecimal = 200
* live 1..1 BackboneElement "居住所" "居住所"
* live.value 1..1 Coding "選項" "選項"
* live.value from hn-vs-d93b34f7b736 (required)
* live.other 0..1 string "補充說明" "補充說明。選擇其他時應填寫說明。"
* liveArea 1..1 BackboneElement "居住區域" "居住區域"
* liveArea.city 1..1 string "縣市" "縣市"
* liveArea.area 1..1 string "鄉鎮市區" "鄉鎮市區"
* useResources 0..1 BackboneElement "使用資源" "使用資源"
* useResources.values 0..* Coding "選項" "選項"
* useResources.values from hn-vs-38762eb1c742 (required)
* useResources.other 0..1 string "補充說明" "補充說明。選擇其他時應填寫說明。"
* serviceItems 0..1 BackboneElement "服務項目" "服務項目"
* serviceItems.values 0..* Coding "選項" "選項"
* serviceItems.values from hn-vs-c8a0ace9ffad (required)
* serviceItems.other 0..1 string "補充說明" "補充說明。選擇其他時應填寫說明。"
* isUnplanned 1..1 Coding "是否非計畫性再住院" "是否非計畫性再住院"
* isUnplanned from hn-vs-58e4d598f859 (required)
* unplanned 0..1 BackboneElement "非計畫性再住院" "非計畫性再住院"
* unplanned.date 1..1 date "發生日期" "發生日期"
* unplanned.time 1..1 Coding "發生時段" "發生時段。此事件時段採規範時段選項；不可推定精確發生時間。"
* unplanned.time from hn-vs-7d118ae5ad21 (required)
* unplanned.statement 1..1 string "發生原因" "發生原因"
* isEmergency 1..1 Coding "是否使用急診" "是否使用急診"
* isEmergency from hn-vs-58e4d598f859 (required)
* emergency 0..1 BackboneElement "使用急診" "使用急診"
* emergency.date 1..1 date "發生日期" "發生日期"
* emergency.time 1..1 Coding "發生時段" "發生時段。此事件時段採規範時段選項；不可推定精確發生時間。"
* emergency.time from hn-vs-7d118ae5ad21 (required)
* emergency.statement 1..1 string "發生原因" "發生原因"
* isSkinDamages 1..1 Coding "是否皮膚損傷" "是否皮膚損傷"
* isSkinDamages from hn-vs-58e4d598f859 (required)
* skinDamages 0..* BackboneElement "皮膚損傷" "皮膚損傷"
* skinDamages.date 1..1 date "發生日期" "發生日期"
* skinDamages.time 1..1 Coding "發生時段" "發生時段。此事件時段採規範時段選項；不可推定精確發生時間。"
* skinDamages.time from hn-vs-7d118ae5ad21 (required)
* skinDamages.kind 0..1 BackboneElement "損傷類型" "損傷類型"
* skinDamages.kind.value 1..1 Coding "選項" "選項"
* skinDamages.kind.value from hn-vs-b0ba220a4535 (required)
* skinDamages.kind.other 0..1 string "補充說明" "補充說明。選擇其他時應填寫說明。"
* skinDamages.statement 1..1 string "發生原因" "發生原因"
* isEmergencyEvents 1..1 Coding "是否緊急事件" "是否緊急事件"
* isEmergencyEvents from hn-vs-58e4d598f859 (required)
* emergencyEvents 0..* BackboneElement "緊急事件" "緊急事件"
* emergencyEvents.emergencyType 1..1 BackboneElement "事件類型" "事件類型"
* emergencyEvents.emergencyType.value 1..1 Coding "選項" "選項"
* emergencyEvents.emergencyType.value from hn-vs-4abebe47a94c (required)
* emergencyEvents.emergencyType.other 0..1 string "補充說明" "補充說明。選擇其他時應填寫說明。"
* emergencyEvents.date 1..1 date "發生日期" "發生日期"
* emergencyEvents.time 1..1 Coding "發生時段" "發生時段。此事件時段採規範時段選項；不可推定精確發生時間。"
* emergencyEvents.time from hn-vs-7d118ae5ad21 (required)
* emergencyEvents.reason 1..1 string "發生原因" "發生原因"
* emergencyEvents.description 1..1 string "事件描述" "事件描述"
* emergencyEvents.process 1..1 string "通報及處理過程" "通報及處理過程"
* emergencyEvents.report 1..1 string "檢討紀錄" "檢討紀錄"
* emergencyEvents.createID 1..1 string "照護人員身分證字號" "照護人員身分證字號"
* vitalSign 0..1 BackboneElement "生命徵象" "生命徵象"
* vitalSign.date 1..1 date "量測日期" "量測日期"
* vitalSign.time 1..1 time "量測時間" "量測時間"
* vitalSign.temperature 1..1 decimal "體溫" "體溫。攝氏度。原 API 為字串；填入 0 至 999，至小數一位。"
* vitalSign.temperature ^minValueDecimal = 0
* vitalSign.temperature ^maxValueDecimal = 999
* vitalSign.pulse 1..1 integer "脈搏" "脈搏。每分鐘次數，0 至 999。"
* vitalSign.pulse ^minValueInteger = 0
* vitalSign.pulse ^maxValueInteger = 999
* vitalSign.respiration 1..1 integer "呼吸" "呼吸。每分鐘次數，0 至 999。"
* vitalSign.respiration ^minValueInteger = 0
* vitalSign.respiration ^maxValueInteger = 999
* vitalSign.bloodPressure1 1..1 integer "收縮壓" "收縮壓。mmHg，0 至 999。"
* vitalSign.bloodPressure1 ^minValueInteger = 0
* vitalSign.bloodPressure1 ^maxValueInteger = 999
* vitalSign.bloodPressure2 1..1 integer "舒張壓" "舒張壓。mmHg，0 至 999。"
* vitalSign.bloodPressure2 ^minValueInteger = 0
* vitalSign.bloodPressure2 ^maxValueInteger = 999
* vitalSign.bloodGlucose 0..1 integer "血糖" "血糖。mg/dL，0 至 999。"
* vitalSign.bloodGlucose ^minValueInteger = 0
* vitalSign.bloodGlucose ^maxValueInteger = 999
* vitalSign.bloodOxygen 0..1 integer "血氧" "血氧。百分比，0 至 100。"
* vitalSign.bloodOxygen ^minValueInteger = 0
* vitalSign.bloodOxygen ^maxValueInteger = 100
* woundRecords 0..* BackboneElement "傷口紀錄" "傷口紀錄"
* woundRecords.part 1..1 string "傷口部位" "傷口部位"
* woundRecords.length 1..1 decimal "傷口長度" "傷口長度。原規範未明訂單位，不自行指定。壓傷無法分期時可無數值。"
* woundRecords.length ^minValueDecimal = 0
* woundRecords.width 1..1 decimal "傷口寬度" "傷口寬度。原規範未明訂單位，不自行指定。壓傷無法分期時可無數值。"
* woundRecords.width ^minValueDecimal = 0
* woundRecords.depth 1..1 decimal "傷口深度" "傷口深度。原規範未明訂單位，不自行指定。壓傷無法分期時可無數值。"
* woundRecords.depth ^minValueDecimal = 0
* woundRecords.category 1..1 Coding "傷口分類" "傷口分類"
* woundRecords.category from hn-vs-ab16e9d81e7b (required)
* woundRecords.level 1..1 Coding "傷口等級" "傷口等級"
* woundRecords.level from hn-vs-de533dbea66c (required)
* woundRecords.statement 0..1 string "傷口說明" "傷口說明"
* fJMEvaluation 0..1 Coding "足部護理評估狀態" "足部護理評估狀態"
* fJMEvaluation from hn-vs-5154109e8985 (required)
* fJM 0..* BackboneElement "足部護理" "足部護理"
* fJM.item 1..1 Coding "項目分類" "項目分類"
* fJM.item from hn-vs-0a65df60cccf (required)
* fJM.question 1..1 Coding "評估項目" "評估項目"
* fJM.question from hn-vs-14764e5914f7 (required)
* fJM.answers 1..1 BackboneElement "答案" "答案"
* fJM.answers.values 0..* string "選項" "選項"
* fJM.answers.other 0..1 string "補充說明" "補充說明"
* fJM.answers.fJMList 0..* BackboneElement "操作項目紀錄" "操作項目紀錄"
* fJM.answers.fJMList.subQuestion 1..1 Coding "操作項目與流程" "操作項目與流程"
* fJM.answers.fJMList.subQuestion from hn-vs-dfa44a5bba0b (required)
* fJM.answers.fJMList.subAnswers 1..1 Coding "有反應物" "有反應物"
* fJM.answers.fJMList.subAnswers from hn-vs-58e4d598f859 (required)
* fJM.answers.fJMList.subStatement 1..1 string "觀察紀錄" "觀察紀錄"
* fJM.answers.fJMVas 0..1 BackboneElement "疼痛量尺" "疼痛量尺"
* fJM.answers.fJMVas.part 1..1 string "疼痛部位" "疼痛部位"
* fJM.answers.fJMVas.point 1..1 integer "疼痛程度" "疼痛程度。1 至 10 分。"
* fJM.answers.fJMVas.point ^minValueInteger = 1
* fJM.answers.fJMVas.point ^maxValueInteger = 10
* fJM.statement 1..1 string "主訴敘述" "主訴敘述"
* statement 1..1 string "照護紀錄" "照護紀錄"
* isTemporary 0..1 Coding "是否暫存" "是否暫存"
* isTemporary from hn-vs-58e4d598f859 (required)

Mapping: HNCareRecordModelToFHIR
Id: hn-carerecord-fhir
Title: "居家護理－照護紀錄欄位對應"
Source: HNCareRecordModel
Target: "http://ltc-ig.fhir.tw/StructureDefinition/HNCareRecordResponse"
* caseID -> "QuestionnaireResponse.item.where(linkId='CaseID')" "來源欄位／題目：CaseID"
* endDate -> "QuestionnaireResponse.item.where(linkId='EndDate')" "來源欄位／題目：EndDate"
* date -> "QuestionnaireResponse.item.where(linkId='Date')" "來源欄位／題目：Date"
* nurseID -> "QuestionnaireResponse.item.where(linkId='NurseID')" "來源欄位／題目：NurseID"
* time -> "QuestionnaireResponse.item.where(linkId='Time')" "來源欄位／題目：Time"
* time2 -> "QuestionnaireResponse.item.where(linkId='Time2')" "來源欄位／題目：Time2"
* recordSource -> "QuestionnaireResponse.item.where(linkId='RecordSource')" "來源欄位／題目：RecordSource"
* recordSource.value -> "QuestionnaireResponse.item.where(linkId='RecordSource').item.where(linkId='RecordSource.Value')" "來源欄位／題目：RecordSource.Value"
* recordSource.other -> "QuestionnaireResponse.item.where(linkId='RecordSource').item.where(linkId='RecordSource.Other')" "來源欄位／題目：RecordSource.Other"
* height -> "QuestionnaireResponse.item.where(linkId='Height')" "來源欄位／題目：Height"
* weight -> "QuestionnaireResponse.item.where(linkId='Weight')" "來源欄位／題目：Weight"
* bMI -> "QuestionnaireResponse.item.where(linkId='BMI')" "來源欄位／題目：BMI"
* armW -> "QuestionnaireResponse.item.where(linkId='ArmW')" "來源欄位／題目：ArmW"
* legW -> "QuestionnaireResponse.item.where(linkId='LegW')" "來源欄位／題目：LegW"
* live -> "QuestionnaireResponse.item.where(linkId='Live')" "來源欄位／題目：Live"
* live.value -> "QuestionnaireResponse.item.where(linkId='Live').item.where(linkId='Live.Value')" "來源欄位／題目：Live.Value"
* live.other -> "QuestionnaireResponse.item.where(linkId='Live').item.where(linkId='Live.Other')" "來源欄位／題目：Live.Other"
* liveArea -> "QuestionnaireResponse.item.where(linkId='LiveArea')" "來源欄位／題目：LiveArea"
* liveArea.city -> "QuestionnaireResponse.item.where(linkId='LiveArea').item.where(linkId='LiveArea.City')" "來源欄位／題目：LiveArea.City"
* liveArea.area -> "QuestionnaireResponse.item.where(linkId='LiveArea').item.where(linkId='LiveArea.Area')" "來源欄位／題目：LiveArea.Area"
* useResources -> "QuestionnaireResponse.item.where(linkId='UseResources')" "來源欄位／題目：UseResources"
* useResources.values -> "QuestionnaireResponse.item.where(linkId='UseResources').item.where(linkId='UseResources.Values')" "來源欄位／題目：UseResources.Values"
* useResources.other -> "QuestionnaireResponse.item.where(linkId='UseResources').item.where(linkId='UseResources.Other')" "來源欄位／題目：UseResources.Other"
* serviceItems -> "QuestionnaireResponse.item.where(linkId='ServiceItems')" "來源欄位／題目：ServiceItems"
* serviceItems.values -> "QuestionnaireResponse.item.where(linkId='ServiceItems').item.where(linkId='ServiceItems.Values')" "來源欄位／題目：ServiceItems.Values"
* serviceItems.other -> "QuestionnaireResponse.item.where(linkId='ServiceItems').item.where(linkId='ServiceItems.Other')" "來源欄位／題目：ServiceItems.Other"
* isUnplanned -> "QuestionnaireResponse.item.where(linkId='IsUnplanned')" "來源欄位／題目：IsUnplanned"
* unplanned -> "QuestionnaireResponse.item.where(linkId='Unplanned')" "來源欄位／題目：Unplanned"
* unplanned.date -> "QuestionnaireResponse.item.where(linkId='Unplanned').item.where(linkId='Unplanned.Date')" "來源欄位／題目：Unplanned.Date"
* unplanned.time -> "QuestionnaireResponse.item.where(linkId='Unplanned').item.where(linkId='Unplanned.Time')" "來源欄位／題目：Unplanned.Time"
* unplanned.statement -> "QuestionnaireResponse.item.where(linkId='Unplanned').item.where(linkId='Unplanned.Statement')" "來源欄位／題目：Unplanned.Statement"
* isEmergency -> "QuestionnaireResponse.item.where(linkId='IsEmergency')" "來源欄位／題目：IsEmergency"
* emergency -> "QuestionnaireResponse.item.where(linkId='Emergency')" "來源欄位／題目：Emergency"
* emergency.date -> "QuestionnaireResponse.item.where(linkId='Emergency').item.where(linkId='Emergency.Date')" "來源欄位／題目：Emergency.Date"
* emergency.time -> "QuestionnaireResponse.item.where(linkId='Emergency').item.where(linkId='Emergency.Time')" "來源欄位／題目：Emergency.Time"
* emergency.statement -> "QuestionnaireResponse.item.where(linkId='Emergency').item.where(linkId='Emergency.Statement')" "來源欄位／題目：Emergency.Statement"
* isSkinDamages -> "QuestionnaireResponse.item.where(linkId='IsSkinDamages')" "來源欄位／題目：IsSkinDamages"
* skinDamages -> "QuestionnaireResponse.item.where(linkId='SkinDamages')" "來源欄位／題目：SkinDamages"
* skinDamages.date -> "QuestionnaireResponse.item.where(linkId='SkinDamages').item.where(linkId='SkinDamages.Date')" "來源欄位／題目：SkinDamages.Date"
* skinDamages.time -> "QuestionnaireResponse.item.where(linkId='SkinDamages').item.where(linkId='SkinDamages.Time')" "來源欄位／題目：SkinDamages.Time"
* skinDamages.kind -> "QuestionnaireResponse.item.where(linkId='SkinDamages').item.where(linkId='SkinDamages.Kind')" "來源欄位／題目：SkinDamages.Kind"
* skinDamages.kind.value -> "QuestionnaireResponse.item.where(linkId='SkinDamages').item.where(linkId='SkinDamages.Kind').item.where(linkId='SkinDamages.Kind.Value')" "來源欄位／題目：SkinDamages.Kind.Value"
* skinDamages.kind.other -> "QuestionnaireResponse.item.where(linkId='SkinDamages').item.where(linkId='SkinDamages.Kind').item.where(linkId='SkinDamages.Kind.Other')" "來源欄位／題目：SkinDamages.Kind.Other"
* skinDamages.statement -> "QuestionnaireResponse.item.where(linkId='SkinDamages').item.where(linkId='SkinDamages.Statement')" "來源欄位／題目：SkinDamages.Statement"
* isEmergencyEvents -> "QuestionnaireResponse.item.where(linkId='IsEmergencyEvents')" "來源欄位／題目：IsEmergencyEvents"
* emergencyEvents -> "QuestionnaireResponse.item.where(linkId='EmergencyEvents')" "來源欄位／題目：EmergencyEvents"
* emergencyEvents.emergencyType -> "QuestionnaireResponse.item.where(linkId='EmergencyEvents').item.where(linkId='EmergencyEvents.EmergencyType')" "來源欄位／題目：EmergencyEvents.EmergencyType"
* emergencyEvents.emergencyType.value -> "QuestionnaireResponse.item.where(linkId='EmergencyEvents').item.where(linkId='EmergencyEvents.EmergencyType').item.where(linkId='EmergencyEvents.EmergencyType.Value')" "來源欄位／題目：EmergencyEvents.EmergencyType.Value"
* emergencyEvents.emergencyType.other -> "QuestionnaireResponse.item.where(linkId='EmergencyEvents').item.where(linkId='EmergencyEvents.EmergencyType').item.where(linkId='EmergencyEvents.EmergencyType.Other')" "來源欄位／題目：EmergencyEvents.EmergencyType.Other"
* emergencyEvents.date -> "QuestionnaireResponse.item.where(linkId='EmergencyEvents').item.where(linkId='EmergencyEvents.Date')" "來源欄位／題目：EmergencyEvents.Date"
* emergencyEvents.time -> "QuestionnaireResponse.item.where(linkId='EmergencyEvents').item.where(linkId='EmergencyEvents.Time')" "來源欄位／題目：EmergencyEvents.Time"
* emergencyEvents.reason -> "QuestionnaireResponse.item.where(linkId='EmergencyEvents').item.where(linkId='EmergencyEvents.Reason')" "來源欄位／題目：EmergencyEvents.Reason"
* emergencyEvents.description -> "QuestionnaireResponse.item.where(linkId='EmergencyEvents').item.where(linkId='EmergencyEvents.Description')" "來源欄位／題目：EmergencyEvents.Description"
* emergencyEvents.process -> "QuestionnaireResponse.item.where(linkId='EmergencyEvents').item.where(linkId='EmergencyEvents.Process')" "來源欄位／題目：EmergencyEvents.Process"
* emergencyEvents.report -> "QuestionnaireResponse.item.where(linkId='EmergencyEvents').item.where(linkId='EmergencyEvents.Report')" "來源欄位／題目：EmergencyEvents.Report"
* emergencyEvents.createID -> "QuestionnaireResponse.item.where(linkId='EmergencyEvents').item.where(linkId='EmergencyEvents.CreateID')" "來源欄位／題目：EmergencyEvents.CreateID"
* vitalSign -> "QuestionnaireResponse.item.where(linkId='VitalSign')" "來源欄位／題目：VitalSign"
* vitalSign.date -> "QuestionnaireResponse.item.where(linkId='VitalSign').item.where(linkId='VitalSign.Date')" "來源欄位／題目：VitalSign.Date"
* vitalSign.time -> "QuestionnaireResponse.item.where(linkId='VitalSign').item.where(linkId='VitalSign.Time')" "來源欄位／題目：VitalSign.Time"
* vitalSign.temperature -> "QuestionnaireResponse.item.where(linkId='VitalSign').item.where(linkId='VitalSign.Temperature')" "來源欄位／題目：VitalSign.Temperature"
* vitalSign.pulse -> "QuestionnaireResponse.item.where(linkId='VitalSign').item.where(linkId='VitalSign.Pulse')" "來源欄位／題目：VitalSign.Pulse"
* vitalSign.respiration -> "QuestionnaireResponse.item.where(linkId='VitalSign').item.where(linkId='VitalSign.Respiration')" "來源欄位／題目：VitalSign.Respiration"
* vitalSign.bloodPressure1 -> "QuestionnaireResponse.item.where(linkId='VitalSign').item.where(linkId='VitalSign.BloodPressure1')" "來源欄位／題目：VitalSign.BloodPressure1"
* vitalSign.bloodPressure2 -> "QuestionnaireResponse.item.where(linkId='VitalSign').item.where(linkId='VitalSign.BloodPressure2')" "來源欄位／題目：VitalSign.BloodPressure2"
* vitalSign.bloodGlucose -> "QuestionnaireResponse.item.where(linkId='VitalSign').item.where(linkId='VitalSign.BloodGlucose')" "來源欄位／題目：VitalSign.BloodGlucose"
* vitalSign.bloodOxygen -> "QuestionnaireResponse.item.where(linkId='VitalSign').item.where(linkId='VitalSign.BloodOxygen')" "來源欄位／題目：VitalSign.BloodOxygen"
* woundRecords -> "QuestionnaireResponse.item.where(linkId='WoundRecords')" "來源欄位／題目：WoundRecords"
* woundRecords.part -> "QuestionnaireResponse.item.where(linkId='WoundRecords').item.where(linkId='WoundRecords.Part')" "來源欄位／題目：WoundRecords.Part"
* woundRecords.length -> "QuestionnaireResponse.item.where(linkId='WoundRecords').item.where(linkId='WoundRecords.Length')" "來源欄位／題目：WoundRecords.Length"
* woundRecords.width -> "QuestionnaireResponse.item.where(linkId='WoundRecords').item.where(linkId='WoundRecords.Width')" "來源欄位／題目：WoundRecords.Width"
* woundRecords.depth -> "QuestionnaireResponse.item.where(linkId='WoundRecords').item.where(linkId='WoundRecords.Depth')" "來源欄位／題目：WoundRecords.Depth"
* woundRecords.category -> "QuestionnaireResponse.item.where(linkId='WoundRecords').item.where(linkId='WoundRecords.Category')" "來源欄位／題目：WoundRecords.Category"
* woundRecords.level -> "QuestionnaireResponse.item.where(linkId='WoundRecords').item.where(linkId='WoundRecords.Level')" "來源欄位／題目：WoundRecords.Level"
* woundRecords.statement -> "QuestionnaireResponse.item.where(linkId='WoundRecords').item.where(linkId='WoundRecords.Statement')" "來源欄位／題目：WoundRecords.Statement"
* fJMEvaluation -> "QuestionnaireResponse.item.where(linkId='FJMEvaluation')" "來源欄位／題目：FJMEvaluation"
* fJM -> "QuestionnaireResponse.item.where(linkId='FJM')" "來源欄位／題目：FJM"
* fJM.item -> "QuestionnaireResponse.item.where(linkId='FJM').item.where(linkId='FJM.Item')" "來源欄位／題目：FJM.Item"
* fJM.question -> "QuestionnaireResponse.item.where(linkId='FJM').item.where(linkId='FJM.Question')" "來源欄位／題目：FJM.Question"
* fJM.answers -> "QuestionnaireResponse.item.where(linkId='FJM').item.where(linkId='FJM.Answers')" "來源欄位／題目：FJM.Answers"
* fJM.answers.values -> "QuestionnaireResponse.item.where(linkId='FJM').item.where(linkId='FJM.Answers').item.where(linkId='FJM.Answers.Values')" "來源欄位／題目：FJM.Answers.Values"
* fJM.answers.other -> "QuestionnaireResponse.item.where(linkId='FJM').item.where(linkId='FJM.Answers').item.where(linkId='FJM.Answers.Other')" "來源欄位／題目：FJM.Answers.Other"
* fJM.answers.fJMList -> "QuestionnaireResponse.item.where(linkId='FJM').item.where(linkId='FJM.Answers').item.where(linkId='FJM.Answers.FJMList')" "來源欄位／題目：FJM.Answers.FJMList"
* fJM.answers.fJMList.subQuestion -> "QuestionnaireResponse.item.where(linkId='FJM').item.where(linkId='FJM.Answers').item.where(linkId='FJM.Answers.FJMList').item.where(linkId='FJM.Answers.FJMList.SubQuestion')" "來源欄位／題目：FJM.Answers.FJMList.SubQuestion"
* fJM.answers.fJMList.subAnswers -> "QuestionnaireResponse.item.where(linkId='FJM').item.where(linkId='FJM.Answers').item.where(linkId='FJM.Answers.FJMList').item.where(linkId='FJM.Answers.FJMList.SubAnswers')" "來源欄位／題目：FJM.Answers.FJMList.SubAnswers"
* fJM.answers.fJMList.subStatement -> "QuestionnaireResponse.item.where(linkId='FJM').item.where(linkId='FJM.Answers').item.where(linkId='FJM.Answers.FJMList').item.where(linkId='FJM.Answers.FJMList.SubStatement')" "來源欄位／題目：FJM.Answers.FJMList.SubStatement"
* fJM.answers.fJMVas -> "QuestionnaireResponse.item.where(linkId='FJM').item.where(linkId='FJM.Answers').item.where(linkId='FJM.Answers.FJMVas')" "來源欄位／題目：FJM.Answers.FJMVas"
* fJM.answers.fJMVas.part -> "QuestionnaireResponse.item.where(linkId='FJM').item.where(linkId='FJM.Answers').item.where(linkId='FJM.Answers.FJMVas').item.where(linkId='FJM.Answers.FJMVas.Part')" "來源欄位／題目：FJM.Answers.FJMVas.Part"
* fJM.answers.fJMVas.point -> "QuestionnaireResponse.item.where(linkId='FJM').item.where(linkId='FJM.Answers').item.where(linkId='FJM.Answers.FJMVas').item.where(linkId='FJM.Answers.FJMVas.Point')" "來源欄位／題目：FJM.Answers.FJMVas.Point"
* fJM.statement -> "QuestionnaireResponse.item.where(linkId='FJM').item.where(linkId='FJM.Statement')" "來源欄位／題目：FJM.Statement"
* statement -> "QuestionnaireResponse.item.where(linkId='Statement')" "來源欄位／題目：Statement"
* isTemporary -> "QuestionnaireResponse.item.where(linkId='IsTemporary')" "來源欄位／題目：IsTemporary"
