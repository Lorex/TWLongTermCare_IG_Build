Logical: HNTargetsModel
Id: HNTargetsModel
Title: "居家護理－照護計畫目標邏輯模型"
Description: "描述居家護理照護計畫目標的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。"
* ^status = #draft
* ^version = "5.0.16"
* caseID 1..1 string "個案身分證字號" "個案身分證字號"
* endDate 1..1 date "收案日期" "收案日期"
* summaryCreateDate 1..1 date "需求摘要評估日期" "需求摘要評估日期"
* summary 1..1 string "需求摘要項目" "需求摘要項目"
* summaryAnswer 1..1 string "需求摘要備註" "需求摘要備註"
* targetStatement 1..1 string "目標描述" "目標描述"
* targetCreateDate 1..1 date "目標建立日期" "目標建立日期"
* targetStatement2 0..1 string "目標補充說明" "目標補充說明"
* estimatedDate 1..1 date "預期達到日期" "預期達到日期"
* isMainTarget 1..1 boolean "是否主要目標" "是否主要目標"
* nurseID 1..1 string "建立護理人員身分證字號" "建立護理人員身分證字號"

Mapping: HNTargetsModelToFHIR
Id: hn-targets-fhir
Title: "居家護理－照護計畫目標欄位對應"
Source: HNTargetsModel
Target: "http://ltc-ig.fhir.tw/StructureDefinition/HNTargetsResponse"
* caseID -> "QuestionnaireResponse.item.where(linkId='CaseID')" "來源欄位／題目：CaseID"
* endDate -> "QuestionnaireResponse.item.where(linkId='EndDate')" "來源欄位／題目：EndDate"
* summaryCreateDate -> "QuestionnaireResponse.item.where(linkId='SummaryCreateDate')" "來源欄位／題目：SummaryCreateDate"
* summary -> "QuestionnaireResponse.item.where(linkId='Summary')" "來源欄位／題目：Summary"
* summaryAnswer -> "QuestionnaireResponse.item.where(linkId='SummaryAnswer')" "來源欄位／題目：SummaryAnswer"
* targetStatement -> "QuestionnaireResponse.item.where(linkId='TargetStatement')" "來源欄位／題目：TargetStatement"
* targetCreateDate -> "QuestionnaireResponse.item.where(linkId='TargetCreateDate')" "來源欄位／題目：TargetCreateDate"
* targetStatement2 -> "QuestionnaireResponse.item.where(linkId='TargetStatement2')" "來源欄位／題目：TargetStatement2"
* estimatedDate -> "QuestionnaireResponse.item.where(linkId='EstimatedDate')" "來源欄位／題目：EstimatedDate"
* isMainTarget -> "QuestionnaireResponse.item.where(linkId='IsMainTarget')" "來源欄位／題目：IsMainTarget"
* nurseID -> "QuestionnaireResponse.item.where(linkId='NurseID')" "來源欄位／題目：NurseID"
