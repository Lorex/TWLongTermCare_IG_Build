Logical: HNHealthyHabitsModel
Id: HNHealthyHabitsModel
Title: "居家護理－健康紀錄評估邏輯模型"
Description: "描述居家護理健康紀錄評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。"
* ^status = #draft
* ^version = "5.0.16"
* date 1..1 date "紀錄日期" "紀錄日期"
* nurseID 1..1 string "護理人員身分證字號" "護理人員身分證字號"
* isSmoking 1..1 Coding "吸菸狀態" "吸菸狀態"
* isSmoking from hn-vs-85c814c9b8ba (required)
* isAlcohol 1..1 Coding "飲酒狀態" "飲酒狀態"
* isAlcohol from hn-vs-5f96e05811ec (required)
* isBetelNut 1..1 Coding "嚼食檳榔狀態" "嚼食檳榔狀態"
* isBetelNut from hn-vs-a5f17d46becb (required)
* quitSmoking 0..1 decimal "戒菸年數" "戒菸年數。單位為年，至小數一位；依目前使用或已戒除狀態填寫。"
* quitSmoking ^minValueDecimal = 0
* beforeSmoking 0..1 decimal "戒菸前吸菸年數" "戒菸前吸菸年數。單位為年，至小數一位；依目前使用或已戒除狀態填寫。"
* beforeSmoking ^minValueDecimal = 0
* smokingYear 0..1 decimal "吸菸年數" "吸菸年數。單位為年，至小數一位；依目前使用或已戒除狀態填寫。"
* smokingYear ^minValueDecimal = 0
* quitAlcohol 0..1 decimal "戒酒年數" "戒酒年數。單位為年，至小數一位；依目前使用或已戒除狀態填寫。"
* quitAlcohol ^minValueDecimal = 0
* beforequitAlcohol 0..1 decimal "戒酒前飲酒年數" "戒酒前飲酒年數。單位為年，至小數一位；依目前使用或已戒除狀態填寫。"
* beforequitAlcohol ^minValueDecimal = 0
* alcoholYear 0..1 decimal "飲酒年數" "飲酒年數。單位為年，至小數一位；依目前使用或已戒除狀態填寫。"
* alcoholYear ^minValueDecimal = 0
* quitBetelNut 0..1 decimal "戒檳榔年數" "戒檳榔年數。單位為年，至小數一位；依目前使用或已戒除狀態填寫。"
* quitBetelNut ^minValueDecimal = 0
* beforequitBetelNut 0..1 decimal "戒除前嚼食檳榔年數" "戒除前嚼食檳榔年數。單位為年，至小數一位；依目前使用或已戒除狀態填寫。"
* beforequitBetelNut ^minValueDecimal = 0
* betelNutYear 0..1 decimal "嚼食檳榔年數" "嚼食檳榔年數。單位為年，至小數一位；依目前使用或已戒除狀態填寫。"
* betelNutYear ^minValueDecimal = 0
* isAllergy 1..1 Coding "食物過敏" "食物過敏"
* isAllergy from hn-vs-19264db8df7b (required)
* allergyDesc 0..1 string "食物過敏說明" "食物過敏說明"
* isAllergyDrug 1..1 Coding "藥物過敏" "藥物過敏"
* isAllergyDrug from hn-vs-19264db8df7b (required)
* allergyDrugDesc 0..1 string "藥物過敏說明" "藥物過敏說明"
* vaccination 1..1 BackboneElement "疫苗紀錄" "疫苗紀錄"
* vaccination.answer 1..1 Coding "是否接種" "是否接種"
* vaccination.answer from hn-vs-19264db8df7b (required)
* vaccination.multipleAnswer 0..1 string "疫苗種類" "疫苗種類。有接種時必填。以逗號分隔流感疫苗、肺炎雙球菌疫苗、COVID-19疫苗或其他。"
* vaccination.other 0..1 string "接種年份" "接種年份。依疫苗種類順序填入西元年或不記得；不可捏造接種日期。"
* isTemporary 0..1 Coding "是否暫存" "是否暫存"
* isTemporary from hn-vs-58e4d598f859 (required)

Mapping: HNHealthyHabitsModelToFHIR
Id: hn-healthyhabits-fhir
Title: "居家護理－健康紀錄評估欄位對應"
Source: HNHealthyHabitsModel
Target: "http://ltc-ig.fhir.tw/StructureDefinition/HNHealthyHabitsResponse"
* date -> "QuestionnaireResponse.item.where(linkId='Date')" "來源欄位／題目：Date"
* nurseID -> "QuestionnaireResponse.item.where(linkId='NurseID')" "來源欄位／題目：NurseID"
* isSmoking -> "QuestionnaireResponse.item.where(linkId='IsSmoking')" "來源欄位／題目：IsSmoking"
* isAlcohol -> "QuestionnaireResponse.item.where(linkId='IsAlcohol')" "來源欄位／題目：IsAlcohol"
* isBetelNut -> "QuestionnaireResponse.item.where(linkId='IsBetelNut')" "來源欄位／題目：IsBetelNut"
* quitSmoking -> "QuestionnaireResponse.item.where(linkId='QuitSmoking')" "來源欄位／題目：QuitSmoking"
* beforeSmoking -> "QuestionnaireResponse.item.where(linkId='BeforeSmoking')" "來源欄位／題目：BeforeSmoking"
* smokingYear -> "QuestionnaireResponse.item.where(linkId='SmokingYear')" "來源欄位／題目：SmokingYear"
* quitAlcohol -> "QuestionnaireResponse.item.where(linkId='QuitAlcohol')" "來源欄位／題目：QuitAlcohol"
* beforequitAlcohol -> "QuestionnaireResponse.item.where(linkId='BeforequitAlcohol')" "來源欄位／題目：BeforequitAlcohol"
* alcoholYear -> "QuestionnaireResponse.item.where(linkId='AlcoholYear')" "來源欄位／題目：AlcoholYear"
* quitBetelNut -> "QuestionnaireResponse.item.where(linkId='QuitBetelNut')" "來源欄位／題目：QuitBetelNut"
* beforequitBetelNut -> "QuestionnaireResponse.item.where(linkId='BeforequitBetelNut')" "來源欄位／題目：BeforequitBetelNut"
* betelNutYear -> "QuestionnaireResponse.item.where(linkId='BetelNutYear')" "來源欄位／題目：BetelNutYear"
* isAllergy -> "QuestionnaireResponse.item.where(linkId='IsAllergy')" "來源欄位／題目：IsAllergy"
* allergyDesc -> "QuestionnaireResponse.item.where(linkId='Allergy_Desc')" "來源欄位／題目：Allergy_Desc"
* isAllergyDrug -> "QuestionnaireResponse.item.where(linkId='IsAllergyDrug')" "來源欄位／題目：IsAllergyDrug"
* allergyDrugDesc -> "QuestionnaireResponse.item.where(linkId='AllergyDrug_Desc')" "來源欄位／題目：AllergyDrug_Desc"
* vaccination -> "QuestionnaireResponse.item.where(linkId='Vaccination')" "來源欄位／題目：Vaccination"
* vaccination.answer -> "QuestionnaireResponse.item.where(linkId='Vaccination').item.where(linkId='Vaccination.Answer')" "來源欄位／題目：Vaccination.Answer"
* vaccination.multipleAnswer -> "QuestionnaireResponse.item.where(linkId='Vaccination').item.where(linkId='Vaccination.MultipleAnswer')" "來源欄位／題目：Vaccination.MultipleAnswer"
* vaccination.other -> "QuestionnaireResponse.item.where(linkId='Vaccination').item.where(linkId='Vaccination.Other')" "來源欄位／題目：Vaccination.Other"
* isTemporary -> "QuestionnaireResponse.item.where(linkId='IsTemporary')" "來源欄位／題目：IsTemporary"
