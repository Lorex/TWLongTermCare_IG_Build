Profile: HNCareRecordResponse
Parent: LTCQuestionnaireResponse
Id: HNCareRecordResponse
Title: "居家護理－照護紀錄表單"
Description: "記錄照護紀錄的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。"
* ^status = #draft
* ^version = "5.0.16"
* questionnaire 1..1 MS
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/hn-carerecord"
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
    Time 1..1 MS and
    Time2 1..1 MS and
    RecordSource 1..1 MS and
    Height 0..1 MS and
    Weight 0..1 MS and
    BMI 0..1 MS and
    ArmW 0..1 MS and
    LegW 0..1 MS and
    Live 1..1 MS and
    LiveArea 1..1 MS and
    UseResources 0..1 MS and
    ServiceItems 0..1 MS and
    IsUnplanned 1..1 MS and
    Unplanned 0..1 MS and
    IsEmergency 1..1 MS and
    Emergency 0..1 MS and
    IsSkinDamages 1..1 MS and
    SkinDamages 0..* MS and
    IsEmergencyEvents 1..1 MS and
    EmergencyEvents 0..* MS and
    VitalSign 0..1 MS and
    WoundRecords 0..* MS and
    FJMEvaluation 0..1 MS and
    FJM 0..* MS and
    Statement 1..1 MS and
    IsTemporary 0..1 MS
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
* item[Time].linkId = "Time"
* item[Time] ^short = "照護開始時間"
* item[Time].item 0..0
* item[Time].answer 0..1
* item[Time].answer.value[x] only time
* item[Time].answer.value[x] 1..1
* item[Time].answer 1..1
* item[Time2].linkId = "Time2"
* item[Time2] ^short = "照護結束時間"
* item[Time2].item 0..0
* item[Time2].answer 0..1
* item[Time2].answer.value[x] only time
* item[Time2].answer.value[x] 1..1
* item[Time2].answer 1..1
* item[RecordSource].linkId = "RecordSource"
* item[RecordSource] ^short = "紀錄來源"
* item[RecordSource].answer 0..0
* item[RecordSource].item ^slicing.discriminator.type = #value
* item[RecordSource].item ^slicing.discriminator.path = "linkId"
* item[RecordSource].item ^slicing.rules = #closed
* item[RecordSource].item contains
    Value 1..1 MS and
    Other 0..1 MS
* item[RecordSource].item[Value].linkId = "RecordSource.Value"
* item[RecordSource].item[Value] ^short = "選項"
* item[RecordSource].item[Value].item 0..0
* item[RecordSource].item[Value].answer 0..1
* item[RecordSource].item[Value].answer.value[x] only Coding
* item[RecordSource].item[Value].answer.value[x] 1..1
* item[RecordSource].item[Value].answer 1..1
* item[RecordSource].item[Value].answer.valueCoding from hn-vs-04e9c37073f4 (required)
* item[RecordSource].item[Other].linkId = "RecordSource.Other"
* item[RecordSource].item[Other] ^short = "補充說明"
* item[RecordSource].item[Other].item 0..0
* item[RecordSource].item[Other].answer 0..1
* item[RecordSource].item[Other].answer.value[x] only string
* item[RecordSource].item[Other].answer.value[x] 1..1
* item[RecordSource].item[Other].answer.valueString ^maxLength = 100
* item[Height].linkId = "Height"
* item[Height] ^short = "身高（公分）"
* item[Height].item 0..0
* item[Height].answer 0..1
* item[Height].answer.value[x] only decimal
* item[Height].answer.value[x] 1..1
* item[Height].answer.valueDecimal ^minValueDecimal = 0
* item[Height].answer.valueDecimal ^maxValueDecimal = 200
* item[Weight].linkId = "Weight"
* item[Weight] ^short = "體重（公斤）"
* item[Weight].item 0..0
* item[Weight].answer 0..1
* item[Weight].answer.value[x] only decimal
* item[Weight].answer.value[x] 1..1
* item[Weight].answer.valueDecimal ^minValueDecimal = 0
* item[Weight].answer.valueDecimal ^maxValueDecimal = 200
* item[BMI].linkId = "BMI"
* item[BMI] ^short = "身體質量指數"
* item[BMI].item 0..0
* item[BMI].answer 0..1
* item[BMI].answer.value[x] only decimal
* item[BMI].answer.value[x] 1..1
* item[BMI].answer.valueDecimal ^minValueDecimal = 0
* item[BMI].answer.valueDecimal ^maxValueDecimal = 200
* item[ArmW].linkId = "ArmW"
* item[ArmW] ^short = "臂中圍（公分）"
* item[ArmW].item 0..0
* item[ArmW].answer 0..1
* item[ArmW].answer.value[x] only decimal
* item[ArmW].answer.value[x] 1..1
* item[ArmW].answer.valueDecimal ^minValueDecimal = 0
* item[ArmW].answer.valueDecimal ^maxValueDecimal = 200
* item[LegW].linkId = "LegW"
* item[LegW] ^short = "小腿圍（公分）"
* item[LegW].item 0..0
* item[LegW].answer 0..1
* item[LegW].answer.value[x] only decimal
* item[LegW].answer.value[x] 1..1
* item[LegW].answer.valueDecimal ^minValueDecimal = 0
* item[LegW].answer.valueDecimal ^maxValueDecimal = 200
* item[Live].linkId = "Live"
* item[Live] ^short = "居住所"
* item[Live].answer 0..0
* item[Live].item ^slicing.discriminator.type = #value
* item[Live].item ^slicing.discriminator.path = "linkId"
* item[Live].item ^slicing.rules = #closed
* item[Live].item contains
    Value 1..1 MS and
    Other 0..1 MS
* item[Live].item[Value].linkId = "Live.Value"
* item[Live].item[Value] ^short = "選項"
* item[Live].item[Value].item 0..0
* item[Live].item[Value].answer 0..1
* item[Live].item[Value].answer.value[x] only Coding
* item[Live].item[Value].answer.value[x] 1..1
* item[Live].item[Value].answer 1..1
* item[Live].item[Value].answer.valueCoding from hn-vs-d93b34f7b736 (required)
* item[Live].item[Other].linkId = "Live.Other"
* item[Live].item[Other] ^short = "補充說明"
* item[Live].item[Other].item 0..0
* item[Live].item[Other].answer 0..1
* item[Live].item[Other].answer.value[x] only string
* item[Live].item[Other].answer.value[x] 1..1
* item[Live].item[Other].answer.valueString ^maxLength = 100
* item[LiveArea].linkId = "LiveArea"
* item[LiveArea] ^short = "居住區域"
* item[LiveArea].answer 0..0
* item[LiveArea].item ^slicing.discriminator.type = #value
* item[LiveArea].item ^slicing.discriminator.path = "linkId"
* item[LiveArea].item ^slicing.rules = #closed
* item[LiveArea].item contains
    City 1..1 MS and
    Area 1..1 MS
* item[LiveArea].item[City].linkId = "LiveArea.City"
* item[LiveArea].item[City] ^short = "縣市"
* item[LiveArea].item[City].item 0..0
* item[LiveArea].item[City].answer 0..1
* item[LiveArea].item[City].answer.value[x] only string
* item[LiveArea].item[City].answer.value[x] 1..1
* item[LiveArea].item[City].answer 1..1
* item[LiveArea].item[City].answer.valueString ^maxLength = 100
* item[LiveArea].item[Area].linkId = "LiveArea.Area"
* item[LiveArea].item[Area] ^short = "鄉鎮市區"
* item[LiveArea].item[Area].item 0..0
* item[LiveArea].item[Area].answer 0..1
* item[LiveArea].item[Area].answer.value[x] only string
* item[LiveArea].item[Area].answer.value[x] 1..1
* item[LiveArea].item[Area].answer 1..1
* item[LiveArea].item[Area].answer.valueString ^maxLength = 100
* item[UseResources].linkId = "UseResources"
* item[UseResources] ^short = "使用資源"
* item[UseResources].answer 0..0
* item[UseResources].item ^slicing.discriminator.type = #value
* item[UseResources].item ^slicing.discriminator.path = "linkId"
* item[UseResources].item ^slicing.rules = #closed
* item[UseResources].item contains
    Values 0..1 MS and
    Other 0..1 MS
* item[UseResources].item[Values].linkId = "UseResources.Values"
* item[UseResources].item[Values] ^short = "選項"
* item[UseResources].item[Values].item 0..0
* item[UseResources].item[Values].answer 0..*
* item[UseResources].item[Values].answer.value[x] only Coding
* item[UseResources].item[Values].answer.value[x] 1..1
* item[UseResources].item[Values].answer.valueCoding from hn-vs-38762eb1c742 (required)
* item[UseResources].item[Other].linkId = "UseResources.Other"
* item[UseResources].item[Other] ^short = "補充說明"
* item[UseResources].item[Other].item 0..0
* item[UseResources].item[Other].answer 0..1
* item[UseResources].item[Other].answer.value[x] only string
* item[UseResources].item[Other].answer.value[x] 1..1
* item[UseResources].item[Other].answer.valueString ^maxLength = 100
* item[ServiceItems].linkId = "ServiceItems"
* item[ServiceItems] ^short = "服務項目"
* item[ServiceItems].answer 0..0
* item[ServiceItems].item ^slicing.discriminator.type = #value
* item[ServiceItems].item ^slicing.discriminator.path = "linkId"
* item[ServiceItems].item ^slicing.rules = #closed
* item[ServiceItems].item contains
    Values 0..1 MS and
    Other 0..1 MS
* item[ServiceItems].item[Values].linkId = "ServiceItems.Values"
* item[ServiceItems].item[Values] ^short = "選項"
* item[ServiceItems].item[Values].item 0..0
* item[ServiceItems].item[Values].answer 0..*
* item[ServiceItems].item[Values].answer.value[x] only Coding
* item[ServiceItems].item[Values].answer.value[x] 1..1
* item[ServiceItems].item[Values].answer.valueCoding from hn-vs-c8a0ace9ffad (required)
* item[ServiceItems].item[Other].linkId = "ServiceItems.Other"
* item[ServiceItems].item[Other] ^short = "補充說明"
* item[ServiceItems].item[Other].item 0..0
* item[ServiceItems].item[Other].answer 0..1
* item[ServiceItems].item[Other].answer.value[x] only string
* item[ServiceItems].item[Other].answer.value[x] 1..1
* item[ServiceItems].item[Other].answer.valueString ^maxLength = 100
* item[IsUnplanned].linkId = "IsUnplanned"
* item[IsUnplanned] ^short = "是否非計畫性再住院"
* item[IsUnplanned].item 0..0
* item[IsUnplanned].answer 0..1
* item[IsUnplanned].answer.value[x] only Coding
* item[IsUnplanned].answer.value[x] 1..1
* item[IsUnplanned].answer 1..1
* item[IsUnplanned].answer.valueCoding from hn-vs-58e4d598f859 (required)
* item[Unplanned].linkId = "Unplanned"
* item[Unplanned] ^short = "非計畫性再住院"
* item[Unplanned].answer 0..0
* item[Unplanned].item ^slicing.discriminator.type = #value
* item[Unplanned].item ^slicing.discriminator.path = "linkId"
* item[Unplanned].item ^slicing.rules = #closed
* item[Unplanned].item contains
    Date 1..1 MS and
    Time 1..1 MS and
    Statement 1..1 MS
* item[Unplanned].item[Date].linkId = "Unplanned.Date"
* item[Unplanned].item[Date] ^short = "發生日期"
* item[Unplanned].item[Date].item 0..0
* item[Unplanned].item[Date].answer 0..1
* item[Unplanned].item[Date].answer.value[x] only date
* item[Unplanned].item[Date].answer.value[x] 1..1
* item[Unplanned].item[Date].answer 1..1
* item[Unplanned].item[Time].linkId = "Unplanned.Time"
* item[Unplanned].item[Time] ^short = "發生時段"
* item[Unplanned].item[Time].item 0..0
* item[Unplanned].item[Time].answer 0..1
* item[Unplanned].item[Time].answer.value[x] only Coding
* item[Unplanned].item[Time].answer.value[x] 1..1
* item[Unplanned].item[Time].answer 1..1
* item[Unplanned].item[Time].answer.valueCoding from hn-vs-7d118ae5ad21 (required)
* item[Unplanned].item[Statement].linkId = "Unplanned.Statement"
* item[Unplanned].item[Statement] ^short = "發生原因"
* item[Unplanned].item[Statement].item 0..0
* item[Unplanned].item[Statement].answer 0..1
* item[Unplanned].item[Statement].answer.value[x] only string
* item[Unplanned].item[Statement].answer.value[x] 1..1
* item[Unplanned].item[Statement].answer 1..1
* item[Unplanned].item[Statement].answer.valueString ^maxLength = 2100
* item[IsEmergency].linkId = "IsEmergency"
* item[IsEmergency] ^short = "是否使用急診"
* item[IsEmergency].item 0..0
* item[IsEmergency].answer 0..1
* item[IsEmergency].answer.value[x] only Coding
* item[IsEmergency].answer.value[x] 1..1
* item[IsEmergency].answer 1..1
* item[IsEmergency].answer.valueCoding from hn-vs-58e4d598f859 (required)
* item[Emergency].linkId = "Emergency"
* item[Emergency] ^short = "使用急診"
* item[Emergency].answer 0..0
* item[Emergency].item ^slicing.discriminator.type = #value
* item[Emergency].item ^slicing.discriminator.path = "linkId"
* item[Emergency].item ^slicing.rules = #closed
* item[Emergency].item contains
    Date 1..1 MS and
    Time 1..1 MS and
    Statement 1..1 MS
* item[Emergency].item[Date].linkId = "Emergency.Date"
* item[Emergency].item[Date] ^short = "發生日期"
* item[Emergency].item[Date].item 0..0
* item[Emergency].item[Date].answer 0..1
* item[Emergency].item[Date].answer.value[x] only date
* item[Emergency].item[Date].answer.value[x] 1..1
* item[Emergency].item[Date].answer 1..1
* item[Emergency].item[Time].linkId = "Emergency.Time"
* item[Emergency].item[Time] ^short = "發生時段"
* item[Emergency].item[Time].item 0..0
* item[Emergency].item[Time].answer 0..1
* item[Emergency].item[Time].answer.value[x] only Coding
* item[Emergency].item[Time].answer.value[x] 1..1
* item[Emergency].item[Time].answer 1..1
* item[Emergency].item[Time].answer.valueCoding from hn-vs-7d118ae5ad21 (required)
* item[Emergency].item[Statement].linkId = "Emergency.Statement"
* item[Emergency].item[Statement] ^short = "發生原因"
* item[Emergency].item[Statement].item 0..0
* item[Emergency].item[Statement].answer 0..1
* item[Emergency].item[Statement].answer.value[x] only string
* item[Emergency].item[Statement].answer.value[x] 1..1
* item[Emergency].item[Statement].answer 1..1
* item[Emergency].item[Statement].answer.valueString ^maxLength = 2100
* item[IsSkinDamages].linkId = "IsSkinDamages"
* item[IsSkinDamages] ^short = "是否皮膚損傷"
* item[IsSkinDamages].item 0..0
* item[IsSkinDamages].answer 0..1
* item[IsSkinDamages].answer.value[x] only Coding
* item[IsSkinDamages].answer.value[x] 1..1
* item[IsSkinDamages].answer 1..1
* item[IsSkinDamages].answer.valueCoding from hn-vs-58e4d598f859 (required)
* item[SkinDamages].linkId = "SkinDamages"
* item[SkinDamages] ^short = "皮膚損傷"
* item[SkinDamages].answer 0..0
* item[SkinDamages].item ^slicing.discriminator.type = #value
* item[SkinDamages].item ^slicing.discriminator.path = "linkId"
* item[SkinDamages].item ^slicing.rules = #closed
* item[SkinDamages].item contains
    Date 1..1 MS and
    Time 1..1 MS and
    Kind 0..1 MS and
    Statement 1..1 MS
* item[SkinDamages].item[Date].linkId = "SkinDamages.Date"
* item[SkinDamages].item[Date] ^short = "發生日期"
* item[SkinDamages].item[Date].item 0..0
* item[SkinDamages].item[Date].answer 0..1
* item[SkinDamages].item[Date].answer.value[x] only date
* item[SkinDamages].item[Date].answer.value[x] 1..1
* item[SkinDamages].item[Date].answer 1..1
* item[SkinDamages].item[Time].linkId = "SkinDamages.Time"
* item[SkinDamages].item[Time] ^short = "發生時段"
* item[SkinDamages].item[Time].item 0..0
* item[SkinDamages].item[Time].answer 0..1
* item[SkinDamages].item[Time].answer.value[x] only Coding
* item[SkinDamages].item[Time].answer.value[x] 1..1
* item[SkinDamages].item[Time].answer 1..1
* item[SkinDamages].item[Time].answer.valueCoding from hn-vs-7d118ae5ad21 (required)
* item[SkinDamages].item[Kind].linkId = "SkinDamages.Kind"
* item[SkinDamages].item[Kind] ^short = "損傷類型"
* item[SkinDamages].item[Kind].answer 0..0
* item[SkinDamages].item[Kind].item ^slicing.discriminator.type = #value
* item[SkinDamages].item[Kind].item ^slicing.discriminator.path = "linkId"
* item[SkinDamages].item[Kind].item ^slicing.rules = #closed
* item[SkinDamages].item[Kind].item contains
    Value 1..1 MS and
    Other 0..1 MS
* item[SkinDamages].item[Kind].item[Value].linkId = "SkinDamages.Kind.Value"
* item[SkinDamages].item[Kind].item[Value] ^short = "選項"
* item[SkinDamages].item[Kind].item[Value].item 0..0
* item[SkinDamages].item[Kind].item[Value].answer 0..1
* item[SkinDamages].item[Kind].item[Value].answer.value[x] only Coding
* item[SkinDamages].item[Kind].item[Value].answer.value[x] 1..1
* item[SkinDamages].item[Kind].item[Value].answer 1..1
* item[SkinDamages].item[Kind].item[Value].answer.valueCoding from hn-vs-b0ba220a4535 (required)
* item[SkinDamages].item[Kind].item[Other].linkId = "SkinDamages.Kind.Other"
* item[SkinDamages].item[Kind].item[Other] ^short = "補充說明"
* item[SkinDamages].item[Kind].item[Other].item 0..0
* item[SkinDamages].item[Kind].item[Other].answer 0..1
* item[SkinDamages].item[Kind].item[Other].answer.value[x] only string
* item[SkinDamages].item[Kind].item[Other].answer.value[x] 1..1
* item[SkinDamages].item[Kind].item[Other].answer.valueString ^maxLength = 100
* item[SkinDamages].item[Statement].linkId = "SkinDamages.Statement"
* item[SkinDamages].item[Statement] ^short = "發生原因"
* item[SkinDamages].item[Statement].item 0..0
* item[SkinDamages].item[Statement].answer 0..1
* item[SkinDamages].item[Statement].answer.value[x] only string
* item[SkinDamages].item[Statement].answer.value[x] 1..1
* item[SkinDamages].item[Statement].answer 1..1
* item[SkinDamages].item[Statement].answer.valueString ^maxLength = 2100
* item[IsEmergencyEvents].linkId = "IsEmergencyEvents"
* item[IsEmergencyEvents] ^short = "是否緊急事件"
* item[IsEmergencyEvents].item 0..0
* item[IsEmergencyEvents].answer 0..1
* item[IsEmergencyEvents].answer.value[x] only Coding
* item[IsEmergencyEvents].answer.value[x] 1..1
* item[IsEmergencyEvents].answer 1..1
* item[IsEmergencyEvents].answer.valueCoding from hn-vs-58e4d598f859 (required)
* item[EmergencyEvents].linkId = "EmergencyEvents"
* item[EmergencyEvents] ^short = "緊急事件"
* item[EmergencyEvents].answer 0..0
* item[EmergencyEvents].item ^slicing.discriminator.type = #value
* item[EmergencyEvents].item ^slicing.discriminator.path = "linkId"
* item[EmergencyEvents].item ^slicing.rules = #closed
* item[EmergencyEvents].item contains
    EmergencyType 1..1 MS and
    Date 1..1 MS and
    Time 1..1 MS and
    Reason 1..1 MS and
    Description 1..1 MS and
    Process 1..1 MS and
    Report 1..1 MS and
    CreateID 1..1 MS
* item[EmergencyEvents].item[EmergencyType].linkId = "EmergencyEvents.EmergencyType"
* item[EmergencyEvents].item[EmergencyType] ^short = "事件類型"
* item[EmergencyEvents].item[EmergencyType].answer 0..0
* item[EmergencyEvents].item[EmergencyType].item ^slicing.discriminator.type = #value
* item[EmergencyEvents].item[EmergencyType].item ^slicing.discriminator.path = "linkId"
* item[EmergencyEvents].item[EmergencyType].item ^slicing.rules = #closed
* item[EmergencyEvents].item[EmergencyType].item contains
    Value 1..1 MS and
    Other 0..1 MS
* item[EmergencyEvents].item[EmergencyType].item[Value].linkId = "EmergencyEvents.EmergencyType.Value"
* item[EmergencyEvents].item[EmergencyType].item[Value] ^short = "選項"
* item[EmergencyEvents].item[EmergencyType].item[Value].item 0..0
* item[EmergencyEvents].item[EmergencyType].item[Value].answer 0..1
* item[EmergencyEvents].item[EmergencyType].item[Value].answer.value[x] only Coding
* item[EmergencyEvents].item[EmergencyType].item[Value].answer.value[x] 1..1
* item[EmergencyEvents].item[EmergencyType].item[Value].answer 1..1
* item[EmergencyEvents].item[EmergencyType].item[Value].answer.valueCoding from hn-vs-4abebe47a94c (required)
* item[EmergencyEvents].item[EmergencyType].item[Other].linkId = "EmergencyEvents.EmergencyType.Other"
* item[EmergencyEvents].item[EmergencyType].item[Other] ^short = "補充說明"
* item[EmergencyEvents].item[EmergencyType].item[Other].item 0..0
* item[EmergencyEvents].item[EmergencyType].item[Other].answer 0..1
* item[EmergencyEvents].item[EmergencyType].item[Other].answer.value[x] only string
* item[EmergencyEvents].item[EmergencyType].item[Other].answer.value[x] 1..1
* item[EmergencyEvents].item[EmergencyType].item[Other].answer.valueString ^maxLength = 100
* item[EmergencyEvents].item[Date].linkId = "EmergencyEvents.Date"
* item[EmergencyEvents].item[Date] ^short = "發生日期"
* item[EmergencyEvents].item[Date].item 0..0
* item[EmergencyEvents].item[Date].answer 0..1
* item[EmergencyEvents].item[Date].answer.value[x] only date
* item[EmergencyEvents].item[Date].answer.value[x] 1..1
* item[EmergencyEvents].item[Date].answer 1..1
* item[EmergencyEvents].item[Time].linkId = "EmergencyEvents.Time"
* item[EmergencyEvents].item[Time] ^short = "發生時段"
* item[EmergencyEvents].item[Time].item 0..0
* item[EmergencyEvents].item[Time].answer 0..1
* item[EmergencyEvents].item[Time].answer.value[x] only Coding
* item[EmergencyEvents].item[Time].answer.value[x] 1..1
* item[EmergencyEvents].item[Time].answer 1..1
* item[EmergencyEvents].item[Time].answer.valueCoding from hn-vs-7d118ae5ad21 (required)
* item[EmergencyEvents].item[Reason].linkId = "EmergencyEvents.Reason"
* item[EmergencyEvents].item[Reason] ^short = "發生原因"
* item[EmergencyEvents].item[Reason].item 0..0
* item[EmergencyEvents].item[Reason].answer 0..1
* item[EmergencyEvents].item[Reason].answer.value[x] only string
* item[EmergencyEvents].item[Reason].answer.value[x] 1..1
* item[EmergencyEvents].item[Reason].answer 1..1
* item[EmergencyEvents].item[Reason].answer.valueString ^maxLength = 100
* item[EmergencyEvents].item[Description].linkId = "EmergencyEvents.Description"
* item[EmergencyEvents].item[Description] ^short = "事件描述"
* item[EmergencyEvents].item[Description].item 0..0
* item[EmergencyEvents].item[Description].answer 0..1
* item[EmergencyEvents].item[Description].answer.value[x] only string
* item[EmergencyEvents].item[Description].answer.value[x] 1..1
* item[EmergencyEvents].item[Description].answer 1..1
* item[EmergencyEvents].item[Description].answer.valueString ^maxLength = 200
* item[EmergencyEvents].item[Process].linkId = "EmergencyEvents.Process"
* item[EmergencyEvents].item[Process] ^short = "通報及處理過程"
* item[EmergencyEvents].item[Process].item 0..0
* item[EmergencyEvents].item[Process].answer 0..1
* item[EmergencyEvents].item[Process].answer.value[x] only string
* item[EmergencyEvents].item[Process].answer.value[x] 1..1
* item[EmergencyEvents].item[Process].answer 1..1
* item[EmergencyEvents].item[Process].answer.valueString ^maxLength = 200
* item[EmergencyEvents].item[Report].linkId = "EmergencyEvents.Report"
* item[EmergencyEvents].item[Report] ^short = "檢討紀錄"
* item[EmergencyEvents].item[Report].item 0..0
* item[EmergencyEvents].item[Report].answer 0..1
* item[EmergencyEvents].item[Report].answer.value[x] only string
* item[EmergencyEvents].item[Report].answer.value[x] 1..1
* item[EmergencyEvents].item[Report].answer 1..1
* item[EmergencyEvents].item[Report].answer.valueString ^maxLength = 200
* item[EmergencyEvents].item[CreateID].linkId = "EmergencyEvents.CreateID"
* item[EmergencyEvents].item[CreateID] ^short = "照護人員身分證字號"
* item[EmergencyEvents].item[CreateID].item 0..0
* item[EmergencyEvents].item[CreateID].answer 0..1
* item[EmergencyEvents].item[CreateID].answer.value[x] only string
* item[EmergencyEvents].item[CreateID].answer.value[x] 1..1
* item[EmergencyEvents].item[CreateID].answer 1..1
* item[EmergencyEvents].item[CreateID].answer.valueString ^maxLength = 10
* item[VitalSign].linkId = "VitalSign"
* item[VitalSign] ^short = "生命徵象"
* item[VitalSign].answer 0..0
* item[VitalSign].item ^slicing.discriminator.type = #value
* item[VitalSign].item ^slicing.discriminator.path = "linkId"
* item[VitalSign].item ^slicing.rules = #closed
* item[VitalSign].item contains
    Date 1..1 MS and
    Time 1..1 MS and
    Temperature 1..1 MS and
    Pulse 1..1 MS and
    Respiration 1..1 MS and
    BloodPressure1 1..1 MS and
    BloodPressure2 1..1 MS and
    BloodGlucose 0..1 MS and
    BloodOxygen 0..1 MS
* item[VitalSign].item[Date].linkId = "VitalSign.Date"
* item[VitalSign].item[Date] ^short = "量測日期"
* item[VitalSign].item[Date].item 0..0
* item[VitalSign].item[Date].answer 0..1
* item[VitalSign].item[Date].answer.value[x] only date
* item[VitalSign].item[Date].answer.value[x] 1..1
* item[VitalSign].item[Date].answer 1..1
* item[VitalSign].item[Time].linkId = "VitalSign.Time"
* item[VitalSign].item[Time] ^short = "量測時間"
* item[VitalSign].item[Time].item 0..0
* item[VitalSign].item[Time].answer 0..1
* item[VitalSign].item[Time].answer.value[x] only time
* item[VitalSign].item[Time].answer.value[x] 1..1
* item[VitalSign].item[Time].answer 1..1
* item[VitalSign].item[Temperature].linkId = "VitalSign.Temperature"
* item[VitalSign].item[Temperature] ^short = "體溫"
* item[VitalSign].item[Temperature].item 0..0
* item[VitalSign].item[Temperature].answer 0..1
* item[VitalSign].item[Temperature].answer.value[x] only decimal
* item[VitalSign].item[Temperature].answer.value[x] 1..1
* item[VitalSign].item[Temperature].answer 1..1
* item[VitalSign].item[Temperature].answer.valueDecimal ^minValueDecimal = 0
* item[VitalSign].item[Temperature].answer.valueDecimal ^maxValueDecimal = 999
* item[VitalSign].item[Pulse].linkId = "VitalSign.Pulse"
* item[VitalSign].item[Pulse] ^short = "脈搏"
* item[VitalSign].item[Pulse].item 0..0
* item[VitalSign].item[Pulse].answer 0..1
* item[VitalSign].item[Pulse].answer.value[x] only integer
* item[VitalSign].item[Pulse].answer.value[x] 1..1
* item[VitalSign].item[Pulse].answer 1..1
* item[VitalSign].item[Pulse].answer.valueInteger ^minValueInteger = 0
* item[VitalSign].item[Pulse].answer.valueInteger ^maxValueInteger = 999
* item[VitalSign].item[Respiration].linkId = "VitalSign.Respiration"
* item[VitalSign].item[Respiration] ^short = "呼吸"
* item[VitalSign].item[Respiration].item 0..0
* item[VitalSign].item[Respiration].answer 0..1
* item[VitalSign].item[Respiration].answer.value[x] only integer
* item[VitalSign].item[Respiration].answer.value[x] 1..1
* item[VitalSign].item[Respiration].answer 1..1
* item[VitalSign].item[Respiration].answer.valueInteger ^minValueInteger = 0
* item[VitalSign].item[Respiration].answer.valueInteger ^maxValueInteger = 999
* item[VitalSign].item[BloodPressure1].linkId = "VitalSign.BloodPressure1"
* item[VitalSign].item[BloodPressure1] ^short = "收縮壓"
* item[VitalSign].item[BloodPressure1].item 0..0
* item[VitalSign].item[BloodPressure1].answer 0..1
* item[VitalSign].item[BloodPressure1].answer.value[x] only integer
* item[VitalSign].item[BloodPressure1].answer.value[x] 1..1
* item[VitalSign].item[BloodPressure1].answer 1..1
* item[VitalSign].item[BloodPressure1].answer.valueInteger ^minValueInteger = 0
* item[VitalSign].item[BloodPressure1].answer.valueInteger ^maxValueInteger = 999
* item[VitalSign].item[BloodPressure2].linkId = "VitalSign.BloodPressure2"
* item[VitalSign].item[BloodPressure2] ^short = "舒張壓"
* item[VitalSign].item[BloodPressure2].item 0..0
* item[VitalSign].item[BloodPressure2].answer 0..1
* item[VitalSign].item[BloodPressure2].answer.value[x] only integer
* item[VitalSign].item[BloodPressure2].answer.value[x] 1..1
* item[VitalSign].item[BloodPressure2].answer 1..1
* item[VitalSign].item[BloodPressure2].answer.valueInteger ^minValueInteger = 0
* item[VitalSign].item[BloodPressure2].answer.valueInteger ^maxValueInteger = 999
* item[VitalSign].item[BloodGlucose].linkId = "VitalSign.BloodGlucose"
* item[VitalSign].item[BloodGlucose] ^short = "血糖"
* item[VitalSign].item[BloodGlucose].item 0..0
* item[VitalSign].item[BloodGlucose].answer 0..1
* item[VitalSign].item[BloodGlucose].answer.value[x] only integer
* item[VitalSign].item[BloodGlucose].answer.value[x] 1..1
* item[VitalSign].item[BloodGlucose].answer.valueInteger ^minValueInteger = 0
* item[VitalSign].item[BloodGlucose].answer.valueInteger ^maxValueInteger = 999
* item[VitalSign].item[BloodOxygen].linkId = "VitalSign.BloodOxygen"
* item[VitalSign].item[BloodOxygen] ^short = "血氧"
* item[VitalSign].item[BloodOxygen].item 0..0
* item[VitalSign].item[BloodOxygen].answer 0..1
* item[VitalSign].item[BloodOxygen].answer.value[x] only integer
* item[VitalSign].item[BloodOxygen].answer.value[x] 1..1
* item[VitalSign].item[BloodOxygen].answer.valueInteger ^minValueInteger = 0
* item[VitalSign].item[BloodOxygen].answer.valueInteger ^maxValueInteger = 100
* item[WoundRecords].linkId = "WoundRecords"
* item[WoundRecords] ^short = "傷口紀錄"
* item[WoundRecords].answer 0..0
* item[WoundRecords].item ^slicing.discriminator.type = #value
* item[WoundRecords].item ^slicing.discriminator.path = "linkId"
* item[WoundRecords].item ^slicing.rules = #closed
* item[WoundRecords].item contains
    Part 1..1 MS and
    Length 1..1 MS and
    Width 1..1 MS and
    Depth 1..1 MS and
    Category 1..1 MS and
    Level 1..1 MS and
    Statement 0..1 MS
* item[WoundRecords].item[Part].linkId = "WoundRecords.Part"
* item[WoundRecords].item[Part] ^short = "傷口部位"
* item[WoundRecords].item[Part].item 0..0
* item[WoundRecords].item[Part].answer 0..1
* item[WoundRecords].item[Part].answer.value[x] only string
* item[WoundRecords].item[Part].answer.value[x] 1..1
* item[WoundRecords].item[Part].answer 1..1
* item[WoundRecords].item[Part].answer.valueString ^maxLength = 10
* item[WoundRecords].item[Length].linkId = "WoundRecords.Length"
* item[WoundRecords].item[Length] ^short = "傷口長度"
* item[WoundRecords].item[Length].item 0..0
* item[WoundRecords].item[Length].answer 0..1
* item[WoundRecords].item[Length].answer.value[x] only decimal
* item[WoundRecords].item[Length].answer.value[x] 1..1
* item[WoundRecords].item[Length].answer.valueDecimal ^minValueDecimal = 0
* item[WoundRecords].item[Width].linkId = "WoundRecords.Width"
* item[WoundRecords].item[Width] ^short = "傷口寬度"
* item[WoundRecords].item[Width].item 0..0
* item[WoundRecords].item[Width].answer 0..1
* item[WoundRecords].item[Width].answer.value[x] only decimal
* item[WoundRecords].item[Width].answer.value[x] 1..1
* item[WoundRecords].item[Width].answer.valueDecimal ^minValueDecimal = 0
* item[WoundRecords].item[Depth].linkId = "WoundRecords.Depth"
* item[WoundRecords].item[Depth] ^short = "傷口深度"
* item[WoundRecords].item[Depth].item 0..0
* item[WoundRecords].item[Depth].answer 0..1
* item[WoundRecords].item[Depth].answer.value[x] only decimal
* item[WoundRecords].item[Depth].answer.value[x] 1..1
* item[WoundRecords].item[Depth].answer.valueDecimal ^minValueDecimal = 0
* item[WoundRecords].item[Category].linkId = "WoundRecords.Category"
* item[WoundRecords].item[Category] ^short = "傷口分類"
* item[WoundRecords].item[Category].item 0..0
* item[WoundRecords].item[Category].answer 0..1
* item[WoundRecords].item[Category].answer.value[x] only Coding
* item[WoundRecords].item[Category].answer.value[x] 1..1
* item[WoundRecords].item[Category].answer 1..1
* item[WoundRecords].item[Category].answer.valueCoding from hn-vs-ab16e9d81e7b (required)
* item[WoundRecords].item[Level].linkId = "WoundRecords.Level"
* item[WoundRecords].item[Level] ^short = "傷口等級"
* item[WoundRecords].item[Level].item 0..0
* item[WoundRecords].item[Level].answer 0..1
* item[WoundRecords].item[Level].answer.value[x] only Coding
* item[WoundRecords].item[Level].answer.value[x] 1..1
* item[WoundRecords].item[Level].answer.valueCoding from hn-vs-de533dbea66c (required)
* item[WoundRecords].item[Statement].linkId = "WoundRecords.Statement"
* item[WoundRecords].item[Statement] ^short = "傷口說明"
* item[WoundRecords].item[Statement].item 0..0
* item[WoundRecords].item[Statement].answer 0..1
* item[WoundRecords].item[Statement].answer.value[x] only string
* item[WoundRecords].item[Statement].answer.value[x] 1..1
* item[WoundRecords].item[Statement].answer.valueString ^maxLength = 100
* item[FJMEvaluation].linkId = "FJMEvaluation"
* item[FJMEvaluation] ^short = "足部護理評估狀態"
* item[FJMEvaluation].item 0..0
* item[FJMEvaluation].answer 0..1
* item[FJMEvaluation].answer.value[x] only Coding
* item[FJMEvaluation].answer.value[x] 1..1
* item[FJMEvaluation].answer.valueCoding from hn-vs-5154109e8985 (required)
* item[FJM].linkId = "FJM"
* item[FJM] ^short = "足部護理"
* item[FJM].answer 0..0
* item[FJM].item ^slicing.discriminator.type = #value
* item[FJM].item ^slicing.discriminator.path = "linkId"
* item[FJM].item ^slicing.rules = #closed
* item[FJM].item contains
    Item 1..1 MS and
    Question 1..1 MS and
    Answers 1..1 MS and
    Statement 1..1 MS
* item[FJM].item[Item].linkId = "FJM.Item"
* item[FJM].item[Item] ^short = "項目分類"
* item[FJM].item[Item].item 0..0
* item[FJM].item[Item].answer 0..1
* item[FJM].item[Item].answer.value[x] only Coding
* item[FJM].item[Item].answer.value[x] 1..1
* item[FJM].item[Item].answer 1..1
* item[FJM].item[Item].answer.valueCoding from hn-vs-0a65df60cccf (required)
* item[FJM].item[Question].linkId = "FJM.Question"
* item[FJM].item[Question] ^short = "評估項目"
* item[FJM].item[Question].item 0..0
* item[FJM].item[Question].answer 0..1
* item[FJM].item[Question].answer.value[x] only Coding
* item[FJM].item[Question].answer.value[x] 1..1
* item[FJM].item[Question].answer 1..1
* item[FJM].item[Question].answer.valueCoding from hn-vs-14764e5914f7 (required)
* item[FJM].item[Answers].linkId = "FJM.Answers"
* item[FJM].item[Answers] ^short = "答案"
* item[FJM].item[Answers].answer 0..0
* item[FJM].item[Answers].item ^slicing.discriminator.type = #value
* item[FJM].item[Answers].item ^slicing.discriminator.path = "linkId"
* item[FJM].item[Answers].item ^slicing.rules = #closed
* item[FJM].item[Answers].item contains
    Values 0..1 MS and
    Other 0..1 MS and
    FJMList 0..* MS and
    FJMVas 0..1 MS
* item[FJM].item[Answers].item[Values].linkId = "FJM.Answers.Values"
* item[FJM].item[Answers].item[Values] ^short = "選項"
* item[FJM].item[Answers].item[Values].item 0..0
* item[FJM].item[Answers].item[Values].answer 0..*
* item[FJM].item[Answers].item[Values].answer.value[x] only string
* item[FJM].item[Answers].item[Values].answer.value[x] 1..1
* item[FJM].item[Answers].item[Values].answer.valueString ^maxLength = 100
* item[FJM].item[Answers].item[Other].linkId = "FJM.Answers.Other"
* item[FJM].item[Answers].item[Other] ^short = "補充說明"
* item[FJM].item[Answers].item[Other].item 0..0
* item[FJM].item[Answers].item[Other].answer 0..1
* item[FJM].item[Answers].item[Other].answer.value[x] only string
* item[FJM].item[Answers].item[Other].answer.value[x] 1..1
* item[FJM].item[Answers].item[Other].answer.valueString ^maxLength = 100
* item[FJM].item[Answers].item[FJMList].linkId = "FJM.Answers.FJMList"
* item[FJM].item[Answers].item[FJMList] ^short = "操作項目紀錄"
* item[FJM].item[Answers].item[FJMList].answer 0..0
* item[FJM].item[Answers].item[FJMList].item ^slicing.discriminator.type = #value
* item[FJM].item[Answers].item[FJMList].item ^slicing.discriminator.path = "linkId"
* item[FJM].item[Answers].item[FJMList].item ^slicing.rules = #closed
* item[FJM].item[Answers].item[FJMList].item contains
    SubQuestion 1..1 MS and
    SubAnswers 1..1 MS and
    SubStatement 1..1 MS
* item[FJM].item[Answers].item[FJMList].item[SubQuestion].linkId = "FJM.Answers.FJMList.SubQuestion"
* item[FJM].item[Answers].item[FJMList].item[SubQuestion] ^short = "操作項目與流程"
* item[FJM].item[Answers].item[FJMList].item[SubQuestion].item 0..0
* item[FJM].item[Answers].item[FJMList].item[SubQuestion].answer 0..1
* item[FJM].item[Answers].item[FJMList].item[SubQuestion].answer.value[x] only Coding
* item[FJM].item[Answers].item[FJMList].item[SubQuestion].answer.value[x] 1..1
* item[FJM].item[Answers].item[FJMList].item[SubQuestion].answer 1..1
* item[FJM].item[Answers].item[FJMList].item[SubQuestion].answer.valueCoding from hn-vs-dfa44a5bba0b (required)
* item[FJM].item[Answers].item[FJMList].item[SubAnswers].linkId = "FJM.Answers.FJMList.SubAnswers"
* item[FJM].item[Answers].item[FJMList].item[SubAnswers] ^short = "有反應物"
* item[FJM].item[Answers].item[FJMList].item[SubAnswers].item 0..0
* item[FJM].item[Answers].item[FJMList].item[SubAnswers].answer 0..1
* item[FJM].item[Answers].item[FJMList].item[SubAnswers].answer.value[x] only Coding
* item[FJM].item[Answers].item[FJMList].item[SubAnswers].answer.value[x] 1..1
* item[FJM].item[Answers].item[FJMList].item[SubAnswers].answer 1..1
* item[FJM].item[Answers].item[FJMList].item[SubAnswers].answer.valueCoding from hn-vs-58e4d598f859 (required)
* item[FJM].item[Answers].item[FJMList].item[SubStatement].linkId = "FJM.Answers.FJMList.SubStatement"
* item[FJM].item[Answers].item[FJMList].item[SubStatement] ^short = "觀察紀錄"
* item[FJM].item[Answers].item[FJMList].item[SubStatement].item 0..0
* item[FJM].item[Answers].item[FJMList].item[SubStatement].answer 0..1
* item[FJM].item[Answers].item[FJMList].item[SubStatement].answer.value[x] only string
* item[FJM].item[Answers].item[FJMList].item[SubStatement].answer.value[x] 1..1
* item[FJM].item[Answers].item[FJMList].item[SubStatement].answer 1..1
* item[FJM].item[Answers].item[FJMList].item[SubStatement].answer.valueString ^maxLength = 100
* item[FJM].item[Answers].item[FJMVas].linkId = "FJM.Answers.FJMVas"
* item[FJM].item[Answers].item[FJMVas] ^short = "疼痛量尺"
* item[FJM].item[Answers].item[FJMVas].answer 0..0
* item[FJM].item[Answers].item[FJMVas].item ^slicing.discriminator.type = #value
* item[FJM].item[Answers].item[FJMVas].item ^slicing.discriminator.path = "linkId"
* item[FJM].item[Answers].item[FJMVas].item ^slicing.rules = #closed
* item[FJM].item[Answers].item[FJMVas].item contains
    Part 1..1 MS and
    Point 1..1 MS
* item[FJM].item[Answers].item[FJMVas].item[Part].linkId = "FJM.Answers.FJMVas.Part"
* item[FJM].item[Answers].item[FJMVas].item[Part] ^short = "疼痛部位"
* item[FJM].item[Answers].item[FJMVas].item[Part].item 0..0
* item[FJM].item[Answers].item[FJMVas].item[Part].answer 0..1
* item[FJM].item[Answers].item[FJMVas].item[Part].answer.value[x] only string
* item[FJM].item[Answers].item[FJMVas].item[Part].answer.value[x] 1..1
* item[FJM].item[Answers].item[FJMVas].item[Part].answer 1..1
* item[FJM].item[Answers].item[FJMVas].item[Part].answer.valueString ^maxLength = 100
* item[FJM].item[Answers].item[FJMVas].item[Point].linkId = "FJM.Answers.FJMVas.Point"
* item[FJM].item[Answers].item[FJMVas].item[Point] ^short = "疼痛程度"
* item[FJM].item[Answers].item[FJMVas].item[Point].item 0..0
* item[FJM].item[Answers].item[FJMVas].item[Point].answer 0..1
* item[FJM].item[Answers].item[FJMVas].item[Point].answer.value[x] only integer
* item[FJM].item[Answers].item[FJMVas].item[Point].answer.value[x] 1..1
* item[FJM].item[Answers].item[FJMVas].item[Point].answer 1..1
* item[FJM].item[Answers].item[FJMVas].item[Point].answer.valueInteger ^minValueInteger = 1
* item[FJM].item[Answers].item[FJMVas].item[Point].answer.valueInteger ^maxValueInteger = 10
* item[FJM].item[Statement].linkId = "FJM.Statement"
* item[FJM].item[Statement] ^short = "主訴敘述"
* item[FJM].item[Statement].item 0..0
* item[FJM].item[Statement].answer 0..1
* item[FJM].item[Statement].answer.value[x] only string
* item[FJM].item[Statement].answer.value[x] 1..1
* item[FJM].item[Statement].answer.valueString ^maxLength = 1000
* item[Statement].linkId = "Statement"
* item[Statement] ^short = "照護紀錄"
* item[Statement].item 0..0
* item[Statement].answer 0..1
* item[Statement].answer.value[x] only string
* item[Statement].answer.value[x] 1..1
* item[Statement].answer 1..1
* item[Statement].answer.valueString ^maxLength = 1000
* item[IsTemporary].linkId = "IsTemporary"
* item[IsTemporary] ^short = "是否暫存"
* item[IsTemporary].item 0..0
* item[IsTemporary].answer 0..1
* item[IsTemporary].answer.value[x] only Coding
* item[IsTemporary].answer.value[x] 1..1
* item[IsTemporary].answer.valueCoding from hn-vs-58e4d598f859 (required)
* obeys hn-carerecord-1
* obeys hn-carerecord-2
* obeys hn-carerecord-3
* obeys hn-carerecord-4
* obeys hn-carerecord-5
* obeys hn-carerecord-6
* obeys hn-carerecord-7
* obeys hn-carerecord-8
* obeys hn-carerecord-9
* obeys hn-carerecord-10
* obeys hn-carerecord-11
* obeys hn-carerecord-12
* obeys hn-carerecord-13
* obeys hn-carerecord-14
* obeys hn-carerecord-15
* obeys hn-carerecord-16
* obeys hn-carerecord-17

Invariant: hn-carerecord-1
Description: "暫存填是時，表單狀態必須為 in-progress。"
Severity: #error
Expression: "item.where(linkId='IsTemporary').answer.value.ofType(Coding).where(code='cb5141d3d19e9').exists() implies status='in-progress'"

Invariant: hn-carerecord-2
Description: "暫存填否時，表單狀態必須為 completed 或 amended。"
Severity: #error
Expression: "item.where(linkId='IsTemporary').answer.value.ofType(Coding).where(code='c0c70665b6eb6').exists() implies (status='completed' or status='amended')"

Invariant: hn-carerecord-3
Description: "紀錄來源選擇其他時應填寫補充說明。"
Severity: #error
Expression: "item.where(linkId='RecordSource').all((item.where(linkId='RecordSource.Value').answer.value.ofType(Coding).where(code='cabca60121b39').exists()) implies item.where(linkId='RecordSource.Other').answer.value.exists())"

Invariant: hn-carerecord-4
Description: "居住所選擇其他時應填寫補充說明。"
Severity: #error
Expression: "item.where(linkId='Live').all((item.where(linkId='Live.Value').answer.value.ofType(Coding).where(code='cd2909f1647e7').exists()) implies item.where(linkId='Live.Other').answer.value.exists())"

Invariant: hn-carerecord-5
Description: "損傷類型選擇其他時應填寫補充說明。"
Severity: #error
Expression: "item.where(linkId='SkinDamages').item.where(linkId='SkinDamages.Kind').all((item.where(linkId='SkinDamages.Kind.Value').answer.value.ofType(Coding).where(code='cd2909f1647e7').exists()) implies item.where(linkId='SkinDamages.Kind.Other').answer.value.exists())"

Invariant: hn-carerecord-6
Description: "事件類型選擇其他時應填寫補充說明。"
Severity: #error
Expression: "item.where(linkId='EmergencyEvents').item.where(linkId='EmergencyEvents.EmergencyType').all((item.where(linkId='EmergencyEvents.EmergencyType.Value').answer.value.ofType(Coding).where(code='cd2909f1647e7').exists()) implies item.where(linkId='EmergencyEvents.EmergencyType.Other').answer.value.exists())"

Invariant: hn-carerecord-7
Description: "家訪應填使用資源及服務項目。"
Severity: #error
Expression: "item.where(linkId='RecordSource').item.where(linkId='RecordSource.Value').answer.value.ofType(Coding).where(code='cbeb7cdda895a').exists() implies (item.where(linkId='UseResources').item.where(linkId='UseResources.Values').answer.value.exists() and item.where(linkId='ServiceItems').item.where(linkId='ServiceItems.Values').answer.value.exists())"

Invariant: hn-carerecord-8
Description: "事件旗標為是時應填寫事件內容。"
Severity: #error
Expression: "item.where(linkId='IsUnplanned').answer.value.ofType(Coding).where(code='cb5141d3d19e9').exists() implies item.where(linkId='Unplanned').exists()"

Invariant: hn-carerecord-9
Description: "事件旗標為是時應填寫事件內容。"
Severity: #error
Expression: "item.where(linkId='IsEmergency').answer.value.ofType(Coding).where(code='cb5141d3d19e9').exists() implies item.where(linkId='Emergency').exists()"

Invariant: hn-carerecord-10
Description: "事件旗標為是時應填寫事件內容。"
Severity: #error
Expression: "item.where(linkId='IsSkinDamages').answer.value.ofType(Coding).where(code='cb5141d3d19e9').exists() implies item.where(linkId='SkinDamages').exists()"

Invariant: hn-carerecord-11
Description: "事件旗標為是時應填寫事件內容。"
Severity: #error
Expression: "item.where(linkId='IsEmergencyEvents').answer.value.ofType(Coding).where(code='cb5141d3d19e9').exists() implies item.where(linkId='EmergencyEvents').exists()"

Invariant: hn-carerecord-12
Description: "足部護理已評估時應提供評估內容。"
Severity: #error
Expression: "item.where(linkId='FJMEvaluation').answer.value.ofType(Coding).where(code='cb6c73a5e123a').exists() implies item.where(linkId='FJM').exists()"

Invariant: hn-carerecord-13
Description: "照護結束時間不可早於開始時間。"
Severity: #error
Expression: "item.where(linkId='Time2').answer.value.single() >= item.where(linkId='Time').answer.value.single()"

Invariant: hn-carerecord-14
Description: "壓傷應選擇其對應等級。"
Severity: #error
Expression: "item.where(linkId='WoundRecords').all((item.where(linkId='WoundRecords.Category').answer.value.ofType(Coding).where(code='c7ead2b329689').exists()) implies (item.where(linkId='WoundRecords.Level').answer.value.ofType(Coding).where(code='cd2309630a543').exists() or item.where(linkId='WoundRecords.Level').answer.value.ofType(Coding).where(code='c02aab4358253').exists() or item.where(linkId='WoundRecords.Level').answer.value.ofType(Coding).where(code='cccd9b119924f').exists() or item.where(linkId='WoundRecords.Level').answer.value.ofType(Coding).where(code='cb77fa71e8c7f').exists() or item.where(linkId='WoundRecords.Level').answer.value.ofType(Coding).where(code='cecf422c03011').exists() or item.where(linkId='WoundRecords.Level').answer.value.ofType(Coding).where(code='c6210bfc58f77').exists()))"

Invariant: hn-carerecord-15
Description: "失禁性皮膚炎應選擇其對應等級。"
Severity: #error
Expression: "item.where(linkId='WoundRecords').all((item.where(linkId='WoundRecords.Category').answer.value.ofType(Coding).where(code='cc7a2787e9f48').exists()) implies (item.where(linkId='WoundRecords.Level').answer.value.ofType(Coding).where(code='ccf3d835a3018').exists() or item.where(linkId='WoundRecords.Level').answer.value.ofType(Coding).where(code='ce33cd81b67cc').exists() or item.where(linkId='WoundRecords.Level').answer.value.ofType(Coding).where(code='c7259a0720e42').exists() or item.where(linkId='WoundRecords.Level').answer.value.ofType(Coding).where(code='c5c19c5dfd9c3').exists()))"

Invariant: hn-carerecord-16
Description: "其他傷口須留空等級並填寫說明。"
Severity: #error
Expression: "item.where(linkId='WoundRecords').all((item.where(linkId='WoundRecords.Category').answer.value.ofType(Coding).where(code='cd2909f1647e7').exists()) implies (item.where(linkId='WoundRecords.Level').answer.value.empty() and item.where(linkId='WoundRecords.Statement').answer.value.exists()))"

Invariant: hn-carerecord-17
Description: "非無法分期的傷口須填寫長、寬、深。"
Severity: #error
Expression: "item.where(linkId='WoundRecords').all(((item.where(linkId='WoundRecords.Category').answer.value.ofType(Coding).where(code='c7ead2b329689').exists()) and (item.where(linkId='WoundRecords.Level').answer.value.ofType(Coding).where(code='cecf422c03011').exists())).not() implies (item.where(linkId='WoundRecords.Length').answer.value.exists() and item.where(linkId='WoundRecords.Width').answer.value.exists() and item.where(linkId='WoundRecords.Depth').answer.value.exists()))"
