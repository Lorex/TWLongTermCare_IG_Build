Logical: HNMNASFsModel
Id: HNMNASFsModel
Title: "居家護理－簡易營養評估邏輯模型"
Description: "描述居家護理簡易營養評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。"
* ^status = #draft
* ^version = "5.0.16"
* date 1..1 date "紀錄日期" "紀錄日期"
* nurseID 1..1 string "護理人員身分證字號" "護理人員身分證字號"
* questions 1..1 BackboneElement "評估項目" "評估項目"
* questions.q9eab1f0b 1..1 BackboneElement "過去三個月之中，是否因食慾不佳、消化問題、咀嚼或吞嚥困難，以致進食量減少？" "過去三個月之中，是否因食慾不佳、消化問題、咀嚼或吞嚥困難，以致進食量減少？"
* questions.q9eab1f0b.answer 1..1 Coding "評估答案" "評估答案"
* questions.q9eab1f0b.answer from hn-vs-cfb0b454818b (required)
* questions.qc9c61c04 1..1 BackboneElement "近三個月體重變化" "近三個月體重變化"
* questions.qc9c61c04.answer 1..1 Coding "評估答案" "評估答案"
* questions.qc9c61c04.answer from hn-vs-bff7df80c996 (required)
* questions.qb3e55f55 1..1 BackboneElement "行動力" "行動力"
* questions.qb3e55f55.answer 1..1 Coding "評估答案" "評估答案"
* questions.qb3e55f55.answer from hn-vs-3baefb430e5b (required)
* questions.q99f746cb 1..1 BackboneElement "過去三個月內曾有精神性壓力或急性疾病發作？" "過去三個月內曾有精神性壓力或急性疾病發作？"
* questions.q99f746cb.answer 1..1 Coding "評估答案" "評估答案"
* questions.q99f746cb.answer from hn-vs-58e4d598f859 (required)
* questions.qa4ab5839 1..1 BackboneElement "神經精神問題" "神經精神問題"
* questions.qa4ab5839.answer 1..1 Coding "評估答案" "評估答案"
* questions.qa4ab5839.answer from hn-vs-5f4a5d3ebea4 (required)
* questions.q6073598b 1..1 BackboneElement "身體質量指數(BMI)=體重(公斤)/身高(公尺)2" "身體質量指數(BMI)=體重(公斤)/身高(公尺)2"
* questions.q6073598b.answer 1..1 Coding "評估答案" "評估答案"
* questions.q6073598b.answer from hn-vs-b8e0b67e2012 (required)
* questions.qd38a556c 1..1 BackboneElement "若BMI 無法取得，用小腿圍或臂中圍代替(公分)" "若BMI 無法取得，用小腿圍或臂中圍代替(公分)"
* questions.qd38a556c.answer 1..1 Coding "評估答案" "評估答案"
* questions.qd38a556c.answer from hn-vs-5d29c89b2d60 (required)
* isTemporary 0..1 Coding "是否暫存" "是否暫存"
* isTemporary from hn-vs-58e4d598f859 (required)

Mapping: HNMNASFsModelToFHIR
Id: hn-mnasfs-fhir
Title: "居家護理－簡易營養評估欄位對應"
Source: HNMNASFsModel
Target: "http://ltc-ig.fhir.tw/StructureDefinition/HNMNASFsResponse"
* date -> "QuestionnaireResponse.item.where(linkId='Date')" "來源欄位／題目：Date"
* nurseID -> "QuestionnaireResponse.item.where(linkId='NurseID')" "來源欄位／題目：NurseID"
* questions -> "QuestionnaireResponse.item.where(linkId='Questions')" "來源欄位／題目：Questions"
* questions.q9eab1f0b -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q9eab1f0b')" "來源欄位／題目：Questions[Question='過去三個月之中，是否因食慾不佳、消化問題、咀嚼或吞嚥困難，以致進食量減少？']"
* questions.q9eab1f0b.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q9eab1f0b').item.where(linkId='Questions.q9eab1f0b.Answer')" "來源欄位／題目：Questions[Question='過去三個月之中，是否因食慾不佳、消化問題、咀嚼或吞嚥困難，以致進食量減少？'].Answer"
* questions.qc9c61c04 -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qc9c61c04')" "來源欄位／題目：Questions[Question='近三個月體重變化']"
* questions.qc9c61c04.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qc9c61c04').item.where(linkId='Questions.qc9c61c04.Answer')" "來源欄位／題目：Questions[Question='近三個月體重變化'].Answer"
* questions.qb3e55f55 -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qb3e55f55')" "來源欄位／題目：Questions[Question='行動力']"
* questions.qb3e55f55.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qb3e55f55').item.where(linkId='Questions.qb3e55f55.Answer')" "來源欄位／題目：Questions[Question='行動力'].Answer"
* questions.q99f746cb -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q99f746cb')" "來源欄位／題目：Questions[Question='過去三個月內曾有精神性壓力或急性疾病發作？']"
* questions.q99f746cb.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q99f746cb').item.where(linkId='Questions.q99f746cb.Answer')" "來源欄位／題目：Questions[Question='過去三個月內曾有精神性壓力或急性疾病發作？'].Answer"
* questions.qa4ab5839 -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qa4ab5839')" "來源欄位／題目：Questions[Question='神經精神問題']"
* questions.qa4ab5839.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qa4ab5839').item.where(linkId='Questions.qa4ab5839.Answer')" "來源欄位／題目：Questions[Question='神經精神問題'].Answer"
* questions.q6073598b -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q6073598b')" "來源欄位／題目：Questions[Question='身體質量指數(BMI)=體重(公斤)/身高(公尺)2']"
* questions.q6073598b.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.q6073598b').item.where(linkId='Questions.q6073598b.Answer')" "來源欄位／題目：Questions[Question='身體質量指數(BMI)=體重(公斤)/身高(公尺)2'].Answer"
* questions.qd38a556c -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qd38a556c')" "來源欄位／題目：Questions[Question='若BMI 無法取得，用小腿圍或臂中圍代替(公分)']"
* questions.qd38a556c.answer -> "QuestionnaireResponse.item.where(linkId='Questions').item.where(linkId='Questions.qd38a556c').item.where(linkId='Questions.qd38a556c.Answer')" "來源欄位／題目：Questions[Question='若BMI 無法取得，用小腿圍或臂中圍代替(公分)'].Answer"
* isTemporary -> "QuestionnaireResponse.item.where(linkId='IsTemporary')" "來源欄位／題目：IsTemporary"
