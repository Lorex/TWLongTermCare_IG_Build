# 在宅急症照護計畫範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症照護計畫範例**

## Example CarePlan: 在宅急症照護計畫範例

王測試的在宅急症照護計畫，所屬療程 HAH-20260901-001，期間為 2026 年 9 月 1 日至 9 月 5 日，狀態為已完成。處理呼吸道感染問題，目標為協助完成每日量測紀錄；包含血糖檢驗醫囑。



## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "hah-plan",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHCarePlan"]
  },
  "extension" : [{
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHAHEpisode",
    "valueReference" : {
      "reference" : "EpisodeOfCare/hah-episode"
    }
  }],
  "status" : "completed",
  "intent" : "plan",
  "category" : [{
    "coding" : [{
      "system" : "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/careplan-category-tw",
      "code" : "assess-plan"
    }]
  }],
  "subject" : {
    "reference" : "Patient/hah-patient"
  },
  "encounter" : {
    "reference" : "Encounter/hah-admission"
  },
  "period" : {
    "start" : "2026-09-01",
    "end" : "2026-09-05"
  },
  "addresses" : [{
    "reference" : "Condition/hah-condition"
  }],
  "goal" : [{
    "reference" : "Goal/hah-goal"
  }],
  "activity" : [{
    "reference" : {
      "reference" : "ServiceRequest/hah-lab-request"
    }
  }]
}

```
