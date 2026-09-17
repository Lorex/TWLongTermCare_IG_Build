Profile: HAHPatient
Parent: LTCPatient
Id: HAHPatient
Title: "在宅急症－個案"
Description: "正式收案個案的身分與聯絡資料。沿用長照個案識別、地址與緊急聯絡人；收案狀態另記錄於 EpisodeOfCare。"
* ^status = #draft
* generalPractitioner MS
* generalPractitioner only Reference(LTCPractitioner or LTCPractitionerRole or LTCOrganization)
* deceased[x] MS
* active ^short = "個案主檔是否仍使用"

Profile: HAHEpisodeOfCare
Parent: LTCEpisodeOfCareBase
Id: HAHEpisodeOfCare
Title: "在宅急症－收案療程"
Description: "每次收案建立一筆療程，記錄負責機構、期間、診斷與團隊。再次收案建立新的療程，仍參照同一個案。"
* ^status = #draft
* identifier 1..* MS
* identifier.system 1..1
* identifier.value 1..1
* patient only Reference(HAHPatient)
* managingOrganization only Reference(LTCOrganization)
* type 1..1 MS
* type = HAHActivityCS#acute-home
* diagnosis MS
* diagnosis.condition only Reference(HAHCondition)
* referralRequest only Reference(HAHServiceRequest)
* careManager only Reference(LTCPractitioner or LTCPractitionerRole)
* team only Reference(HAHCareTeam)
* statusHistory MS
* extension contains ExtHAHOutcome named outcome 0..1 MS
* obeys hah-episode-finished

Invariant: hah-episode-finished
Description: "療程完成時應填寫實際結束時間與結束原因。"
Severity: #error
Expression: "status = 'finished' implies (period.end.exists() and extension.where(url='http://ltc-ig.fhir.tw/StructureDefinition/ExtHAHOutcome').exists())"

Profile: HAHEncounter
Parent: $TWCoreEncounter
Id: HAHEncounter
Title: "在宅急症－就診基礎"
Description: "在宅急症的共同就診資料，包含個案、療程、服務機構與實際照護期間。"
* ^status = #draft
* subject 1..1 MS
* subject only Reference(HAHPatient)
* episodeOfCare 1..1 MS
* episodeOfCare only Reference(HAHEpisodeOfCare)
* serviceProvider 1..1 MS
* serviceProvider only Reference(LTCOrganization)
* period 1..1 MS
* period.start 1..1 MS
* participant 1..* MS
* participant.individual 1..1 MS
* participant.individual only Reference(LTCPractitioner or LTCPractitionerRole)
* diagnosis.condition only Reference(HAHCondition)
* location.location only Reference($TWCoreLocation)
// 指定目前使用的 THO 值集版本，子 Profile 沿用相同綁定。
* class from http://terminology.hl7.org/ValueSet/v3-ActEncounterCode|3.0.0 (extensible)
* classHistory.class from http://terminology.hl7.org/ValueSet/v3-ActEncounterCode|3.0.0 (extensible)
* priority from http://terminology.hl7.org/ValueSet/v3-ActPriority|3.0.0 (example)
* hospitalization.reAdmission from http://terminology.hl7.org/ValueSet/v2-0092|3.0.0 (example)
* obeys hah-encounter-finished

Invariant: hah-encounter-finished
Description: "已結束的就診應填入實際結束時間。"
Severity: #error
Expression: "status = 'finished' implies period.end.exists()"

Profile: HAHAdmissionEncounter
Parent: HAHEncounter
Id: HAHAdmissionEncounter
Title: "在宅急症－整段照護"
Description: "表達本次在宅急症的整段照護，供每次訪視透過 partOf 參照。IMP 表示在宅住院照護分類，location 記錄照護地點。"
* ^status = #draft
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP
* type 1..1 MS
* type = HAHActivityCS#acute-home
* hospitalization.admitSource MS
* hospitalization.dischargeDisposition MS
* hospitalization.destination MS
* hospitalization.destination only Reference($TWCoreLocation or LTCOrganization)

Profile: HAHVisitEncounter
Parent: HAHEncounter
Id: HAHVisitEncounter
Title: "在宅急症－單次訪視"
Description: "每次實地、視訊或電話評估建立一筆訪視，參照整段照護與收案療程。"
* ^status = #draft
* type 1..1 MS
* type = HAHActivityCS#visit
* partOf 1..1 MS
* partOf only Reference(HAHAdmissionEncounter)
* extension contains ExtHAHVisitMode named mode 1..1 MS
* obeys hah-visit-class

Invariant: hah-visit-class
Description: "實地訪視使用 HH，視訊或電話評估使用 VR。"
Severity: #error
Expression: "class.system = 'http://terminology.hl7.org/CodeSystem/v3-ActCode' and ((extension.where(url='http://ltc-ig.fhir.tw/StructureDefinition/ExtHAHVisitMode').first().value = 'in-person' and class.code = 'HH') or (extension.where(url='http://ltc-ig.fhir.tw/StructureDefinition/ExtHAHVisitMode').first().value != 'in-person' and class.code = 'VR'))"

Profile: HAHCareTeam
Parent: $TWCoreCareTeam
Id: HAHCareTeam
Title: "在宅急症－照護團隊"
Description: "記錄主責及共照人員、機構、角色與參與期間。團隊成員包含人員與共照機構。"
* ^status = #draft
* status 1..1 MS
* subject only Reference(HAHPatient)
* encounter only Reference(HAHAdmissionEncounter)
* participant 1..* MS
* participant.role 1..1 MS
* participant.member 1..1 MS
* participant.member only Reference(LTCPractitioner or LTCPractitionerRole or LTCRelatedPerson or LTCOrganization)
* participant.period MS
* managingOrganization only Reference(LTCOrganization)

Profile: HAHVisitTask
Parent: Task
Id: HAHVisitTask
Title: "在宅急症－照護工作"
Description: "記錄訪視、送藥等執行工作。owner 記錄負責執行的人員、機構或照護團隊。"
* ^status = #draft
* code 1..1 MS
* code from HAHServiceVS (extensible)
* for 1..1 MS
* for only Reference(HAHPatient)
* encounter 1..1 MS
* encounter only Reference(HAHEncounter)
* authoredOn 1..1 MS
* requester 1..1 MS
* requester only Reference(LTCPractitioner or LTCPractitionerRole or LTCOrganization)
* owner 1..1 MS
* owner only Reference(LTCPractitioner or LTCPractitionerRole or LTCOrganization or HAHCareTeam)
* location only Reference($TWCoreLocation)
* focus only Reference(HAHServiceRequest or HAHCarePlan or $TWCoreMedicationRequest)
* restriction.period MS
* restriction.period ^short = "預定執行期限"
* executionPeriod MS
* executionPeriod ^short = "實際執行期間。[填入工作開始與結束時間]"
* output MS
* obeys hah-task-completed and hah-task-requested-period

Invariant: hah-task-requested-period
Description: "填寫執行範圍或期限時，應以 focus 參照被執行的醫囑或計畫。"
Severity: #error
Expression: "restriction.exists() implies focus.exists()"

Invariant: hah-task-completed
Description: "已完成工作應記錄實際執行起訖時間。"
Severity: #error
Expression: "status = 'completed' implies (executionPeriod.start.exists() and executionPeriod.end.exists())"
