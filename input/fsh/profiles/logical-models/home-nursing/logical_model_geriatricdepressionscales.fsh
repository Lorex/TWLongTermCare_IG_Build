Logical: HNGeriatricDepressionScalesModel
Id: HNGeriatricDepressionScalesModel
Title: "居家護理－情緒問題評估邏輯模型"
Description: "描述居家護理情緒問題評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。"
* ^status = #draft
* ^version = "5.0.16"
* date 1..1 date "紀錄日期" "紀錄日期"
* nurseID 1..1 string "護理人員身分證字號" "護理人員身分證字號"
* statement 0..1 string "無法評估原因或備註" "無法評估原因或備註"
* questions 0..1 BackboneElement "評估項目" "評估項目"
* questions.qb56906ac 0..1 BackboneElement "您對您的生活感到滿意嗎？" "您對您的生活感到滿意嗎？"
* questions.qb56906ac.answer 1..1 Coding "評估答案" "評估答案"
* questions.qb56906ac.answer from hn-vs-58e4d598f859 (required)
* questions.qb6cee679 0..1 BackboneElement "您是否常常感到厭煩？" "您是否常常感到厭煩？"
* questions.qb6cee679.answer 1..1 Coding "評估答案" "評估答案"
* questions.qb6cee679.answer from hn-vs-58e4d598f859 (required)
* questions.q887c5133 0..1 BackboneElement "您是否常常感到無論做什麼都沒有用？" "您是否常常感到無論做什麼都沒有用？"
* questions.q887c5133.answer 1..1 Coding "評估答案" "評估答案"
* questions.q887c5133.answer from hn-vs-58e4d598f859 (required)
* questions.q4a2bd151 0..1 BackboneElement "您是否比較喜歡待在家裡，較不喜歡外出及不喜歡做新的事？" "您是否比較喜歡待在家裡，較不喜歡外出及不喜歡做新的事？"
* questions.q4a2bd151.answer 1..1 Coding "評估答案" "評估答案"
* questions.q4a2bd151.answer from hn-vs-58e4d598f859 (required)
* questions.q14debc58 0..1 BackboneElement "您是否感覺活得很沒有價值？" "您是否感覺活得很沒有價值？"
* questions.q14debc58.answer 1..1 Coding "評估答案" "評估答案"
* questions.q14debc58.answer from hn-vs-58e4d598f859 (required)
* isTemporary 0..1 Coding "是否暫存" "是否暫存"
* isTemporary from hn-vs-58e4d598f859 (required)

Mapping: HNGeriatricDepressionScalesModelToFHIR
Id: hn-geriatricdepressionscales-fhir
Title: "居家護理－情緒問題評估欄位對應"
Source: HNGeriatricDepressionScalesModel
Target: "http://ltc-ig.fhir.tw/StructureDefinition/HNGeriatricDepressionScalesResponse"
* date -> "QuestionnaireResponse.item.where(linkId='Date')" "來源欄位／題目：Date"
* nurseID -> "QuestionnaireResponse.item.where(linkId='NurseID')" "來源欄位／題目：NurseID"
* statement -> "QuestionnaireResponse.item.where(linkId='Statement')" "來源欄位／題目：Statement"
* questions -> "QuestionnaireResponse.item.where(linkId='Questions')" "來源欄位／題目：Questions"
* questions.qb56906ac -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qb56906ac')" "來源欄位／題目：Questions[Question='您對您的生活感到滿意嗎？']"
* questions.qb56906ac.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qb56906ac').item.where(linkId='Questions.qb56906ac.Answer')" "來源欄位／題目：Questions[Question='您對您的生活感到滿意嗎？'].Answer"
* questions.qb6cee679 -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qb6cee679')" "來源欄位／題目：Questions[Question='您是否常常感到厭煩？']"
* questions.qb6cee679.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qb6cee679').item.where(linkId='Questions.qb6cee679.Answer')" "來源欄位／題目：Questions[Question='您是否常常感到厭煩？'].Answer"
* questions.q887c5133 -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q887c5133')" "來源欄位／題目：Questions[Question='您是否常常感到無論做什麼都沒有用？']"
* questions.q887c5133.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q887c5133').item.where(linkId='Questions.q887c5133.Answer')" "來源欄位／題目：Questions[Question='您是否常常感到無論做什麼都沒有用？'].Answer"
* questions.q4a2bd151 -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q4a2bd151')" "來源欄位／題目：Questions[Question='您是否比較喜歡待在家裡，較不喜歡外出及不喜歡做新的事？']"
* questions.q4a2bd151.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q4a2bd151').item.where(linkId='Questions.q4a2bd151.Answer')" "來源欄位／題目：Questions[Question='您是否比較喜歡待在家裡，較不喜歡外出及不喜歡做新的事？'].Answer"
* questions.q14debc58 -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q14debc58')" "來源欄位／題目：Questions[Question='您是否感覺活得很沒有價值？']"
* questions.q14debc58.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q14debc58').item.where(linkId='Questions.q14debc58.Answer')" "來源欄位／題目：Questions[Question='您是否感覺活得很沒有價值？'].Answer"
* isTemporary -> "QuestionnaireResponse.item.where(linkId='IsTemporary')" "來源欄位／題目：IsTemporary"
