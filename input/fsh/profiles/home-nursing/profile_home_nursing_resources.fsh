Profile: HNPatient
Parent: LTCPatient
Id: HNPatient
Title: "居家護理－個案"
Description: "沿用長照個案基本資料。機構另配發住民識別碼，來源表單記錄居護社會背景與共照名單。"
* identifier[idCardNumber] 1..1 MS
* extension[nationality] ^type[0].profile[0] = "http://hl7.org/fhir/StructureDefinition/patient-nationality|5.3.0"
* identifier[member] ^short = "機構配發的個案識別碼。[可依機構規則以身分證字號建立，system 應填機構的識別命名空間]"
* extension contains ExtHNSourceForm named sourceForm 1..* MS

Profile: HNEpisodeOfCare
Parent: LTCEpisodeOfCareBase
Id: HNEpisodeOfCare
Title: "居家護理－收案歷程"
Description: "以機構、個案與收案日期識別一次居護收案，結案時記錄結束日期及來源表單。"
* patient only Reference(HNPatient)
* managingOrganization only Reference(LTCOrganization)
* identifier 1..* MS
* identifier.system 1..1
* identifier.value 1..1
* extension contains ExtHNSourceForm named sourceForm 1..* MS
* careManager only Reference(LTCPractitionerRole)

Profile: HNCarePlan
Parent: LTCCarePlan
Id: HNCarePlan
Title: "居家護理－照護計畫"
Description: "沿用長照照顧計畫，串聯需求摘要、目標、措施與評值表單。"
* subject only Reference(HNPatient)
* extension contains
    ExtHNEpisode named episode 1..1 MS and
    ExtHNSourceForm named sourceForm 1..* MS
* goal 1..* MS
* goal only Reference(HNGoal)
* activity.extension contains ExtHNMeasureStop named stop 0..1 MS
* activity.detail 1..1
* activity.reference 0..0
* activity.detail.description 1..1 MS
* activity.detail.goal 1..* MS
* activity.detail.goal only Reference(HNGoal)
* activity.outcomeReference only Reference(HNEvaluationsResponse)
* activity.progress ^short = "評值文字；完整評值表單由 outcomeReference 參照"

Profile: HNGoal
Parent: LTCGoal
Id: HNGoal
Title: "居家護理－照護目標"
Description: "沿用長照照顧目標，記錄目標敘述、預期達到日期及是否為主要目標。"
* subject only Reference(HNPatient)
* description.text 1..1 MS
* start[x] only date
* startDate 1..1 MS
* target 1..1 MS
* target.due[x] only date
* target.dueDate 1..1 MS
* extension contains
    ExtHNEpisode named episode 1..1 MS and
    ExtHNSourceForm named sourceForm 1..* MS and
    ExtHNMainTarget named mainTarget 1..1 MS

Profile: HNCommunication
Parent: LTCCommunicationServiceA
Id: HNCommunication
Title: "居家護理－共照紀錄"
Description: "記錄共照人員提供的照護紀錄。沿用既有服務活動 Communication，新增收案與來源表單關聯。"
* subject 1..1 MS
* subject only Reference(HNPatient)
* sender 1..1 MS
* sender only Reference(Practitioner or PractitionerRole)
* sent 1..1 MS
* medium from http://terminology.hl7.org/ValueSet/v3-ParticipationMode|3.0.0 (extensible)
* payload 1..1 MS
* payload.content[x] only string
* extension contains
    ExtHNEpisode named episode 1..1 MS and
    ExtHNSourceForm named sourceForm 1..1 MS

Profile: HNAPITask
Parent: LTCTask
Id: HNAPITask
Title: "居家護理－介接作業"
Description: "記錄上傳及查詢工作。上傳成功僅表示已接收；須依後續處理結果另行更新任務狀態。"
* code 1..1 MS
* code from HNAPIVS (required)
* requester 1..1 MS
* requester only Reference(LTCOrganization)
* identifier 0..1 MS
* identifier.system 1..1
* identifier.system = "http://ltc-ig.fhir.tw/identifier/home-nursing/ticket"
* identifier.value 1..1
* identifier.value obeys hn-ticket
* extension contains ExtHNCollectionUpdate named collectionUpdate 0..2 MS
* input ^slicing.discriminator.type = #pattern
* input ^slicing.discriminator.path = "type"
* input ^slicing.rules = #open
* input contains
    startDate 0..1 MS and
    endDate 0..1 MS and
    ticket 0..1 MS and
    sourceForm 0..* MS
* input[startDate].type = HNWorkflowCS#start-date
* input[startDate].value[x] only date
* input[endDate].type = HNWorkflowCS#end-date
* input[endDate].value[x] only date
* input[ticket].type = HNWorkflowCS#ticket
* input[ticket].value[x] only string
* input[ticket].valueString obeys hn-ticket
* input[sourceForm].type = HNWorkflowCS#source-form
* input[sourceForm].value[x] only Reference(QuestionnaireResponse)
* output ^slicing.discriminator.type = #pattern
* output ^slicing.discriminator.path = "type"
* output ^slicing.rules = #open
* output contains
    code 0..1 MS and
    message 0..1 MS
* output[code].type = HNWorkflowCS#response-code
* output[code].value[x] only integer
* output[message].type = HNWorkflowCS#response-message
* output[message].value[x] only string
* obeys hn-query-start and hn-query-ticket

Invariant: hn-ticket
Description: "追蹤碼必須為八位數字。"
Severity: #error
Expression: "matches('^[0-9]{8}$')"

Invariant: hn-query-start
Description: "依日期查詢時應填入起始日。"
Severity: #error
Expression: "code.coding.where(code='GetLog').exists() implies input.where(type.coding.where(code='start-date').exists()).exists()"

Invariant: hn-query-ticket
Description: "依追蹤碼查詢時應填入追蹤碼。"
Severity: #error
Expression: "code.coding.where(code='GetLogByTicket').exists() implies input.where(type.coding.where(code='ticket').exists()).exists()"

Profile: HNOperationOutcome
Parent: OperationOutcome
Id: HNOperationOutcome
Title: "居家護理－介接訊息"
Description: "表達接收或處理訊息。原規範未列出 GetLog 回覆結構及完整錯誤碼，因此不自訂假定的錯誤碼表。"
* issue.details.text 1..1 MS
