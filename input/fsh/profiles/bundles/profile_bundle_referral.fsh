Alias: $TWCoreEncounter = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Encounter-twcore
Alias: $TWCoreOrganization = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Organization-twcore
Alias: $TWCorePractitioner = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Practitioner-twcore
Alias: $TWCoreCondition = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Condition-twcore

Profile: LTCBundleReferral
Parent: $TWCoreBundleDocument
Id: LTCBundleReferral
Title: "TWLTC Bundle Referral"
Description: "長期照顧管理中心個案服務初篩表/轉介單

本轉介單以臺北市長期照顧管理中心個案服務初篩表/轉介單為基礎，用以表述長期照顧管理中心個案服務初篩表/轉介單內容。

請注意：各縣市轉介單格式可能有所不同，此 Profile 將於後續版本逐步納入各縣市初篩表/轉介單格式並進行整合。"

* type 1..1 MS
* type ^short = "Bundle 的類型"
* type = #document
* entry 17..* MS
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
    organization 1..1 MS
    
* entry[composition].resource 1..1 MS
* entry[composition] ^short = "轉介單文件架構"
* entry[composition].resource only LTCCompositionReferral
* entry[patient].resource 1..1 MS
* entry[patient] ^short = "個案基本資料"
* entry[patient].resource only LTCPatient
* entry[condition-disability].resource 1..1 MS
* entry[condition-disability] ^short = "身心障礙手冊"
* entry[condition-tube].resource 1..1 MS
* entry[condition-tube] ^short = "管路"
* entry[condition-crush].resource 1..1 MS
* entry[condition-crush] ^short = "壓傷"
* entry[condition-residence].resource 1..1 MS
* entry[condition-residence] ^short = "居住狀況"
* entry[condition-caregiver].resource 1..1 MS
* entry[condition-caregiver] ^short = "看護"
* entry[condition-problem].resource 1..1 MS
* entry[condition-problem] ^short = "疾病狀況"
* entry[condition-need].resource 1..1 MS
* entry[condition-need] ^short = "案主(家)主要問題及需求"
* entry[careplan].resource 1..1 MS
* entry[careplan] ^short = "欲申請服務之種類"
* entry[careplan].resource only LTCCarePlanReferral
* entry[questionnaire-adl].resource 1..1 MS
* entry[questionnaire-adl] ^short = "ADL 失能項目評估"
* entry[questionnaire-iadl].resource 1..1 MS
* entry[questionnaire-iadl] ^short = "IADL 失能項目評估"
* entry[questionnaire-sof].resource 1..1 MS
* entry[questionnaire-sof] ^short = "長者衰弱評估"
* entry[questionnaire-caregiver].resource 1..1 MS
* entry[questionnaire-caregiver] ^short = "照顧者評估"
* entry[encounter].resource 1..1 MS
* entry[encounter] ^short = "出入院情形"
* entry[encounter].resource only $TWCoreEncounter
* entry[practitioner].resource 1..1 MS
* entry[practitioner] ^short = "填表者/轉介者資訊及簽名欄"
* entry[practitioner].resource only $TWCorePractitioner
* entry[organization].resource 1..1 MS
* entry[organization] ^short = "填表單位資訊"
* entry[organization].resource only $TWCoreOrganization