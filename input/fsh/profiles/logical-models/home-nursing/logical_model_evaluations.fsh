Logical: HNEvaluationsModel
Id: HNEvaluationsModel
Title: "居家護理－照護計畫評值紀錄邏輯模型"
Description: "描述居家護理照護計畫評值紀錄的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。"
* ^status = #draft
* ^version = "5.0.16"
* caseID 1..1 string "個案身分證字號" "個案身分證字號"
* endDate 1..1 date "收案日期" "收案日期"
* summaryCreateDate 1..1 date "需求摘要評估日期" "需求摘要評估日期"
* summary 1..1 string "需求摘要項目" "需求摘要項目"
* summaryAnswer 1..1 string "需求摘要備註" "需求摘要備註"
* targetStatement 1..1 string "目標描述" "目標描述"
* evaluationDate 1..1 date "紀錄日期" "紀錄日期"
* evaluationContent 1..1 string "評值紀錄" "評值紀錄"
* nurseID 1..1 string "建立護理人員身分證字號" "建立護理人員身分證字號"

Mapping: HNEvaluationsModelToFHIR
Id: hn-evaluations-fhir
Title: "居家護理－照護計畫評值紀錄欄位對應"
Source: HNEvaluationsModel
Target: "http://ltc-ig.fhir.tw/StructureDefinition/HNEvaluationsResponse"
* caseID -> "QuestionnaireResponse.item.where(linkId='CaseID')" "來源欄位／題目：CaseID"
* endDate -> "QuestionnaireResponse.item.where(linkId='EndDate')" "來源欄位／題目：EndDate"
* summaryCreateDate -> "QuestionnaireResponse.item.where(linkId='SummaryCreateDate')" "來源欄位／題目：SummaryCreateDate"
* summary -> "QuestionnaireResponse.item.where(linkId='Summary')" "來源欄位／題目：Summary"
* summaryAnswer -> "QuestionnaireResponse.item.where(linkId='SummaryAnswer')" "來源欄位／題目：SummaryAnswer"
* targetStatement -> "QuestionnaireResponse.item.where(linkId='TargetStatement')" "來源欄位／題目：TargetStatement"
* evaluationDate -> "QuestionnaireResponse.item.where(linkId='EvaluationDate')" "來源欄位／題目：EvaluationDate"
* evaluationContent -> "QuestionnaireResponse.item.where(linkId='EvaluationContent')" "來源欄位／題目：EvaluationContent"
* nurseID -> "QuestionnaireResponse.item.where(linkId='NurseID')" "來源欄位／題目：NurseID"
