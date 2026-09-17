Profile: HAHCompositionSummary
Parent: LTCCompositionBase
Id: HAHCompositionSummary
Title: "在宅急症－結案與轉銜摘要"
Description: "彙整本次療程與接續照護所需的資訊。以療程、問題、過敏、藥物、結果、照護及後續追蹤七個章節提供可閱讀的摘要。"
* ^status = #draft
* type from HAHSummaryTypeVS (required)
* subject only Reference(HAHPatient)
* encounter 1..1 MS
* encounter only Reference(HAHAdmissionEncounter)
* author only Reference(LTCPractitioner or LTCPractitionerRole)
* custodian 1..1 MS
* custodian only Reference(LTCOrganization)
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains
    course 1..1 MS and
    problems 1..1 MS and
    allergies 1..1 MS and
    medications 1..1 MS and
    results 1..1 MS and
    care 1..1 MS and
    followUp 1..1 MS
* section.code 1..1 MS
* section.code from HAHSectionVS (extensible)
* section.title 1..1 MS
* section.text 1..1 MS
* section[course].code = HAHDocumentCS#course
* section[course].entry only Reference(HAHEpisodeOfCare or HAHEncounter or HAHClinicalImpression or HAHAssessmentResponse)
* section[course].entry 1..* MS
* section[problems].code = HAHDocumentCS#problems
* section[problems].entry only Reference(HAHCondition)
* section[allergies].code = HAHDocumentCS#allergies
* section[allergies].entry only Reference(HAHAllergyIntolerance)
* section[medications].code = HAHDocumentCS#medications
* section[medications].entry only Reference(HAHMedicationRequest or HAHMedicationAdministration or https://twcore.mohw.gov.tw/ig/twcore/StructureDefinition/MedicationStatement-twcore)
* section[results].code = HAHDocumentCS#results
* section[results].entry only Reference(Observation or HAHDiagnosticReport)
* section[care].code = HAHDocumentCS#care
* section[care].entry only Reference(HAHCarePlan or HAHGoal or HAHProcedure or HAHConsent or HAHDevice)
* section[followUp].code = HAHDocumentCS#follow-up
* section[followUp].entry only Reference(HAHServiceRequest or HAHCommunication or HAHDocumentReference or HAHVisitTask)

Profile: HAHBundleSummary
Parent: Bundle
Id: HAHBundleSummary
Title: "在宅急症－摘要文件 Bundle"
Description: "以文件 Bundle 交換結案或轉銜摘要。第一筆為 Composition，並包含個案、療程、整段照護及所有文件內參照的資源。"
* ^status = #draft
* type = #document
* identifier 1..1 MS
* identifier.system 1..1
* identifier.value 1..1
* timestamp 1..1 MS
* entry 4..* MS
* entry.fullUrl 1..1 MS
* entry.resource 1..1 MS
* entry.request 0..0
* entry.response 0..0
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    composition 1..1 MS and
    patient 1..1 MS and
    episode 1..1 MS and
    admission 1..1 MS
* entry[composition].resource only HAHCompositionSummary
* entry[patient].resource only HAHPatient
* entry[episode].resource only HAHEpisodeOfCare
* entry[admission].resource only HAHAdmissionEncounter
* obeys hah-document-first

Invariant: hah-document-first
Description: "文件第一筆 entry 應為 Composition。"
Severity: #error
Expression: "entry.first().resource is Composition"
