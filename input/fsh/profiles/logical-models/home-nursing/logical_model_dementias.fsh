Logical: HNDementiasModel
Id: HNDementiasModel
Title: "居家護理－認知功能評估邏輯模型"
Description: "描述居家護理認知功能評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。"
* ^status = #draft
* ^version = "5.0.16"
* date 1..1 date "紀錄日期" "紀錄日期"
* nurseID 1..1 string "護理人員身分證字號" "護理人員身分證字號"
* statement 0..1 string "無法評估原因或備註" "無法評估原因或備註"
* questions 0..1 BackboneElement "評估項目" "評估項目"
* questions.q48174716 0..1 BackboneElement "今天是幾年幾月幾日？__年__月__日" "今天是幾年幾月幾日？__年__月__日"
* questions.q48174716.answer 1..1 Coding "評估答案" "評估答案"
* questions.q48174716.answer from hn-vs-2a3bd76ba6eb (required)
* questions.qe97f506c 0..1 BackboneElement "今天是星期幾？" "今天是星期幾？"
* questions.qe97f506c.answer 1..1 Coding "評估答案" "評估答案"
* questions.qe97f506c.answer from hn-vs-2a3bd76ba6eb (required)
* questions.q6128d754 0..1 BackboneElement "這裡是什麼地方？" "這裡是什麼地方？"
* questions.q6128d754.answer 1..1 Coding "評估答案" "評估答案"
* questions.q6128d754.answer from hn-vs-2a3bd76ba6eb (required)
* questions.qe0801d08 0..1 BackboneElement "你的電話號碼是幾號？" "你的電話號碼是幾號？"
* questions.qe0801d08.answer 1..1 Coding "評估答案" "評估答案"
* questions.qe0801d08.answer from hn-vs-2a3bd76ba6eb (required)
* questions.qd40595f2 0..1 BackboneElement "你住在什麼地方？" "你住在什麼地方？"
* questions.qd40595f2.answer 1..1 Coding "評估答案" "評估答案"
* questions.qd40595f2.answer from hn-vs-2a3bd76ba6eb (required)
* questions.q1ddb5b1c 0..1 BackboneElement "你幾歲了？" "你幾歲了？"
* questions.q1ddb5b1c.answer 1..1 Coding "評估答案" "評估答案"
* questions.q1ddb5b1c.answer from hn-vs-2a3bd76ba6eb (required)
* questions.q995c979b 0..1 BackboneElement "你的生日是哪一天？" "你的生日是哪一天？"
* questions.q995c979b.answer 1..1 Coding "評估答案" "評估答案"
* questions.q995c979b.answer from hn-vs-2a3bd76ba6eb (required)
* questions.q6df0269a 0..1 BackboneElement "現任總統是誰？" "現任總統是誰？"
* questions.q6df0269a.answer 1..1 Coding "評估答案" "評估答案"
* questions.q6df0269a.answer from hn-vs-2a3bd76ba6eb (required)
* questions.q8a8a8021 0..1 BackboneElement "前任總統是誰？" "前任總統是誰？"
* questions.q8a8a8021.answer 1..1 Coding "評估答案" "評估答案"
* questions.q8a8a8021.answer from hn-vs-2a3bd76ba6eb (required)
* questions.qb719d7b7 0..1 BackboneElement "你媽媽叫什麼名字？" "你媽媽叫什麼名字？"
* questions.qb719d7b7.answer 1..1 Coding "評估答案" "評估答案"
* questions.qb719d7b7.answer from hn-vs-2a3bd76ba6eb (required)
* questions.q295d5a12 0..1 BackboneElement "從20 減3 開始算，一直減3 減下去。" "從20 減3 開始算，一直減3 減下去。"
* questions.q295d5a12.answer 1..1 Coding "評估答案" "評估答案"
* questions.q295d5a12.answer from hn-vs-2a3bd76ba6eb (required)
* isTemporary 0..1 Coding "是否暫存" "是否暫存"
* isTemporary from hn-vs-58e4d598f859 (required)

Mapping: HNDementiasModelToFHIR
Id: hn-dementias-fhir
Title: "居家護理－認知功能評估欄位對應"
Source: HNDementiasModel
Target: "http://ltc-ig.fhir.tw/StructureDefinition/HNDementiasResponse"
* date -> "QuestionnaireResponse.item.where(linkId='Date')" "來源欄位／題目：Date"
* nurseID -> "QuestionnaireResponse.item.where(linkId='NurseID')" "來源欄位／題目：NurseID"
* statement -> "QuestionnaireResponse.item.where(linkId='Statement')" "來源欄位／題目：Statement"
* questions -> "QuestionnaireResponse.item.where(linkId='Questions')" "來源欄位／題目：Questions"
* questions.q48174716 -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q48174716')" "來源欄位／題目：Questions[Question='今天是幾年幾月幾日？__年__月__日']"
* questions.q48174716.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q48174716').item.where(linkId='Questions.q48174716.Answer')" "來源欄位／題目：Questions[Question='今天是幾年幾月幾日？__年__月__日'].Answer"
* questions.qe97f506c -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qe97f506c')" "來源欄位／題目：Questions[Question='今天是星期幾？']"
* questions.qe97f506c.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qe97f506c').item.where(linkId='Questions.qe97f506c.Answer')" "來源欄位／題目：Questions[Question='今天是星期幾？'].Answer"
* questions.q6128d754 -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q6128d754')" "來源欄位／題目：Questions[Question='這裡是什麼地方？']"
* questions.q6128d754.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q6128d754').item.where(linkId='Questions.q6128d754.Answer')" "來源欄位／題目：Questions[Question='這裡是什麼地方？'].Answer"
* questions.qe0801d08 -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qe0801d08')" "來源欄位／題目：Questions[Question='你的電話號碼是幾號？']"
* questions.qe0801d08.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qe0801d08').item.where(linkId='Questions.qe0801d08.Answer')" "來源欄位／題目：Questions[Question='你的電話號碼是幾號？'].Answer"
* questions.qd40595f2 -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qd40595f2')" "來源欄位／題目：Questions[Question='你住在什麼地方？']"
* questions.qd40595f2.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qd40595f2').item.where(linkId='Questions.qd40595f2.Answer')" "來源欄位／題目：Questions[Question='你住在什麼地方？'].Answer"
* questions.q1ddb5b1c -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q1ddb5b1c')" "來源欄位／題目：Questions[Question='你幾歲了？']"
* questions.q1ddb5b1c.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q1ddb5b1c').item.where(linkId='Questions.q1ddb5b1c.Answer')" "來源欄位／題目：Questions[Question='你幾歲了？'].Answer"
* questions.q995c979b -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q995c979b')" "來源欄位／題目：Questions[Question='你的生日是哪一天？']"
* questions.q995c979b.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q995c979b').item.where(linkId='Questions.q995c979b.Answer')" "來源欄位／題目：Questions[Question='你的生日是哪一天？'].Answer"
* questions.q6df0269a -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q6df0269a')" "來源欄位／題目：Questions[Question='現任總統是誰？']"
* questions.q6df0269a.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q6df0269a').item.where(linkId='Questions.q6df0269a.Answer')" "來源欄位／題目：Questions[Question='現任總統是誰？'].Answer"
* questions.q8a8a8021 -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q8a8a8021')" "來源欄位／題目：Questions[Question='前任總統是誰？']"
* questions.q8a8a8021.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q8a8a8021').item.where(linkId='Questions.q8a8a8021.Answer')" "來源欄位／題目：Questions[Question='前任總統是誰？'].Answer"
* questions.qb719d7b7 -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qb719d7b7')" "來源欄位／題目：Questions[Question='你媽媽叫什麼名字？']"
* questions.qb719d7b7.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qb719d7b7').item.where(linkId='Questions.qb719d7b7.Answer')" "來源欄位／題目：Questions[Question='你媽媽叫什麼名字？'].Answer"
* questions.q295d5a12 -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q295d5a12')" "來源欄位／題目：Questions[Question='從20 減3 開始算，一直減3 減下去。']"
* questions.q295d5a12.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q295d5a12').item.where(linkId='Questions.q295d5a12.Answer')" "來源欄位／題目：Questions[Question='從20 減3 開始算，一直減3 減下去。'].Answer"
* isTemporary -> "QuestionnaireResponse.item.where(linkId='IsTemporary')" "來源欄位／題目：IsTemporary"
