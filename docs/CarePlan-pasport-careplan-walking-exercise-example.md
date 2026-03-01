# 運動計畫－步行運動範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **運動計畫－步行運動範例**

## Example CarePlan: 運動計畫－步行運動範例

Profile: [運動處方－運動計畫](StructureDefinition-PASportCarePlan.md)

**status**: Active

**intent**: Plan

**category**: Physical Activity

**description**: 依照運動處方設計步行運動計畫，每日步行30分鐘，目標達到每日8000步

**subject**: [陳明慧 Female, DoB: 1945-03-15 ( National Person Identifier (TWN): A123456789 (use: official, ))](Patient-ltc-patient-chen-ming-hui.md)

**period**: 2024-01-15 --> 2024-04-15

**author**: [PractitionerRole Registered nurse](PractitionerRole-ltc-practitioner-role-nurse-example.md)

**goal**: [Goal: identifier = http://ltc-ig.fhir.tw/goal-id#goal-walking-2024-001; lifecycleStatus = active; category = Physical Activity; description = ; start[x] = 2024-01-15; statusDate = 2024-01-15; note = 考慮患者目前體能狀況，設定循序漸進的步數目標，最終達到每日8000步](Goal-pasport-goal-walking-steps-example.md)

> **activity****progress**: @2024-01-15 09:00:00+0800
> 

開始執行步行運動計畫，第一週目標每日5000步


### Details

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Status** | **Scheduled[x]** | **Description** |
| * | In Progress | 2024-01-15 --> 2024-04-15 | 每日早晨步行30分鐘，逐步增加步數目標。第一週5000步，第二週6000步，第三週7000步，第四週達到8000步目標。 |


**note**: @2024-01-15

> 

患者配合度良好，體能狀況適合進行步行運動，建議循序漸進增加運動強度




## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "pasport-careplan-walking-exercise-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/PASportCarePlan"]
  },
  "status" : "active",
  "intent" : "plan",
  "category" : [{
    "coding" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS-Sport",
      "code" : "PhysicalActivity"
    }]
  }],
  "description" : "依照運動處方設計步行運動計畫，每日步行30分鐘，目標達到每日8000步",
  "subject" : {
    "reference" : "Patient/ltc-patient-chen-ming-hui"
  },
  "period" : {
    "start" : "2024-01-15",
    "end" : "2024-04-15"
  },
  "author" : {
    "reference" : "PractitionerRole/ltc-practitioner-role-nurse-example"
  },
  "goal" : [{
    "reference" : "Goal/pasport-goal-walking-steps-example"
  }],
  "activity" : [{
    "progress" : [{
      "time" : "2024-01-15T09:00:00+08:00",
      "text" : "開始執行步行運動計畫，第一週目標每日5000步"
    }],
    "detail" : {
      "status" : "in-progress",
      "scheduledPeriod" : {
        "start" : "2024-01-15",
        "end" : "2024-04-15"
      },
      "description" : "每日早晨步行30分鐘，逐步增加步數目標。第一週5000步，第二週6000步，第三週7000步，第四週達到8000步目標。"
    }
  }],
  "note" : [{
    "time" : "2024-01-15",
    "text" : "患者配合度良好，體能狀況適合進行步行運動，建議循序漸進增加運動強度"
  }]
}

```
