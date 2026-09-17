# 居家護理－健康紀錄評估邏輯模型 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－健康紀錄評估邏輯模型**

## Logical Model: 居家護理－健康紀錄評估邏輯模型 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNHealthyHabitsModel | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNHealthyHabitsModel |

 
描述居家護理健康紀錄評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。 

**Usages:**

* Use this Logical Model: [居家護理－全人評估 API 邏輯模型](StructureDefinition-HNEvaluationAPIModel.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNHealthyHabitsModel.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNHealthyHabitsModel.csv), [Excel](StructureDefinition-HNHealthyHabitsModel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNHealthyHabitsModel",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNHealthyHabitsModel",
  "version" : "1.1.0",
  "name" : "HNHealthyHabitsModel",
  "title" : "居家護理－健康紀錄評估邏輯模型",
  "status" : "draft",
  "date" : "2026-09-17T17:33:17+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "描述居家護理健康紀錄評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "hn-healthyhabits-fhir",
    "uri" : "http://ltc-ig.fhir.tw/StructureDefinition/HNHealthyHabitsResponse",
    "name" : "居家護理－健康紀錄評估欄位對應"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ltc-ig.fhir.tw/StructureDefinition/HNHealthyHabitsModel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "HNHealthyHabitsModel",
      "path" : "HNHealthyHabitsModel",
      "short" : "居家護理－健康紀錄評估邏輯模型",
      "definition" : "描述居家護理健康紀錄評估的資料需求。依 V5.0.16 有效欄位建立，來源欄位對應另列於 Mapping。"
    },
    {
      "id" : "HNHealthyHabitsModel.date",
      "path" : "HNHealthyHabitsModel.date",
      "short" : "紀錄日期",
      "definition" : "紀錄日期",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "hn-healthyhabits-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Date')",
        "comment" : "來源欄位／題目：Date"
      }]
    },
    {
      "id" : "HNHealthyHabitsModel.nurseID",
      "path" : "HNHealthyHabitsModel.nurseID",
      "short" : "護理人員身分證字號",
      "definition" : "護理人員身分證字號",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-healthyhabits-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='NurseID')",
        "comment" : "來源欄位／題目：NurseID"
      }]
    },
    {
      "id" : "HNHealthyHabitsModel.isSmoking",
      "path" : "HNHealthyHabitsModel.isSmoking",
      "short" : "吸菸狀態",
      "definition" : "吸菸狀態",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-85c814c9b8ba"
      },
      "mapping" : [{
        "identity" : "hn-healthyhabits-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='IsSmoking')",
        "comment" : "來源欄位／題目：IsSmoking"
      }]
    },
    {
      "id" : "HNHealthyHabitsModel.isAlcohol",
      "path" : "HNHealthyHabitsModel.isAlcohol",
      "short" : "飲酒狀態",
      "definition" : "飲酒狀態",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-5f96e05811ec"
      },
      "mapping" : [{
        "identity" : "hn-healthyhabits-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='IsAlcohol')",
        "comment" : "來源欄位／題目：IsAlcohol"
      }]
    },
    {
      "id" : "HNHealthyHabitsModel.isBetelNut",
      "path" : "HNHealthyHabitsModel.isBetelNut",
      "short" : "嚼食檳榔狀態",
      "definition" : "嚼食檳榔狀態",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-a5f17d46becb"
      },
      "mapping" : [{
        "identity" : "hn-healthyhabits-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='IsBetelNut')",
        "comment" : "來源欄位／題目：IsBetelNut"
      }]
    },
    {
      "id" : "HNHealthyHabitsModel.quitSmoking",
      "path" : "HNHealthyHabitsModel.quitSmoking",
      "short" : "戒菸年數",
      "definition" : "戒菸年數。單位為年，至小數一位；依目前使用或已戒除狀態填寫。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "minValueDecimal" : 0,
      "mapping" : [{
        "identity" : "hn-healthyhabits-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='QuitSmoking')",
        "comment" : "來源欄位／題目：QuitSmoking"
      }]
    },
    {
      "id" : "HNHealthyHabitsModel.beforeSmoking",
      "path" : "HNHealthyHabitsModel.beforeSmoking",
      "short" : "戒菸前吸菸年數",
      "definition" : "戒菸前吸菸年數。單位為年，至小數一位；依目前使用或已戒除狀態填寫。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "minValueDecimal" : 0,
      "mapping" : [{
        "identity" : "hn-healthyhabits-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BeforeSmoking')",
        "comment" : "來源欄位／題目：BeforeSmoking"
      }]
    },
    {
      "id" : "HNHealthyHabitsModel.smokingYear",
      "path" : "HNHealthyHabitsModel.smokingYear",
      "short" : "吸菸年數",
      "definition" : "吸菸年數。單位為年，至小數一位；依目前使用或已戒除狀態填寫。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "minValueDecimal" : 0,
      "mapping" : [{
        "identity" : "hn-healthyhabits-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='SmokingYear')",
        "comment" : "來源欄位／題目：SmokingYear"
      }]
    },
    {
      "id" : "HNHealthyHabitsModel.quitAlcohol",
      "path" : "HNHealthyHabitsModel.quitAlcohol",
      "short" : "戒酒年數",
      "definition" : "戒酒年數。單位為年，至小數一位；依目前使用或已戒除狀態填寫。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "minValueDecimal" : 0,
      "mapping" : [{
        "identity" : "hn-healthyhabits-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='QuitAlcohol')",
        "comment" : "來源欄位／題目：QuitAlcohol"
      }]
    },
    {
      "id" : "HNHealthyHabitsModel.beforequitAlcohol",
      "path" : "HNHealthyHabitsModel.beforequitAlcohol",
      "short" : "戒酒前飲酒年數",
      "definition" : "戒酒前飲酒年數。單位為年，至小數一位；依目前使用或已戒除狀態填寫。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "minValueDecimal" : 0,
      "mapping" : [{
        "identity" : "hn-healthyhabits-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BeforequitAlcohol')",
        "comment" : "來源欄位／題目：BeforequitAlcohol"
      }]
    },
    {
      "id" : "HNHealthyHabitsModel.alcoholYear",
      "path" : "HNHealthyHabitsModel.alcoholYear",
      "short" : "飲酒年數",
      "definition" : "飲酒年數。單位為年，至小數一位；依目前使用或已戒除狀態填寫。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "minValueDecimal" : 0,
      "mapping" : [{
        "identity" : "hn-healthyhabits-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='AlcoholYear')",
        "comment" : "來源欄位／題目：AlcoholYear"
      }]
    },
    {
      "id" : "HNHealthyHabitsModel.quitBetelNut",
      "path" : "HNHealthyHabitsModel.quitBetelNut",
      "short" : "戒檳榔年數",
      "definition" : "戒檳榔年數。單位為年，至小數一位；依目前使用或已戒除狀態填寫。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "minValueDecimal" : 0,
      "mapping" : [{
        "identity" : "hn-healthyhabits-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='QuitBetelNut')",
        "comment" : "來源欄位／題目：QuitBetelNut"
      }]
    },
    {
      "id" : "HNHealthyHabitsModel.beforequitBetelNut",
      "path" : "HNHealthyHabitsModel.beforequitBetelNut",
      "short" : "戒除前嚼食檳榔年數",
      "definition" : "戒除前嚼食檳榔年數。單位為年，至小數一位；依目前使用或已戒除狀態填寫。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "minValueDecimal" : 0,
      "mapping" : [{
        "identity" : "hn-healthyhabits-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BeforequitBetelNut')",
        "comment" : "來源欄位／題目：BeforequitBetelNut"
      }]
    },
    {
      "id" : "HNHealthyHabitsModel.betelNutYear",
      "path" : "HNHealthyHabitsModel.betelNutYear",
      "short" : "嚼食檳榔年數",
      "definition" : "嚼食檳榔年數。單位為年，至小數一位；依目前使用或已戒除狀態填寫。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }],
      "minValueDecimal" : 0,
      "mapping" : [{
        "identity" : "hn-healthyhabits-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='BetelNutYear')",
        "comment" : "來源欄位／題目：BetelNutYear"
      }]
    },
    {
      "id" : "HNHealthyHabitsModel.isAllergy",
      "path" : "HNHealthyHabitsModel.isAllergy",
      "short" : "食物過敏",
      "definition" : "食物過敏",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-19264db8df7b"
      },
      "mapping" : [{
        "identity" : "hn-healthyhabits-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='IsAllergy')",
        "comment" : "來源欄位／題目：IsAllergy"
      }]
    },
    {
      "id" : "HNHealthyHabitsModel.allergyDesc",
      "path" : "HNHealthyHabitsModel.allergyDesc",
      "short" : "食物過敏說明",
      "definition" : "食物過敏說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-healthyhabits-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Allergy_Desc')",
        "comment" : "來源欄位／題目：Allergy_Desc"
      }]
    },
    {
      "id" : "HNHealthyHabitsModel.isAllergyDrug",
      "path" : "HNHealthyHabitsModel.isAllergyDrug",
      "short" : "藥物過敏",
      "definition" : "藥物過敏",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-19264db8df7b"
      },
      "mapping" : [{
        "identity" : "hn-healthyhabits-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='IsAllergyDrug')",
        "comment" : "來源欄位／題目：IsAllergyDrug"
      }]
    },
    {
      "id" : "HNHealthyHabitsModel.allergyDrugDesc",
      "path" : "HNHealthyHabitsModel.allergyDrugDesc",
      "short" : "藥物過敏說明",
      "definition" : "藥物過敏說明",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-healthyhabits-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='AllergyDrug_Desc')",
        "comment" : "來源欄位／題目：AllergyDrug_Desc"
      }]
    },
    {
      "id" : "HNHealthyHabitsModel.vaccination",
      "path" : "HNHealthyHabitsModel.vaccination",
      "short" : "疫苗紀錄",
      "definition" : "疫苗紀錄",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "hn-healthyhabits-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Vaccination')",
        "comment" : "來源欄位／題目：Vaccination"
      }]
    },
    {
      "id" : "HNHealthyHabitsModel.vaccination.answer",
      "path" : "HNHealthyHabitsModel.vaccination.answer",
      "short" : "是否接種",
      "definition" : "是否接種",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-19264db8df7b"
      },
      "mapping" : [{
        "identity" : "hn-healthyhabits-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Vaccination').item.where(linkId='Vaccination.Answer')",
        "comment" : "來源欄位／題目：Vaccination.Answer"
      }]
    },
    {
      "id" : "HNHealthyHabitsModel.vaccination.multipleAnswer",
      "path" : "HNHealthyHabitsModel.vaccination.multipleAnswer",
      "short" : "疫苗種類",
      "definition" : "疫苗種類。有接種時必填。以逗號分隔流感疫苗、肺炎雙球菌疫苗、COVID-19疫苗或其他。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-healthyhabits-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Vaccination').item.where(linkId='Vaccination.MultipleAnswer')",
        "comment" : "來源欄位／題目：Vaccination.MultipleAnswer"
      }]
    },
    {
      "id" : "HNHealthyHabitsModel.vaccination.other",
      "path" : "HNHealthyHabitsModel.vaccination.other",
      "short" : "接種年份",
      "definition" : "接種年份。依疫苗種類順序填入西元年或不記得；不可捏造接種日期。",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "hn-healthyhabits-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='Vaccination').item.where(linkId='Vaccination.Other')",
        "comment" : "來源欄位／題目：Vaccination.Other"
      }]
    },
    {
      "id" : "HNHealthyHabitsModel.isTemporary",
      "path" : "HNHealthyHabitsModel.isTemporary",
      "short" : "是否暫存",
      "definition" : "是否暫存",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
      },
      "mapping" : [{
        "identity" : "hn-healthyhabits-fhir",
        "map" : "QuestionnaireResponse.item.where(linkId='IsTemporary')",
        "comment" : "來源欄位／題目：IsTemporary"
      }]
    }]
  }
}

```
