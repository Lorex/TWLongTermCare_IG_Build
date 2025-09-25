Alias: $TWCoreEncounter = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Encounter-twcore
Alias: $TWCoreOrganization = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Organization-twcore
Alias: $TWCorePractitioner = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Practitioner-twcore
Alias: $TWCoreCondition = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Condition-twcore

Profile: LTCCompositionCMS
Parent: $TWCoreComposition
Id: LTCCompositionCMS
Title: "照顧管理評估量表文件架構"
Description: "此 Composition 以衛生福利部長期照顧管理中心照顧管理評估量表為基礎，用以表述照顧管理評估量表的文件結構。"

* subject 1..1 MS
* subject ^short = "照顧管理評估量表描述的個案"
* subject only Reference(LTCPatientCMS)
* subject.reference 1..1 MS
* subject.reference ^short = "照顧管理評估量表描述的個案。[應輸入 Patient Resource ID]"
* section 11..11 MS
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "title"
* section ^slicing.rules = #open
* section contains 
    patient 1..1 MS and
    related-person 1..1 MS and
    questionnaire-communication 1..1 MS and
    questionnaire-memory 1..1 MS and
    questionnaire-adl 1..1 MS and
    questionnaire-iadl 1..1 MS and
    questionnaire-special-care 1..1 MS and
    questionnaire-society 1..1 MS and
    questionnaire-mental 1..1 MS and
    questionnaire-caregiver-load 1..1 MS and
    questionnaire-caregiver-support 1..1 MS
* section[patient] ^short = "A. 個案基本資料"
* section[patient].title 1..1 MS
* section[patient].title ^short = "個案基本資料"
* section[patient].title = "A. 個案基本資料"
* section[patient].entry 1..* MS
* section[patient].entry ^short = "個案基本資料的內容"
* section[patient].entry only Reference(LTCPatientCMS or LTCConditionDisability or LTCConditionDisabilityType or $TWCoreCondition)
* section[patient].entry.reference 1..1 MS
* section[patient].entry.reference ^short = "個案基本資料的內容，含身心障礙手冊資料。身心障礙手冊的內容至少應填寫是否領有身心障礙手冊，如有領有身心障礙手冊，則續填身障類別與疾病代碼 (ICD-10)，如有多個身障疾病則可放入多個 Condition。[應輸入 Patient 與 Condition Resource ID]"
* section[related-person] ^short = "B. 照顧者基本資料"
* section[related-person].title 1..1 MS
* section[related-person].title ^short = "照顧者基本資料"
* section[related-person].title = "B. 照顧者基本資料"
* section[related-person].entry 3..3 MS
* section[related-person].entry ^short = "照顧者基本資料的內容，包含主要照顧者與次要照顧者資料，以及主要照顧者是否持有身心障礙手冊。"
* section[related-person].entry only Reference(LTCRelatedPerson or LTCConditionDisability or LTCConditionCaregiver)
* section[related-person].entry.reference 1..1 MS
* section[related-person].entry.reference ^short = "照顧者基本資料的內容。[應輸入 RelatedPerson 與  LTCConditionDisability Resource ID]"
* section[questionnaire-communication] ^short = "C. 個案溝通能力"
* section[questionnaire-communication].title 1..1 MS
* section[questionnaire-communication].title ^short = "C. 個案溝通能力"
* section[questionnaire-communication].title = "C. 個案溝通能力"
* section[questionnaire-communication].entry 1..1 MS
* section[questionnaire-communication].entry ^short = "個案溝通能力的內容"
* section[questionnaire-communication].entry only Reference(LTCQuestionnaireResponseCMSCommunication or LTCQuestionnaireResponse)
* section[questionnaire-communication].entry.reference 1..1 MS
* section[questionnaire-communication].entry.reference ^short = "個案溝通能力的內容。[應輸入 Questionnaire Resource ID]"
* section[questionnaire-memory] ^short = "D. 個案短期記憶力"
* section[questionnaire-memory].title 1..1 MS
* section[questionnaire-memory].title ^short = "D. 個案短期記憶力"
* section[questionnaire-memory].title = "D. 個案短期記憶力"
* section[questionnaire-memory].entry 1..1 MS
* section[questionnaire-memory].entry ^short = "個案短期記憶力的內容"
* section[questionnaire-memory].entry only Reference(LTCQuestionnaireResponseCMSMemory or LTCQuestionnaireResponse)
* section[questionnaire-memory].entry.reference 1..1 MS
* section[questionnaire-memory].entry.reference ^short = "個案短期記憶力的內容。[應輸入 Questionnaire Resource ID]"
* section[questionnaire-adl] ^short = "E. 個案日常活動功能量表 (ADLs)"
* section[questionnaire-adl].title 1..1 MS
* section[questionnaire-adl].title ^short = "E. 個案日常活動功能量表 (ADLs)"
* section[questionnaire-adl].title = "E. 個案日常活動功能量表 (ADLs)"
* section[questionnaire-adl].entry 1..1 MS
* section[questionnaire-adl].entry ^short = "個案日常活動功能量表 (ADLs) 的內容"
* section[questionnaire-adl].entry only Reference(LTCQuestionnaireResponseCMSADL or LTCQuestionnaireResponse)
* section[questionnaire-adl].entry.reference 1..1 MS
* section[questionnaire-adl].entry.reference ^short = "個案日常活動功能量表 (ADLs) 的內容。[應輸入 Questionnaire Resource ID]"
* section[questionnaire-iadl] ^short = "F. 個案工具性日常活動功能量表 (IADLs)"
* section[questionnaire-iadl].title 1..1 MS
* section[questionnaire-iadl].title ^short = "F. 個案工具性日常活動功能量表 (IADLs)"
* section[questionnaire-iadl].title = "F. 個案工具性日常活動功能量表 (IADLs)"
* section[questionnaire-iadl].entry 1..1 MS
* section[questionnaire-iadl].entry ^short = "個案工具性日常活動功能量表 (IADLs) 的內容"
* section[questionnaire-iadl].entry only Reference(LTCQuestionnaireResponseCMSIADL or LTCQuestionnaireResponse)
* section[questionnaire-iadl].entry.reference 1..1 MS
* section[questionnaire-iadl].entry.reference ^short = "個案工具性日常活動功能量表 (IADLs) 的內容。[應輸入 Questionnaire Resource ID]"
* section[questionnaire-special-care] ^short = "G. 特殊複雜照護需要"
* section[questionnaire-special-care].title 1..1 MS
* section[questionnaire-special-care].title ^short = "G. 特殊複雜照護需要"
* section[questionnaire-special-care].title = "G. 特殊複雜照護需要"
* section[questionnaire-special-care].entry 1..1 MS
* section[questionnaire-special-care].entry ^short = "特殊複雜照護需要的內容"
* section[questionnaire-special-care].entry only Reference(LTCQuestionnaireResponseCMSSpecialCare or LTCQuestionnaireResponse)
* section[questionnaire-special-care].entry.reference 1..1 MS
* section[questionnaire-special-care].entry.reference ^short = "特殊複雜照護需要的內容。[應輸入 Questionnaire Resource ID]"
* section[questionnaire-society] ^short = "H. 居家環境與社會參與"
* section[questionnaire-society].title 1..1 MS
* section[questionnaire-society].title ^short = "H. 居家環境與社會參與"
* section[questionnaire-society].title = "H. 居家環境與社會參與"
* section[questionnaire-society].entry 1..1 MS
* section[questionnaire-society].entry ^short = "居家環境與社會參與的內容"
* section[questionnaire-society].entry only Reference(LTCQuestionnaireResponseCMSSociety or LTCQuestionnaireResponse)
* section[questionnaire-society].entry.reference 1..1 MS
* section[questionnaire-society].entry.reference ^short = "居家環境與社會參與的內容。[應輸入 Questionnaire Resource ID]"
* section[questionnaire-mental] ^short = "I. 情緒及行為型態"
* section[questionnaire-mental].title 1..1 MS
* section[questionnaire-mental].title ^short = "I. 情緒及行為型態"
* section[questionnaire-mental].title = "I. 情緒及行為型態"
* section[questionnaire-mental].entry 1..1 MS
* section[questionnaire-mental].entry ^short = "情緒及行為型態的內容"
* section[questionnaire-mental].entry only Reference(LTCQuestionnaireResponseCMSMental or LTCQuestionnaireResponse)
* section[questionnaire-mental].entry.reference 1..1 MS
* section[questionnaire-mental].entry.reference ^short = "情緒及行為型態的內容。[應輸入 Questionnaire Resource ID]"
* section[questionnaire-caregiver-load] ^short = "J. 主要照護者負荷"
* section[questionnaire-caregiver-load].title 1..1 MS
* section[questionnaire-caregiver-load].title ^short = "J. 主要照護者負荷"
* section[questionnaire-caregiver-load].title = "J. 主要照護者負荷"
* section[questionnaire-caregiver-load].entry 1..1 MS
* section[questionnaire-caregiver-load].entry ^short = "主要照護者負荷的內容"
* section[questionnaire-caregiver-load].entry only Reference(LTCQuestionnaireResponseCMSCaregiverLoad or LTCQuestionnaireResponse)
* section[questionnaire-caregiver-load].entry.reference 1..1 MS
* section[questionnaire-caregiver-load].entry.reference ^short = "主要照護者負荷的內容。[應輸入 Questionnaire Resource ID]"
* section[questionnaire-caregiver-support] ^short = "K. 主要照護者工作與支持"
* section[questionnaire-caregiver-support].title 1..1 MS
* section[questionnaire-caregiver-support].title ^short = "K. 主要照護者工作與支持"
* section[questionnaire-caregiver-support].title = "K. 主要照護者工作與支持"
* section[questionnaire-caregiver-support].entry 1..1 MS
* section[questionnaire-caregiver-support].entry ^short = "主要照護者工作與支持的內容"
* section[questionnaire-caregiver-support].entry only Reference(LTCQuestionnaireResponseCMSCaregiverSupport or LTCQuestionnaireResponse)
* section[questionnaire-caregiver-support].entry.reference 1..1 MS
* section[questionnaire-caregiver-support].entry.reference ^short = "主要照護者工作與支持的內容。[應輸入 Questionnaire Resource ID]"

// Example
Instance: ltc-composition-cms-example
InstanceOf: LTCCompositionCMS
Title: "照顧管理評估量表文件架構範例"
Description: "一個照顧管理評估量表文件架構的範例，展示如何使用 LTCCompositionCMS Profile"
Usage: #example

* status = #final
* type.coding.system = "http://loinc.org"
* type.coding.code = #11503-0
* type.coding.display = "Medical records"
* type.text = "照顧管理評估量表"

* subject = Reference(http://ltc-ig.fhir.tw/Patient/ltc-patient-cms-chen-ming-hui-example)

* date = "2024-01-15T14:30:00+08:00"

* author = Reference(ltc-practitioner-role-nurse-example)

* title = "陳明慧女士照顧管理評估量表"

* section[patient].title = "A. 個案基本資料"
* section[patient].entry[0] = Reference(http://ltc-ig.fhir.tw/Patient/ltc-patient-cms-chen-ming-hui-example)
* section[patient].entry[1] = Reference(http://ltc-ig.fhir.tw/Condition/ltc-condition-disability-example)
* section[patient].entry[2] = Reference(http://ltc-ig.fhir.tw/Condition/ltc-condition-disability-type-limb-example)

* section[related-person].title = "B. 照顧者基本資料"
* section[related-person].entry[0] = Reference(http://ltc-ig.fhir.tw/RelatedPerson/ltc-related-person-primary-caregiver-example)
* section[related-person].entry[1] = Reference(http://ltc-ig.fhir.tw/Condition/ltc-condition-disability-example)
* section[related-person].entry[2] = Reference(http://ltc-ig.fhir.tw/Condition/ltc-condition-caregiver-family-example)

* section[questionnaire-communication].title = "C. 個案溝通能力"
* section[questionnaire-communication].entry[0] = Reference(http://ltc-ig.fhir.tw/QuestionnaireResponse/ltc-questionnaire-response-communication-example)

* section[questionnaire-memory].title = "D. 個案短期記憶力"
* section[questionnaire-memory].entry[0] = Reference(http://ltc-ig.fhir.tw/QuestionnaireResponse/ltc-questionnaire-response-memory-example)

* section[questionnaire-adl].title = "E. 個案日常活動功能量表 (ADLs)"
* section[questionnaire-adl].entry[0] = Reference(http://ltc-ig.fhir.tw/QuestionnaireResponse/ltc-questionnaire-response-adl-example)

* section[questionnaire-iadl].title = "F. 個案工具性日常活動功能量表 (IADLs)"
* section[questionnaire-iadl].entry[0] = Reference(http://ltc-ig.fhir.tw/QuestionnaireResponse/ltc-questionnaire-response-iadl-example)

* section[questionnaire-special-care].title = "G. 特殊複雜照護需要"
* section[questionnaire-special-care].entry[0] = Reference(http://ltc-ig.fhir.tw/QuestionnaireResponse/ltc-questionnaire-response-special-care-example)

* section[questionnaire-society].title = "H. 居家環境與社會參與"
* section[questionnaire-society].entry[0] = Reference(http://ltc-ig.fhir.tw/QuestionnaireResponse/ltc-questionnaire-response-society-example)

* section[questionnaire-mental].title = "I. 情緒及行為型態"
* section[questionnaire-mental].entry[0] = Reference(http://ltc-ig.fhir.tw/QuestionnaireResponse/ltc-questionnaire-response-mental-example)

* section[questionnaire-caregiver-load].title = "J. 主要照護者負荷"
* section[questionnaire-caregiver-load].entry[0] = Reference(http://ltc-ig.fhir.tw/QuestionnaireResponse/ltc-questionnaire-response-caregiver-load-example)

* section[questionnaire-caregiver-support].title = "K. 主要照護者工作與支持"
* section[questionnaire-caregiver-support].entry[0] = Reference(http://ltc-ig.fhir.tw/QuestionnaireResponse/ltc-questionnaire-response-caregiver-support-example)
