# 行動照顧計畫範例 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **行動照顧計畫範例**

## Example CarePlan: 行動照顧計畫範例

Profile: [長期照顧－照顧計畫](StructureDefinition-LTCCarePlan.md)

**status**: Active

**intent**: Plan

**category**: Assessment and Plan of Treatment

**subject**: [陳明慧 Female, DoB: 1945-03-15 ( National Person Identifier (TWN): A123456789 (use: official, ))](Patient-ltc-patient-chen-ming-hui.md)

**period**: 2024-01-15 --> 2024-04-15

**author**: [PractitionerRole Registered nurse](PractitionerRole-ltc-practitioner-role-nurse-example.md)

**contributor**: [RelatedPerson 陳志強](RelatedPerson-ltc-related-person-primary-caregiver-example.md)

**goal**: [Goal: lifecycleStatus = active; description = Progressive mobility (regime/therapy); start[x] = 2024-01-15; note = 住民目前需要部分協助才能行走，期望透過復健訓練達到獨立行走的目標](Goal-ltc-goal-mobility-improvement-example.md)

> **activity**

### Details

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| - | **Code** | **Status** | **Scheduled[x]** | **Performer** | **Description** |
| * | Stretching exercises | In Progress | 2024-01-15 --> 2024-04-15 | [PractitionerRole Registered nurse](PractitionerRole-ltc-practitioner-role-nurse-example.md) | 進行每日助行器行走訓練，每次30分鐘，每日2次 |


**note**: @2024-01-15

> 

住民配合度良好，預期能達成獨立行走的目標




## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "ltc-careplan-mobility-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCCarePlan"]
  },
  "status" : "active",
  "intent" : "plan",
  "category" : [{
    "coding" : [{
      "system" : "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/careplan-category-tw",
      "code" : "assess-plan"
    }]
  }],
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
  "contributor" : [{
    "reference" : "RelatedPerson/ltc-related-person-primary-caregiver-example"
  }],
  "goal" : [{
    "reference" : "Goal/ltc-goal-mobility-improvement-example"
  }],
  "activity" : [{
    "detail" : {
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "229070002",
          "display" : "Stretching exercises"
        }]
      },
      "status" : "in-progress",
      "scheduledPeriod" : {
        "start" : "2024-01-15",
        "end" : "2024-04-15"
      },
      "performer" : [{
        "reference" : "PractitionerRole/ltc-practitioner-role-nurse-example"
      }],
      "description" : "進行每日助行器行走訓練，每次30分鐘，每日2次"
    }
  }],
  "note" : [{
    "time" : "2024-01-15",
    "text" : "住民配合度良好，預期能達成獨立行走的目標"
  }]
}

```
