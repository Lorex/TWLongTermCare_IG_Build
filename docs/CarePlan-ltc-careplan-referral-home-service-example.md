# 轉介單居家服務計畫範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **轉介單居家服務計畫範例**

## Example CarePlan: 轉介單居家服務計畫範例

Profile: [轉介單－服務種類](StructureDefinition-LTCCarePlanReferral.md)

**status**: Active

**intent**: Proposal

**category**: Assessment and Plan of Treatment

**subject**: [陳明慧 Female, DoB: 1945-03-15 ( National Person Identifier (TWN): A123456789 (use: official, ))](Patient-ltc-patient-referral-chen-ming-hui-example.md)

**period**: 2024-02-01 --> 2024-08-01

**author**: [PractitionerRole Registered nurse](PractitionerRole-ltc-practitioner-role-nurse-example.md)

**goal**: [Goal: lifecycleStatus = active; description = Advancing mobility; start[x] = 2024-01-15; note = 住民目前需要部分協助才能行走，期望透過復健訓練達到獨立行走的目標](Goal-ltc-goal-mobility-improvement-example.md)

> **activity**

### Details

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Code** | **Status** | **Performer** | **Description** |
| * | 居家護理 | Not Started | [Organization 新北市私立安康老人長期照顧中心（養護型）](Organization-ltc-organization-example.md) | 提供居家護理服務，如換藥、傷口照護、健康評估等 |


> **activity**

### Details

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Code** | **Status** | **Performer** | **Description** |
| * | 居家吞嚥 | Not Started | [Organization 新北市私立安康老人長期照顧中心（養護型）](Organization-ltc-organization-example.md) | 提供居家吞嚥訓練與相關照護服務 |


**note**: @2024-01-20

> 

個案需要居家照顧及復健服務，由照管中心評估後安排服務提供單位




## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "ltc-careplan-referral-home-service-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCCarePlanReferral"]
  },
  "status" : "active",
  "intent" : "proposal",
  "category" : [{
    "coding" : [{
      "system" : "https://twcore.mohw.gov.tw/ig/twcore/CodeSystem/careplan-category-tw",
      "code" : "assess-plan"
    }]
  }],
  "subject" : {
    "reference" : "Patient/ltc-patient-referral-chen-ming-hui-example"
  },
  "period" : {
    "start" : "2024-02-01",
    "end" : "2024-08-01"
  },
  "author" : {
    "reference" : "PractitionerRole/ltc-practitioner-role-nurse-example"
  },
  "goal" : [{
    "reference" : "Goal/ltc-goal-mobility-improvement-example"
  }],
  "activity" : [{
    "detail" : {
      "code" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/ReferralCarePlanCS-TWLTC",
          "code" : "home-care",
          "display" : "居家護理"
        }]
      },
      "status" : "not-started",
      "performer" : [{
        "reference" : "Organization/ltc-organization-example"
      }],
      "description" : "提供居家護理服務，如換藥、傷口照護、健康評估等"
    }
  },
  {
    "detail" : {
      "code" : {
        "coding" : [{
          "system" : "http://ltc-ig.fhir.tw/CodeSystem/ReferralCarePlanCS-TWLTC",
          "code" : "home-swallowing",
          "display" : "居家吞嚥"
        }]
      },
      "status" : "not-started",
      "performer" : [{
        "reference" : "Organization/ltc-organization-example"
      }],
      "description" : "提供居家吞嚥訓練與相關照護服務"
    }
  }],
  "note" : [{
    "time" : "2024-01-20",
    "text" : "個案需要居家照顧及復健服務，由照管中心評估後安排服務提供單位"
  }]
}

```
