Profile: HNHealthyHabitsResponse
Parent: LTCQuestionnaireResponse
Id: HNHealthyHabitsResponse
Title: "居家護理－健康紀錄評估表單"
Description: "記錄健康紀錄評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。"
* ^status = #draft
* ^version = "5.0.16"
* questionnaire 1..1 MS
* questionnaire = "http://ltc-ig.fhir.tw/Questionnaire/hn-healthyhabits"
* status 1..1 MS
* authored 1..1 MS
* subject 1..1 MS
* extension contains ExtHNEpisode named episode 1..1 MS
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #closed
* item contains
    Date 1..1 MS and
    NurseID 1..1 MS and
    IsSmoking 1..1 MS and
    IsAlcohol 1..1 MS and
    IsBetelNut 1..1 MS and
    QuitSmoking 0..1 MS and
    BeforeSmoking 0..1 MS and
    SmokingYear 0..1 MS and
    QuitAlcohol 0..1 MS and
    BeforequitAlcohol 0..1 MS and
    AlcoholYear 0..1 MS and
    QuitBetelNut 0..1 MS and
    BeforequitBetelNut 0..1 MS and
    BetelNutYear 0..1 MS and
    IsAllergy 1..1 MS and
    Allergy_Desc 0..1 MS and
    IsAllergyDrug 1..1 MS and
    AllergyDrug_Desc 0..1 MS and
    Vaccination 1..1 MS and
    IsTemporary 0..1 MS
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
* item[IsSmoking].linkId = "IsSmoking"
* item[IsSmoking] ^short = "吸菸狀態"
* item[IsSmoking].item 0..0
* item[IsSmoking].answer 0..1
* item[IsSmoking].answer.value[x] only Coding
* item[IsSmoking].answer.value[x] 1..1
* item[IsSmoking].answer 1..1
* item[IsSmoking].answer.valueCoding from hn-vs-85c814c9b8ba (required)
* item[IsAlcohol].linkId = "IsAlcohol"
* item[IsAlcohol] ^short = "飲酒狀態"
* item[IsAlcohol].item 0..0
* item[IsAlcohol].answer 0..1
* item[IsAlcohol].answer.value[x] only Coding
* item[IsAlcohol].answer.value[x] 1..1
* item[IsAlcohol].answer 1..1
* item[IsAlcohol].answer.valueCoding from hn-vs-5f96e05811ec (required)
* item[IsBetelNut].linkId = "IsBetelNut"
* item[IsBetelNut] ^short = "嚼食檳榔狀態"
* item[IsBetelNut].item 0..0
* item[IsBetelNut].answer 0..1
* item[IsBetelNut].answer.value[x] only Coding
* item[IsBetelNut].answer.value[x] 1..1
* item[IsBetelNut].answer 1..1
* item[IsBetelNut].answer.valueCoding from hn-vs-a5f17d46becb (required)
* item[QuitSmoking].linkId = "QuitSmoking"
* item[QuitSmoking] ^short = "戒菸年數"
* item[QuitSmoking].item 0..0
* item[QuitSmoking].answer 0..1
* item[QuitSmoking].answer.value[x] only decimal
* item[QuitSmoking].answer.value[x] 1..1
* item[QuitSmoking].answer.valueDecimal ^minValueDecimal = 0
* item[BeforeSmoking].linkId = "BeforeSmoking"
* item[BeforeSmoking] ^short = "戒菸前吸菸年數"
* item[BeforeSmoking].item 0..0
* item[BeforeSmoking].answer 0..1
* item[BeforeSmoking].answer.value[x] only decimal
* item[BeforeSmoking].answer.value[x] 1..1
* item[BeforeSmoking].answer.valueDecimal ^minValueDecimal = 0
* item[SmokingYear].linkId = "SmokingYear"
* item[SmokingYear] ^short = "吸菸年數"
* item[SmokingYear].item 0..0
* item[SmokingYear].answer 0..1
* item[SmokingYear].answer.value[x] only decimal
* item[SmokingYear].answer.value[x] 1..1
* item[SmokingYear].answer.valueDecimal ^minValueDecimal = 0
* item[QuitAlcohol].linkId = "QuitAlcohol"
* item[QuitAlcohol] ^short = "戒酒年數"
* item[QuitAlcohol].item 0..0
* item[QuitAlcohol].answer 0..1
* item[QuitAlcohol].answer.value[x] only decimal
* item[QuitAlcohol].answer.value[x] 1..1
* item[QuitAlcohol].answer.valueDecimal ^minValueDecimal = 0
* item[BeforequitAlcohol].linkId = "BeforequitAlcohol"
* item[BeforequitAlcohol] ^short = "戒酒前飲酒年數"
* item[BeforequitAlcohol].item 0..0
* item[BeforequitAlcohol].answer 0..1
* item[BeforequitAlcohol].answer.value[x] only decimal
* item[BeforequitAlcohol].answer.value[x] 1..1
* item[BeforequitAlcohol].answer.valueDecimal ^minValueDecimal = 0
* item[AlcoholYear].linkId = "AlcoholYear"
* item[AlcoholYear] ^short = "飲酒年數"
* item[AlcoholYear].item 0..0
* item[AlcoholYear].answer 0..1
* item[AlcoholYear].answer.value[x] only decimal
* item[AlcoholYear].answer.value[x] 1..1
* item[AlcoholYear].answer.valueDecimal ^minValueDecimal = 0
* item[QuitBetelNut].linkId = "QuitBetelNut"
* item[QuitBetelNut] ^short = "戒檳榔年數"
* item[QuitBetelNut].item 0..0
* item[QuitBetelNut].answer 0..1
* item[QuitBetelNut].answer.value[x] only decimal
* item[QuitBetelNut].answer.value[x] 1..1
* item[QuitBetelNut].answer.valueDecimal ^minValueDecimal = 0
* item[BeforequitBetelNut].linkId = "BeforequitBetelNut"
* item[BeforequitBetelNut] ^short = "戒除前嚼食檳榔年數"
* item[BeforequitBetelNut].item 0..0
* item[BeforequitBetelNut].answer 0..1
* item[BeforequitBetelNut].answer.value[x] only decimal
* item[BeforequitBetelNut].answer.value[x] 1..1
* item[BeforequitBetelNut].answer.valueDecimal ^minValueDecimal = 0
* item[BetelNutYear].linkId = "BetelNutYear"
* item[BetelNutYear] ^short = "嚼食檳榔年數"
* item[BetelNutYear].item 0..0
* item[BetelNutYear].answer 0..1
* item[BetelNutYear].answer.value[x] only decimal
* item[BetelNutYear].answer.value[x] 1..1
* item[BetelNutYear].answer.valueDecimal ^minValueDecimal = 0
* item[IsAllergy].linkId = "IsAllergy"
* item[IsAllergy] ^short = "食物過敏"
* item[IsAllergy].item 0..0
* item[IsAllergy].answer 0..1
* item[IsAllergy].answer.value[x] only Coding
* item[IsAllergy].answer.value[x] 1..1
* item[IsAllergy].answer 1..1
* item[IsAllergy].answer.valueCoding from hn-vs-19264db8df7b (required)
* item[Allergy_Desc].linkId = "Allergy_Desc"
* item[Allergy_Desc] ^short = "食物過敏說明"
* item[Allergy_Desc].item 0..0
* item[Allergy_Desc].answer 0..1
* item[Allergy_Desc].answer.value[x] only string
* item[Allergy_Desc].answer.value[x] 1..1
* item[Allergy_Desc].answer.valueString ^maxLength = 500
* item[IsAllergyDrug].linkId = "IsAllergyDrug"
* item[IsAllergyDrug] ^short = "藥物過敏"
* item[IsAllergyDrug].item 0..0
* item[IsAllergyDrug].answer 0..1
* item[IsAllergyDrug].answer.value[x] only Coding
* item[IsAllergyDrug].answer.value[x] 1..1
* item[IsAllergyDrug].answer 1..1
* item[IsAllergyDrug].answer.valueCoding from hn-vs-19264db8df7b (required)
* item[AllergyDrug_Desc].linkId = "AllergyDrug_Desc"
* item[AllergyDrug_Desc] ^short = "藥物過敏說明"
* item[AllergyDrug_Desc].item 0..0
* item[AllergyDrug_Desc].answer 0..1
* item[AllergyDrug_Desc].answer.value[x] only string
* item[AllergyDrug_Desc].answer.value[x] 1..1
* item[AllergyDrug_Desc].answer.valueString ^maxLength = 500
* item[Vaccination].linkId = "Vaccination"
* item[Vaccination] ^short = "疫苗紀錄"
* item[Vaccination].answer 0..0
* item[Vaccination].item ^slicing.discriminator.type = #value
* item[Vaccination].item ^slicing.discriminator.path = "linkId"
* item[Vaccination].item ^slicing.rules = #closed
* item[Vaccination].item contains
    Answer 1..1 MS and
    MultipleAnswer 0..1 MS and
    Other 0..1 MS
* item[Vaccination].item[Answer].linkId = "Vaccination.Answer"
* item[Vaccination].item[Answer] ^short = "是否接種"
* item[Vaccination].item[Answer].item 0..0
* item[Vaccination].item[Answer].answer 0..1
* item[Vaccination].item[Answer].answer.value[x] only Coding
* item[Vaccination].item[Answer].answer.value[x] 1..1
* item[Vaccination].item[Answer].answer 1..1
* item[Vaccination].item[Answer].answer.valueCoding from hn-vs-19264db8df7b (required)
* item[Vaccination].item[MultipleAnswer].linkId = "Vaccination.MultipleAnswer"
* item[Vaccination].item[MultipleAnswer] ^short = "疫苗種類"
* item[Vaccination].item[MultipleAnswer].item 0..0
* item[Vaccination].item[MultipleAnswer].answer 0..1
* item[Vaccination].item[MultipleAnswer].answer.value[x] only string
* item[Vaccination].item[MultipleAnswer].answer.value[x] 1..1
* item[Vaccination].item[MultipleAnswer].answer.valueString ^maxLength = 1000
* item[Vaccination].item[Other].linkId = "Vaccination.Other"
* item[Vaccination].item[Other] ^short = "接種年份"
* item[Vaccination].item[Other].item 0..0
* item[Vaccination].item[Other].answer 0..1
* item[Vaccination].item[Other].answer.value[x] only string
* item[Vaccination].item[Other].answer.value[x] 1..1
* item[Vaccination].item[Other].answer.valueString ^maxLength = 100
* item[IsTemporary].linkId = "IsTemporary"
* item[IsTemporary] ^short = "是否暫存"
* item[IsTemporary].item 0..0
* item[IsTemporary].answer 0..1
* item[IsTemporary].answer.value[x] only Coding
* item[IsTemporary].answer.value[x] 1..1
* item[IsTemporary].answer.valueCoding from hn-vs-58e4d598f859 (required)
* obeys hn-healthyhabits-1
* obeys hn-healthyhabits-2

Invariant: hn-healthyhabits-1
Description: "暫存填是時，表單狀態必須為 in-progress。"
Severity: #error
Expression: "item.where(linkId='IsTemporary').answer.value.ofType(Coding).where(code='cb5141d3d19e9').exists() implies status='in-progress'"

Invariant: hn-healthyhabits-2
Description: "暫存填否時，表單狀態必須為 completed 或 amended。"
Severity: #error
Expression: "item.where(linkId='IsTemporary').answer.value.ofType(Coding).where(code='c0c70665b6eb6').exists() implies (status='completed' or status='amended')"
