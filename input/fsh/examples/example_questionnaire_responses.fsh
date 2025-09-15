// Missing QuestionnaireResponse Instances for Bundle entries

Instance: ltc-questionnaire-response-communication-example
InstanceOf: LTCQuestionnaireResponse
Title: "溝通表達能力問卷回應範例"
Description: "CMS評估表中溝通表達能力問卷的回應範例"
Usage: #example

* status = #completed
* subject = Reference(ltc-patient-cms-example)
* questionnaire = "Questionnaire/ltc-questionnaire-communication"
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
* questionnaire = "Questionnaire/ltc-questionnaire-memory"
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
* questionnaire = "Questionnaire/ltc-questionnaire-iadl"
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
* questionnaire = "Questionnaire/ltc-questionnaire-special-care"
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
* questionnaire = "Questionnaire/ltc-questionnaire-society"
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
* questionnaire = "Questionnaire/ltc-questionnaire-mental"
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
* questionnaire = "Questionnaire/ltc-questionnaire-caregiver-load"
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
* questionnaire = "Questionnaire/ltc-questionnaire-caregiver-support"
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
InstanceOf: LTCQuestionnaireResponse
Title: "轉介IADL問卷回應範例"
Description: "轉介流程中IADL問卷的回應範例"
Usage: #example

* status = #completed
* subject = Reference(ltc-patient-referral-example)
* questionnaire = "Questionnaire/ltc-questionnaire-iadl"
* authored = "2024-09-15T14:00:00+08:00"

* item[0].linkId = "iadl-1"
* item[0].text = "購物能力"
* item[0].answer.valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[0].answer.valueCoding.code = #dependent
* item[0].answer.valueCoding.display = "依賴"

* item[1].linkId = "iadl-2"
* item[1].text = "使用電話能力"
* item[1].answer.valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[1].answer.valueCoding.code = #dependent
* item[1].answer.valueCoding.display = "依賴"

Instance: ltc-questionnaire-response-sof-example
InstanceOf: LTCQuestionnaireResponse
Title: "SOF問卷回應範例"
Description: "轉介流程中SOF問卷的回應範例"
Usage: #example

* status = #completed
* subject = Reference(ltc-patient-referral-example)
* questionnaire = "Questionnaire/ltc-questionnaire-sof"
* authored = "2024-09-15T14:10:00+08:00"

* item[0].linkId = "sof-1"
* item[0].text = "跌倒風險評估"
* item[0].answer.valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[0].answer.valueCoding.code = #high-risk
* item[0].answer.valueCoding.display = "高風險"

* item[1].linkId = "sof-2"
* item[1].text = "平衡能力"
* item[1].answer.valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[1].answer.valueCoding.code = #poor
* item[1].answer.valueCoding.display = "差"

Instance: ltc-questionnaire-response-caregiver-referral-example
InstanceOf: LTCQuestionnaireResponse
Title: "轉介照顧者問卷回應範例"
Description: "轉介流程中照顧者問卷的回應範例"
Usage: #example

* status = #completed
* subject = Reference(ltc-patient-referral-example)
* questionnaire = "Questionnaire/ltc-questionnaire-caregiver"
* authored = "2024-09-15T14:20:00+08:00"

* item[0].linkId = "caregiver-1"
* item[0].text = "主要照顧者關係"
* item[0].answer.valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[0].answer.valueCoding.code = #spouse
* item[0].answer.valueCoding.display = "配偶"

* item[1].linkId = "caregiver-2"
* item[1].text = "照顧能力"
* item[1].answer.valueCoding.system = "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS"
* item[1].answer.valueCoding.code = #limited
* item[1].answer.valueCoding.display = "有限"
