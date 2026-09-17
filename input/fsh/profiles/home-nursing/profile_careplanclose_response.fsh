Profile: HNCarePlanCloseResponse
Parent: LTCQuestionnaireResponse
Id: HNCarePlanCloseResponse
Title: "居家護理－照護計畫結案表單"
Description: "記錄照護計畫結案的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。"
* ^status = #draft
* ^version = "5.0.16"
* questionnaire 1..1 MS
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/hn-careplanclose"
* status 1..1 MS
* authored 1..1 MS
* subject 1..1 MS
* extension contains ExtHNEpisode named episode 1..1 MS
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #closed
* item contains
    CaseID 1..1 MS and
    EndDate 1..1 MS and
    SummaryCreateDate 1..1 MS and
    Summary 1..1 MS and
    SummaryAnswer 1..1 MS and
    TargetStatement 1..1 MS and
    TargetCreateDate 1..1 MS and
    CloseDate 0..1 MS and
    CloseID 0..1 MS
* item[CaseID].linkId = "CaseID"
* item[CaseID] ^short = "個案身分證字號"
* item[CaseID].item 0..0
* item[CaseID].answer 0..1
* item[CaseID].answer.value[x] only string
* item[CaseID].answer.value[x] 1..1
* item[CaseID].answer 1..1
* item[CaseID].answer.valueString ^maxLength = 10
* item[EndDate].linkId = "EndDate"
* item[EndDate] ^short = "收案日期"
* item[EndDate].item 0..0
* item[EndDate].answer 0..1
* item[EndDate].answer.value[x] only date
* item[EndDate].answer.value[x] 1..1
* item[EndDate].answer 1..1
* item[SummaryCreateDate].linkId = "SummaryCreateDate"
* item[SummaryCreateDate] ^short = "需求摘要評估日期"
* item[SummaryCreateDate].item 0..0
* item[SummaryCreateDate].answer 0..1
* item[SummaryCreateDate].answer.value[x] only date
* item[SummaryCreateDate].answer.value[x] 1..1
* item[SummaryCreateDate].answer 1..1
* item[Summary].linkId = "Summary"
* item[Summary] ^short = "需求摘要項目"
* item[Summary].item 0..0
* item[Summary].answer 0..1
* item[Summary].answer.value[x] only string
* item[Summary].answer.value[x] 1..1
* item[Summary].answer 1..1
* item[Summary].answer.valueString ^maxLength = 100
* item[SummaryAnswer].linkId = "SummaryAnswer"
* item[SummaryAnswer] ^short = "需求摘要備註"
* item[SummaryAnswer].item 0..0
* item[SummaryAnswer].answer 0..1
* item[SummaryAnswer].answer.value[x] only string
* item[SummaryAnswer].answer.value[x] 1..1
* item[SummaryAnswer].answer.valueString ^maxLength = 100
* item[TargetStatement].linkId = "TargetStatement"
* item[TargetStatement] ^short = "目標描述"
* item[TargetStatement].item 0..0
* item[TargetStatement].answer 0..1
* item[TargetStatement].answer.value[x] only string
* item[TargetStatement].answer.value[x] 1..1
* item[TargetStatement].answer 1..1
* item[TargetStatement].answer.valueString ^maxLength = 100
* item[TargetCreateDate].linkId = "TargetCreateDate"
* item[TargetCreateDate] ^short = "目標建立日期"
* item[TargetCreateDate].item 0..0
* item[TargetCreateDate].answer 0..1
* item[TargetCreateDate].answer.value[x] only date
* item[TargetCreateDate].answer.value[x] 1..1
* item[TargetCreateDate].answer 1..1
* item[CloseDate].linkId = "CloseDate"
* item[CloseDate] ^short = "結案日期"
* item[CloseDate].item 0..0
* item[CloseDate].answer 0..1
* item[CloseDate].answer.value[x] only date
* item[CloseDate].answer.value[x] 1..1
* item[CloseID].linkId = "CloseID"
* item[CloseID] ^short = "結案護理人員身分證字號"
* item[CloseID].item 0..0
* item[CloseID].answer 0..1
* item[CloseID].answer.value[x] only string
* item[CloseID].answer.value[x] 1..1
* item[CloseID].answer.valueString ^maxLength = 10
