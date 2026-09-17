Profile: HNMeasuresResponse
Parent: LTCQuestionnaireResponse
Id: HNMeasuresResponse
Title: "居家護理－照護計畫措施表單"
Description: "記錄照護計畫措施的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。"
* ^status = #draft
* ^version = "5.0.16"
* questionnaire 1..1 MS
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/hn-measures"
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
    MeasureCreateDate 1..1 MS and
    MeasureContent 1..1 MS and
    NurseID 1..1 MS and
    MeasureStopDate 0..1 MS and
    MeasureStopContent 0..1 MS and
    MeasureStopNurseID 0..1 MS
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
* item[MeasureCreateDate].linkId = "MeasureCreateDate"
* item[MeasureCreateDate] ^short = "措施建立日期"
* item[MeasureCreateDate].item 0..0
* item[MeasureCreateDate].answer 0..1
* item[MeasureCreateDate].answer.value[x] only date
* item[MeasureCreateDate].answer.value[x] 1..1
* item[MeasureCreateDate].answer 1..1
* item[MeasureContent].linkId = "MeasureContent"
* item[MeasureContent] ^short = "措施內容"
* item[MeasureContent].item 0..0
* item[MeasureContent].answer 0..1
* item[MeasureContent].answer.value[x] only string
* item[MeasureContent].answer.value[x] 1..1
* item[MeasureContent].answer 1..1
* item[MeasureContent].answer.valueString ^maxLength = 100
* item[NurseID].linkId = "NurseID"
* item[NurseID] ^short = "建立護理人員身分證字號"
* item[NurseID].item 0..0
* item[NurseID].answer 0..1
* item[NurseID].answer.value[x] only string
* item[NurseID].answer.value[x] 1..1
* item[NurseID].answer 1..1
* item[NurseID].answer.valueString ^maxLength = 10
* item[MeasureStopDate].linkId = "MeasureStopDate"
* item[MeasureStopDate] ^short = "停止日期"
* item[MeasureStopDate].item 0..0
* item[MeasureStopDate].answer 0..1
* item[MeasureStopDate].answer.value[x] only date
* item[MeasureStopDate].answer.value[x] 1..1
* item[MeasureStopContent].linkId = "MeasureStopContent"
* item[MeasureStopContent] ^short = "停止原因"
* item[MeasureStopContent].item 0..0
* item[MeasureStopContent].answer 0..1
* item[MeasureStopContent].answer.value[x] only string
* item[MeasureStopContent].answer.value[x] 1..1
* item[MeasureStopContent].answer.valueString ^maxLength = 100
* item[MeasureStopNurseID].linkId = "MeasureStopNurseID"
* item[MeasureStopNurseID] ^short = "停止護理人員身分證字號"
* item[MeasureStopNurseID].item 0..0
* item[MeasureStopNurseID].answer 0..1
* item[MeasureStopNurseID].answer.value[x] only string
* item[MeasureStopNurseID].answer.value[x] 1..1
* item[MeasureStopNurseID].answer.valueString ^maxLength = 10
* obeys hn-measures-1

Invariant: hn-measures-1
Description: "措施停止時應填原因與停止護理人員。"
Severity: #error
Expression: "item.where(linkId='MeasureStopDate').answer.value.exists() implies (item.where(linkId='MeasureStopContent').answer.value.exists() and item.where(linkId='MeasureStopNurseID').answer.value.exists())"
