Logical: HNStaffEgyModel
Id: HNStaffEgyModel
Title: "居家護理－人員緊急事件邏輯模型"
Description: "描述居家護理人員緊急事件的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。"
* ^status = #draft
* ^version = "5.0.16"
* title 1..1 BackboneElement "工作人員職稱" "工作人員職稱"
* title.value 1..1 Coding "選項" "選項"
* title.value from hn-vs-94d2d2fdf018 (required)
* title.other 0..1 string "補充說明" "補充說明。選擇其他時應填寫說明。"
* name 1..1 string "工作人員姓名" "工作人員姓名"
* iDNo 1..1 string "人員身分證字號" "人員身分證字號"
* emergencyType 1..1 BackboneElement "緊急事件類型" "緊急事件類型"
* emergencyType.value 1..1 Coding "選項" "選項"
* emergencyType.value from hn-vs-6892f4f30c24 (required)
* emergencyType.other 0..1 string "補充說明" "補充說明。選擇其他時應填寫說明。"
* date 1..1 date "發生日期" "發生日期"
* time 1..1 time "發生時間" "發生時間"
* reason 1..1 string "發生原因" "發生原因"
* description 1..1 string "事件敘述" "事件敘述"
* process 1..1 string "通報及處理過程" "通報及處理過程"
* report 1..1 string "檢討紀錄" "檢討紀錄"
* createID 1..1 string "建立機構代碼" "建立機構代碼"

Mapping: HNStaffEgyModelToFHIR
Id: hn-staffegy-fhir
Title: "居家護理－人員緊急事件欄位對應"
Source: HNStaffEgyModel
Target: "http://ltc-ig.fhir.tw/StructureDefinition/HNStaffEgyResponse"
* title -> "QuestionnaireResponse.item.where(linkId='Title')" "來源欄位／題目：Title"
* title.value -> "QuestionnaireResponse.item.where(linkId='Title').item.where(linkId='Title.Value')" "來源欄位／題目：Title.Value"
* title.other -> "QuestionnaireResponse.item.where(linkId='Title').item.where(linkId='Title.Other')" "來源欄位／題目：Title.Other"
* name -> "QuestionnaireResponse.item.where(linkId='Name')" "來源欄位／題目：Name"
* iDNo -> "QuestionnaireResponse.item.where(linkId='IDNo')" "來源欄位／題目：IDNo"
* emergencyType -> "QuestionnaireResponse.item.where(linkId='EmergencyType')" "來源欄位／題目：EmergencyType"
* emergencyType.value -> "QuestionnaireResponse.item.where(linkId='EmergencyType').item.where(linkId='EmergencyType.Value')" "來源欄位／題目：EmergencyType.Value"
* emergencyType.other -> "QuestionnaireResponse.item.where(linkId='EmergencyType').item.where(linkId='EmergencyType.Other')" "來源欄位／題目：EmergencyType.Other"
* date -> "QuestionnaireResponse.item.where(linkId='Date')" "來源欄位／題目：Date"
* time -> "QuestionnaireResponse.item.where(linkId='Time')" "來源欄位／題目：Time"
* reason -> "QuestionnaireResponse.item.where(linkId='Reason')" "來源欄位／題目：Reason"
* description -> "QuestionnaireResponse.item.where(linkId='Description')" "來源欄位／題目：Description"
* process -> "QuestionnaireResponse.item.where(linkId='Process')" "來源欄位／題目：Process"
* report -> "QuestionnaireResponse.item.where(linkId='Report')" "來源欄位／題目：Report"
* createID -> "QuestionnaireResponse.item.where(linkId='CreateID')" "來源欄位／題目：CreateID"
