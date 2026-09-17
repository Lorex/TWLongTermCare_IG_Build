Logical: HNCaseCloseModel
Id: HNCaseCloseModel
Title: "居家護理－個案結案邏輯模型"
Description: "描述居家護理個案結案的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。"
* ^status = #draft
* ^version = "5.0.16"
* caseID 1..1 string "個案身分證字號" "個案身分證字號"
* endDate 1..1 date "收案日期" "收案日期"
* date 1..1 date "結案日期" "結案日期"
* userID 1..1 string "結案護理人員身分證字號" "結案護理人員身分證字號"
* reason 1..1 BackboneElement "結案原因" "結案原因"
* reason.value 1..1 Coding "選項" "選項"
* reason.value from hn-vs-75dc5876369b (required)
* reason.other 0..1 string "補充說明" "補充說明。選擇其他時應填寫說明。"

Mapping: HNCaseCloseModelToFHIR
Id: hn-caseclose-fhir
Title: "居家護理－個案結案欄位對應"
Source: HNCaseCloseModel
Target: "http://ltc-ig.fhir.tw/StructureDefinition/HNCaseCloseResponse"
* caseID -> "QuestionnaireResponse.item.where(linkId='CaseID')" "來源欄位／題目：CaseID"
* endDate -> "QuestionnaireResponse.item.where(linkId='EndDate')" "來源欄位／題目：EndDate"
* date -> "QuestionnaireResponse.item.where(linkId='Date')" "來源欄位／題目：Date"
* userID -> "QuestionnaireResponse.item.where(linkId='UserID')" "來源欄位／題目：UserID"
* reason -> "QuestionnaireResponse.item.where(linkId='Reason')" "來源欄位／題目：Reason"
* reason.value -> "QuestionnaireResponse.item.where(linkId='Reason').item.where(linkId='Reason.Value')" "來源欄位／題目：Reason.Value"
* reason.other -> "QuestionnaireResponse.item.where(linkId='Reason').item.where(linkId='Reason.Other')" "來源欄位／題目：Reason.Other"
