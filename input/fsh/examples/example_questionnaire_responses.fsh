Instance: ltc-questionnaire-response-adl-referral-example
InstanceOf: LTCQuestionnaireResponseADL
Title: "轉介ADL問卷回應範例"
Description: "轉介流程中ADL問卷的回應範例"
Usage: #example

* status = #completed
* subject = Reference(ltc-patient-referral-example)
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-adl-assessment-example"
* authored = "2024-09-15T14:05:00+08:00"

* meta.profile[0] = "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseADL"

* item[item-E1].linkId = "E1"
* item[item-E1].text = "吃飯"
* item[item-E1].answer.valueInteger = 5
* item[item-E2].linkId = "E2"
* item[item-E2].text = "洗澡"
* item[item-E2].answer.valueInteger = 0
* item[item-E3].linkId = "E3"
* item[item-E3].text = "穿脫衣物"
* item[item-E3].answer.valueInteger = 0
* item[item-E4].linkId = "E4"
* item[item-E4].text = "個人修飾"
* item[item-E4].answer.valueInteger = 5
* item[item-E5].linkId = "E5"
* item[item-E5].text = "大便控制"
* item[item-E5].answer.valueInteger = 10
* item[item-E6].linkId = "E6"
* item[item-E6].text = "小便控制"
* item[item-E6].answer.valueInteger = 5
* item[item-E7].linkId = "E7"
* item[item-E7].text = "上廁所"
* item[item-E7].answer.valueInteger = 5
* item[item-E8].linkId = "E8"
* item[item-E8].text = "移位"
* item[item-E8].answer.valueInteger = 10
* item[item-E9].linkId = "E9"
* item[item-E9].text = "走路"
* item[item-E9].answer.valueInteger = 10
* item[item-E10].linkId = "E10"
* item[item-E10].text = "上下樓梯"
* item[item-E10].answer.valueInteger = 5
* item[item-E11].linkId = "E11"
* item[item-E11].text = "床椅移位"
* item[item-E11].answer.valueInteger = 10
// Missing QuestionnaireResponse Instances for Bundle entries

Instance: ltc-questionnaire-response-communication-example
InstanceOf: LTCQuestionnaireResponseCMSCommunication
Title: "溝通表達能力問卷回應範例"
Description: "CMS評估表中溝通表達能力問卷的回應範例"
Usage: #example

* status = #completed
* subject = Reference(ltc-patient-cms-example)
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-communication"
* authored = "2024-09-15T10:30:00+08:00"
* meta.profile[0] = "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSCommunication"

* item[item-c1].linkId = "C1"
* item[item-c1].text = "個案意識狀態"
* item[item-c1].answer.valueString = "清醒"

* item[item-c2].linkId = "C2"
* item[item-c2].text = "個案視力"
* item[item-c2].answer.valueString = "正常"

* item[item-c3].linkId = "C3"
* item[item-c3].text = "個案聽力"
* item[item-c3].answer.valueString = "適當"

* item[item-c4].linkId = "C4"
* item[item-c4].text = "個案表達能力"
* item[item-c4].answer.valueString = "良好"

* item[item-c5].linkId = "C5"
* item[item-c5].text = "個案理解能力"
* item[item-c5].answer.valueString = "良好"

Instance: ltc-questionnaire-response-memory-example
InstanceOf: LTCQuestionnaireResponseCMSMemory
Title: "短期記憶力問卷回應範例"
Description: "CMS評估表中短期記憶力問卷的回應範例"
Usage: #example

* status = #completed
* subject = Reference(ltc-patient-cms-example)
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-memory"
* authored = "2024-09-15T10:35:00+08:00"
* meta.profile[0] = "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSMemory"

* item[item-d0].linkId = "D0"
* item[item-d0].text = "個案短期記憶力回答狀態"
* item[item-d0].answer.valueString = "個案可回答 D 大題"

* item[item-d1a].linkId = "D1a"
* item[item-d1a].text = "個案能重複的詞數"
* item[item-d1a].answer.valueInteger = 3

* item[item-d1b1].linkId = "D1b1"
* item[item-d1b1].text = "回憶起「襪子」"
* item[item-d1b1].answer.valueString = "是，且不需提示"

* item[item-d1b2].linkId = "D1b2"
* item[item-d1b2].text = "回憶起「藍色」"
* item[item-d1b2].answer.valueString = "是，且不需提示"

* item[item-d1b3].linkId = "D1b3"
* item[item-d1b3].text = "回憶起「床鋪」"
* item[item-d1b3].answer.valueString = "是，且不需提示"

Instance: ltc-questionnaire-response-iadl-example
InstanceOf: LTCQuestionnaireResponseIADL
Title: "工具性日常活動功能問卷回應範例"
Description: "CMS評估表中IADL問卷的回應範例"
Usage: #example

* status = #completed
* subject = Reference(ltc-patient-cms-example)
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-iadl"
* authored = "2024-09-15T10:40:00+08:00"
* meta.profile[0] = "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseIADL"

* item[item-F1].linkId = "F1"
* item[item-F1].text = "使用電話"
* item[item-F1].answer.valueInteger = 3

* item[item-F2].linkId = "F2"
* item[item-F2].text = "購物"
* item[item-F2].answer.valueInteger = 3

* item[item-F3].linkId = "F3"
* item[item-F3].text = "備餐"
* item[item-F3].answer.valueInteger = 3

* item[item-F4].linkId = "F4"
* item[item-F4].text = "處理家務"
* item[item-F4].answer.valueInteger = 4

* item[item-F5].linkId = "F5"
* item[item-F5].text = "洗衣服"
* item[item-F5].answer.valueInteger = 3

* item[item-F6].linkId = "F6"
* item[item-F6].text = "外出"
* item[item-F6].answer.valueInteger = 4

* item[item-F7].linkId = "F7"
* item[item-F7].text = "服用藥物"
* item[item-F7].answer.valueInteger = 3

* item[item-F8].linkId = "F8"
* item[item-F8].text = "處理財務的能力"
* item[item-F8].answer.valueInteger = 3

Instance: ltc-questionnaire-response-special-care-example
InstanceOf: LTCQuestionnaireResponseCMSSpecialCare
Title: "特殊複雜照護需要問卷回應範例"
Description: "CMS評估表中特殊複雜照護需要問卷的回應範例"
Usage: #example

* status = #completed
* subject = Reference(ltc-patient-cms-example)
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-special-care"
* authored = "2024-09-15T10:45:00+08:00"
* meta.profile[0] = "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSSpecialCare"

* item[item-G1].linkId = "G1"
* item[item-G1].text = "疼痛狀況"
* item[item-G1].answer.valueString = "個案本人回答"

* item[item-G1a].linkId = "G1a"
* item[item-G1a].text = "過去 1 個月中，個案身體疼痛的程度？"
* item[item-G1a].answer.valueString = "輕微的疼痛"

* item[item-G2a].linkId = "G2a"
* item[item-G2a].text = "請問個案現在的皮膚狀況？"
* item[item-G2a].answer.valueString = "正常"

* item[item-G2c].linkId = "G2c"
* item[item-G2c].text = "請問皮膚異常的狀況為何？"
* item[item-G2c].answer[0].valueString = "乾燥有皮屑"

* item[item-G3a].linkId = "G3a"
* item[item-G3a].text = "請問個案是否會因關節僵硬受限制，以致影響日常生活功能或造成照顧困難？"
* item[item-G3a].answer.valueString = "否，沒有影響日常生活功能"

* item[item-G4a].linkId = "G4a"
* item[item-G4a].text = "個案過去 3 個月體重是否減輕？"
* item[item-G4a].answer.valueString = "體重無變化"

* item[item-G4b].linkId = "G4b"
* item[item-G4b].text = "個案身體質量指數（BMI）"
* item[item-G4b].answer.valueString = "22.5"

* item[item-G4c].linkId = "G4c"
* item[item-G4c].text = "個案一般的飲食狀況，以週為單位"
* item[item-G4c].answer.valueString = "每餐吃完，從不拒絕用餐，或不需任何補充食物，或灌食自製管灌飲食大於 2400c.c./日，或採用管灌飲食（或靜脈營養）大於 1200 大卡/日"

* item[item-G4d1].linkId = "G4d1"
* item[item-G4d1].text = "過去一年中體重減少了 5% 以上？"
* item[item-G4d1].answer.valueString = "否"

* item[item-G4d2].linkId = "G4d2"
* item[item-G4d2].text = "可以在不用手支撐的狀況下，從椅子上站起來 5 次？"
* item[item-G4d2].answer.valueString = "是"

* item[item-G4d3].linkId = "G4d3"
* item[item-G4d3].text = "經常有提不起勁來做事的感覺？"
* item[item-G4d3].answer.valueString = "否"

* item[item-G4f].linkId = "G4f"
* item[item-G4f].text = "個案尋求必要醫療時，是否需要服務介入協助？"
* item[item-G4f].answer.valueString = "不需要協助"

* item[item-G5a].linkId = "G5a"
* item[item-G5a].text = "個案目前是否接受進階照顧？"
* item[item-G5a].answer.valueString = "無"

* item[item-G7].linkId = "G7"
* item[item-G7].text = "個案被診斷為失智症後，照顧者是否有接受護理人員或其他專業人員提供下列的教導？"
* item[item-G7].answer.valueString = "未接受過教導"

* item[item-G8a].linkId = "G8a"
* item[item-G8a].text = "請問個案是否能維持坐姿的平衡？（在沒有靠背支撐的狀況下）"
* item[item-G8a].answer.valueString = "正常，不靠扶持能坐著達一分鐘以上"

* item[item-G8b].linkId = "G8b"
* item[item-G8b].text = "請問個案是否能維持站立的平衡？"
* item[item-G8b].answer.valueString = "正常，不靠扶持能站立達一分鐘以上"

* item[item-G8c].linkId = "G8c"
* item[item-G8c].text = "在過去 12 個月中，個案有沒有跌倒或摔倒過？"
* item[item-G8c].answer.valueString = "沒有跌倒或摔倒過【跳答 G8d】"

* item[item-G8d].linkId = "G8d"
* item[item-G8d].text = "你的日常活動是否因擔心跌倒而不做？"
* item[item-G8d].answer.valueString = "不會擔心"

* item[item-G8e].linkId = "G8e"
* item[item-G8e].text = "個案對於危險的認知？"
* item[item-G8e].answer.valueString = "有能力：可以認識日常生活危險來源"

Instance: ltc-questionnaire-response-society-example
InstanceOf: LTCQuestionnaireResponseCMSSociety
Title: "居家環境與社會參與問卷回應範例"
Description: "CMS評估表中居家環境與社會參與問卷的回應範例"
Usage: #example

* status = #completed
* subject = Reference(ltc-patient-cms-example)
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-society"
* authored = "2024-09-15T10:50:00+08:00"
* meta.profile[0] = "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSSociety"

* item[item-H1a].linkId = "H1a"
* item[item-H1a].text = "請問個案目前的居住狀況？"
* item[item-H1a].answer.valueString = "與家人或其他人同住"

* item[item-H2a].linkId = "H2a"
* item[item-H2a].text = "請問個案與親朋好友多久會聯絡 1 次，包括見面、通電話或寫信？"
* item[item-H2a].answer.valueString = "每週至少 1 次"

* item[item-H2b].linkId = "H2b"
* item[item-H2b].text = "請問個案目前是否有參與下列的活動？"
* item[item-H2b].answer.valueString = "每個月至少 1 次"

* item[item-H2c].linkId = "H2c"
* item[item-H2c].text = "請問個案最近三個月內為了與親友互動、參與活動，是否需要服務介入協助？"
* item[item-H2c].answer.valueBoolean = false

* item[item-H2c1].linkId = "H2c1"
* item[item-H2c1].text = "請問個案最近三個月內為了與親友互動、參與活動，需要協助的方式？"
* item[item-H2c1].answer.valueString = "監督陪同"

* item[item-H2c2].linkId = "H2c2"
* item[item-H2c2].text = "請問個案最近三個月內為了與親友互動、參與活動，需要協助的頻率？"
* item[item-H2c2].answer.valueString = "至少一個月 1 次，但不是每個星期"

Instance: ltc-questionnaire-response-mental-example
InstanceOf: LTCQuestionnaireResponseCMSMental
Title: "認知功能與精神狀態問卷回應範例"
Description: "CMS評估表中認知功能與精神狀態問卷的回應範例"
Usage: #example

* status = #completed
* subject = Reference(ltc-patient-cms-example)
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-mental"
* authored = "2024-09-15T10:55:00+08:00"
* meta.profile[0] = "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSMental"

* item[item-I01].linkId = "I01"
* item[item-I01].text = "遊走"
* item[item-I01].answer.valueString = "過去三個月內從未發生"

* item[item-I02].linkId = "I02"
* item[item-I02].text = "日夜顛倒/作息混亂"
* item[item-I02].answer.valueString = "過去三個月內有發生，但過去一週內從未發生"

* item[item-I03].linkId = "I03"
* item[item-I03].text = "語言攻擊行為"
* item[item-I03].answer.valueString = "過去三個月內從未發生"

* item[item-I04].linkId = "I04"
* item[item-I04].text = "肢體攻擊行為"
* item[item-I04].answer.valueString = "過去三個月內從未發生"

* item[item-I05].linkId = "I05"
* item[item-I05].text = "干擾行為"
* item[item-I05].answer.valueString = "過去三個月內從未發生"

* item[item-I06].linkId = "I06"
* item[item-I06].text = "抗拒照護"
* item[item-I06].answer.valueString = "過去三個月內從未發生"

* item[item-I07].linkId = "I07"
* item[item-I07].text = "妄想"
* item[item-I07].answer.valueString = "過去三個月內從未發生"

* item[item-I08].linkId = "I08"
* item[item-I08].text = "幻覺"
* item[item-I08].answer.valueString = "過去三個月內從未發生"

* item[item-I09].linkId = "I09"
* item[item-I09].text = "恐懼或焦慮"
* item[item-I09].answer.valueString = "過去三個月內從未發生"

* item[item-I10].linkId = "I10"
* item[item-I10].text = "憂鬱及負性症狀"
* item[item-I10].answer.valueString = "過去三個月內從未發生"

* item[item-I11].linkId = "I11"
* item[item-I11].text = "自傷行為及自殺（包含意念及行為）"
* item[item-I11].answer.valueString = "過去三個月內從未發生"

* item[item-I12].linkId = "I12"
* item[item-I12].text = "重複行為"
* item[item-I12].answer.valueString = "過去三個月內從未發生"

* item[item-I13].linkId = "I13"
* item[item-I13].text = "對物品的攻擊行為"
* item[item-I13].answer.valueString = "過去三個月內從未發生"

* item[item-I14].linkId = "I14"
* item[item-I14].text = "其他不適當以及不潔行為"
* item[item-I14].answer.valueString = "過去三個月內從未發生"

Instance: ltc-questionnaire-response-caregiver-load-example
InstanceOf: LTCQuestionnaireResponseCMSCaregiverLoad
Title: "照顧者負荷問卷回應範例"
Description: "CMS評估表中照顧者負荷問卷的回應範例"
Usage: #example

* status = #completed
* subject = Reference(ltc-patient-cms-example)
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-caregiver-load"
* authored = "2024-09-15T11:00:00+08:00"
* meta.profile[0] = "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSCaregiverLoad"

* item[0].linkId = "J01"
* item[0].text = "睡眠受到干擾"
* item[0].answer.valueBoolean = false

* item[1].linkId = "J02"
* item[1].text = "體力上的負荷"
* item[1].answer.valueBoolean = true

* item[2].linkId = "J03"
* item[2].text = "需分配時間照顧其他家人"
* item[2].answer.valueBoolean = false

* item[3].linkId = "J04"
* item[3].text = "對個案的行為感到困擾"
* item[3].answer.valueBoolean = false

* item[4].linkId = "J05"
* item[4].text = "無法承受照顧壓力"
* item[4].answer.valueBoolean = false

Instance: ltc-questionnaire-response-caregiver-support-example
InstanceOf: LTCQuestionnaireResponseCMSCaregiverSupport
Title: "照顧者支持問卷回應範例"
Description: "CMS評估表中照顧者支持問卷的回應範例"
Usage: #example

* status = #completed
* subject = Reference(ltc-patient-cms-example)
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-caregiver-support"
* authored = "2024-09-15T11:05:00+08:00"
* meta.profile[0] = "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseCMSCaregiverSupport"

* item[item-K1].linkId = "K1"
* item[item-K1].text = "請問您是否與個案同住？"
* item[item-K1].answer.valueBoolean = true

* item[item-K2].linkId = "K2"
* item[item-K2].text = "若您有事必須外出，一天之中（二十四小時），請問您可將個案單獨留置家中幾小時沒有問題？"
* item[item-K2].answer.valueString = "三小時～未滿六小時"

* item[item-K3].linkId = "K3"
* item[item-K3].text = "有無照顧其他失能家人或 3 歲以下幼兒？"
* item[item-K3].answer.valueString = "沒有，僅個案 1 人"

* item[item-K4].linkId = "K4"
* item[item-K4].text = "請問您已經照顧個案多久？"
* item[item-K4].answer.valueString = "一年以上"

* item[item-K5].linkId = "K5"
* item[item-K5].text = "請問您過去 1 個月的健康狀況好不好？"
* item[item-K5].answer.valueString = "好"

* item[item-K6].linkId = "K6"
* item[item-K6].text = "整體來說，您覺得您生活品質好不好？"
* item[item-K6].answer.valueString = "尚可"

* item[item-K7].linkId = "K7"
* item[item-K7].text = "請問您目前有沒有在工作？"
* item[item-K7].answer.valueBoolean = false

* item[item-K8].linkId = "K8"
* item[item-K8].text = "請寫出其他有關訪問過程、個案（家屬）期許或其他如虐待、疏忽、需緊急就醫、自費等特殊狀況或問題："
* item[item-K8].answer.valueString = "無"

// Referral-specific QuestionnaireResponse instances

Instance: ltc-questionnaire-response-iadl-referral-example
InstanceOf: LTCQuestionnaireResponseIADL
Title: "轉介IADL問卷回應範例"
Description: "轉介流程中IADL問卷的回應範例"
Usage: #example

* status = #completed
* subject = Reference(ltc-patient-referral-example)
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-iadl"
* authored = "2024-09-15T14:00:00+08:00"
* meta.profile[0] = "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseIADL"

* item[item-F1].linkId = "F1"
* item[item-F1].text = "使用電話"
* item[item-F1].answer.valueInteger = 2

* item[item-F2].linkId = "F2"
* item[item-F2].text = "購物"
* item[item-F2].answer.valueInteger = 2

* item[item-F3].linkId = "F3"
* item[item-F3].text = "備餐"
* item[item-F3].answer.valueInteger = 2

* item[item-F4].linkId = "F4"
* item[item-F4].text = "處理家務"
* item[item-F4].answer.valueInteger = 2

* item[item-F5].linkId = "F5"
* item[item-F5].text = "洗衣服"
* item[item-F5].answer.valueInteger = 2

* item[item-F6].linkId = "F6"
* item[item-F6].text = "外出"
* item[item-F6].answer.valueInteger = 2

* item[item-F7].linkId = "F7"
* item[item-F7].text = "服用藥物"
* item[item-F7].answer.valueInteger = 2

* item[item-F8].linkId = "F8"
* item[item-F8].text = "處理財務的能力"
* item[item-F8].answer.valueInteger = 2

Instance: ltc-questionnaire-response-sof-example
InstanceOf: LTCQuestionnaireResponseReferralSOF
Title: "SOF問卷回應範例"
Description: "轉介流程中SOF問卷的回應範例"
Usage: #example

* status = #completed
* subject = Reference(ltc-patient-referral-example)
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-sof"
* authored = "2024-09-15T14:10:00+08:00"

* meta.profile[0] = "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseReferralSOF"

* item[0].linkId = "sof-1"
* item[0].text = "體重減輕"
* item[0].answer.valueBoolean = true

* item[1].linkId = "sof-2"
* item[1].text = "下肢功能"
* item[1].answer.valueBoolean = false

* item[2].linkId = "sof-3"
* item[2].text = "精力降低"
* item[2].answer.valueBoolean = true

Instance: ltc-questionnaire-response-caregiver-referral-example
InstanceOf: LTCQuestionnaireResponseReferralCaregiver
Title: "轉介照顧者問卷回應範例"
Description: "轉介流程中照顧者問卷的回應範例"
Usage: #example

* status = #completed
* subject = Reference(ltc-patient-referral-example)
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-caregiver"
* authored = "2024-09-15T14:20:00+08:00"

* meta.profile[0] = "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponseReferralCaregiver"

* item.linkId = "caregiver-1"
* item.text = "是否有照顧者"
* item.answer.valueString = "是，固定"
