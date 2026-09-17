Profile: HNEvaluationsResponse
Parent: LTCQuestionnaireResponse
Id: HNEvaluationsResponse
Title: "居家護理－照護計畫評值紀錄表單"
Description: "記錄照護計畫評值紀錄的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。"
* ^status = #draft
* ^version = "5.0.16"
* questionnaire 1..1 MS
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/hn-evaluations"
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
    EvaluationDate 1..1 MS and
    EvaluationContent 1..1 MS and
    NurseID 1..1 MS
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
* item[EvaluationDate].linkId = "EvaluationDate"
* item[EvaluationDate] ^short = "紀錄日期"
* item[EvaluationDate].item 0..0
* item[EvaluationDate].answer 0..1
* item[EvaluationDate].answer.value[x] only date
* item[EvaluationDate].answer.value[x] 1..1
* item[EvaluationDate].answer 1..1
* item[EvaluationContent].linkId = "EvaluationContent"
* item[EvaluationContent] ^short = "評值紀錄"
* item[EvaluationContent].item 0..0
* item[EvaluationContent].answer 0..1
* item[EvaluationContent].answer.value[x] only string
* item[EvaluationContent].answer.value[x] 1..1
* item[EvaluationContent].answer 1..1
* item[EvaluationContent].answer.valueString ^maxLength = 500
* item[NurseID].linkId = "NurseID"
* item[NurseID] ^short = "建立護理人員身分證字號"
* item[NurseID].item 0..0
* item[NurseID].answer 0..1
* item[NurseID].answer.value[x] only string
* item[NurseID].answer.value[x] 1..1
* item[NurseID].answer 1..1
* item[NurseID].answer.valueString ^maxLength = 10
