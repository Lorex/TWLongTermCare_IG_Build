Logical: HNMeasuresModel
Id: HNMeasuresModel
Title: "居家護理－照護計畫措施邏輯模型"
Description: "描述居家護理照護計畫措施的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。"
* ^status = #draft
* ^version = "5.0.16"
* caseID 1..1 string "個案身分證字號" "個案身分證字號"
* endDate 1..1 date "收案日期" "收案日期"
* summaryCreateDate 1..1 date "需求摘要評估日期" "需求摘要評估日期"
* summary 1..1 string "需求摘要項目" "需求摘要項目"
* summaryAnswer 1..1 string "需求摘要備註" "需求摘要備註"
* targetStatement 1..1 string "目標描述" "目標描述"
* measureCreateDate 1..1 date "措施建立日期" "措施建立日期"
* measureContent 1..1 string "措施內容" "措施內容"
* nurseID 1..1 string "建立護理人員身分證字號" "建立護理人員身分證字號"
* measureStopDate 0..1 date "停止日期" "停止日期"
* measureStopContent 0..1 string "停止原因" "停止原因"
* measureStopNurseID 0..1 string "停止護理人員身分證字號" "停止護理人員身分證字號"

Mapping: HNMeasuresModelToFHIR
Id: hn-measures-fhir
Title: "居家護理－照護計畫措施欄位對應"
Source: HNMeasuresModel
Target: "http://ltc-ig.fhir.tw/StructureDefinition/HNMeasuresResponse"
* caseID -> "QuestionnaireResponse.item.where(linkId='CaseID')" "來源欄位／題目：CaseID"
* endDate -> "QuestionnaireResponse.item.where(linkId='EndDate')" "來源欄位／題目：EndDate"
* summaryCreateDate -> "QuestionnaireResponse.item.where(linkId='SummaryCreateDate')" "來源欄位／題目：SummaryCreateDate"
* summary -> "QuestionnaireResponse.item.where(linkId='Summary')" "來源欄位／題目：Summary"
* summaryAnswer -> "QuestionnaireResponse.item.where(linkId='SummaryAnswer')" "來源欄位／題目：SummaryAnswer"
* targetStatement -> "QuestionnaireResponse.item.where(linkId='TargetStatement')" "來源欄位／題目：TargetStatement"
* measureCreateDate -> "QuestionnaireResponse.item.where(linkId='MeasureCreateDate')" "來源欄位／題目：MeasureCreateDate"
* measureContent -> "QuestionnaireResponse.item.where(linkId='MeasureContent')" "來源欄位／題目：MeasureContent"
* nurseID -> "QuestionnaireResponse.item.where(linkId='NurseID')" "來源欄位／題目：NurseID"
* measureStopDate -> "QuestionnaireResponse.item.where(linkId='MeasureStopDate')" "來源欄位／題目：MeasureStopDate"
* measureStopContent -> "QuestionnaireResponse.item.where(linkId='MeasureStopContent')" "來源欄位／題目：MeasureStopContent"
* measureStopNurseID -> "QuestionnaireResponse.item.where(linkId='MeasureStopNurseID')" "來源欄位／題目：MeasureStopNurseID"
