Alias: $TWCoreEncounter = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Encounter-twcore
Alias: $TWCoreOrganization = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Organization-twcore
Alias: $TWCorePractitioner = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Practitioner-twcore
Alias: $TWCoreCondition = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Condition-twcore
Alias: $TWCorePractitionerRole = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/PractitionerRole-twcore

Profile: LTCBundleReferral
Parent: Bundle
Id: LTCBundleReferral
Title: "長期照顧管理中心個案服務初篩表/轉介單文件打包"
Description: "此 Bundle 以臺北市長期照顧管理中心個案服務初篩表/轉介單為基礎，用以表述長期照顧管理中心個案服務初篩表/轉介單的文件打包結構。

注意：各縣市轉介單格式可能有所不同，此 Profile 將於後續版本逐步納入各縣市初篩表/轉介單格式並進行整合。"

* type 1..1 MS
* type ^short = "Bundle 的類型"
* type = #document
* entry 18..* MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains 
    composition 1..1 MS and
    patient 1..1 MS and
    condition-disability 1..* MS and
    condition-tube 1..1 MS and
    condition-crush 1..1 MS and
    condition-residence 1..1 MS and
    condition-caregiver 1..1 MS and
    condition-problem 1..1 MS and
    condition-need 1..1 MS and
    careplan 1..* MS and
    questionnaire-adl 1..1 MS and
    questionnaire-iadl 1..1 MS and
    questionnaire-sof 1..1 MS and
    questionnaire-caregiver 1..1 MS and
    encounter 1..1 MS and 
    practitioner 1..1 MS and
    organization 1..1 MS and
    practitioner-role 0..1 MS and
    goal 0..1 MS and
    related-person-extra 0..1 MS
    
* entry[composition].resource 1..1 MS
* entry[composition] ^short = "轉介單文件架構"
* entry[composition].resource only LTCCompositionReferral
* entry[patient].resource 1..1 MS
* entry[patient] ^short = "個案基本資料"
* entry[patient].resource only LTCPatientReferral
* entry[condition-disability].resource 1..1 MS
* entry[condition-disability] ^short = "身心障礙手冊"
* entry[condition-disability].resource only LTCConditionDisability or LTCConditionDisabilityType
* entry[condition-tube].resource 1..1 MS
* entry[condition-tube] ^short = "管路"
* entry[condition-tube].resource only LTCConditionTube
* entry[condition-crush].resource 1..1 MS
* entry[condition-crush] ^short = "壓傷"
* entry[condition-crush].resource only LTCConditionCrush
* entry[condition-residence].resource 1..1 MS
* entry[condition-residence] ^short = "居住狀況"
* entry[condition-residence].resource only LTCConditionResidence
* entry[condition-caregiver].resource 1..1 MS
* entry[condition-caregiver] ^short = "看護"
* entry[condition-caregiver].resource only LTCConditionCaregiver
* entry[condition-problem].resource 1..1 MS
* entry[condition-problem] ^short = "疾病狀況"
* entry[condition-problem].resource only LTCConditionProblem
* entry[condition-need].resource 1..1 MS
* entry[condition-need] ^short = "案主(家)主要問題及需求"
* entry[condition-need].resource only LTCConditionNeed
* entry[careplan].resource 1..1 MS
* entry[careplan] ^short = "欲申請服務之種類"
* entry[careplan].resource only LTCCarePlanReferral
* entry[questionnaire-adl].resource 1..1 MS
* entry[questionnaire-adl] ^short = "ADL 失能項目評估"
* entry[questionnaire-adl].resource only LTCQuestionnaireResponseADL
* entry[questionnaire-iadl].resource 1..1 MS
* entry[questionnaire-iadl] ^short = "IADL 失能項目評估"
* entry[questionnaire-iadl].resource only LTCQuestionnaireResponseIADL
* entry[questionnaire-sof].resource 1..1 MS
* entry[questionnaire-sof] ^short = "長者衰弱評估"
* entry[questionnaire-sof].resource only LTCQuestionnaireResponseReferralSOF
* entry[questionnaire-caregiver].resource 1..1 MS
* entry[questionnaire-caregiver] ^short = "照顧者評估"
* entry[questionnaire-caregiver].resource only LTCQuestionnaireResponseReferralCaregiver
* entry[encounter].resource 1..1 MS
* entry[encounter] ^short = "出入院情形"
* entry[encounter].resource only $TWCoreEncounter
* entry[practitioner].resource 1..1 MS
* entry[practitioner] ^short = "填表者/轉介者資訊及簽名欄"
* entry[practitioner].resource only $TWCorePractitioner
* entry[organization].resource 1..1 MS
* entry[organization] ^short = "填表單位資訊"
* entry[organization].resource only $TWCoreOrganization
* entry[practitioner-role].resource 1..1 MS
* entry[practitioner-role] ^short = "醫護人員角色，為了因應 FHIR 結構要求，此項目為選填。"
* entry[practitioner-role].resource only $TWCorePractitionerRole
* entry[goal].resource 1..1 MS
* entry[goal] ^short = "治療目標，為了因應 FHIR 結構要求，此項目為選填。"
* entry[goal].resource only LTCGoal
* entry[related-person-extra].resource 1..1 MS
* entry[related-person-extra] ^short = "關係人，為了因應 FHIR 結構要求，此項目為選填。"
* entry[related-person-extra].resource only LTCRelatedPerson

// Example
Instance: ltc-bundle-referral-example
InstanceOf: LTCBundleReferral
Title: "轉介單文件打包範例"
Description: "一個轉介單文件打包的範例，展示如何使用 LTCBundleReferral Profile"
Usage: #example

* type = #document

* identifier.system = "http://ltc-ig.fhir.tw/bundle-id"
* identifier.value = "referral-bundle-001"

* timestamp = "2024-01-20T09:00:00+08:00"

// First entry must be the main Composition
* entry[composition].fullUrl = "http://ltc-ig.fhir.tw/Composition/ltc-composition-referral-example"
* entry[composition].resource = ltc-composition-referral-example

* entry[patient].fullUrl = "http://ltc-ig.fhir.tw/Patient/ltc-patient-referral-chen-ming-hui-example"
* entry[patient].resource = ltc-patient-referral-chen-ming-hui-example

* entry[condition-disability].fullUrl = "http://ltc-ig.fhir.tw/Condition/ltc-condition-disability-example"
* entry[condition-disability].resource = ltc-condition-disability-example

* entry[condition-disability][+].fullUrl = "http://ltc-ig.fhir.tw/Condition/ltc-condition-disability-type-limb-example"
* entry[condition-disability][=].resource = ltc-condition-disability-type-limb-example

* entry[condition-tube].fullUrl = "http://ltc-ig.fhir.tw/Condition/ltc-condition-tube-nasogastric-example"
* entry[condition-tube].resource = ltc-condition-tube-nasogastric-example

* entry[condition-crush].fullUrl = "http://ltc-ig.fhir.tw/Condition/ltc-condition-crush-stage2-example"
* entry[condition-crush].resource = ltc-condition-crush-stage2-example

* entry[condition-residence].fullUrl = "http://ltc-ig.fhir.tw/Condition/ltc-condition-residence-not-alone-example"
* entry[condition-residence].resource = ltc-condition-residence-not-alone-example

* entry[condition-caregiver].fullUrl = "http://ltc-ig.fhir.tw/Condition/ltc-condition-caregiver-family-example"
* entry[condition-caregiver].resource = ltc-condition-caregiver-family-example

* entry[condition-problem].fullUrl = "http://ltc-ig.fhir.tw/Condition/ltc-condition-diabetes-example"
* entry[condition-problem].resource = ltc-condition-diabetes-example

* entry[condition-need].fullUrl = "http://ltc-ig.fhir.tw/Condition/ltc-condition-need-assistance-example"
* entry[condition-need].resource = ltc-condition-need-assistance-example

* entry[careplan].fullUrl = "http://ltc-ig.fhir.tw/CarePlan/ltc-careplan-referral-home-service-example"
* entry[careplan].resource = ltc-careplan-referral-home-service-example

* entry[questionnaire-adl].fullUrl = "http://ltc-ig.fhir.tw/QuestionnaireResponse/ltc-questionnaire-response-adl-referral-example"
* entry[questionnaire-adl].resource = ltc-questionnaire-response-adl-referral-example

* entry[questionnaire-iadl].fullUrl = "http://ltc-ig.fhir.tw/QuestionnaireResponse/ltc-questionnaire-response-iadl-referral-example"
* entry[questionnaire-iadl].resource = ltc-questionnaire-response-iadl-referral-example

* entry[questionnaire-sof].fullUrl = "http://ltc-ig.fhir.tw/QuestionnaireResponse/ltc-questionnaire-response-sof-example"
* entry[questionnaire-sof].resource = ltc-questionnaire-response-sof-example

* entry[questionnaire-caregiver].fullUrl = "http://ltc-ig.fhir.tw/QuestionnaireResponse/ltc-questionnaire-response-caregiver-referral-example"
* entry[questionnaire-caregiver].resource = ltc-questionnaire-response-caregiver-referral-example

* entry[encounter].fullUrl = "http://ltc-ig.fhir.tw/Encounter/ltc-encounter-example"
* entry[encounter].resource = ltc-encounter-example

* entry[practitioner].fullUrl = "http://ltc-ig.fhir.tw/Practitioner/ltc-practitioner-nurse-example"
* entry[practitioner].resource = ltc-practitioner-nurse-example

* entry[organization].fullUrl = "http://ltc-ig.fhir.tw/Organization/ltc-organization-example"
* entry[organization].resource = ltc-organization-example

// Additional entries for referenced resources
* entry[practitioner-role].fullUrl = "http://ltc-ig.fhir.tw/PractitionerRole/ltc-practitioner-role-nurse-example"
* entry[practitioner-role].resource = ltc-practitioner-role-nurse-example

* entry[goal].fullUrl = "http://ltc-ig.fhir.tw/Goal/ltc-goal-mobility-improvement-example"
* entry[goal].resource = ltc-goal-mobility-improvement-example

* entry[related-person-extra].fullUrl = "http://ltc-ig.fhir.tw/RelatedPerson/ltc-related-person-primary-caregiver-example"
* entry[related-person-extra].resource = ltc-related-person-primary-caregiver-example
