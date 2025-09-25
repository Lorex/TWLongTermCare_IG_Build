Alias: $TWCoreOrganization = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Organization-twcore
Alias: $TWCorePractitionerRole = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/PractitionerRole-twcore

Profile: LTCBundleCMS
Parent: Bundle
Id: LTCBundleCMS
Title: "照顧管理評估量表文件打包"
Description: "此 Bundle 以衛生福利部長期照顧管理中心照顧管理評估量表為基礎，用以表述照顧管理評估量表的文件打包結構。"

* type 1..1 MS
* type ^short = "Bundle 的類型"
* type = #document
* entry 13..* MS
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
    questionnaire-caregiver-support 1..1 MS and
    condition-caregiver 0..1 MS and
    organization 0..1 MS and
    practitioner-role 0..1 MS

* entry[composition].resource 1..1 MS
* entry[composition] ^short = "照顧管理評估量表文件結構"
* entry[composition].resource only LTCCompositionCMS
* entry[patient].resource 1..1 MS
* entry[patient] ^short = "個案基本資料"
* entry[patient].resource only LTCPatientCMS or LTCConditionDisability or LTCConditionDisabilityType
* entry[related-person].resource 1..1 MS
* entry[related-person] ^short = "照顧者基本資料"
* entry[related-person].resource only LTCRelatedPerson
* entry[questionnaire-communication].resource 1..1 MS
* entry[questionnaire-communication] ^short = "個案溝通能力"
* entry[questionnaire-communication].resource only LTCQuestionnaireResponseCMSCommunication
* entry[questionnaire-memory].resource 1..1 MS
* entry[questionnaire-memory] ^short = "個案短期記憶力"
* entry[questionnaire-memory].resource only LTCQuestionnaireResponseCMSMemory
* entry[questionnaire-adl].resource 1..1 MS
* entry[questionnaire-adl] ^short = "個案日常生活能力"
* entry[questionnaire-adl].resource only LTCQuestionnaireResponseADL
* entry[questionnaire-iadl].resource 1..1 MS
* entry[questionnaire-iadl] ^short = "F. 個案工具性日常活動功能量表 (IADLs) 的內容"
* entry[questionnaire-iadl].resource only LTCQuestionnaireResponseIADL
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
* entry[condition-caregiver].resource 1..1 MS
* entry[condition-caregiver] ^short = "照顧者相關狀況，為了因應 FHIR 結構要求，此項目為選填。"
* entry[condition-caregiver].resource only LTCConditionCaregiver
* entry[organization].resource 1..1 MS
* entry[organization] ^short = "組織機構，為了因應 FHIR 結構要求，此項目為選填。"
* entry[organization].resource only $TWCoreOrganization
* entry[practitioner-role].resource 1..1 MS
* entry[practitioner-role] ^short = "醫護人員角色，為了因應 FHIR 結構要求，此項目為選填。"
* entry[practitioner-role].resource only $TWCorePractitionerRole

// Example
Instance: ltc-bundle-cms-example
InstanceOf: LTCBundleCMS
Title: "照顧管理評估量表文件打包範例"
Description: "一個照顧管理評估量表文件打包的範例，展示如何使用 LTCBundleCMS Profile"
Usage: #example

* type = #document

* identifier.system = "http://ltc-ig.fhir.tw/bundle-id"
* identifier.value = "cms-bundle-001"

* timestamp = "2024-01-15T14:30:00+08:00"

// First entry must be the main Composition
* entry[composition].fullUrl = "http://ltc-ig.fhir.tw/Composition/ltc-composition-cms-example"
* entry[composition].resource = ltc-composition-cms-example

* entry[patient][0].fullUrl = "http://ltc-ig.fhir.tw/Patient/ltc-patient-cms-chen-ming-hui-example"
* entry[patient][0].resource = ltc-patient-cms-chen-ming-hui-example

// Additional entries for referenced resources
* entry[patient][+].fullUrl = "http://ltc-ig.fhir.tw/Condition/ltc-condition-disability-example"
* entry[patient][=].resource = ltc-condition-disability-example

* entry[patient][+].fullUrl = "http://ltc-ig.fhir.tw/Condition/ltc-condition-disability-type-limb-example"
* entry[patient][=].resource = ltc-condition-disability-type-limb-example

* entry[related-person].fullUrl = "http://ltc-ig.fhir.tw/RelatedPerson/ltc-related-person-primary-caregiver-example"
* entry[related-person].resource = ltc-related-person-primary-caregiver-example


* entry[questionnaire-communication].fullUrl = "http://ltc-ig.fhir.tw/QuestionnaireResponse/ltc-questionnaire-response-communication-example"
* entry[questionnaire-communication].resource = ltc-questionnaire-response-communication-example

* entry[questionnaire-memory].fullUrl = "http://ltc-ig.fhir.tw/QuestionnaireResponse/ltc-questionnaire-response-memory-example"
* entry[questionnaire-memory].resource = ltc-questionnaire-response-memory-example

* entry[questionnaire-adl].fullUrl = "http://ltc-ig.fhir.tw/QuestionnaireResponse/ltc-questionnaire-response-adl-example"
* entry[questionnaire-adl].resource = ltc-questionnaire-response-adl-example

* entry[questionnaire-iadl].fullUrl = "http://ltc-ig.fhir.tw/QuestionnaireResponse/ltc-questionnaire-response-iadl-example"
* entry[questionnaire-iadl].resource = ltc-questionnaire-response-iadl-example

* entry[questionnaire-special-care].fullUrl = "http://ltc-ig.fhir.tw/QuestionnaireResponse/ltc-questionnaire-response-special-care-example"
* entry[questionnaire-special-care].resource = ltc-questionnaire-response-special-care-example

* entry[questionnaire-society].fullUrl = "http://ltc-ig.fhir.tw/QuestionnaireResponse/ltc-questionnaire-response-society-example"
* entry[questionnaire-society].resource = ltc-questionnaire-response-society-example

* entry[questionnaire-mental].fullUrl = "http://ltc-ig.fhir.tw/QuestionnaireResponse/ltc-questionnaire-response-mental-example"
* entry[questionnaire-mental].resource = ltc-questionnaire-response-mental-example

* entry[questionnaire-caregiver-load].fullUrl = "http://ltc-ig.fhir.tw/QuestionnaireResponse/ltc-questionnaire-response-caregiver-load-example"
* entry[questionnaire-caregiver-load].resource = ltc-questionnaire-response-caregiver-load-example

* entry[questionnaire-caregiver-support].fullUrl = "http://ltc-ig.fhir.tw/QuestionnaireResponse/ltc-questionnaire-response-caregiver-support-example"
* entry[questionnaire-caregiver-support].resource = ltc-questionnaire-response-caregiver-support-example

// Additional entries for referenced resources
* entry[condition-caregiver].fullUrl = "http://ltc-ig.fhir.tw/Condition/ltc-condition-caregiver-family-example"
* entry[condition-caregiver].resource = ltc-condition-caregiver-family-example

* entry[organization].fullUrl = "http://ltc-ig.fhir.tw/Organization/ltc-organization-example"
* entry[organization].resource = ltc-organization-example

* entry[practitioner-role].fullUrl = "http://ltc-ig.fhir.tw/PractitionerRole/ltc-practitioner-role-nurse-example"
* entry[practitioner-role].resource = ltc-practitioner-role-nurse-example




