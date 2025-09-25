Instance: ltc-questionnaire-response-adl-referral-example
InstanceOf: LTCQuestionnaireResponseReferralADL
Title: "轉介ADL問卷回應範例"
Description: "轉介流程中ADL問卷的回應範例"
Usage: #example

* status = #completed
* subject = Reference(ltc-patient-referral-example)
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-adl-assessment-example"
* authored = "2024-09-15T14:05:00+08:00"

* item[0].linkId = "adl-1"
* item[0].text = "吃飯"
* item[0].answer.valueString = "需要部分協助"
* item[1].linkId = "adl-2"
* item[1].text = "洗澡"
* item[1].answer.valueString = "需要部分協助"
* item[2].linkId = "adl-3"
* item[2].text = "穿脫衣物"
* item[2].answer.valueString = "需要部分協助"
* item[3].linkId = "adl-4"
* item[3].text = "個人修飾"
* item[3].answer.valueString = "需要部分協助"
* item[4].linkId = "adl-5"
* item[4].text = "大便控制"
* item[4].answer.valueString = "需要部分協助"
* item[5].linkId = "adl-6"
* item[5].text = "小便控制"
* item[5].answer.valueString = "需要部分協助"
* item[6].linkId = "adl-7"
* item[6].text = "上廁所"
* item[6].answer.valueString = "需要部分協助"
* item[7].linkId = "adl-8"
* item[7].text = "移位"
* item[7].answer.valueString = "需要部分協助"
* item[8].linkId = "adl-9"
* item[8].text = "走路"
* item[8].answer.valueString = "需要部分協助"
* item[9].linkId = "adl-10"
* item[9].text = "上下樓梯"
* item[9].answer.valueString = "需要部分協助"
// Missing QuestionnaireResponse Instances for Bundle entries

Instance: ltc-questionnaire-response-communication-example
InstanceOf: LTCQuestionnaireResponse
Title: "溝通表達能力問卷回應範例"
Description: "CMS評估表中溝通表達能力問卷的回應範例"
Usage: #example

* status = #completed
* subject = Reference(ltc-patient-cms-example)
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-communication"
* authored = "2024-09-15T10:30:00+08:00"

* item[0].linkId = "communication-1"
* item[0].text = "是否能表達基本需求"
* item[0].answer.valueBoolean = true

* item[1].linkId = "communication-2"
* item[1].text = "語言理解能力"
* item[1].answer.valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[1].answer.valueCoding.code = #good
* item[1].answer.valueCoding.display = "良好"

Instance: ltc-questionnaire-response-memory-example
InstanceOf: LTCQuestionnaireResponse
Title: "短期記憶力問卷回應範例"
Description: "CMS評估表中短期記憶力問卷的回應範例"
Usage: #example

* status = #completed
* subject = Reference(ltc-patient-cms-example)
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-memory"
* authored = "2024-09-15T10:35:00+08:00"

* item[0].linkId = "memory-1"
* item[0].text = "能否記住剛說過的話"
* item[0].answer.valueBoolean = true

* item[1].linkId = "memory-2"
* item[1].text = "是否記得熟悉的人名"
* item[1].answer.valueBoolean = true

Instance: ltc-questionnaire-response-iadl-example
InstanceOf: LTCQuestionnaireResponse
Title: "工具性日常活動功能問卷回應範例"
Description: "CMS評估表中IADL問卷的回應範例"
Usage: #example

* status = #completed
* subject = Reference(ltc-patient-cms-example)
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-iadl"
* authored = "2024-09-15T10:40:00+08:00"

* item[0].linkId = "iadl-1"
* item[0].text = "購物能力"
* item[0].answer.valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[0].answer.valueCoding.code = #independent
* item[0].answer.valueCoding.display = "獨立"

* item[1].linkId = "iadl-2"
* item[1].text = "使用電話能力"
* item[1].answer.valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[1].answer.valueCoding.code = #assisted
* item[1].answer.valueCoding.display = "需協助"

Instance: ltc-questionnaire-response-special-care-example
InstanceOf: LTCQuestionnaireResponse
Title: "特殊複雜照護需要問卷回應範例"
Description: "CMS評估表中特殊複雜照護需要問卷的回應範例"
Usage: #example

* status = #completed
* subject = Reference(ltc-patient-cms-example)
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-special-care"
* authored = "2024-09-15T10:45:00+08:00"

* item[0].linkId = "special-care-1"
* item[0].text = "是否需要特殊醫療照護"
* item[0].answer.valueBoolean = false

* item[1].linkId = "special-care-2"
* item[1].text = "是否需要復健治療"
* item[1].answer.valueBoolean = true

Instance: ltc-questionnaire-response-society-example
InstanceOf: LTCQuestionnaireResponse
Title: "居家環境與社會參與問卷回應範例"
Description: "CMS評估表中居家環境與社會參與問卷的回應範例"
Usage: #example

* status = #completed
* subject = Reference(ltc-patient-cms-example)
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-society"
* authored = "2024-09-15T10:50:00+08:00"

* item[0].linkId = "society-1"
* item[0].text = "居住環境是否安全"
* item[0].answer.valueBoolean = true

* item[1].linkId = "society-2"
* item[1].text = "社會參與程度"
* item[1].answer.valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[1].answer.valueCoding.code = #moderate
* item[1].answer.valueCoding.display = "中等"

Instance: ltc-questionnaire-response-mental-example
InstanceOf: LTCQuestionnaireResponse
Title: "認知功能與精神狀態問卷回應範例"
Description: "CMS評估表中認知功能與精神狀態問卷的回應範例"
Usage: #example

* status = #completed
* subject = Reference(ltc-patient-cms-example)
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-mental"
* authored = "2024-09-15T10:55:00+08:00"

* item[0].linkId = "mental-1"
* item[0].text = "認知功能評估"
* item[0].answer.valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[0].answer.valueCoding.code = #mild-impairment
* item[0].answer.valueCoding.display = "輕度損害"

* item[1].linkId = "mental-2"
* item[1].text = "精神狀態"
* item[1].answer.valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[1].answer.valueCoding.code = #stable
* item[1].answer.valueCoding.display = "穩定"

Instance: ltc-questionnaire-response-caregiver-load-example
InstanceOf: LTCQuestionnaireResponse
Title: "照顧者負荷問卷回應範例"
Description: "CMS評估表中照顧者負荷問卷的回應範例"
Usage: #example

* status = #completed
* subject = Reference(ltc-patient-cms-example)
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-caregiver-load"
* authored = "2024-09-15T11:00:00+08:00"

* item[0].linkId = "caregiver-load-1"
* item[0].text = "照顧負擔程度"
* item[0].answer.valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[0].answer.valueCoding.code = #moderate
* item[0].answer.valueCoding.display = "中等"

* item[1].linkId = "caregiver-load-2"
* item[1].text = "需要支援服務"
* item[1].answer.valueBoolean = true

Instance: ltc-questionnaire-response-caregiver-support-example
InstanceOf: LTCQuestionnaireResponse
Title: "照顧者支持問卷回應範例"
Description: "CMS評估表中照顧者支持問卷的回應範例"
Usage: #example

* status = #completed
* subject = Reference(ltc-patient-cms-example)
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-caregiver-support"
* authored = "2024-09-15T11:05:00+08:00"

* item[0].linkId = "caregiver-support-1"
* item[0].text = "目前獲得的支持"
* item[0].answer.valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[0].answer.valueCoding.code = #adequate
* item[0].answer.valueCoding.display = "充足"

* item[1].linkId = "caregiver-support-2"
* item[1].text = "額外支持需求"
* item[1].answer.valueBoolean = false

// Referral-specific QuestionnaireResponse instances

Instance: ltc-questionnaire-response-iadl-referral-example
InstanceOf: LTCQuestionnaireResponseReferralIADL
Title: "轉介IADL問卷回應範例"
Description: "轉介流程中IADL問卷的回應範例"
Usage: #example

* status = #completed
* subject = Reference(ltc-patient-referral-example)
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-iadl"
* authored = "2024-09-15T14:00:00+08:00"

* item[0].linkId = "iadl-1"
* item[0].text = "使用電話"
* item[0].answer.valueString = "需協助"

* item[1].linkId = "iadl-2"
* item[1].text = "購物"
* item[1].answer.valueString = "需協助"

* item[2].linkId = "iadl-3"
* item[2].text = "備餐"
* item[2].answer.valueString = "需協助"

* item[3].linkId = "iadl-4"
* item[3].text = "處理家務"
* item[3].answer.valueString = "需協助"

* item[4].linkId = "iadl-5"
* item[4].text = "洗衣服"
* item[4].answer.valueString = "需協助"

* item[5].linkId = "iadl-6"
* item[5].text = "外出"
* item[5].answer.valueString = "需協助"

* item[6].linkId = "iadl-7"
* item[6].text = "服用藥物"
* item[6].answer.valueString = "需協助"

* item[7].linkId = "iadl-8"
* item[7].text = "處理財務能力"
* item[7].answer.valueString = "需協助"

Instance: ltc-questionnaire-response-sof-example
InstanceOf: LTCQuestionnaireResponseReferralSOF
Title: "SOF問卷回應範例"
Description: "轉介流程中SOF問卷的回應範例"
Usage: #example

* status = #completed
* subject = Reference(ltc-patient-referral-example)
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-sof"
* authored = "2024-09-15T14:10:00+08:00"

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

* item.linkId = "caregiver-1"
* item.text = "是否有照顧者"
* item.answer.valueString = "是，固定"
