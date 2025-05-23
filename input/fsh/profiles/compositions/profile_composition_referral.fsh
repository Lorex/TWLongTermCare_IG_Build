Alias: $TWCoreEncounter = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Encounter-twcore
Alias: $TWCoreOrganization = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Organization-twcore
Alias: $TWCorePractitioner = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Practitioner-twcore
Alias: $TWCoreCondition = https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Condition-twcore

Profile: LTCCompositionReferral
Parent: $TWCoreComposition
Id: LTCCompositionReferral
Title: "長期照護管理中心個案服務初篩表/轉介單文件架構"
Description: "此 Composition 以臺北市長期照顧管理中心個案服務初篩表/轉介單為基礎，用以表述長期照顧管理中心個案服務初篩表/轉介單的文件結構。"

* subject 1..1 MS
* subject ^short = "轉介單描述的個案"
* subject only Reference(LTCPatientReferral)
* subject.reference 1..1 MS
* subject.reference ^short = "轉介單描述的個案。[應輸入 Patient Resource ID]"
* section 16..16 MS
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "title"
* section ^slicing.rules = #open
* section contains 
    patient 1..1 MS and
    condition-disability 1..1 MS and
    condition-tube 1..1 MS and
    condition-crush 1..1 MS and
    condition-residence 1..1 MS and
    condition-caregiver 1..1 MS and
    condition-problem 1..1 MS and
    condition-need 1..1 MS and
    careplan 1..1 MS and
    questionnaire-adl 1..1 MS and
    questionnaire-iadl 1..1 MS and
    questionnaire-sof 1..1 MS and
    questionnaire-caregiver 1..1 MS and
    encounter 1..1 MS and 
    practitioner 1..1 MS and
    organization 1..1 MS
    
* section[patient] ^short = "個案基本資料"
* section[patient].entry 1..1 MS
* section[patient].entry ^short = "個案基本資料的內容"
* section[patient].entry only Reference(LTCPatientReferral)
* section[patient].entry.reference 1..1 MS
* section[patient].entry.reference ^short = "個案基本資料的內容。[應輸入 Patient Resource ID]"
* section[condition-disability] ^short = "身心障礙手冊"
* section[condition-disability].entry 1..* MS
* section[condition-disability].entry ^short = "身心障礙手冊的內容，至少應填寫是否領有身心障礙手冊，如有領有身心障礙手冊，則續填身障類別與疾病代碼 (ICD-10)，如有多個身障疾病則可放入多個 Condition。"
* section[condition-disability].entry only Reference(LTCConditionDisability or LTCConditionDisabilityType or $TWCoreCondition)
* section[condition-tube] ^short = "管路"
* section[condition-tube].entry 1..1 MS
* section[condition-tube].entry ^short = "管路的內容，至少應填寫是否有管路，如有管路，則續填管路類別，如有多個管路則可放入多個 Condition。"
* section[condition-tube].entry only Reference(LTCConditionTube)
* section[condition-crush] ^short = "壓傷"
* section[condition-crush].entry 1..1 MS
* section[condition-crush].entry ^short = "壓傷的內容，至少應填寫是否有壓傷，如有壓傷，則續填壓傷部位、等級與大小。"
* section[condition-crush].entry only Reference(LTCConditionCrush)
* section[condition-residence] ^short = "居住狀況"
* section[condition-residence].entry 1..1 MS
* section[condition-residence].entry ^short = "居住狀況的內容，應填寫個案獨居狀態。"
* section[condition-residence].entry only Reference(LTCConditionResidence)
* section[condition-caregiver] ^short = "看護"
* section[condition-caregiver].entry 1..1 MS
* section[condition-caregiver].entry ^short = "看護的內容，至少應填寫個案是否有看護，如有看護，則續填本國／外國籍看護人力配置狀況。"
* section[condition-caregiver].entry only Reference(LTCConditionCaregiver)
* section[condition-problem] ^short = "疾病狀況"
* section[condition-problem].entry 1..1 MS
* section[condition-problem].entry ^short = "案主(家)主要疾病"
* section[condition-problem].entry only Reference($TWCoreCondition)
* section[condition-need] ^short = "案主(家)主要問題及需求"
* section[condition-need].entry 1..1 MS
* section[condition-need].entry ^short = "案主(家)主要問題及需求"
* section[condition-need].entry only Reference($TWCoreCondition)
* section[careplan] ^short = "欲申請服務之種類"
* section[careplan].entry 1..* MS
* section[careplan].entry ^short = "欲申請服務之種類"
* section[careplan].entry only Reference(LTCCarePlanReferral)
* section[questionnaire-adl] ^short = "ADL 失能項目評估"
* section[questionnaire-adl].entry 1..1 MS
* section[questionnaire-adl].entry ^short = "ADL 失能項目評估"
* section[questionnaire-adl].entry only Reference(LTCQuestionnaireResponseReferralADL)
* section[questionnaire-iadl] ^short = "IADL 失能項目評估"
* section[questionnaire-iadl].entry 1..1 MS
* section[questionnaire-iadl].entry ^short = "IADL 失能項目評估"
* section[questionnaire-iadl].entry only Reference(LTCQuestionnaireResponseReferralIADL)
* section[questionnaire-sof] ^short = "長者衰弱評估"
* section[questionnaire-sof].entry 1..1 MS
* section[questionnaire-sof].entry ^short = "長者衰弱評估"
* section[questionnaire-sof].entry only Reference(LTCQuestionnaireResponseReferralSOF)
* section[questionnaire-caregiver] ^short = "照顧者評估"
* section[questionnaire-caregiver].entry 1..1 MS
* section[questionnaire-caregiver].entry ^short = "照顧者評估"
* section[questionnaire-caregiver].entry only Reference(LTCQuestionnaireResponseReferralCaregiver)
* section[encounter] ^short = "出入院情形"
* section[encounter].entry 1..1 MS
* section[encounter].entry ^short = "個案的出入院情形，若個案在住院中，則填入該次就診資料。"
* section[encounter].entry only Reference($TWCoreEncounter)
* section[practitioner] ^short = "填表者/轉介者資訊及簽名欄"
* section[practitioner].entry 1..1 MS
* section[practitioner].entry ^short = "填表者/轉介者資訊及簽名欄"
* section[practitioner].entry only Reference(LTCPractitioner or $TWCorePractitioner)
* section[organization] ^short = "填表單位資訊"
* section[organization].entry 1..1 MS
* section[organization].entry ^short = "填表單位資訊"
* section[organization].entry only Reference(LTCOrganization or $TWCoreOrganization)