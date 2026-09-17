Logical: HNCaseSummaryModel
Id: HNCaseSummaryModel
Title: "居家護理－需求摘要邏輯模型"
Description: "描述居家護理需求摘要的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。"
* ^status = #draft
* ^version = "5.0.16"
* caseID 1..1 string "個案身分證字號" "個案身分證字號"
* endDate 1..1 date "收案日期" "收案日期"
* date 1..1 date "紀錄日期" "紀錄日期"
* nurseID 1..1 string "護理人員身分證字號" "護理人員身分證字號"
* summary 1..1 BackboneElement "問題列表與摘要" "問題列表與摘要"
* summary.questionType 1..1 Coding "需求類型" "需求類型"
* summary.questionType from hn-vs-bc943cb432ce (required)
* summary.question 1..1 string "需求項目" "需求項目。其他類型可自訂項目；以原摘要文字比對。"
* summary.answer 1..1 string "需求摘要備註" "需求摘要備註"

Mapping: HNCaseSummaryModelToFHIR
Id: hn-casesummary-fhir
Title: "居家護理－需求摘要欄位對應"
Source: HNCaseSummaryModel
Target: "http://ltc-ig.fhir.tw/StructureDefinition/HNCaseSummaryResponse"
* caseID -> "QuestionnaireResponse.item.where(linkId='CaseID')" "來源欄位／題目：CaseID"
* endDate -> "QuestionnaireResponse.item.where(linkId='EndDate')" "來源欄位／題目：EndDate"
* date -> "QuestionnaireResponse.item.where(linkId='Date')" "來源欄位／題目：Date"
* nurseID -> "QuestionnaireResponse.item.where(linkId='NurseID')" "來源欄位／題目：NurseID"
* summary -> "QuestionnaireResponse.item.where(linkId='Summary')" "來源欄位／題目：Summary"
* summary.questionType -> "QuestionnaireResponse.item.where(linkId='Summary').item.where(linkId='Summary.QuestionType')" "來源欄位／題目：Summary.QuestionType"
* summary.question -> "QuestionnaireResponse.item.where(linkId='Summary').item.where(linkId='Summary.Question')" "來源欄位／題目：Summary.Question"
* summary.answer -> "QuestionnaireResponse.item.where(linkId='Summary').item.where(linkId='Summary.Answer')" "來源欄位／題目：Summary.Answer"
