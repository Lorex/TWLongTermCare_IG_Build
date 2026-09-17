Logical: HNPressureInjuriesModel
Id: HNPressureInjuriesModel
Title: "居家護理－壓力性損傷危險評估邏輯模型"
Description: "描述居家護理壓力性損傷危險評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。"
* ^status = #draft
* ^version = "5.0.16"
* date 1..1 date "紀錄日期" "紀錄日期"
* nurseID 1..1 string "護理人員身分證字號" "護理人員身分證字號"
* questions 1..1 BackboneElement "評估項目" "評估項目"
* questions.q77f132a8 1..1 BackboneElement "知覺感受" "知覺感受"
* questions.q77f132a8.answer 1..1 Coding "評估答案" "評估答案"
* questions.q77f132a8.answer from hn-vs-66dfb92df102 (required)
* questions.qb093cea2 1..1 BackboneElement "潮溼程度" "潮溼程度"
* questions.qb093cea2.answer 1..1 Coding "評估答案" "評估答案"
* questions.qb093cea2.answer from hn-vs-548098d5ace2 (required)
* questions.qda68c82c 1..1 BackboneElement "活動能力" "活動能力"
* questions.qda68c82c.answer 1..1 Coding "評估答案" "評估答案"
* questions.qda68c82c.answer from hn-vs-78444472aa70 (required)
* questions.qb03d6393 1..1 BackboneElement "移動能力" "移動能力"
* questions.qb03d6393.answer 1..1 Coding "評估答案" "評估答案"
* questions.qb03d6393.answer from hn-vs-f466b3393017 (required)
* questions.q68dfbe5f 1..1 BackboneElement "營養攝取" "營養攝取"
* questions.q68dfbe5f.answer 1..1 Coding "評估答案" "評估答案"
* questions.q68dfbe5f.answer from hn-vs-9d4f84a14066 (required)
* questions.q52107185 1..1 BackboneElement "摩擦力/剪力" "摩擦力/剪力"
* questions.q52107185.answer 1..1 Coding "評估答案" "評估答案"
* questions.q52107185.answer from hn-vs-bcd0a25d02b9 (required)
* isTemporary 0..1 Coding "是否暫存" "是否暫存"
* isTemporary from hn-vs-58e4d598f859 (required)

Mapping: HNPressureInjuriesModelToFHIR
Id: hn-pressureinjuries-fhir
Title: "居家護理－壓力性損傷危險評估欄位對應"
Source: HNPressureInjuriesModel
Target: "http://ltc-ig.fhir.tw/StructureDefinition/HNPressureInjuriesResponse"
* date -> "QuestionnaireResponse.item.where(linkId='Date')" "來源欄位／題目：Date"
* nurseID -> "QuestionnaireResponse.item.where(linkId='NurseID')" "來源欄位／題目：NurseID"
* questions -> "QuestionnaireResponse.item.where(linkId='Questions')" "來源欄位／題目：Questions"
* questions.q77f132a8 -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q77f132a8')" "來源欄位／題目：Questions[Question='知覺感受']"
* questions.q77f132a8.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q77f132a8').item.where(linkId='Questions.q77f132a8.Answer')" "來源欄位／題目：Questions[Question='知覺感受'].Answer"
* questions.qb093cea2 -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qb093cea2')" "來源欄位／題目：Questions[Question='潮溼程度']"
* questions.qb093cea2.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qb093cea2').item.where(linkId='Questions.qb093cea2.Answer')" "來源欄位／題目：Questions[Question='潮溼程度'].Answer"
* questions.qda68c82c -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qda68c82c')" "來源欄位／題目：Questions[Question='活動能力']"
* questions.qda68c82c.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qda68c82c').item.where(linkId='Questions.qda68c82c.Answer')" "來源欄位／題目：Questions[Question='活動能力'].Answer"
* questions.qb03d6393 -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qb03d6393')" "來源欄位／題目：Questions[Question='移動能力']"
* questions.qb03d6393.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qb03d6393').item.where(linkId='Questions.qb03d6393.Answer')" "來源欄位／題目：Questions[Question='移動能力'].Answer"
* questions.q68dfbe5f -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q68dfbe5f')" "來源欄位／題目：Questions[Question='營養攝取']"
* questions.q68dfbe5f.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q68dfbe5f').item.where(linkId='Questions.q68dfbe5f.Answer')" "來源欄位／題目：Questions[Question='營養攝取'].Answer"
* questions.q52107185 -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q52107185')" "來源欄位／題目：Questions[Question='摩擦力/剪力']"
* questions.q52107185.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q52107185').item.where(linkId='Questions.q52107185.Answer')" "來源欄位／題目：Questions[Question='摩擦力/剪力'].Answer"
* isTemporary -> "QuestionnaireResponse.item.where(linkId='IsTemporary')" "來源欄位／題目：IsTemporary"
