Instance: ltc-questionnaire-aa12-example
InstanceOf: $LTCQuestionnaire
Title: "長期照護醫師意見書問卷範例 (AA12)"
Description: "一個長期照護醫師意見書問卷的範例，展示如何使用 LTCQuestionnaire Profile"
Usage: #example

* url = "http://ltc-ig.fhir.tw/Questionnaire/ltc-questionnaire-aa12-example"
* identifier.system = "http://ltc-ig.fhir.tw/questionnaire-id"
* identifier.value = "AA12"
* version = "1.0"
* name = "AA12"
* title = "長期照護醫師意見書 (AA12)"
* status = #active

// 基本資料欄位 - 以 reference 形式填寫
* item[0].linkId = "applicant-reference"
* item[0].prefix = "申請者"
* item[0].type = #reference
* item[0].text = "申請者（Patient Resource ID）"
* item[0].required = true

* item[1].linkId = "physician-reference"
* item[1].prefix = "開立醫師"
* item[1].type = #reference
* item[1].text = "開立醫師（PractitionerRole Resource ID）"
* item[1].required = true

* item[2].linkId = "institution-reference"
* item[2].prefix = "醫療機構"
* item[2].type = #reference
* item[2].text = "醫療機構（Organization Resource ID）"
* item[2].required = true

* item[3].linkId = "last-consultation-date"
* item[3].prefix = "最近一次診察日期"
* item[3].type = #date
* item[3].text = "最近一次診察日期"
* item[3].required = true

* item[4].linkId = "opinion-count"
* item[4].prefix = "製作意見書次數"
* item[4].type = #choice
* item[4].text = "製作意見書次數"
* item[4].required = true
* item[4].answerOption[0].valueString = "初次"
* item[4].answerOption[1].valueString = "二次以上"

* item[5].linkId = "previous-opinion-date"
* item[5].prefix = "前次意見書日期"
* item[5].type = #date
* item[5].text = "前次意見書日期"

* item[6].linkId = "consultation-departments"
* item[6].prefix = "目前診察科別"
* item[6].type = #choice
* item[6].text = "目前診察科別"
* item[6].repeats = true
* item[6].answerOption[0].valueCoding.system = "http://snomed.info/sct"
* item[6].answerOption[0].valueCoding.code = #419192003
* item[6].answerOption[0].valueCoding.display = "Internal medicine"
* item[6].answerOption[1].valueCoding.system = "http://snomed.info/sct"
* item[6].answerOption[1].valueCoding.code = #394609007
* item[6].answerOption[1].valueCoding.display = "General surgery"
* item[6].answerOption[2].valueCoding.system = "http://snomed.info/sct"
* item[6].answerOption[2].valueCoding.code = #394591006
* item[6].answerOption[2].valueCoding.display = "Neurology"
* item[6].answerOption[3].valueCoding.system = "http://snomed.info/sct"
* item[6].answerOption[3].valueCoding.code = #394587001
* item[6].answerOption[3].valueCoding.display = "Psychiatry"
* item[6].answerOption[4].valueCoding.system = "http://snomed.info/sct"
* item[6].answerOption[4].valueCoding.code = #24241000087106
* item[6].answerOption[4].valueCoding.display = "General orthopedic specialty"
* item[6].answerOption[5].valueCoding.system = "http://snomed.info/sct"
* item[6].answerOption[5].valueCoding.code = #419772000
* item[6].answerOption[5].valueCoding.display = "Family practice"
* item[6].answerOption[6].valueCoding.system = "http://snomed.info/sct"
* item[6].answerOption[6].valueCoding.code = #394582007
* item[6].answerOption[6].valueCoding.display = "Dermatology"
* item[6].answerOption[7].valueCoding.system = "http://snomed.info/sct"
* item[6].answerOption[7].valueCoding.code = #394612005
* item[6].answerOption[7].valueCoding.display = "Urology"
* item[6].answerOption[8].valueCoding.system = "http://snomed.info/sct"
* item[6].answerOption[8].valueCoding.code = #394585009
* item[6].answerOption[8].valueCoding.display = "Obstetrics and gynecology"
* item[6].answerOption[9].valueCoding.system = "http://snomed.info/sct"
* item[6].answerOption[9].valueCoding.code = #394594003
* item[6].answerOption[9].valueCoding.display = "Ophthalmology"
* item[6].answerOption[10].valueCoding.system = "http://snomed.info/sct"
* item[6].answerOption[10].valueCoding.code = #418960008
* item[6].answerOption[10].valueCoding.display = "Otolaryngology"
* item[6].answerOption[11].valueCoding.system = "http://snomed.info/sct"
* item[6].answerOption[11].valueCoding.code = #394602003
* item[6].answerOption[11].valueCoding.display = "Rehabilitation specialty"
* item[6].answerOption[12].valueCoding.system = "http://snomed.info/sct"
* item[6].answerOption[12].valueCoding.code = #722163006
* item[6].answerOption[12].valueCoding.display = "Dentistry"

* item[7].linkId = "disease-name"
* item[7].prefix = "診斷疾病名稱"
* item[7].type = #string
* item[7].text = "診斷疾病名稱"
* item[7].required = true
* item[7].repeats = true

* item[8].linkId = "disease-icd"
* item[8].prefix = "ICD代碼"
* item[8].type = #string
* item[8].text = "ICD代碼"
* item[8].repeats = true

* item[9].linkId = "disease-onset"
* item[9].prefix = "發病日期"
* item[9].type = #date
* item[9].text = "發病日期"
* item[9].required = true
* item[9].repeats = true

* item[10].linkId = "condition-status"
* item[10].prefix = "病情狀態"
* item[10].type = #choice
* item[10].text = "病情狀態"
* item[10].required = true
* item[10].answerOption[0].valueCoding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* item[10].answerOption[0].valueCoding.code = #active
* item[10].answerOption[0].valueCoding.display = "Active"
* item[10].answerOption[1].valueCoding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* item[10].answerOption[1].valueCoding.code = #recurrence
* item[10].answerOption[1].valueCoding.display = "Recurrence"
* item[10].answerOption[2].valueCoding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* item[10].answerOption[2].valueCoding.code = #unknown
* item[10].answerOption[2].valueCoding.display = "Unknown"

* item[11].linkId = "unstable-reason"
* item[11].prefix = "不穩定狀態說明"
* item[11].type = #text
* item[11].text = "不穩定狀態說明"

* item[12].linkId = "recent-treatment"
* item[12].prefix = "近期治療"
* item[12].type = #choice
* item[12].text = "過去7日內接受的治療"
* item[12].repeats = true
* item[12].answerOption[0].valueString = "點滴"
* item[12].answerOption[1].valueString = "靜脈注射"
* item[12].answerOption[2].valueString = "血液透析"
* item[12].answerOption[3].valueString = "腹膜透析"
* item[12].answerOption[4].valueString = "人工肛門"
* item[12].answerOption[5].valueString = "氧氣療法"
* item[12].answerOption[6].valueString = "人工呼吸器"
* item[12].answerOption[7].valueString = "氣切"
* item[12].answerOption[8].valueString = "疼痛治療"
* item[12].answerOption[9].valueString = "鼻胃管"
* item[12].answerOption[10].valueString = "胃腸造口"
* item[12].answerOption[11].valueString = "導尿管"
* item[12].answerOption[12].valueString = "物理治療"
* item[12].answerOption[13].valueString = "職能治療"
* item[12].answerOption[14].valueString = "語言治療"
* item[12].answerOption[15].valueString = "監測器"
* item[12].answerOption[16].valueString = "褥瘡處理"

* item[13].linkId = "other-treatment"
* item[13].prefix = "其他重要治療"
* item[13].type = #string
* item[13].text = "其他重要治療"

* item[14].linkId = "care-precautions"
* item[14].prefix = "照顧應注意事項"
* item[14].type = #choice
* item[14].text = "照顧應注意事項及處置方法"
* item[14].repeats = true
* item[14].answerOption[0].valueString = "尿失禁"
* item[14].answerOption[1].valueString = "跌倒•骨折"
* item[14].answerOption[2].valueString = "移動力減低"
* item[14].answerOption[3].valueString = "壓力性損傷處理"
* item[14].answerOption[4].valueString = "心臟功能下降"
* item[14].answerOption[5].valueString = "肺部功能下降"
* item[14].answerOption[6].valueString = "社交退縮"
* item[14].answerOption[7].valueString = "做事情失去興趣或樂趣"
* item[14].answerOption[8].valueString = "遊走"
* item[14].answerOption[9].valueString = "咀嚼吞嚥障礙"
* item[14].answerOption[10].valueString = "脫水"
* item[14].answerOption[11].valueString = "容易罹患感染症"
* item[14].answerOption[12].valueString = "疼痛"

* item[15].linkId = "other-precautions"
* item[15].prefix = "其他注意事項"
* item[15].type = #string
* item[15].text = "其他注意事項"

* item[16].linkId = "treatment-suggestions"
* item[16].prefix = "處置建議"
* item[16].type = #text
* item[16].text = "處置建議"

* item[17].linkId = "recommended-services"
* item[17].prefix = "建議介入之醫事照護服務"
* item[17].type = #choice
* item[17].text = "建議介入之醫事照護服務"
* item[17].repeats = true
* item[17].answerOption[0].valueString = "IADLs復能照護一居家"
* item[17].answerOption[1].valueString = "ADLs復能照護一居家"
* item[17].answerOption[2].valueString = "進食與吞嚥照護"
* item[17].answerOption[3].valueString = "IADLs復能照護—社區"
* item[17].answerOption[4].valueString = "ADLs復能照護—社區"
* item[17].answerOption[5].valueString = "困擾行為照護"

* item[18].linkId = "other-services"
* item[18].prefix = "其他醫事照護服務"
* item[18].type = #string
* item[18].text = "其他醫事照護服務"

* item[19].linkId = "six-month-impact"
* item[19].prefix = "最近六個月內可能影響長照服務使用狀況"
* item[19].type = #text
* item[19].text = "最近六個月內可能影響長照服務使用狀況及如何照顧特殊疾病的方法"

* item[20].linkId = "infectious-disease"
* item[20].prefix = "罹患感染症"
* item[20].type = #choice
* item[20].text = "罹患感染症"
* item[20].required = true
* item[20].answerOption[0].valueString = "無"
* item[20].answerOption[1].valueString = "有"
* item[20].answerOption[2].valueString = "不清楚"

* item[21].linkId = "infectious-disease-name"
* item[21].prefix = "感染症病名"
* item[21].type = #string
* item[21].text = "感染症病名"

* item[22].linkId = "isolation-required"
* item[22].prefix = "是否需要隔離"
* item[22].type = #boolean
* item[22].text = "是否需要隔離"

* item[23].linkId = "isolation-type"
* item[23].prefix = "隔離類型"
* item[23].type = #choice
* item[23].text = "隔離類型"
* item[23].repeats = true
* item[23].answerOption[0].valueString = "接觸隔離"
* item[23].answerOption[1].valueString = "飛沫隔離"
* item[23].answerOption[2].valueString = "空氣隔離"

* item[24].linkId = "physical-mental-status"
* item[24].prefix = "身心狀態或特殊需要註記事項"
* item[24].type = #text
* item[24].text = "身心狀態或特殊需要註記事項"