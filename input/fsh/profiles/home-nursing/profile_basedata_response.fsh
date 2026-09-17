Profile: HNBaseDataResponse
Parent: LTCQuestionnaireResponse
Id: HNBaseDataResponse
Title: "居家護理－個案基本資料表單"
Description: "記錄個案基本資料的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。"
* ^status = #draft
* ^version = "5.0.16"
* questionnaire 1..1 MS
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/hn-basedata"
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
    CaseSource 1..1 MS and
    CaseName 1..1 MS and
    Sex 1..1 MS and
    CaseType 1..1 MS and
    Birthdate 1..1 MS and
    PhoneNumber 1..1 MS and
    Address 1..1 MS and
    Education 1..1 MS and
    Marriage 1..1 MS and
    Religion 1..1 MS and
    ExJob 1..1 MS and
    Economic 1..1 MS and
    HasWelfare 1..1 MS and
    Welfare 0..1 MS and
    CaregiverID 1..1 MS and
    CaregiverName 1..1 MS and
    CaregiverAddress 1..1 MS and
    CaregiverTel 1..1 MS and
    EgyContactRelation 1..1 MS and
    EgyContactName 1..1 MS and
    EgyContactTel1 1..1 MS and
    EgyContactTel2 0..1 MS and
    NurseID 1..1 MS and
    DecisionMakerRelation 1..1 MS and
    MEvent 1..1 MS and
    MEventItem 0..1 MS and
    CaseDesc 0..1 MS and
    CreateID 1..1 MS and
    Medicals 0..* MS and
    Relatives 0..* MS
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
* item[CaseSource].linkId = "CaseSource"
* item[CaseSource] ^short = "收案來源"
* item[CaseSource].answer 0..0
* item[CaseSource].item ^slicing.discriminator.type = #value
* item[CaseSource].item ^slicing.discriminator.path = "linkId"
* item[CaseSource].item ^slicing.rules = #closed
* item[CaseSource].item contains
    Value 1..1 MS and
    Other 0..1 MS
* item[CaseSource].item[Value].linkId = "CaseSource.Value"
* item[CaseSource].item[Value] ^short = "選項"
* item[CaseSource].item[Value].item 0..0
* item[CaseSource].item[Value].answer 0..1
* item[CaseSource].item[Value].answer.value[x] only Coding
* item[CaseSource].item[Value].answer.value[x] 1..1
* item[CaseSource].item[Value].answer 1..1
* item[CaseSource].item[Value].answer.valueCoding from hn-vs-ef3233b113ad (required)
* item[CaseSource].item[Other].linkId = "CaseSource.Other"
* item[CaseSource].item[Other] ^short = "補充說明"
* item[CaseSource].item[Other].item 0..0
* item[CaseSource].item[Other].answer 0..1
* item[CaseSource].item[Other].answer.value[x] only string
* item[CaseSource].item[Other].answer.value[x] 1..1
* item[CaseSource].item[Other].answer.valueString ^maxLength = 100
* item[CaseName].linkId = "CaseName"
* item[CaseName] ^short = "個案姓名"
* item[CaseName].item 0..0
* item[CaseName].answer 0..1
* item[CaseName].answer.value[x] only string
* item[CaseName].answer.value[x] 1..1
* item[CaseName].answer 1..1
* item[CaseName].answer.valueString ^maxLength = 50
* item[Sex].linkId = "Sex"
* item[Sex] ^short = "性別"
* item[Sex].answer 0..0
* item[Sex].item ^slicing.discriminator.type = #value
* item[Sex].item ^slicing.discriminator.path = "linkId"
* item[Sex].item ^slicing.rules = #closed
* item[Sex].item contains
    Value 1..1 MS and
    Other 0..1 MS
* item[Sex].item[Value].linkId = "Sex.Value"
* item[Sex].item[Value] ^short = "選項"
* item[Sex].item[Value].item 0..0
* item[Sex].item[Value].answer 0..1
* item[Sex].item[Value].answer.value[x] only Coding
* item[Sex].item[Value].answer.value[x] 1..1
* item[Sex].item[Value].answer 1..1
* item[Sex].item[Value].answer.valueCoding from hn-vs-c8f650cb37b1 (required)
* item[Sex].item[Other].linkId = "Sex.Other"
* item[Sex].item[Other] ^short = "補充說明"
* item[Sex].item[Other].item 0..0
* item[Sex].item[Other].answer 0..1
* item[Sex].item[Other].answer.value[x] only string
* item[Sex].item[Other].answer.value[x] 1..1
* item[Sex].item[Other].answer.valueString ^maxLength = 100
* item[CaseType].linkId = "CaseType"
* item[CaseType] ^short = "個案類型"
* item[CaseType].item 0..0
* item[CaseType].answer 0..1
* item[CaseType].answer.value[x] only Coding
* item[CaseType].answer.value[x] 1..1
* item[CaseType].answer 1..1
* item[CaseType].answer.valueCoding from hn-vs-082869c8d896 (required)
* item[Birthdate].linkId = "Birthdate"
* item[Birthdate] ^short = "出生日期"
* item[Birthdate].item 0..0
* item[Birthdate].answer 0..1
* item[Birthdate].answer.value[x] only date
* item[Birthdate].answer.value[x] 1..1
* item[Birthdate].answer 1..1
* item[PhoneNumber].linkId = "PhoneNumber"
* item[PhoneNumber] ^short = "聯絡電話"
* item[PhoneNumber].item 0..0
* item[PhoneNumber].answer 0..1
* item[PhoneNumber].answer.value[x] only string
* item[PhoneNumber].answer.value[x] 1..1
* item[PhoneNumber].answer 1..1
* item[PhoneNumber].answer.valueString ^maxLength = 30
* item[Address].linkId = "Address"
* item[Address] ^short = "居住地址"
* item[Address].answer 0..0
* item[Address].item ^slicing.discriminator.type = #value
* item[Address].item ^slicing.discriminator.path = "linkId"
* item[Address].item ^slicing.rules = #closed
* item[Address].item contains
    City 1..1 MS and
    Area 1..1 MS and
    Lane 1..1 MS
* item[Address].item[City].linkId = "Address.City"
* item[Address].item[City] ^short = "縣市"
* item[Address].item[City].item 0..0
* item[Address].item[City].answer 0..1
* item[Address].item[City].answer.value[x] only string
* item[Address].item[City].answer.value[x] 1..1
* item[Address].item[City].answer 1..1
* item[Address].item[City].answer.valueString ^maxLength = 100
* item[Address].item[Area].linkId = "Address.Area"
* item[Address].item[Area] ^short = "鄉鎮市區"
* item[Address].item[Area].item 0..0
* item[Address].item[Area].answer 0..1
* item[Address].item[Area].answer.value[x] only string
* item[Address].item[Area].answer.value[x] 1..1
* item[Address].item[Area].answer 1..1
* item[Address].item[Area].answer.valueString ^maxLength = 100
* item[Address].item[Lane].linkId = "Address.Lane"
* item[Address].item[Lane] ^short = "街路門牌"
* item[Address].item[Lane].item 0..0
* item[Address].item[Lane].answer 0..1
* item[Address].item[Lane].answer.value[x] only string
* item[Address].item[Lane].answer.value[x] 1..1
* item[Address].item[Lane].answer 1..1
* item[Address].item[Lane].answer.valueString ^maxLength = 100
* item[Education].linkId = "Education"
* item[Education] ^short = "教育程度"
* item[Education].answer 0..0
* item[Education].item ^slicing.discriminator.type = #value
* item[Education].item ^slicing.discriminator.path = "linkId"
* item[Education].item ^slicing.rules = #closed
* item[Education].item contains
    Value 1..1 MS and
    Other 0..1 MS
* item[Education].item[Value].linkId = "Education.Value"
* item[Education].item[Value] ^short = "選項"
* item[Education].item[Value].item 0..0
* item[Education].item[Value].answer 0..1
* item[Education].item[Value].answer.value[x] only Coding
* item[Education].item[Value].answer.value[x] 1..1
* item[Education].item[Value].answer 1..1
* item[Education].item[Value].answer.valueCoding from hn-vs-8bcd09f153b7 (required)
* item[Education].item[Other].linkId = "Education.Other"
* item[Education].item[Other] ^short = "補充說明"
* item[Education].item[Other].item 0..0
* item[Education].item[Other].answer 0..1
* item[Education].item[Other].answer.value[x] only string
* item[Education].item[Other].answer.value[x] 1..1
* item[Education].item[Other].answer.valueString ^maxLength = 100
* item[Marriage].linkId = "Marriage"
* item[Marriage] ^short = "婚姻狀況"
* item[Marriage].answer 0..0
* item[Marriage].item ^slicing.discriminator.type = #value
* item[Marriage].item ^slicing.discriminator.path = "linkId"
* item[Marriage].item ^slicing.rules = #closed
* item[Marriage].item contains
    Value 1..1 MS and
    Other 0..1 MS
* item[Marriage].item[Value].linkId = "Marriage.Value"
* item[Marriage].item[Value] ^short = "選項"
* item[Marriage].item[Value].item 0..0
* item[Marriage].item[Value].answer 0..1
* item[Marriage].item[Value].answer.value[x] only Coding
* item[Marriage].item[Value].answer.value[x] 1..1
* item[Marriage].item[Value].answer 1..1
* item[Marriage].item[Value].answer.valueCoding from hn-vs-924b837448d2 (required)
* item[Marriage].item[Other].linkId = "Marriage.Other"
* item[Marriage].item[Other] ^short = "補充說明"
* item[Marriage].item[Other].item 0..0
* item[Marriage].item[Other].answer 0..1
* item[Marriage].item[Other].answer.value[x] only string
* item[Marriage].item[Other].answer.value[x] 1..1
* item[Marriage].item[Other].answer.valueString ^maxLength = 100
* item[Religion].linkId = "Religion"
* item[Religion] ^short = "宗教信仰"
* item[Religion].answer 0..0
* item[Religion].item ^slicing.discriminator.type = #value
* item[Religion].item ^slicing.discriminator.path = "linkId"
* item[Religion].item ^slicing.rules = #closed
* item[Religion].item contains
    Value 1..1 MS and
    Other 0..1 MS
* item[Religion].item[Value].linkId = "Religion.Value"
* item[Religion].item[Value] ^short = "選項"
* item[Religion].item[Value].item 0..0
* item[Religion].item[Value].answer 0..1
* item[Religion].item[Value].answer.value[x] only Coding
* item[Religion].item[Value].answer.value[x] 1..1
* item[Religion].item[Value].answer 1..1
* item[Religion].item[Value].answer.valueCoding from hn-vs-f6130a2de850 (required)
* item[Religion].item[Other].linkId = "Religion.Other"
* item[Religion].item[Other] ^short = "補充說明"
* item[Religion].item[Other].item 0..0
* item[Religion].item[Other].answer 0..1
* item[Religion].item[Other].answer.value[x] only string
* item[Religion].item[Other].answer.value[x] 1..1
* item[Religion].item[Other].answer.valueString ^maxLength = 100
* item[ExJob].linkId = "ExJob"
* item[ExJob] ^short = "主要職業"
* item[ExJob].answer 0..0
* item[ExJob].item ^slicing.discriminator.type = #value
* item[ExJob].item ^slicing.discriminator.path = "linkId"
* item[ExJob].item ^slicing.rules = #closed
* item[ExJob].item contains
    Value 1..1 MS and
    Other 0..1 MS
* item[ExJob].item[Value].linkId = "ExJob.Value"
* item[ExJob].item[Value] ^short = "選項"
* item[ExJob].item[Value].item 0..0
* item[ExJob].item[Value].answer 0..1
* item[ExJob].item[Value].answer.value[x] only Coding
* item[ExJob].item[Value].answer.value[x] 1..1
* item[ExJob].item[Value].answer 1..1
* item[ExJob].item[Value].answer.valueCoding from hn-vs-9bf58092b1d4 (required)
* item[ExJob].item[Other].linkId = "ExJob.Other"
* item[ExJob].item[Other] ^short = "補充說明"
* item[ExJob].item[Other].item 0..0
* item[ExJob].item[Other].answer 0..1
* item[ExJob].item[Other].answer.value[x] only string
* item[ExJob].item[Other].answer.value[x] 1..1
* item[ExJob].item[Other].answer.valueString ^maxLength = 100
* item[Economic].linkId = "Economic"
* item[Economic] ^short = "家庭經濟狀況"
* item[Economic].answer 0..0
* item[Economic].item ^slicing.discriminator.type = #value
* item[Economic].item ^slicing.discriminator.path = "linkId"
* item[Economic].item ^slicing.rules = #closed
* item[Economic].item contains
    Value 1..1 MS and
    Other 0..1 MS
* item[Economic].item[Value].linkId = "Economic.Value"
* item[Economic].item[Value] ^short = "選項"
* item[Economic].item[Value].item 0..0
* item[Economic].item[Value].answer 0..1
* item[Economic].item[Value].answer.value[x] only Coding
* item[Economic].item[Value].answer.value[x] 1..1
* item[Economic].item[Value].answer 1..1
* item[Economic].item[Value].answer.valueCoding from hn-vs-4a8dcdb04d9b (required)
* item[Economic].item[Other].linkId = "Economic.Other"
* item[Economic].item[Other] ^short = "補充說明"
* item[Economic].item[Other].item 0..0
* item[Economic].item[Other].answer 0..1
* item[Economic].item[Other].answer.value[x] only string
* item[Economic].item[Other].answer.value[x] 1..1
* item[Economic].item[Other].answer.valueString ^maxLength = 100
* item[HasWelfare].linkId = "HasWelfare"
* item[HasWelfare] ^short = "是否有福利"
* item[HasWelfare].item 0..0
* item[HasWelfare].answer 0..1
* item[HasWelfare].answer.value[x] only Coding
* item[HasWelfare].answer.value[x] 1..1
* item[HasWelfare].answer 1..1
* item[HasWelfare].answer.valueCoding from hn-vs-49fe20230ec3 (required)
* item[Welfare].linkId = "Welfare"
* item[Welfare] ^short = "福利種類"
* item[Welfare].answer 0..0
* item[Welfare].item ^slicing.discriminator.type = #value
* item[Welfare].item ^slicing.discriminator.path = "linkId"
* item[Welfare].item ^slicing.rules = #closed
* item[Welfare].item contains
    Values 0..1 MS and
    Other 0..1 MS and
    DisabilityType 0..1 MS
* item[Welfare].item[Values].linkId = "Welfare.Values"
* item[Welfare].item[Values] ^short = "選項"
* item[Welfare].item[Values].item 0..0
* item[Welfare].item[Values].answer 0..*
* item[Welfare].item[Values].answer.value[x] only Coding
* item[Welfare].item[Values].answer.value[x] 1..1
* item[Welfare].item[Values].answer.valueCoding from hn-vs-40193bb109d6 (required)
* item[Welfare].item[Other].linkId = "Welfare.Other"
* item[Welfare].item[Other] ^short = "補充說明"
* item[Welfare].item[Other].item 0..0
* item[Welfare].item[Other].answer 0..1
* item[Welfare].item[Other].answer.value[x] only string
* item[Welfare].item[Other].answer.value[x] 1..1
* item[Welfare].item[Other].answer.valueString ^maxLength = 100
* item[Welfare].item[DisabilityType].linkId = "Welfare.DisabilityType"
* item[Welfare].item[DisabilityType] ^short = "身障類別"
* item[Welfare].item[DisabilityType].item 0..0
* item[Welfare].item[DisabilityType].answer 0..1
* item[Welfare].item[DisabilityType].answer.value[x] only Coding
* item[Welfare].item[DisabilityType].answer.value[x] 1..1
* item[Welfare].item[DisabilityType].answer.valueCoding from hn-disability-type (required)
* item[CaregiverID].linkId = "CaregiverID"
* item[CaregiverID] ^short = "主要照顧者關係"
* item[CaregiverID].item 0..0
* item[CaregiverID].answer 0..1
* item[CaregiverID].answer.value[x] only Coding
* item[CaregiverID].answer.value[x] 1..1
* item[CaregiverID].answer 1..1
* item[CaregiverID].answer.valueCoding from hn-vs-738f974cf008 (required)
* item[CaregiverName].linkId = "CaregiverName"
* item[CaregiverName] ^short = "主要照顧者姓名"
* item[CaregiverName].item 0..0
* item[CaregiverName].answer 0..1
* item[CaregiverName].answer.value[x] only string
* item[CaregiverName].answer.value[x] 1..1
* item[CaregiverName].answer 1..1
* item[CaregiverName].answer.valueString ^maxLength = 50
* item[CaregiverAddress].linkId = "CaregiverAddress"
* item[CaregiverAddress] ^short = "主要照顧者地址"
* item[CaregiverAddress].answer 0..0
* item[CaregiverAddress].item ^slicing.discriminator.type = #value
* item[CaregiverAddress].item ^slicing.discriminator.path = "linkId"
* item[CaregiverAddress].item ^slicing.rules = #closed
* item[CaregiverAddress].item contains
    City 1..1 MS and
    Area 1..1 MS and
    Lane 1..1 MS
* item[CaregiverAddress].item[City].linkId = "CaregiverAddress.City"
* item[CaregiverAddress].item[City] ^short = "縣市"
* item[CaregiverAddress].item[City].item 0..0
* item[CaregiverAddress].item[City].answer 0..1
* item[CaregiverAddress].item[City].answer.value[x] only string
* item[CaregiverAddress].item[City].answer.value[x] 1..1
* item[CaregiverAddress].item[City].answer 1..1
* item[CaregiverAddress].item[City].answer.valueString ^maxLength = 100
* item[CaregiverAddress].item[Area].linkId = "CaregiverAddress.Area"
* item[CaregiverAddress].item[Area] ^short = "鄉鎮市區"
* item[CaregiverAddress].item[Area].item 0..0
* item[CaregiverAddress].item[Area].answer 0..1
* item[CaregiverAddress].item[Area].answer.value[x] only string
* item[CaregiverAddress].item[Area].answer.value[x] 1..1
* item[CaregiverAddress].item[Area].answer 1..1
* item[CaregiverAddress].item[Area].answer.valueString ^maxLength = 100
* item[CaregiverAddress].item[Lane].linkId = "CaregiverAddress.Lane"
* item[CaregiverAddress].item[Lane] ^short = "街路門牌"
* item[CaregiverAddress].item[Lane].item 0..0
* item[CaregiverAddress].item[Lane].answer 0..1
* item[CaregiverAddress].item[Lane].answer.value[x] only string
* item[CaregiverAddress].item[Lane].answer.value[x] 1..1
* item[CaregiverAddress].item[Lane].answer 1..1
* item[CaregiverAddress].item[Lane].answer.valueString ^maxLength = 100
* item[CaregiverTel].linkId = "CaregiverTel"
* item[CaregiverTel] ^short = "主要照顧者電話"
* item[CaregiverTel].item 0..0
* item[CaregiverTel].answer 0..1
* item[CaregiverTel].answer.value[x] only string
* item[CaregiverTel].answer.value[x] 1..1
* item[CaregiverTel].answer 1..1
* item[CaregiverTel].answer.valueString ^maxLength = 20
* item[EgyContactRelation].linkId = "EgyContactRelation"
* item[EgyContactRelation] ^short = "緊急聯絡人關係"
* item[EgyContactRelation].item 0..0
* item[EgyContactRelation].answer 0..1
* item[EgyContactRelation].answer.value[x] only Coding
* item[EgyContactRelation].answer.value[x] 1..1
* item[EgyContactRelation].answer 1..1
* item[EgyContactRelation].answer.valueCoding from hn-vs-2029890a4c12 (required)
* item[EgyContactName].linkId = "EgyContactName"
* item[EgyContactName] ^short = "緊急聯絡人姓名"
* item[EgyContactName].item 0..0
* item[EgyContactName].answer 0..1
* item[EgyContactName].answer.value[x] only string
* item[EgyContactName].answer.value[x] 1..1
* item[EgyContactName].answer 1..1
* item[EgyContactName].answer.valueString ^maxLength = 50
* item[EgyContactTel1].linkId = "EgyContactTel1"
* item[EgyContactTel1] ^short = "緊急聯絡電話一"
* item[EgyContactTel1].item 0..0
* item[EgyContactTel1].answer 0..1
* item[EgyContactTel1].answer.value[x] only string
* item[EgyContactTel1].answer.value[x] 1..1
* item[EgyContactTel1].answer 1..1
* item[EgyContactTel1].answer.valueString ^maxLength = 30
* item[EgyContactTel2].linkId = "EgyContactTel2"
* item[EgyContactTel2] ^short = "緊急聯絡電話二"
* item[EgyContactTel2].item 0..0
* item[EgyContactTel2].answer 0..1
* item[EgyContactTel2].answer.value[x] only string
* item[EgyContactTel2].answer.value[x] 1..1
* item[EgyContactTel2].answer.valueString ^maxLength = 30
* item[NurseID].linkId = "NurseID"
* item[NurseID] ^short = "主責護理人員身分證字號"
* item[NurseID].item 0..0
* item[NurseID].answer 0..1
* item[NurseID].answer.value[x] only string
* item[NurseID].answer.value[x] 1..1
* item[NurseID].answer 1..1
* item[NurseID].answer.valueString ^maxLength = 10
* item[DecisionMakerRelation].linkId = "DecisionMakerRelation"
* item[DecisionMakerRelation] ^short = "主要醫療決定者關係"
* item[DecisionMakerRelation].answer 0..0
* item[DecisionMakerRelation].item ^slicing.discriminator.type = #value
* item[DecisionMakerRelation].item ^slicing.discriminator.path = "linkId"
* item[DecisionMakerRelation].item ^slicing.rules = #closed
* item[DecisionMakerRelation].item contains
    Value 1..1 MS and
    Other 0..1 MS
* item[DecisionMakerRelation].item[Value].linkId = "DecisionMakerRelation.Value"
* item[DecisionMakerRelation].item[Value] ^short = "選項"
* item[DecisionMakerRelation].item[Value].item 0..0
* item[DecisionMakerRelation].item[Value].answer 0..1
* item[DecisionMakerRelation].item[Value].answer.value[x] only Coding
* item[DecisionMakerRelation].item[Value].answer.value[x] 1..1
* item[DecisionMakerRelation].item[Value].answer 1..1
* item[DecisionMakerRelation].item[Value].answer.valueCoding from hn-vs-b63e1293c409 (required)
* item[DecisionMakerRelation].item[Other].linkId = "DecisionMakerRelation.Other"
* item[DecisionMakerRelation].item[Other] ^short = "補充說明"
* item[DecisionMakerRelation].item[Other].item 0..0
* item[DecisionMakerRelation].item[Other].answer 0..1
* item[DecisionMakerRelation].item[Other].answer.value[x] only string
* item[DecisionMakerRelation].item[Other].answer.value[x] 1..1
* item[DecisionMakerRelation].item[Other].answer.valueString ^maxLength = 100
* item[MEvent].linkId = "MEvent"
* item[MEvent] ^short = "一年內是否發生重大事件"
* item[MEvent].item 0..0
* item[MEvent].answer 0..1
* item[MEvent].answer.value[x] only Coding
* item[MEvent].answer.value[x] 1..1
* item[MEvent].answer 1..1
* item[MEvent].answer.valueCoding from hn-vs-49fe20230ec3 (required)
* item[MEventItem].linkId = "MEventItem"
* item[MEventItem] ^short = "重大事件項目"
* item[MEventItem].answer 0..0
* item[MEventItem].item ^slicing.discriminator.type = #value
* item[MEventItem].item ^slicing.discriminator.path = "linkId"
* item[MEventItem].item ^slicing.rules = #closed
* item[MEventItem].item contains
    Values 0..1 MS and
    Other 0..1 MS
* item[MEventItem].item[Values].linkId = "MEventItem.Values"
* item[MEventItem].item[Values] ^short = "選項"
* item[MEventItem].item[Values].item 0..0
* item[MEventItem].item[Values].answer 0..*
* item[MEventItem].item[Values].answer.value[x] only Coding
* item[MEventItem].item[Values].answer.value[x] 1..1
* item[MEventItem].item[Values].answer.valueCoding from hn-vs-fe3736bbd09e (required)
* item[MEventItem].item[Other].linkId = "MEventItem.Other"
* item[MEventItem].item[Other] ^short = "補充說明"
* item[MEventItem].item[Other].item 0..0
* item[MEventItem].item[Other].answer 0..1
* item[MEventItem].item[Other].answer.value[x] only string
* item[MEventItem].item[Other].answer.value[x] 1..1
* item[MEventItem].item[Other].answer.valueString ^maxLength = 100
* item[CaseDesc].linkId = "CaseDesc"
* item[CaseDesc] ^short = "個案描述"
* item[CaseDesc].item 0..0
* item[CaseDesc].answer 0..1
* item[CaseDesc].answer.value[x] only string
* item[CaseDesc].answer.value[x] 1..1
* item[CaseDesc].answer.valueString ^maxLength = 1000
* item[CreateID].linkId = "CreateID"
* item[CreateID] ^short = "建立機構代碼"
* item[CreateID].item 0..0
* item[CreateID].answer 0..1
* item[CreateID].answer.value[x] only string
* item[CreateID].answer.value[x] 1..1
* item[CreateID].answer 1..1
* item[CreateID].answer.valueString ^maxLength = 10
* item[Medicals].linkId = "Medicals"
* item[Medicals] ^short = "共照醫事人員"
* item[Medicals].answer 0..0
* item[Medicals].item ^slicing.discriminator.type = #value
* item[Medicals].item ^slicing.discriminator.path = "linkId"
* item[Medicals].item ^slicing.rules = #closed
* item[Medicals].item contains
    Name 1..1 MS and
    CareDate 0..1 MS and
    IdNo 0..1 MS and
    JobTitle 1..1 MS and
    Tel 1..1 MS and
    CareRemark 0..1 MS
* item[Medicals].item[Name].linkId = "Medicals.Name"
* item[Medicals].item[Name] ^short = "成員姓名"
* item[Medicals].item[Name].item 0..0
* item[Medicals].item[Name].answer 0..1
* item[Medicals].item[Name].answer.value[x] only string
* item[Medicals].item[Name].answer.value[x] 1..1
* item[Medicals].item[Name].answer 1..1
* item[Medicals].item[Name].answer.valueString ^maxLength = 50
* item[Medicals].item[CareDate].linkId = "Medicals.CareDate"
* item[Medicals].item[CareDate] ^short = "加入日期"
* item[Medicals].item[CareDate].item 0..0
* item[Medicals].item[CareDate].answer 0..1
* item[Medicals].item[CareDate].answer.value[x] only date
* item[Medicals].item[CareDate].answer.value[x] 1..1
* item[Medicals].item[IdNo].linkId = "Medicals.IdNo"
* item[Medicals].item[IdNo] ^short = "成員身分證字號"
* item[Medicals].item[IdNo].item 0..0
* item[Medicals].item[IdNo].answer 0..1
* item[Medicals].item[IdNo].answer.value[x] only string
* item[Medicals].item[IdNo].answer.value[x] 1..1
* item[Medicals].item[IdNo].answer.valueString ^maxLength = 10
* item[Medicals].item[JobTitle].linkId = "Medicals.JobTitle"
* item[Medicals].item[JobTitle] ^short = "成員職稱"
* item[Medicals].item[JobTitle].answer 0..0
* item[Medicals].item[JobTitle].item ^slicing.discriminator.type = #value
* item[Medicals].item[JobTitle].item ^slicing.discriminator.path = "linkId"
* item[Medicals].item[JobTitle].item ^slicing.rules = #closed
* item[Medicals].item[JobTitle].item contains
    Value 1..1 MS and
    Other 0..1 MS
* item[Medicals].item[JobTitle].item[Value].linkId = "Medicals.JobTitle.Value"
* item[Medicals].item[JobTitle].item[Value] ^short = "選項"
* item[Medicals].item[JobTitle].item[Value].item 0..0
* item[Medicals].item[JobTitle].item[Value].answer 0..1
* item[Medicals].item[JobTitle].item[Value].answer.value[x] only Coding
* item[Medicals].item[JobTitle].item[Value].answer.value[x] 1..1
* item[Medicals].item[JobTitle].item[Value].answer 1..1
* item[Medicals].item[JobTitle].item[Value].answer.valueCoding from hn-vs-94d2d2fdf018 (required)
* item[Medicals].item[JobTitle].item[Other].linkId = "Medicals.JobTitle.Other"
* item[Medicals].item[JobTitle].item[Other] ^short = "補充說明"
* item[Medicals].item[JobTitle].item[Other].item 0..0
* item[Medicals].item[JobTitle].item[Other].answer 0..1
* item[Medicals].item[JobTitle].item[Other].answer.value[x] only string
* item[Medicals].item[JobTitle].item[Other].answer.value[x] 1..1
* item[Medicals].item[JobTitle].item[Other].answer.valueString ^maxLength = 100
* item[Medicals].item[Tel].linkId = "Medicals.Tel"
* item[Medicals].item[Tel] ^short = "電話"
* item[Medicals].item[Tel].item 0..0
* item[Medicals].item[Tel].answer 0..1
* item[Medicals].item[Tel].answer.value[x] only string
* item[Medicals].item[Tel].answer.value[x] 1..1
* item[Medicals].item[Tel].answer 1..1
* item[Medicals].item[Tel].answer.valueString ^maxLength = 30
* item[Medicals].item[CareRemark].linkId = "Medicals.CareRemark"
* item[Medicals].item[CareRemark] ^short = "照護備註"
* item[Medicals].item[CareRemark].item 0..0
* item[Medicals].item[CareRemark].answer 0..1
* item[Medicals].item[CareRemark].answer.value[x] only string
* item[Medicals].item[CareRemark].answer.value[x] 1..1
* item[Medicals].item[CareRemark].answer.valueString ^maxLength = 1000
* item[Relatives].linkId = "Relatives"
* item[Relatives] ^short = "共照親友"
* item[Relatives].answer 0..0
* item[Relatives].item ^slicing.discriminator.type = #value
* item[Relatives].item ^slicing.discriminator.path = "linkId"
* item[Relatives].item ^slicing.rules = #closed
* item[Relatives].item contains
    Name 1..1 MS and
    Relationship 1..1 MS and
    CareTime 1..1 MS and
    Tel1 1..1 MS and
    Tel2 0..1 MS and
    Tel3 0..1 MS and
    CareRemark 0..1 MS
* item[Relatives].item[Name].linkId = "Relatives.Name"
* item[Relatives].item[Name] ^short = "成員姓名"
* item[Relatives].item[Name].item 0..0
* item[Relatives].item[Name].answer 0..1
* item[Relatives].item[Name].answer.value[x] only string
* item[Relatives].item[Name].answer.value[x] 1..1
* item[Relatives].item[Name].answer 1..1
* item[Relatives].item[Name].answer.valueString ^maxLength = 50
* item[Relatives].item[Relationship].linkId = "Relatives.Relationship"
* item[Relatives].item[Relationship] ^short = "關係"
* item[Relatives].item[Relationship].answer 0..0
* item[Relatives].item[Relationship].item ^slicing.discriminator.type = #value
* item[Relatives].item[Relationship].item ^slicing.discriminator.path = "linkId"
* item[Relatives].item[Relationship].item ^slicing.rules = #closed
* item[Relatives].item[Relationship].item contains
    Value 1..1 MS and
    Other 0..1 MS
* item[Relatives].item[Relationship].item[Value].linkId = "Relatives.Relationship.Value"
* item[Relatives].item[Relationship].item[Value] ^short = "選項"
* item[Relatives].item[Relationship].item[Value].item 0..0
* item[Relatives].item[Relationship].item[Value].answer 0..1
* item[Relatives].item[Relationship].item[Value].answer.value[x] only Coding
* item[Relatives].item[Relationship].item[Value].answer.value[x] 1..1
* item[Relatives].item[Relationship].item[Value].answer 1..1
* item[Relatives].item[Relationship].item[Value].answer.valueCoding from hn-vs-9570830f5a60 (required)
* item[Relatives].item[Relationship].item[Other].linkId = "Relatives.Relationship.Other"
* item[Relatives].item[Relationship].item[Other] ^short = "補充說明"
* item[Relatives].item[Relationship].item[Other].item 0..0
* item[Relatives].item[Relationship].item[Other].answer 0..1
* item[Relatives].item[Relationship].item[Other].answer.value[x] only string
* item[Relatives].item[Relationship].item[Other].answer.value[x] 1..1
* item[Relatives].item[Relationship].item[Other].answer.valueString ^maxLength = 100
* item[Relatives].item[CareTime].linkId = "Relatives.CareTime"
* item[Relatives].item[CareTime] ^short = "主要照顧時間"
* item[Relatives].item[CareTime].answer 0..0
* item[Relatives].item[CareTime].item ^slicing.discriminator.type = #value
* item[Relatives].item[CareTime].item ^slicing.discriminator.path = "linkId"
* item[Relatives].item[CareTime].item ^slicing.rules = #closed
* item[Relatives].item[CareTime].item contains
    Value 1..1 MS and
    Other 0..1 MS
* item[Relatives].item[CareTime].item[Value].linkId = "Relatives.CareTime.Value"
* item[Relatives].item[CareTime].item[Value] ^short = "選項"
* item[Relatives].item[CareTime].item[Value].item 0..0
* item[Relatives].item[CareTime].item[Value].answer 0..1
* item[Relatives].item[CareTime].item[Value].answer.value[x] only Coding
* item[Relatives].item[CareTime].item[Value].answer.value[x] 1..1
* item[Relatives].item[CareTime].item[Value].answer 1..1
* item[Relatives].item[CareTime].item[Value].answer.valueCoding from hn-vs-a946985c2125 (required)
* item[Relatives].item[CareTime].item[Other].linkId = "Relatives.CareTime.Other"
* item[Relatives].item[CareTime].item[Other] ^short = "補充說明"
* item[Relatives].item[CareTime].item[Other].item 0..0
* item[Relatives].item[CareTime].item[Other].answer 0..1
* item[Relatives].item[CareTime].item[Other].answer.value[x] only string
* item[Relatives].item[CareTime].item[Other].answer.value[x] 1..1
* item[Relatives].item[CareTime].item[Other].answer.valueString ^maxLength = 100
* item[Relatives].item[Tel1].linkId = "Relatives.Tel1"
* item[Relatives].item[Tel1] ^short = "電話1"
* item[Relatives].item[Tel1].answer 0..0
* item[Relatives].item[Tel1].item ^slicing.discriminator.type = #value
* item[Relatives].item[Tel1].item ^slicing.discriminator.path = "linkId"
* item[Relatives].item[Tel1].item ^slicing.rules = #closed
* item[Relatives].item[Tel1].item contains
    Value 1..1 MS and
    Remark 0..1 MS
* item[Relatives].item[Tel1].item[Value].linkId = "Relatives.Tel1.Value"
* item[Relatives].item[Tel1].item[Value] ^short = "電話號碼"
* item[Relatives].item[Tel1].item[Value].item 0..0
* item[Relatives].item[Tel1].item[Value].answer 0..1
* item[Relatives].item[Tel1].item[Value].answer.value[x] only string
* item[Relatives].item[Tel1].item[Value].answer.value[x] 1..1
* item[Relatives].item[Tel1].item[Value].answer 1..1
* item[Relatives].item[Tel1].item[Value].answer.valueString ^maxLength = 30
* item[Relatives].item[Tel1].item[Remark].linkId = "Relatives.Tel1.Remark"
* item[Relatives].item[Tel1].item[Remark] ^short = "聯絡時間與說明"
* item[Relatives].item[Tel1].item[Remark].item 0..0
* item[Relatives].item[Tel1].item[Remark].answer 0..1
* item[Relatives].item[Tel1].item[Remark].answer.value[x] only string
* item[Relatives].item[Tel1].item[Remark].answer.value[x] 1..1
* item[Relatives].item[Tel1].item[Remark].answer.valueString ^maxLength = 100
* item[Relatives].item[Tel2].linkId = "Relatives.Tel2"
* item[Relatives].item[Tel2] ^short = "電話2"
* item[Relatives].item[Tel2].answer 0..0
* item[Relatives].item[Tel2].item ^slicing.discriminator.type = #value
* item[Relatives].item[Tel2].item ^slicing.discriminator.path = "linkId"
* item[Relatives].item[Tel2].item ^slicing.rules = #closed
* item[Relatives].item[Tel2].item contains
    Value 1..1 MS and
    Remark 0..1 MS
* item[Relatives].item[Tel2].item[Value].linkId = "Relatives.Tel2.Value"
* item[Relatives].item[Tel2].item[Value] ^short = "電話號碼"
* item[Relatives].item[Tel2].item[Value].item 0..0
* item[Relatives].item[Tel2].item[Value].answer 0..1
* item[Relatives].item[Tel2].item[Value].answer.value[x] only string
* item[Relatives].item[Tel2].item[Value].answer.value[x] 1..1
* item[Relatives].item[Tel2].item[Value].answer 1..1
* item[Relatives].item[Tel2].item[Value].answer.valueString ^maxLength = 30
* item[Relatives].item[Tel2].item[Remark].linkId = "Relatives.Tel2.Remark"
* item[Relatives].item[Tel2].item[Remark] ^short = "聯絡時間與說明"
* item[Relatives].item[Tel2].item[Remark].item 0..0
* item[Relatives].item[Tel2].item[Remark].answer 0..1
* item[Relatives].item[Tel2].item[Remark].answer.value[x] only string
* item[Relatives].item[Tel2].item[Remark].answer.value[x] 1..1
* item[Relatives].item[Tel2].item[Remark].answer.valueString ^maxLength = 100
* item[Relatives].item[Tel3].linkId = "Relatives.Tel3"
* item[Relatives].item[Tel3] ^short = "電話3"
* item[Relatives].item[Tel3].answer 0..0
* item[Relatives].item[Tel3].item ^slicing.discriminator.type = #value
* item[Relatives].item[Tel3].item ^slicing.discriminator.path = "linkId"
* item[Relatives].item[Tel3].item ^slicing.rules = #closed
* item[Relatives].item[Tel3].item contains
    Value 1..1 MS and
    Remark 0..1 MS
* item[Relatives].item[Tel3].item[Value].linkId = "Relatives.Tel3.Value"
* item[Relatives].item[Tel3].item[Value] ^short = "電話號碼"
* item[Relatives].item[Tel3].item[Value].item 0..0
* item[Relatives].item[Tel3].item[Value].answer 0..1
* item[Relatives].item[Tel3].item[Value].answer.value[x] only string
* item[Relatives].item[Tel3].item[Value].answer.value[x] 1..1
* item[Relatives].item[Tel3].item[Value].answer 1..1
* item[Relatives].item[Tel3].item[Value].answer.valueString ^maxLength = 30
* item[Relatives].item[Tel3].item[Remark].linkId = "Relatives.Tel3.Remark"
* item[Relatives].item[Tel3].item[Remark] ^short = "聯絡時間與說明"
* item[Relatives].item[Tel3].item[Remark].item 0..0
* item[Relatives].item[Tel3].item[Remark].answer 0..1
* item[Relatives].item[Tel3].item[Remark].answer.value[x] only string
* item[Relatives].item[Tel3].item[Remark].answer.value[x] 1..1
* item[Relatives].item[Tel3].item[Remark].answer.valueString ^maxLength = 100
* item[Relatives].item[CareRemark].linkId = "Relatives.CareRemark"
* item[Relatives].item[CareRemark] ^short = "照護備註"
* item[Relatives].item[CareRemark].item 0..0
* item[Relatives].item[CareRemark].answer 0..1
* item[Relatives].item[CareRemark].answer.value[x] only string
* item[Relatives].item[CareRemark].answer.value[x] 1..1
* item[Relatives].item[CareRemark].answer.valueString ^maxLength = 1000
* obeys hn-basedata-1
* obeys hn-basedata-2
* obeys hn-basedata-3
* obeys hn-basedata-4
* obeys hn-basedata-5
* obeys hn-basedata-6
* obeys hn-basedata-7
* obeys hn-basedata-8
* obeys hn-basedata-9
* obeys hn-basedata-10
* obeys hn-basedata-11
* obeys hn-basedata-12
* obeys hn-basedata-13
* obeys hn-basedata-14

Invariant: hn-basedata-1
Description: "收案來源選擇其他時應填寫補充說明。"
Severity: #error
Expression: "item.where(linkId='CaseSource').all((item.where(linkId='CaseSource.Value').answer.value.ofType(Coding).where(code='cd2909f1647e7').exists()) implies item.where(linkId='CaseSource.Other').answer.value.exists())"

Invariant: hn-basedata-2
Description: "性別選擇其他時應填寫補充說明。"
Severity: #error
Expression: "item.where(linkId='Sex').all((item.where(linkId='Sex.Value').answer.value.ofType(Coding).where(code='cd2909f1647e7').exists()) implies item.where(linkId='Sex.Other').answer.value.exists())"

Invariant: hn-basedata-3
Description: "教育程度選擇其他時應填寫補充說明。"
Severity: #error
Expression: "item.where(linkId='Education').all((item.where(linkId='Education.Value').answer.value.ofType(Coding).where(code='cd2909f1647e7').exists()) implies item.where(linkId='Education.Other').answer.value.exists())"

Invariant: hn-basedata-4
Description: "婚姻狀況選擇其他時應填寫補充說明。"
Severity: #error
Expression: "item.where(linkId='Marriage').all((item.where(linkId='Marriage.Value').answer.value.ofType(Coding).where(code='cd2909f1647e7').exists()) implies item.where(linkId='Marriage.Other').answer.value.exists())"

Invariant: hn-basedata-5
Description: "宗教信仰選擇其他時應填寫補充說明。"
Severity: #error
Expression: "item.where(linkId='Religion').all((item.where(linkId='Religion.Value').answer.value.ofType(Coding).where(code='cd2909f1647e7').exists()) implies item.where(linkId='Religion.Other').answer.value.exists())"

Invariant: hn-basedata-6
Description: "主要職業選擇其他時應填寫補充說明。"
Severity: #error
Expression: "item.where(linkId='ExJob').all((item.where(linkId='ExJob.Value').answer.value.ofType(Coding).where(code='cd2909f1647e7').exists()) implies item.where(linkId='ExJob.Other').answer.value.exists())"

Invariant: hn-basedata-7
Description: "家庭經濟狀況選擇其他時應填寫補充說明。"
Severity: #error
Expression: "item.where(linkId='Economic').all((item.where(linkId='Economic.Value').answer.value.ofType(Coding).where(code='cd2909f1647e7').exists()) implies item.where(linkId='Economic.Other').answer.value.exists())"

Invariant: hn-basedata-8
Description: "主要醫療決定者關係選擇其他時應填寫補充說明。"
Severity: #error
Expression: "item.where(linkId='DecisionMakerRelation').all((item.where(linkId='DecisionMakerRelation.Value').answer.value.ofType(Coding).where(code='cd2909f1647e7').exists()) implies item.where(linkId='DecisionMakerRelation.Other').answer.value.exists())"

Invariant: hn-basedata-9
Description: "成員職稱選擇其他時應填寫補充說明。"
Severity: #error
Expression: "item.where(linkId='Medicals').item.where(linkId='Medicals.JobTitle').all((item.where(linkId='Medicals.JobTitle.Value').answer.value.ofType(Coding).where(code='cd2909f1647e7').exists()) implies item.where(linkId='Medicals.JobTitle.Other').answer.value.exists())"

Invariant: hn-basedata-10
Description: "關係選擇其他時應填寫補充說明。"
Severity: #error
Expression: "item.where(linkId='Relatives').item.where(linkId='Relatives.Relationship').all((item.where(linkId='Relatives.Relationship.Value').answer.value.ofType(Coding).where(code='cd2909f1647e7').exists()) implies item.where(linkId='Relatives.Relationship.Other').answer.value.exists())"

Invariant: hn-basedata-11
Description: "主要照顧時間選擇其他時應填寫補充說明。"
Severity: #error
Expression: "item.where(linkId='Relatives').item.where(linkId='Relatives.CareTime').all((item.where(linkId='Relatives.CareTime.Value').answer.value.ofType(Coding).where(code='cd2909f1647e7').exists()) implies item.where(linkId='Relatives.CareTime.Other').answer.value.exists())"

Invariant: hn-basedata-12
Description: "有重大事件時應填寫重大事件項目。"
Severity: #error
Expression: "item.where(linkId='MEvent').answer.value.ofType(Coding).where(code='c90ce0f66f094').exists() implies item.where(linkId='MEventItem').item.where(linkId='MEventItem.Values').answer.value.exists()"

Invariant: hn-basedata-13
Description: "主要醫療決定者為子女、機構人員或其他時應填姓名。"
Severity: #error
Expression: "(item.where(linkId='DecisionMakerRelation').item.where(linkId='DecisionMakerRelation.Value').answer.value.ofType(Coding).where(code='c26468c0e3eeb').exists() or item.where(linkId='DecisionMakerRelation').item.where(linkId='DecisionMakerRelation.Value').answer.value.ofType(Coding).where(code='c82d38deda8e1').exists() or item.where(linkId='DecisionMakerRelation').item.where(linkId='DecisionMakerRelation.Value').answer.value.ofType(Coding).where(code='cd2909f1647e7').exists()) implies item.where(linkId='DecisionMakerRelation').item.where(linkId='DecisionMakerRelation.Other').answer.value.exists()"

Invariant: hn-basedata-14
Description: "福利包含身障證明時應填寫身障類別。"
Severity: #error
Expression: "item.where(linkId='Welfare').item.where(linkId='Welfare.Values').answer.value.ofType(Coding).where(code='c515da942c2af').exists() implies item.where(linkId='Welfare').item.where(linkId='Welfare.DisabilityType').answer.value.exists()"
