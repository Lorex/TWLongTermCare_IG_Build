Logical: HNCaseDescModel
Id: HNCaseDescModel
Title: "居家護理－共照紀錄邏輯模型"
Description: "描述居家護理共照紀錄的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。"
* ^status = #draft
* ^version = "5.0.16"
* caseID 1..1 string "個案身分證字號" "個案身分證字號"
* endDate 1..1 date "收案日期" "收案日期"
* date 1..1 date "照護日期" "照護日期"
* time 1..1 time "開始時間" "開始時間"
* time2 1..1 time "結束時間" "結束時間"
* medicalName 1..1 string "共照成員姓名" "共照成員姓名"
* title 1..1 BackboneElement "共照成員職稱" "共照成員職稱"
* title.value 1..1 Coding "選項" "選項"
* title.value from hn-vs-94d2d2fdf018 (required)
* title.other 0..1 string "補充說明" "補充說明。選擇其他時應填寫說明。"
* statement 1..1 string "照護紀錄" "照護紀錄"

Mapping: HNCaseDescModelToFHIR
Id: hn-casedesc-fhir
Title: "居家護理－共照紀錄欄位對應"
Source: HNCaseDescModel
Target: "http://ltc-ig.fhir.tw/StructureDefinition/HNCaseDescResponse"
* caseID -> "QuestionnaireResponse.item.where(linkId='CaseID')" "來源欄位／題目：CaseID"
* endDate -> "QuestionnaireResponse.item.where(linkId='EndDate')" "來源欄位／題目：EndDate"
* date -> "QuestionnaireResponse.item.where(linkId='Date')" "來源欄位／題目：Date"
* time -> "QuestionnaireResponse.item.where(linkId='Time')" "來源欄位／題目：Time"
* time2 -> "QuestionnaireResponse.item.where(linkId='Time2')" "來源欄位／題目：Time2"
* medicalName -> "QuestionnaireResponse.item.where(linkId='MedicalName')" "來源欄位／題目：MedicalName"
* title -> "QuestionnaireResponse.item.where(linkId='Title')" "來源欄位／題目：Title"
* title.value -> "QuestionnaireResponse.item.where(linkId='Title').item.where(linkId='Title.Value')" "來源欄位／題目：Title.Value"
* title.other -> "QuestionnaireResponse.item.where(linkId='Title').item.where(linkId='Title.Other')" "來源欄位／題目：Title.Other"
* statement -> "QuestionnaireResponse.item.where(linkId='Statement')" "來源欄位／題目：Statement"
