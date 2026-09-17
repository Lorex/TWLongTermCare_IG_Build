Logical: HNSOFsModel
Id: HNSOFsModel
Title: "居家護理－衰弱評估邏輯模型"
Description: "描述居家護理衰弱評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。"
* ^status = #draft
* ^version = "5.0.16"
* date 1..1 date "紀錄日期" "紀錄日期"
* nurseID 1..1 string "護理人員身分證字號" "護理人員身分證字號"
* statement 0..1 string "無法評估原因或備註" "無法評估原因或備註"
* questions 0..1 BackboneElement "評估項目" "評估項目"
* questions.q4e1023eb 0..1 BackboneElement "體重減輕" "體重減輕"
* questions.q4e1023eb.answer 1..1 Coding "評估答案" "評估答案"
* questions.q4e1023eb.answer from hn-vs-58e4d598f859 (required)
* questions.q7e60ea58 0..1 BackboneElement "下肢功能" "下肢功能"
* questions.q7e60ea58.answer 1..1 Coding "評估答案" "評估答案"
* questions.q7e60ea58.answer from hn-vs-58e4d598f859 (required)
* questions.qc604ec89 0..1 BackboneElement "活力降低" "活力降低"
* questions.qc604ec89.answer 1..1 Coding "評估答案" "評估答案"
* questions.qc604ec89.answer from hn-vs-58e4d598f859 (required)
* isTemporary 0..1 Coding "是否暫存" "是否暫存"
* isTemporary from hn-vs-58e4d598f859 (required)

Mapping: HNSOFsModelToFHIR
Id: hn-sofs-fhir
Title: "居家護理－衰弱評估欄位對應"
Source: HNSOFsModel
Target: "http://ltc-ig.fhir.tw/StructureDefinition/HNSOFsResponse"
* date -> "QuestionnaireResponse.item.where(linkId='Date')" "來源欄位／題目：Date"
* nurseID -> "QuestionnaireResponse.item.where(linkId='NurseID')" "來源欄位／題目：NurseID"
* statement -> "QuestionnaireResponse.item.where(linkId='Statement')" "來源欄位／題目：Statement"
* questions -> "QuestionnaireResponse.item.where(linkId='Questions')" "來源欄位／題目：Questions"
* questions.q4e1023eb -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q4e1023eb')" "來源欄位／題目：Questions[Question='體重減輕']"
* questions.q4e1023eb.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q4e1023eb').item.where(linkId='Questions.q4e1023eb.Answer')" "來源欄位／題目：Questions[Question='體重減輕'].Answer"
* questions.q7e60ea58 -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q7e60ea58')" "來源欄位／題目：Questions[Question='下肢功能']"
* questions.q7e60ea58.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q7e60ea58').item.where(linkId='Questions.q7e60ea58.Answer')" "來源欄位／題目：Questions[Question='下肢功能'].Answer"
* questions.qc604ec89 -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qc604ec89')" "來源欄位／題目：Questions[Question='活力降低']"
* questions.qc604ec89.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qc604ec89').item.where(linkId='Questions.qc604ec89.Answer')" "來源欄位／題目：Questions[Question='活力降低'].Answer"
* isTemporary -> "QuestionnaireResponse.item.where(linkId='IsTemporary')" "來源欄位／題目：IsTemporary"
