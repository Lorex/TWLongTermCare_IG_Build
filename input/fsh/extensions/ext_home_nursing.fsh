Extension: ExtHNEpisode
Id: ExtHNEpisode
Title: "居家護理－收案關聯"
Description: "參照此次收案的 EpisodeOfCare。以機構、個案身分證字號及收案日期區分不同次收案。"
Context: QuestionnaireResponse, CarePlan, Goal, Observation, Communication, Task
* value[x] only Reference(HNEpisodeOfCare)
* valueReference 1..1

Extension: ExtHNSourceForm
Id: ExtHNSourceForm
Title: "居家護理－來源表單"
Description: "參照提供此資源內容的結構化表單。保留原始評估、來源身分及補充說明。"
Context: Patient, EpisodeOfCare, CarePlan, Goal, Observation, Communication, Task
* value[x] only Reference(QuestionnaireResponse)
* valueReference 1..1

Extension: ExtHNMainTarget
Id: ExtHNMainTarget
Title: "居家護理－主要目標"
Description: "填入此目標是否為主要照護目標。"
Context: Goal
* value[x] only boolean
* valueBoolean 1..1

Extension: ExtHNMeasureStop
Id: ExtHNMeasureStop
Title: "居家護理－措施停止資訊"
Description: "措施停止時填入停止日期、原因與護理人員。"
Context: CarePlan.activity
* extension contains
    date 1..1 and
    reason 1..1 and
    nurse 1..1
* extension[date].value[x] only date
* extension[date].valueDate 1..1
* extension[date] ^short = "停止日期"
* extension[reason].value[x] only string
* extension[reason].valueString 1..1
* extension[reason] ^short = "停止原因"
* extension[nurse].value[x] only Reference(LTCPractitioner)
* extension[nurse].valueReference 1..1
* extension[nurse] ^short = "停止護理人員。[應填入對應的 Practitioner]"
* value[x] 0..0

Extension: ExtHNCollectionUpdate
Id: ExtHNCollectionUpdate
Title: "居家護理－共照團隊更新指示"
Description: "記錄來源要求保留、取代或清空共照名單。接收端先讀取指示，再更新指定名單。"
Context: Task
* extension contains
    collection 1..1 and
    action 1..1
* extension[collection].value[x] only code
* extension[collection].valueCode from HNCollectionVS (required)
* extension[collection].valueCode 1..1
* extension[action].value[x] only code
* extension[action].valueCode from HNUpdateActionVS (required)
* extension[action].valueCode 1..1
* value[x] 0..0
