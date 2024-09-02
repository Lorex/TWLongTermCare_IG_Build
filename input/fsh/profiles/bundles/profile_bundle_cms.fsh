Profile: LTCBundleCMS
Parent: $TWCoreBundleDocument
Id: LTCBundleCMS
Title: "TW Long Term Care Bundle CMS"
Description: "照顧管理評估量表

本 Bundle 以衛生福利部長期照顧管理中心照顧管理評估量表為基礎，用以表述照顧管理評估量表的文件結構。"


* type 1..1 MS
* type ^short = "Bundle 的類型"
* type = #document
* entry 11..* MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains 
    composition 1..1 MS and
    patient 1..* MS and
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

* entry[composition].resource 1..1 MS
* entry[composition] ^short = "照顧管理評估量表文件結構"
* entry[composition].resource only LTCCompositionCMS
* entry[patient].resource 1..1 MS
* entry[patient] ^short = "個案基本資料"
* entry[patient].resource only LTCPatientCMS or LTCConditionDisability or LTCConditionDisabilityType or $TWCoreCondition
* entry[related-person].resource 1..1 MS
* entry[related-person] ^short = "照顧者基本資料"
* entry[related-person].resource only LTCRelatedPerson or LTCConditionDisability
* entry[questionnaire-communication].resource 1..1 MS
* entry[questionnaire-communication] ^short = "個案溝通能力"
* entry[questionnaire-communication].resource only LTCQuestionnaireResponseCMSCommunication
* entry[questionnaire-memory].resource 1..1 MS
* entry[questionnaire-memory] ^short = "個案短期記憶力"
* entry[questionnaire-memory].resource only LTCQuestionnaireResponseCMSMemory
* entry[questionnaire-adl].resource 1..1 MS
* entry[questionnaire-adl] ^short = "個案日常生活能力"
* entry[questionnaire-adl].resource only LTCQuestionnaireResponseCMSADL
* entry[questionnaire-iadl].resource 1..1 MS
* entry[questionnaire-iadl] ^short = "個案獨立生活能力"
* entry[questionnaire-iadl].resource only LTCQuestionnaireResponseCMSIADL
* entry[questionnaire-special-care].resource 1..1 MS
* entry[questionnaire-special-care] ^short = "個案特殊照護需求"
* entry[questionnaire-special-care].resource only LTCQuestionnaireResponseCMSSpecialCare
* entry[questionnaire-society].resource 1..1 MS
* entry[questionnaire-society] ^short = "個案社會參與"
* entry[questionnaire-society].resource only LTCQuestionnaireResponseCMSSociety
* entry[questionnaire-mental].resource 1..1 MS
* entry[questionnaire-mental] ^short = "個案心理狀況"
* entry[questionnaire-mental].resource only LTCQuestionnaireResponseCMSMental
* entry[questionnaire-caregiver-load].resource 1..1 MS
* entry[questionnaire-caregiver-load] ^short = "照顧者負荷"
* entry[questionnaire-caregiver-load].resource only LTCQuestionnaireResponseCMSCaregiverLoad
* entry[questionnaire-caregiver-support].resource 1..1 MS
* entry[questionnaire-caregiver-support] ^short = "照顧者支持"
* entry[questionnaire-caregiver-support].resource only LTCQuestionnaireResponseCMSCaregiverSupport

