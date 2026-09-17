Logical: HNIADLsModel
Id: HNIADLsModel
Title: "居家護理－工具性日常生活活動功能評估邏輯模型"
Description: "描述居家護理工具性日常生活活動功能評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。"
* ^status = #draft
* ^version = "5.0.16"
* date 1..1 date "紀錄日期" "紀錄日期"
* nurseID 1..1 string "護理人員身分證字號" "護理人員身分證字號"
* questions 1..1 BackboneElement "評估項目" "評估項目"
* questions.q588e1a8f 1..1 BackboneElement "購物" "購物"
* questions.q588e1a8f.answer 1..1 Coding "評估答案" "評估答案"
* questions.q588e1a8f.answer from hn-vs-cbfa2194bae7 (required)
* questions.q1652b964 1..1 BackboneElement "家務" "家務"
* questions.q1652b964.answer 1..1 Coding "評估答案" "評估答案"
* questions.q1652b964.answer from hn-vs-b455f8b9ce05 (required)
* questions.qd5905863 1..1 BackboneElement "理財" "理財"
* questions.qd5905863.answer 1..1 Coding "評估答案" "評估答案"
* questions.qd5905863.answer from hn-vs-41cb9f76208c (required)
* questions.qdb0b2a30 1..1 BackboneElement "備食" "備食"
* questions.qdb0b2a30.answer 1..1 Coding "評估答案" "評估答案"
* questions.qdb0b2a30.answer from hn-vs-15ba9c15ead1 (required)
* questions.q578f5fe3 1..1 BackboneElement "交通" "交通"
* questions.q578f5fe3.answer 1..1 Coding "評估答案" "評估答案"
* questions.q578f5fe3.answer from hn-vs-543807b1d856 (required)
* questions.q7177787c 1..1 BackboneElement "電話" "電話"
* questions.q7177787c.answer 1..1 Coding "評估答案" "評估答案"
* questions.q7177787c.answer from hn-vs-fa9ab3cef6b1 (required)
* questions.qbd97434e 1..1 BackboneElement "洗衣" "洗衣"
* questions.qbd97434e.answer 1..1 Coding "評估答案" "評估答案"
* questions.qbd97434e.answer from hn-vs-3435e7a5a84d (required)
* questions.q62f790cc 1..1 BackboneElement "服藥" "服藥"
* questions.q62f790cc.answer 1..1 Coding "評估答案" "評估答案"
* questions.q62f790cc.answer from hn-vs-1c0dbbd93870 (required)
* isTemporary 0..1 Coding "是否暫存" "是否暫存"
* isTemporary from hn-vs-58e4d598f859 (required)

Mapping: HNIADLsModelToFHIR
Id: hn-iadls-fhir
Title: "居家護理－工具性日常生活活動功能評估欄位對應"
Source: HNIADLsModel
Target: "http://ltc-ig.fhir.tw/StructureDefinition/HNIADLsResponse"
* date -> "QuestionnaireResponse.item.where(linkId='Date')" "來源欄位／題目：Date"
* nurseID -> "QuestionnaireResponse.item.where(linkId='NurseID')" "來源欄位／題目：NurseID"
* questions -> "QuestionnaireResponse.item.where(linkId='Questions')" "來源欄位／題目：Questions"
* questions.q588e1a8f -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q588e1a8f')" "來源欄位／題目：Questions[Question='購物']"
* questions.q588e1a8f.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q588e1a8f').item.where(linkId='Questions.q588e1a8f.Answer')" "來源欄位／題目：Questions[Question='購物'].Answer"
* questions.q1652b964 -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q1652b964')" "來源欄位／題目：Questions[Question='家務']"
* questions.q1652b964.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q1652b964').item.where(linkId='Questions.q1652b964.Answer')" "來源欄位／題目：Questions[Question='家務'].Answer"
* questions.qd5905863 -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qd5905863')" "來源欄位／題目：Questions[Question='理財']"
* questions.qd5905863.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qd5905863').item.where(linkId='Questions.qd5905863.Answer')" "來源欄位／題目：Questions[Question='理財'].Answer"
* questions.qdb0b2a30 -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qdb0b2a30')" "來源欄位／題目：Questions[Question='備食']"
* questions.qdb0b2a30.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qdb0b2a30').item.where(linkId='Questions.qdb0b2a30.Answer')" "來源欄位／題目：Questions[Question='備食'].Answer"
* questions.q578f5fe3 -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q578f5fe3')" "來源欄位／題目：Questions[Question='交通']"
* questions.q578f5fe3.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q578f5fe3').item.where(linkId='Questions.q578f5fe3.Answer')" "來源欄位／題目：Questions[Question='交通'].Answer"
* questions.q7177787c -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q7177787c')" "來源欄位／題目：Questions[Question='電話']"
* questions.q7177787c.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q7177787c').item.where(linkId='Questions.q7177787c.Answer')" "來源欄位／題目：Questions[Question='電話'].Answer"
* questions.qbd97434e -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qbd97434e')" "來源欄位／題目：Questions[Question='洗衣']"
* questions.qbd97434e.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qbd97434e').item.where(linkId='Questions.qbd97434e.Answer')" "來源欄位／題目：Questions[Question='洗衣'].Answer"
* questions.q62f790cc -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q62f790cc')" "來源欄位／題目：Questions[Question='服藥']"
* questions.q62f790cc.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q62f790cc').item.where(linkId='Questions.q62f790cc.Answer')" "來源欄位／題目：Questions[Question='服藥'].Answer"
* isTemporary -> "QuestionnaireResponse.item.where(linkId='IsTemporary')" "來源欄位／題目：IsTemporary"
