Logical: HNADLsModel
Id: HNADLsModel
Title: "居家護理－日常生活功能評估邏輯模型"
Description: "描述居家護理日常生活功能評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。"
* ^status = #draft
* ^version = "5.0.16"
* date 1..1 date "紀錄日期" "紀錄日期"
* nurseID 1..1 string "護理人員身分證字號" "護理人員身分證字號"
* questions 1..1 BackboneElement "評估項目" "評估項目"
* questions.q46787535 1..1 BackboneElement "進食" "進食"
* questions.q46787535.answer 1..1 Coding "評估答案" "評估答案"
* questions.q46787535.answer from hn-vs-c020bc6f582f (required)
* questions.q0bc7e44d 1..1 BackboneElement "移位" "移位"
* questions.q0bc7e44d.answer 1..1 Coding "評估答案" "評估答案"
* questions.q0bc7e44d.answer from hn-vs-5509cc9b0f4c (required)
* questions.qb93b932f 1..1 BackboneElement "衛生" "衛生"
* questions.qb93b932f.answer 1..1 Coding "評估答案" "評估答案"
* questions.qb93b932f.answer from hn-vs-c1223cdffc0c (required)
* questions.q96220a06 1..1 BackboneElement "如廁" "如廁"
* questions.q96220a06.answer 1..1 Coding "評估答案" "評估答案"
* questions.q96220a06.answer from hn-vs-5a0da2e50fde (required)
* questions.q92ee129c 1..1 BackboneElement "洗澡" "洗澡"
* questions.q92ee129c.answer 1..1 Coding "評估答案" "評估答案"
* questions.q92ee129c.answer from hn-vs-3c038851248f (required)
* questions.qb8f96793 1..1 BackboneElement "走動" "走動"
* questions.qb8f96793.answer 1..1 Coding "評估答案" "評估答案"
* questions.qb8f96793.answer from hn-vs-9a2ed66b6061 (required)
* questions.q1cb17d5b 1..1 BackboneElement "樓梯" "樓梯"
* questions.q1cb17d5b.answer 1..1 Coding "評估答案" "評估答案"
* questions.q1cb17d5b.answer from hn-vs-076f2d014436 (required)
* questions.qd949ce2d 1..1 BackboneElement "穿脫" "穿脫"
* questions.qd949ce2d.answer 1..1 Coding "評估答案" "評估答案"
* questions.qd949ce2d.answer from hn-vs-723d296bd93d (required)
* questions.qfe7de24a 1..1 BackboneElement "大便" "大便"
* questions.qfe7de24a.answer 1..1 Coding "評估答案" "評估答案"
* questions.qfe7de24a.answer from hn-vs-8c7bcb320a01 (required)
* questions.q13cca4d4 1..1 BackboneElement "小便" "小便"
* questions.q13cca4d4.answer 1..1 Coding "評估答案" "評估答案"
* questions.q13cca4d4.answer from hn-vs-d20974b4a161 (required)
* isTemporary 0..1 Coding "是否暫存" "是否暫存"
* isTemporary from hn-vs-58e4d598f859 (required)

Mapping: HNADLsModelToFHIR
Id: hn-adls-fhir
Title: "居家護理－日常生活功能評估欄位對應"
Source: HNADLsModel
Target: "http://ltc-ig.fhir.tw/StructureDefinition/HNADLsResponse"
* date -> "QuestionnaireResponse.item.where(linkId='Date')" "來源欄位／題目：Date"
* nurseID -> "QuestionnaireResponse.item.where(linkId='NurseID')" "來源欄位／題目：NurseID"
* questions -> "QuestionnaireResponse.item.where(linkId='Questions')" "來源欄位／題目：Questions"
* questions.q46787535 -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q46787535')" "來源欄位／題目：Questions[Question='進食']"
* questions.q46787535.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q46787535').item.where(linkId='Questions.q46787535.Answer')" "來源欄位／題目：Questions[Question='進食'].Answer"
* questions.q0bc7e44d -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q0bc7e44d')" "來源欄位／題目：Questions[Question='移位']"
* questions.q0bc7e44d.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q0bc7e44d').item.where(linkId='Questions.q0bc7e44d.Answer')" "來源欄位／題目：Questions[Question='移位'].Answer"
* questions.qb93b932f -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qb93b932f')" "來源欄位／題目：Questions[Question='衛生']"
* questions.qb93b932f.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qb93b932f').item.where(linkId='Questions.qb93b932f.Answer')" "來源欄位／題目：Questions[Question='衛生'].Answer"
* questions.q96220a06 -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q96220a06')" "來源欄位／題目：Questions[Question='如廁']"
* questions.q96220a06.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q96220a06').item.where(linkId='Questions.q96220a06.Answer')" "來源欄位／題目：Questions[Question='如廁'].Answer"
* questions.q92ee129c -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q92ee129c')" "來源欄位／題目：Questions[Question='洗澡']"
* questions.q92ee129c.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q92ee129c').item.where(linkId='Questions.q92ee129c.Answer')" "來源欄位／題目：Questions[Question='洗澡'].Answer"
* questions.qb8f96793 -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qb8f96793')" "來源欄位／題目：Questions[Question='走動']"
* questions.qb8f96793.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qb8f96793').item.where(linkId='Questions.qb8f96793.Answer')" "來源欄位／題目：Questions[Question='走動'].Answer"
* questions.q1cb17d5b -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q1cb17d5b')" "來源欄位／題目：Questions[Question='樓梯']"
* questions.q1cb17d5b.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q1cb17d5b').item.where(linkId='Questions.q1cb17d5b.Answer')" "來源欄位／題目：Questions[Question='樓梯'].Answer"
* questions.qd949ce2d -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qd949ce2d')" "來源欄位／題目：Questions[Question='穿脫']"
* questions.qd949ce2d.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qd949ce2d').item.where(linkId='Questions.qd949ce2d.Answer')" "來源欄位／題目：Questions[Question='穿脫'].Answer"
* questions.qfe7de24a -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qfe7de24a')" "來源欄位／題目：Questions[Question='大便']"
* questions.qfe7de24a.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qfe7de24a').item.where(linkId='Questions.qfe7de24a.Answer')" "來源欄位／題目：Questions[Question='大便'].Answer"
* questions.q13cca4d4 -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q13cca4d4')" "來源欄位／題目：Questions[Question='小便']"
* questions.q13cca4d4.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q13cca4d4').item.where(linkId='Questions.q13cca4d4.Answer')" "來源欄位／題目：Questions[Question='小便'].Answer"
* isTemporary -> "QuestionnaireResponse.item.where(linkId='IsTemporary')" "來源欄位／題目：IsTemporary"
