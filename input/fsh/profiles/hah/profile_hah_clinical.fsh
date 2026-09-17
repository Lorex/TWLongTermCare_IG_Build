Profile: HAHCondition
Parent: LTCCondition
Id: HAHCondition
Title: "在宅急症－診斷與照護問題"
Description: "記錄本次急症、共病或照護問題。主次診斷的角色與順位記錄在 Encounter 或 EpisodeOfCare 的 diagnosis。"
* ^status = #draft
* subject only Reference(HAHPatient)
* encounter 1..1 MS
* encounter only Reference(HAHEncounter)
* category 1..1 MS
* clinicalStatus MS
* verificationStatus MS
* onset[x] MS
* recordedDate 1..1 MS

Profile: HAHCarePlan
Parent: LTCCarePlan
Id: HAHCarePlan
Title: "在宅急症－照護計畫"
Description: "沿用長照照顧計畫，串聯本次療程的病情、目標、服務請求及給藥處方。實際執行結果另以臨床資源記錄。"
* ^status = #draft
* subject only Reference(HAHPatient)
* encounter only Reference(HAHEncounter)
* addresses only Reference(HAHCondition)
* goal only Reference(HAHGoal)
* extension contains ExtHAHEpisode named episode 1..1 MS
* activity.reference only Reference(HAHServiceRequest or HAHMedicationRequest)
* activity.outcomeReference only Reference(HAHProcedure or HAHClinicalImpression or Observation or HAHMedicationAdministration)
* partOf ^short = "此計畫所屬的上層計畫"

Profile: HAHGoal
Parent: LTCGoal
Id: HAHGoal
Title: "在宅急症－照護目標"
Description: "記錄個案預期達到的結果、期限及評值。照護問題記錄於 Condition。"
* ^status = #draft
* subject only Reference(HAHPatient)
* description.text 1..1 MS
* description.coding ^short = "照護目標代碼。[優先使用既有值集，無適合的 code 時填入個別照護目標代碼並以 text 說明]"
* target 1..* MS
* target.due[x] 1..1 MS
* outcomeReference MS
* extension contains ExtHAHEpisode named episode 1..1 MS

Profile: HAHServiceRequest
Parent: LTCServiceRequest
Id: HAHServiceRequest
Title: "在宅急症－服務請求"
Description: "沿用長照服務請求，表達照會、檢驗、處置或轉介。項目應使用標準代碼，無適合的 code 時才使用本地分類並補充文字。"
* ^status = #draft
* subject only Reference(HAHPatient)
* encounter 1..1 MS
* encounter only Reference(HAHEncounter)
* authoredOn 1..1 MS
* requester 1..1 MS
* category 1..* MS
* category from HAHServiceVS (extensible)
* occurrence[x] MS
* priority MS
* reasonReference only Reference(HAHCondition)
* supportingInfo MS

Profile: HAHClinicalImpression
Parent: ClinicalImpression
Id: HAHClinicalImpression
Title: "在宅急症－臨床評估"
Description: "記錄評估人員對病情的判斷、發現與摘要。"
* ^status = #draft
* subject only Reference(HAHPatient)
* encounter 1..1 MS
* encounter only Reference(HAHEncounter)
* effective[x] 1..1 MS
* date 1..1 MS
* assessor 1..1 MS
* assessor only Reference(LTCPractitioner or LTCPractitionerRole)
* problem only Reference(HAHCondition)
* summary 1..1 MS
* finding MS
* supportingInfo MS
* note ^short = "評估補充說明"

Profile: HAHProcedure
Parent: LTCProcedureCareActivity
Id: HAHProcedure
Title: "在宅急症－處置紀錄"
Description: "沿用長照照護活動，記錄抽痰、傷口照護或管路更換等實際處置。"
* ^status = #draft
* subject only Reference(HAHPatient)
* encounter 1..1 MS
* encounter only Reference(HAHEncounter)
* basedOn only Reference(HAHServiceRequest or HAHCarePlan)
* performed[x] MS
* performer 1..* MS
* statusReason MS
* outcome MS
* obeys hah-procedure-completed

Invariant: hah-procedure-completed
Description: "已完成處置應填入實際執行時間或期間。"
Severity: #error
Expression: "status = 'completed' implies performed.exists()"

Profile: HAHObservationLab
Parent: https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Observation-laboratoryResult-twcore
Id: HAHObservationLab
Title: "在宅急症－檢驗結果"
Description: "一筆檢驗項目一筆結果。保留檢體、方法、單位與參考區間，缺少結果時以 dataAbsentReason 記錄原因。"
* ^status = #draft
* subject only Reference(HAHPatient)
* encounter 1..1 MS
* encounter only Reference(HAHEncounter)
* basedOn only Reference(HAHServiceRequest)
* specimen only Reference(https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Specimen-twcore)
* performer MS
* value[x] MS
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code 1..1
* interpretation MS
* referenceRange MS
* component 0..0
* hasMember 0..0
* obeys hah-lab-result

Invariant: hah-lab-result
Description: "單項檢驗應提供結果或缺值原因。"
Severity: #error
Expression: "value.exists() or dataAbsentReason.exists()"

Profile: HAHDiagnosticReport
Parent: https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/DiagnosticReport-twcore
Id: HAHDiagnosticReport
Title: "在宅急症－檢驗報告"
Description: "以一份報告串聯醫囑、檢體與檢驗結果，可附原始報告檔案。"
* ^status = #draft
* subject only Reference(HAHPatient)
* encounter 1..1 MS
* encounter only Reference(HAHEncounter)
* basedOn only Reference(HAHServiceRequest)
* effective[x] 1..1 MS
* issued 1..1 MS
* performer 1..* MS
* performer only Reference(LTCOrganization or LTCPractitioner or LTCPractitionerRole)
* specimen only Reference(https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/Specimen-twcore)
* result 1..* MS
* result only Reference(HAHObservationLab)
* presentedForm MS

Profile: HAHMedicationRequest
Parent: $TWCoreMedicationRequest
Id: HAHMedicationRequest
Title: "在宅急症－給藥處方"
Description: "記錄藥品、用法、劑量、途徑、頻率與處方狀態。實際是否給藥由給藥紀錄表達。"
* ^status = #draft
* subject only Reference(HAHPatient)
* encounter 1..1 MS
* encounter only Reference(HAHEncounter)
* authoredOn 1..1 MS
* requester 1..1 MS
* requester only Reference(LTCPractitioner or LTCPractitionerRole)
* medicationReference only Reference($TWCoreMedication)
* medicationReference MS
* medicationCodeableConcept MS
* reasonReference only Reference(HAHCondition)
* dosageInstruction 1..* MS
* dosageInstruction.text 1..1 MS
* dosageInstruction.timing MS
* dosageInstruction.route MS
* dosageInstruction.doseAndRate MS
* substitution.allowed[x] from http://terminology.hl7.org/ValueSet/v3-ActSubstanceAdminSubstitutionCode|3.0.0 (example)
* substitution.reason from http://terminology.hl7.org/ValueSet/v3-SubstanceAdminSubstitutionReason|3.0.0 (example)

Profile: HAHMedicationAdministration
Parent: MedicationAdministration
Id: HAHMedicationAdministration
Title: "在宅急症－給藥與輸注"
Description: "記錄實際給藥時間點或輸注期間。effectiveDateTime 記錄單次給藥時間，effectivePeriod 記錄持續輸注期間。"
* ^status = #draft
* subject only Reference(HAHPatient)
* context 1..1 MS
* context only Reference(HAHEncounter)
* medicationReference only Reference($TWCoreMedication)
* request 1..1 MS
* request only Reference(HAHMedicationRequest)
* performer 1..* MS
* performer.actor only Reference(LTCPractitioner or LTCPractitionerRole or LTCRelatedPerson or HAHPatient or HAHDevice)
* effective[x] MS
* dosage MS
* dosage.route MS
* dosage.dose MS
* dosage.rate[x] MS
* statusReason MS
* obeys hah-medication-dose and hah-medication-status-reason

Invariant: hah-medication-dose
Description: "已完成或進行中的給藥應記錄途徑及劑量或速率。"
Severity: #error
Expression: "(status = 'completed' or status = 'in-progress') implies (dosage.route.exists() and (dosage.dose.exists() or dosage.rate.exists()))"

Invariant: hah-medication-status-reason
Description: "未給藥或已停止給藥應填寫原因。"
Severity: #error
Expression: "(status = 'not-done' or status = 'stopped') implies statusReason.exists()"

Profile: HAHAllergyIntolerance
Parent: https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/AllergyIntolerance-twcore
Id: HAHAllergyIntolerance
Title: "在宅急症－過敏資訊"
Description: "記錄過敏物質、確認狀態及反應。"
* ^status = #draft
* patient only Reference(HAHPatient)
* encounter only Reference(HAHEncounter)
* verificationStatus 1..1 MS
* recordedDate 1..1 MS
* recorder MS
* reaction.manifestation MS
* criticality MS

Profile: HAHDevice
Parent: Device
Id: HAHDevice
Title: "在宅急症－量測設備"
Description: "記錄居家量測設備的識別與類型。identifier 記錄設備編號，udiCarrier 記錄 UDI。"
* ^status = #draft
* identifier 1..* MS
* identifier.system 1..1
* identifier.value 1..1
* status 1..1 MS
* type 1..1 MS
* patient only Reference(HAHPatient)
* owner only Reference(LTCOrganization)

Profile: HAHCommunication
Parent: LTCCommunicationServiceA
Id: HAHCommunication
Title: "在宅急症－照會與交班"
Description: "沿用服務活動紀錄，交換照會回覆、交班與衛教內容。"
* ^status = #draft
* subject 1..1 MS
* subject only Reference(HAHPatient)
* encounter 1..1 MS
* encounter only Reference(HAHEncounter)
* category 1..* MS
* category from HAHCommunicationVS (required)
* basedOn only Reference(HAHServiceRequest or HAHCarePlan)
* sender 1..1 MS
* sender only Reference(LTCPractitioner or LTCPractitionerRole or LTCOrganization or LTCRelatedPerson)
* recipient 1..* MS
* recipient only Reference(LTCPractitioner or LTCPractitionerRole or LTCOrganization or LTCRelatedPerson or HAHPatient or HAHCareTeam)
* sent 1..1 MS
* payload 1..* MS
* payload.contentReference only Reference(HAHDocumentReference)

Profile: HAHDocumentReference
Parent: https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/DocumentReference-twcore
Id: HAHDocumentReference
Title: "在宅急症－照護附件"
Description: "記錄照片、同意文件、報告或其他照護附件的索引、作者與就診脈絡。"
* ^status = #draft
* subject only Reference(HAHPatient)
* type 1..1 MS
* date 1..1 MS
* author 1..* MS
* context.encounter 1..* MS
* context.encounter only Reference(HAHEncounter)
* content.attachment.contentType 1..1 MS
* content.attachment obeys hah-attachment-content

Invariant: hah-attachment-content
Description: "附件應提供內容或可取得檔案的網址。"
Severity: #error
Expression: "data.exists() or url.exists()"

Profile: HAHConsent
Parent: Consent
Id: HAHConsent
Title: "在宅急症－照護同意"
Description: "記錄照護同意的狀態、範圍、時間及來源文件。"
* ^status = #draft
* patient 1..1 MS
* patient only Reference(HAHPatient)
* dateTime 1..1 MS
* performer 1..* MS
* performer only Reference(HAHPatient or LTCRelatedPerson)
* organization 1..* MS
* organization only Reference(LTCOrganization)
* source[x] 1..1 MS
* sourceReference only Reference(HAHDocumentReference)
* sourceReference MS
* sourceAttachment MS
* provision.period MS
* provision.purpose from http://terminology.hl7.org/ValueSet/v3-PurposeOfUse|3.1.0 (extensible)
* extension contains ExtHAHEpisode named episode 1..1 MS
