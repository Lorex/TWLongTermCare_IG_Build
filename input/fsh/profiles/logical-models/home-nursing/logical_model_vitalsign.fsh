Logical: HNVitalSignModel
Id: HNVitalSignModel
Title: "居家護理－生命徵象邏輯模型"
Description: "描述居家護理生命徵象的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。"
* ^status = #draft
* ^version = "5.0.16"
* caseID 1..1 string "個案身分證字號" "個案身分證字號"
* endDate 1..1 date "收案日期" "收案日期"
* recordDate 1..1 date "量測日期" "量測日期"
* recordTime 1..1 time "量測時間" "量測時間"
* temperature 1..1 decimal "體溫" "體溫。攝氏度。原 API 為字串；填入 0 至 999，至小數一位。"
* temperature ^minValueDecimal = 0
* temperature ^maxValueDecimal = 999
* pulse 1..1 integer "脈搏" "脈搏。每分鐘次數，0 至 999。"
* pulse ^minValueInteger = 0
* pulse ^maxValueInteger = 999
* respiration 1..1 integer "呼吸" "呼吸。每分鐘次數，0 至 999。"
* respiration ^minValueInteger = 0
* respiration ^maxValueInteger = 999
* bloodPressure1 1..1 integer "收縮壓" "收縮壓。mmHg，0 至 999。"
* bloodPressure1 ^minValueInteger = 0
* bloodPressure1 ^maxValueInteger = 999
* bloodPressure2 1..1 integer "舒張壓" "舒張壓。mmHg，0 至 999。"
* bloodPressure2 ^minValueInteger = 0
* bloodPressure2 ^maxValueInteger = 999
* bloodGlucose 0..1 integer "血糖" "血糖。mg/dL，0 至 999。"
* bloodGlucose ^minValueInteger = 0
* bloodGlucose ^maxValueInteger = 999
* bloodOxygen 0..1 integer "血氧" "血氧。百分比，0 至 100。"
* bloodOxygen ^minValueInteger = 0
* bloodOxygen ^maxValueInteger = 100
* createID 1..1 string "照護人員身分證字號" "照護人員身分證字號"

Mapping: HNVitalSignModelToFHIR
Id: hn-vitalsign-fhir
Title: "居家護理－生命徵象欄位對應"
Source: HNVitalSignModel
Target: "http://ltc-ig.fhir.tw/StructureDefinition/HNVitalSignResponse"
* caseID -> "QuestionnaireResponse.item.where(linkId='CaseID')" "來源欄位／題目：CaseID"
* endDate -> "QuestionnaireResponse.item.where(linkId='EndDate')" "來源欄位／題目：EndDate"
* recordDate -> "QuestionnaireResponse.item.where(linkId='RecordDate')" "來源欄位／題目：RecordDate"
* recordTime -> "QuestionnaireResponse.item.where(linkId='RecordTime')" "來源欄位／題目：RecordTime"
* temperature -> "QuestionnaireResponse.item.where(linkId='Temperature')" "來源欄位／題目：Temperature"
* pulse -> "QuestionnaireResponse.item.where(linkId='Pulse')" "來源欄位／題目：Pulse"
* respiration -> "QuestionnaireResponse.item.where(linkId='Respiration')" "來源欄位／題目：Respiration"
* bloodPressure1 -> "QuestionnaireResponse.item.where(linkId='BloodPressure1')" "來源欄位／題目：BloodPressure1"
* bloodPressure2 -> "QuestionnaireResponse.item.where(linkId='BloodPressure2')" "來源欄位／題目：BloodPressure2"
* bloodGlucose -> "QuestionnaireResponse.item.where(linkId='BloodGlucose')" "來源欄位／題目：BloodGlucose"
* bloodOxygen -> "QuestionnaireResponse.item.where(linkId='BloodOxygen')" "來源欄位／題目：BloodOxygen"
* createID -> "QuestionnaireResponse.item.where(linkId='CreateID')" "來源欄位／題目：CreateID"
