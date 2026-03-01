# 簡易智能狀態測驗評估 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **簡易智能狀態測驗評估**

## Logical Model: 簡易智能狀態測驗評估 

| | |
| :--- | :--- |
| *Official URL*:http://ltc-ig.fhir.tw/StructureDefinition/LTCMMSEAssessmentModel | *Version*:0.4.1 |
| Active as of 2026-02-28 | *Computable Name*:LTCMMSEAssessmentModel |
| **Copyright/Legal**: Copyright © 2024 Taiwan Long-Term Care Implementation Guide | |

 
簡易智能狀態測驗 (Mini-Mental Status Examination, MMSE) 的邏輯模型，用於認知功能評估 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/tw.iii.ltc|current/StructureDefinition/LTCMMSEAssessmentModel)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LTCMMSEAssessmentModel.csv), [Excel](StructureDefinition-LTCMMSEAssessmentModel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LTCMMSEAssessmentModel",
  "url" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCMMSEAssessmentModel",
  "version" : "0.4.1",
  "name" : "LTCMMSEAssessmentModel",
  "title" : "簡易智能狀態測驗評估",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-02-28T23:13:53+08:00",
  "publisher" : "經濟部產業發展署",
  "contact" : [{
    "name" : "經濟部產業發展署",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ida.gov.tw/"
    }]
  }],
  "description" : "簡易智能狀態測驗 (Mini-Mental Status Examination, MMSE) 的邏輯模型，用於認知功能評估",
  "copyright" : "Copyright © 2024 Taiwan Long-Term Care Implementation Guide",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://ltc-ig.fhir.tw/StructureDefinition/LTCMMSEAssessmentModel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "LTCMMSEAssessmentModel",
      "path" : "LTCMMSEAssessmentModel",
      "short" : "簡易智能狀態測驗評估",
      "definition" : "簡易智能狀態測驗 (Mini-Mental Status Examination, MMSE) 的邏輯模型，用於認知功能評估"
    },
    {
      "id" : "LTCMMSEAssessmentModel.assessmentDate",
      "path" : "LTCMMSEAssessmentModel.assessmentDate",
      "short" : "評估日期時間",
      "definition" : "MMSE 評估執行的日期時間",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.assessor",
      "path" : "LTCMMSEAssessmentModel.assessor",
      "short" : "評估者",
      "definition" : "執行 MMSE 評估的醫療人員",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner"]
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.subject",
      "path" : "LTCMMSEAssessmentModel.subject",
      "short" : "受評估者",
      "definition" : "接受 MMSE 評估的患者",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.orientation",
      "path" : "LTCMMSEAssessmentModel.orientation",
      "short" : "定向感評估",
      "definition" : "時間、地點、人物的定向感評估",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.orientation.year",
      "path" : "LTCMMSEAssessmentModel.orientation.year",
      "short" : "年份",
      "definition" : "今年是那一年? (1分)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.orientation.season",
      "path" : "LTCMMSEAssessmentModel.orientation.season",
      "short" : "季節",
      "definition" : "現在是什麼季節? (1分)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.orientation.date",
      "path" : "LTCMMSEAssessmentModel.orientation.date",
      "short" : "日期",
      "definition" : "今天是幾號? (1分)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.orientation.dayOfWeek",
      "path" : "LTCMMSEAssessmentModel.orientation.dayOfWeek",
      "short" : "星期",
      "definition" : "今天是禮拜幾? (1分)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.orientation.month",
      "path" : "LTCMMSEAssessmentModel.orientation.month",
      "short" : "月份",
      "definition" : "現在是那一個月份? (1分)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.orientation.province",
      "path" : "LTCMMSEAssessmentModel.orientation.province",
      "short" : "省份",
      "definition" : "我們現在是在那一個省? (1分)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.orientation.city",
      "path" : "LTCMMSEAssessmentModel.orientation.city",
      "short" : "縣市",
      "definition" : "我們現在是在那一個縣、市? (1分)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.orientation.district",
      "path" : "LTCMMSEAssessmentModel.orientation.district",
      "short" : "區鄉鎮",
      "definition" : "這裡屬於哪一個區或是鄉鎮? (1分)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.orientation.facility",
      "path" : "LTCMMSEAssessmentModel.orientation.facility",
      "short" : "機構名稱",
      "definition" : "這個社區單位(醫院、診所)的名稱? (1分)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.orientation.floor",
      "path" : "LTCMMSEAssessmentModel.orientation.floor",
      "short" : "樓層",
      "definition" : "現在我們是在幾樓? (1分)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.orientation.score",
      "path" : "LTCMMSEAssessmentModel.orientation.score",
      "short" : "定向感總分",
      "definition" : "定向感評估總分 (0-10分)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.registration",
      "path" : "LTCMMSEAssessmentModel.registration",
      "short" : "記憶登錄",
      "definition" : "立即記憶登錄評估",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.registration.word1",
      "path" : "LTCMMSEAssessmentModel.registration.word1",
      "short" : "藍色",
      "definition" : "第一個詞彙記憶 (1分)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.registration.word2",
      "path" : "LTCMMSEAssessmentModel.registration.word2",
      "short" : "悲傷",
      "definition" : "第二個詞彙記憶 (1分)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.registration.word3",
      "path" : "LTCMMSEAssessmentModel.registration.word3",
      "short" : "火車",
      "definition" : "第三個詞彙記憶 (1分)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.registration.score",
      "path" : "LTCMMSEAssessmentModel.registration.score",
      "short" : "記憶登錄總分",
      "definition" : "記憶登錄評估總分 (0-3分)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.attention",
      "path" : "LTCMMSEAssessmentModel.attention",
      "short" : "注意力和計算",
      "definition" : "注意力集中和計算能力評估",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.attention.serial7s",
      "path" : "LTCMMSEAssessmentModel.attention.serial7s",
      "short" : "連續減7",
      "definition" : "從100開始連續減7的次數 (0-5分)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.attention.score",
      "path" : "LTCMMSEAssessmentModel.attention.score",
      "short" : "注意力總分",
      "definition" : "注意力和計算評估總分 (0-5分)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.recall",
      "path" : "LTCMMSEAssessmentModel.recall",
      "short" : "記憶回憶",
      "definition" : "延遲記憶回憶評估",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.recall.recallWord1",
      "path" : "LTCMMSEAssessmentModel.recall.recallWord1",
      "short" : "回憶藍色",
      "definition" : "回憶第一個詞彙 (1分)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.recall.recallWord2",
      "path" : "LTCMMSEAssessmentModel.recall.recallWord2",
      "short" : "回憶悲傷",
      "definition" : "回憶第二個詞彙 (1分)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.recall.recallWord3",
      "path" : "LTCMMSEAssessmentModel.recall.recallWord3",
      "short" : "回憶火車",
      "definition" : "回憶第三個詞彙 (1分)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.recall.score",
      "path" : "LTCMMSEAssessmentModel.recall.score",
      "short" : "記憶回憶總分",
      "definition" : "記憶回憶評估總分 (0-3分)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.naming",
      "path" : "LTCMMSEAssessmentModel.naming",
      "short" : "命名",
      "definition" : "物品命名能力評估",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.naming.watch",
      "path" : "LTCMMSEAssessmentModel.naming.watch",
      "short" : "手錶命名",
      "definition" : "手錶命名能力 (1分)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.naming.pencil",
      "path" : "LTCMMSEAssessmentModel.naming.pencil",
      "short" : "鉛筆命名",
      "definition" : "鉛筆命名能力 (1分)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.naming.score",
      "path" : "LTCMMSEAssessmentModel.naming.score",
      "short" : "命名總分",
      "definition" : "命名能力評估總分 (0-2分)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.repetition",
      "path" : "LTCMMSEAssessmentModel.repetition",
      "short" : "複述",
      "definition" : "語言複述能力評估",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.repetition.sentence",
      "path" : "LTCMMSEAssessmentModel.repetition.sentence",
      "short" : "句子複述",
      "definition" : "句子複述能力 (1分)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.repetition.score",
      "path" : "LTCMMSEAssessmentModel.repetition.score",
      "short" : "複述總分",
      "definition" : "複述能力評估總分 (0-1分)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.command",
      "path" : "LTCMMSEAssessmentModel.command",
      "short" : "三階段指令",
      "definition" : "複雜指令執行能力評估",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.command.closeEyes",
      "path" : "LTCMMSEAssessmentModel.command.closeEyes",
      "short" : "閉眼指令",
      "definition" : "閉眼指令執行 (1分)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.command.threeStepTask",
      "path" : "LTCMMSEAssessmentModel.command.threeStepTask",
      "short" : "三步驟任務",
      "definition" : "三步驟任務執行 (3分)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.command.score",
      "path" : "LTCMMSEAssessmentModel.command.score",
      "short" : "指令總分",
      "definition" : "三階段指令評估總分 (0-4分)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.writing",
      "path" : "LTCMMSEAssessmentModel.writing",
      "short" : "書寫",
      "definition" : "書寫能力評估",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.writing.sentence",
      "path" : "LTCMMSEAssessmentModel.writing.sentence",
      "short" : "句子書寫",
      "definition" : "完整句子書寫能力 (1分)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.writing.score",
      "path" : "LTCMMSEAssessmentModel.writing.score",
      "short" : "書寫總分",
      "definition" : "書寫能力評估總分 (0-1分)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.copying",
      "path" : "LTCMMSEAssessmentModel.copying",
      "short" : "複製圖形",
      "definition" : "視覺空間複製能力評估",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.copying.figure",
      "path" : "LTCMMSEAssessmentModel.copying.figure",
      "short" : "圖形複製",
      "definition" : "重疊五邊形圖形複製 (1分)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.copying.score",
      "path" : "LTCMMSEAssessmentModel.copying.score",
      "short" : "複製總分",
      "definition" : "複製圖形評估總分 (0-1分)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.totalScore",
      "path" : "LTCMMSEAssessmentModel.totalScore",
      "short" : "總分",
      "definition" : "MMSE 評估總分 (0-30分)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "LTCMMSEAssessmentModel.assessmentNotes",
      "path" : "LTCMMSEAssessmentModel.assessmentNotes",
      "short" : "評估備註",
      "definition" : "評估過程中的特殊狀況或備註",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
