# 運動目標－步行步數範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **運動目標－步行步數範例**

## Example Goal: 運動目標－步行步數範例

Profile: [運動處方－運動目標](StructureDefinition-PASportGoal.md)

**identifier**: `http://ltc-ig.fhir.tw/goal-id`/goal-walking-2024-001

**lifecycleStatus**: Active

**category**: Physical Activity

**description**: 患者每日步行步數目標：達到每日8000步，促進心血管健康和肌肉力量

**subject**: [陳明慧 Female, DoB: 1945-03-15 ( National Person Identifier (TWN): A123456789 (use: official, ))](Patient-ltc-patient-chen-ming-hui.md)

**start**: 2024-01-15

### Targets

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Measure** | **Detail[x]** | **Due[x]** |
| * | Number of steps in 24 hour Measured | 8000 steps per day (Details: UCUM code/d = '/d') | 2024-04-15 |

**statusDate**: 2024-01-15

**note**: @2024-01-15

> 

考慮患者目前體能狀況，設定循序漸進的步數目標，最終達到每日8000步




## Resource Content

```json
{
  "resourceType" : "Goal",
  "id" : "pasport-goal-walking-steps-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/PASportGoal"]
  },
  "identifier" : [{
    "system" : "http://ltc-ig.fhir.tw/goal-id",
    "value" : "goal-walking-2024-001"
  }],
  "lifecycleStatus" : "active",
  "category" : [{
    "coding" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS-Sport",
      "code" : "PhysicalActivity",
      "display" : "Physical Activity"
    }]
  }],
  "description" : {
    "text" : "患者每日步行步數目標：達到每日8000步，促進心血管健康和肌肉力量"
  },
  "subject" : {
    "reference" : "Patient/ltc-patient-chen-ming-hui"
  },
  "startDate" : "2024-01-15",
  "target" : [{
    "measure" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "41950-7",
        "display" : "Number of steps in 24 hour Measured"
      }]
    },
    "detailQuantity" : {
      "value" : 8000,
      "unit" : "steps per day",
      "system" : "http://unitsofmeasure.org",
      "code" : "/d"
    },
    "dueDate" : "2024-04-15"
  }],
  "statusDate" : "2024-01-15",
  "note" : [{
    "time" : "2024-01-15",
    "text" : "考慮患者目前體能狀況，設定循序漸進的步數目標，最終達到每日8000步"
  }]
}

```
