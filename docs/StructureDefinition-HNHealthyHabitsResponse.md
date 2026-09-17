# 居家護理－健康紀錄評估表單 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－健康紀錄評估表單**

## Resource Profile: 居家護理－健康紀錄評估表單 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/HNHealthyHabitsResponse | *Version*:1.1.0 |
| Draft as of 2026-09-17 | *Computable Name*:HNHealthyHabitsResponse |

 
記錄健康紀錄評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。 

**Usages:**

* Examples for this Profile: [QuestionnaireResponse/hn-healthyhabits-example](QuestionnaireResponse-hn-healthyhabits-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/tw.iii.ltc|current/StructureDefinition/StructureDefinition-HNHealthyHabitsResponse.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HNHealthyHabitsResponse.csv), [Excel](StructureDefinition-HNHealthyHabitsResponse.xlsx), [Schematron](StructureDefinition-HNHealthyHabitsResponse.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HNHealthyHabitsResponse",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/HNHealthyHabitsResponse",
  "version" : "1.1.0",
  "name" : "HNHealthyHabitsResponse",
  "title" : "居家護理－健康紀錄評估表單",
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
  "description" : "記錄健康紀錄評估的結構化內容。以各 Slice 填入資料，保留未作答與多筆紀錄。",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "QuestionnaireResponse",
  "baseDefinition" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCQuestionnaireResponse",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "QuestionnaireResponse",
      "path" : "QuestionnaireResponse",
      "constraint" : [{
        "key" : "hn-healthyhabits-1",
        "severity" : "error",
        "human" : "暫存填是時，表單狀態必須為 in-progress。",
        "expression" : "item.where(linkId='IsTemporary').answer.value.ofType(Coding).where(code='cb5141d3d19e9').exists() implies status='in-progress'",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNHealthyHabitsResponse"
      },
      {
        "key" : "hn-healthyhabits-2",
        "severity" : "error",
        "human" : "暫存填否時，表單狀態必須為 completed 或 amended。",
        "expression" : "item.where(linkId='IsTemporary').answer.value.ofType(Coding).where(code='c0c70665b6eb6').exists() implies (status='completed' or status='amended')",
        "source" : "http://ltc-ig.fhir.tw/StructureDefinition/HNHealthyHabitsResponse"
      }]
    },
    {
      "id" : "QuestionnaireResponse.extension",
      "path" : "QuestionnaireResponse.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.extension:episode",
      "path" : "QuestionnaireResponse.extension",
      "sliceName" : "episode",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/ExtHNEpisode"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.questionnaire",
      "path" : "QuestionnaireResponse.questionnaire",
      "min" : 1,
      "patternCanonical" : "http://ltc-ig.fhir.tw/Questionnaire/hn-healthyhabits"
    },
    {
      "id" : "QuestionnaireResponse.item",
      "path" : "QuestionnaireResponse.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 8
    },
    {
      "id" : "QuestionnaireResponse.item:Date",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "Date",
      "short" : "紀錄日期",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Date.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "Date"
    },
    {
      "id" : "QuestionnaireResponse.item:Date.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Date.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "QuestionnaireResponse.item:Date.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:NurseID",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "NurseID",
      "short" : "護理人員身分證字號",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:NurseID.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "NurseID"
    },
    {
      "id" : "QuestionnaireResponse.item:NurseID.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:NurseID.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 10
    },
    {
      "id" : "QuestionnaireResponse.item:NurseID.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:IsSmoking",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "IsSmoking",
      "short" : "吸菸狀態",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:IsSmoking.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "IsSmoking"
    },
    {
      "id" : "QuestionnaireResponse.item:IsSmoking.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:IsSmoking.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-85c814c9b8ba"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:IsSmoking.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:IsAlcohol",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "IsAlcohol",
      "short" : "飲酒狀態",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:IsAlcohol.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "IsAlcohol"
    },
    {
      "id" : "QuestionnaireResponse.item:IsAlcohol.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:IsAlcohol.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-5f96e05811ec"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:IsAlcohol.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:IsBetelNut",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "IsBetelNut",
      "short" : "嚼食檳榔狀態",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:IsBetelNut.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "IsBetelNut"
    },
    {
      "id" : "QuestionnaireResponse.item:IsBetelNut.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:IsBetelNut.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-a5f17d46becb"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:IsBetelNut.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:QuitSmoking",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "QuitSmoking",
      "short" : "戒菸年數",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:QuitSmoking.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "QuitSmoking"
    },
    {
      "id" : "QuestionnaireResponse.item:QuitSmoking.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:QuitSmoking.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "decimal"
      }],
      "minValueDecimal" : 0
    },
    {
      "id" : "QuestionnaireResponse.item:QuitSmoking.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BeforeSmoking",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "BeforeSmoking",
      "short" : "戒菸前吸菸年數",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BeforeSmoking.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "BeforeSmoking"
    },
    {
      "id" : "QuestionnaireResponse.item:BeforeSmoking.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BeforeSmoking.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "decimal"
      }],
      "minValueDecimal" : 0
    },
    {
      "id" : "QuestionnaireResponse.item:BeforeSmoking.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:SmokingYear",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "SmokingYear",
      "short" : "吸菸年數",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:SmokingYear.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "SmokingYear"
    },
    {
      "id" : "QuestionnaireResponse.item:SmokingYear.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:SmokingYear.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "decimal"
      }],
      "minValueDecimal" : 0
    },
    {
      "id" : "QuestionnaireResponse.item:SmokingYear.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:QuitAlcohol",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "QuitAlcohol",
      "short" : "戒酒年數",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:QuitAlcohol.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "QuitAlcohol"
    },
    {
      "id" : "QuestionnaireResponse.item:QuitAlcohol.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:QuitAlcohol.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "decimal"
      }],
      "minValueDecimal" : 0
    },
    {
      "id" : "QuestionnaireResponse.item:QuitAlcohol.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BeforequitAlcohol",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "BeforequitAlcohol",
      "short" : "戒酒前飲酒年數",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BeforequitAlcohol.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "BeforequitAlcohol"
    },
    {
      "id" : "QuestionnaireResponse.item:BeforequitAlcohol.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BeforequitAlcohol.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "decimal"
      }],
      "minValueDecimal" : 0
    },
    {
      "id" : "QuestionnaireResponse.item:BeforequitAlcohol.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:AlcoholYear",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "AlcoholYear",
      "short" : "飲酒年數",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:AlcoholYear.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "AlcoholYear"
    },
    {
      "id" : "QuestionnaireResponse.item:AlcoholYear.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:AlcoholYear.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "decimal"
      }],
      "minValueDecimal" : 0
    },
    {
      "id" : "QuestionnaireResponse.item:AlcoholYear.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:QuitBetelNut",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "QuitBetelNut",
      "short" : "戒檳榔年數",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:QuitBetelNut.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "QuitBetelNut"
    },
    {
      "id" : "QuestionnaireResponse.item:QuitBetelNut.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:QuitBetelNut.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "decimal"
      }],
      "minValueDecimal" : 0
    },
    {
      "id" : "QuestionnaireResponse.item:QuitBetelNut.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BeforequitBetelNut",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "BeforequitBetelNut",
      "short" : "戒除前嚼食檳榔年數",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BeforequitBetelNut.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "BeforequitBetelNut"
    },
    {
      "id" : "QuestionnaireResponse.item:BeforequitBetelNut.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BeforequitBetelNut.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "decimal"
      }],
      "minValueDecimal" : 0
    },
    {
      "id" : "QuestionnaireResponse.item:BeforequitBetelNut.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:BetelNutYear",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "BetelNutYear",
      "short" : "嚼食檳榔年數",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:BetelNutYear.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "BetelNutYear"
    },
    {
      "id" : "QuestionnaireResponse.item:BetelNutYear.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:BetelNutYear.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "decimal"
      }],
      "minValueDecimal" : 0
    },
    {
      "id" : "QuestionnaireResponse.item:BetelNutYear.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:IsAllergy",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "IsAllergy",
      "short" : "食物過敏",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:IsAllergy.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "IsAllergy"
    },
    {
      "id" : "QuestionnaireResponse.item:IsAllergy.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:IsAllergy.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-19264db8df7b"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:IsAllergy.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Allergy_Desc",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "Allergy_Desc",
      "short" : "食物過敏說明",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Allergy_Desc.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "Allergy_Desc"
    },
    {
      "id" : "QuestionnaireResponse.item:Allergy_Desc.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Allergy_Desc.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 500
    },
    {
      "id" : "QuestionnaireResponse.item:Allergy_Desc.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:IsAllergyDrug",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "IsAllergyDrug",
      "short" : "藥物過敏",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:IsAllergyDrug.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "IsAllergyDrug"
    },
    {
      "id" : "QuestionnaireResponse.item:IsAllergyDrug.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:IsAllergyDrug.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-19264db8df7b"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:IsAllergyDrug.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:AllergyDrug_Desc",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "AllergyDrug_Desc",
      "short" : "藥物過敏說明",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:AllergyDrug_Desc.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "AllergyDrug_Desc"
    },
    {
      "id" : "QuestionnaireResponse.item:AllergyDrug_Desc.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:AllergyDrug_Desc.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 500
    },
    {
      "id" : "QuestionnaireResponse.item:AllergyDrug_Desc.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Vaccination",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "Vaccination",
      "short" : "疫苗紀錄",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Vaccination.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "Vaccination"
    },
    {
      "id" : "QuestionnaireResponse.item:Vaccination.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Vaccination.item",
      "path" : "QuestionnaireResponse.item.item",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "linkId"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.item:Vaccination.item:Answer",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Answer",
      "short" : "是否接種",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Vaccination.item:Answer.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Vaccination.Answer"
    },
    {
      "id" : "QuestionnaireResponse.item:Vaccination.item:Answer.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Vaccination.item:Answer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-19264db8df7b"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:Vaccination.item:Answer.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Vaccination.item:MultipleAnswer",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "MultipleAnswer",
      "short" : "疫苗種類",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Vaccination.item:MultipleAnswer.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Vaccination.MultipleAnswer"
    },
    {
      "id" : "QuestionnaireResponse.item:Vaccination.item:MultipleAnswer.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Vaccination.item:MultipleAnswer.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 1000
    },
    {
      "id" : "QuestionnaireResponse.item:Vaccination.item:MultipleAnswer.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:Vaccination.item:Other",
      "path" : "QuestionnaireResponse.item.item",
      "sliceName" : "Other",
      "short" : "接種年份",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:Vaccination.item:Other.linkId",
      "path" : "QuestionnaireResponse.item.item.linkId",
      "patternString" : "Vaccination.Other"
    },
    {
      "id" : "QuestionnaireResponse.item:Vaccination.item:Other.answer",
      "path" : "QuestionnaireResponse.item.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:Vaccination.item:Other.answer.value[x]",
      "path" : "QuestionnaireResponse.item.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }],
      "maxLength" : 100
    },
    {
      "id" : "QuestionnaireResponse.item:Vaccination.item:Other.item",
      "path" : "QuestionnaireResponse.item.item.item",
      "max" : "0"
    },
    {
      "id" : "QuestionnaireResponse.item:IsTemporary",
      "path" : "QuestionnaireResponse.item",
      "sliceName" : "IsTemporary",
      "short" : "是否暫存",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "QuestionnaireResponse.item:IsTemporary.linkId",
      "path" : "QuestionnaireResponse.item.linkId",
      "patternString" : "IsTemporary"
    },
    {
      "id" : "QuestionnaireResponse.item:IsTemporary.answer",
      "path" : "QuestionnaireResponse.item.answer",
      "max" : "1"
    },
    {
      "id" : "QuestionnaireResponse.item:IsTemporary.answer.value[x]",
      "path" : "QuestionnaireResponse.item.answer.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://ltc-ig.fhir.tw/ValueSet/hn-vs-58e4d598f859"
      }
    },
    {
      "id" : "QuestionnaireResponse.item:IsTemporary.item",
      "path" : "QuestionnaireResponse.item.item",
      "max" : "0"
    }]
  }
}

```
