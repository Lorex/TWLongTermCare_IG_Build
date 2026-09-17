Profile: HNCaseSummaryResponse
Parent: LTCQuestionnaireResponse
Id: HNCaseSummaryResponse
Title: "居家護理－需求摘要表單"
Description: "記錄需求摘要的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。"
* ^status = #draft
* ^version = "5.0.16"
* questionnaire 1..1 MS
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/hn-casesummary"
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
    Date 1..1 MS and
    NurseID 1..1 MS and
    Summary 1..1 MS
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
* item[Date].linkId = "Date"
* item[Date] ^short = "紀錄日期"
* item[Date].item 0..0
* item[Date].answer 0..1
* item[Date].answer.value[x] only date
* item[Date].answer.value[x] 1..1
* item[Date].answer 1..1
* item[NurseID].linkId = "NurseID"
* item[NurseID] ^short = "護理人員身分證字號"
* item[NurseID].item 0..0
* item[NurseID].answer 0..1
* item[NurseID].answer.value[x] only string
* item[NurseID].answer.value[x] 1..1
* item[NurseID].answer 1..1
* item[NurseID].answer.valueString ^maxLength = 10
* item[Summary].linkId = "Summary"
* item[Summary] ^short = "問題列表與摘要"
* item[Summary].answer 0..0
* item[Summary].item ^slicing.discriminator.type = #value
* item[Summary].item ^slicing.discriminator.path = "linkId"
* item[Summary].item ^slicing.rules = #closed
* item[Summary].item contains
    QuestionType 1..1 MS and
    Question 1..1 MS and
    Answer 1..1 MS
* item[Summary].item[QuestionType].linkId = "Summary.QuestionType"
* item[Summary].item[QuestionType] ^short = "需求類型"
* item[Summary].item[QuestionType].item 0..0
* item[Summary].item[QuestionType].answer 0..1
* item[Summary].item[QuestionType].answer.value[x] only Coding
* item[Summary].item[QuestionType].answer.value[x] 1..1
* item[Summary].item[QuestionType].answer 1..1
* item[Summary].item[QuestionType].answer.valueCoding from hn-vs-bc943cb432ce (required)
* item[Summary].item[Question].linkId = "Summary.Question"
* item[Summary].item[Question] ^short = "需求項目"
* item[Summary].item[Question].item 0..0
* item[Summary].item[Question].answer 0..1
* item[Summary].item[Question].answer.value[x] only string
* item[Summary].item[Question].answer.value[x] 1..1
* item[Summary].item[Question].answer 1..1
* item[Summary].item[Answer].linkId = "Summary.Answer"
* item[Summary].item[Answer] ^short = "需求摘要備註"
* item[Summary].item[Answer].item 0..0
* item[Summary].item[Answer].answer 0..1
* item[Summary].item[Answer].answer.value[x] only string
* item[Summary].item[Answer].answer.value[x] 1..1
* item[Summary].item[Answer].answer.valueString ^maxLength = 100
