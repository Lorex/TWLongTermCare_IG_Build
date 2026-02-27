# 運動史記錄範例 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **運動史記錄範例**

## Example Condition: 運動史記錄範例

Profile: [運動處方－運動史](StructureDefinition-PASportConditionExerciseHistory.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Physical Activity

**code**: 患者過去有規律運動習慣，主要以散步和太極拳為主

**subject**: [陳明慧 Female, DoB: 1945-03-15 ( National Person Identifier (TWN): A123456789 (use: official, ))](Patient-ltc-patient-chen-ming-hui.md)

**onset**: 2020-01-01

**recordedDate**: 2024-01-15

**recorder**: [PractitionerRole Registered nurse](PractitionerRole-ltc-practitioner-role-nurse-example.md)

### Evidences

| | |
| :--- | :--- |
| - | **Detail** |
| * | [Observation Heart rate](Observation-pasport-observation-heart-rate-example.md) |

**note**: @2024-01-15

> 

患者報告從60歲開始每日早晨散步30分鐘，並參加社區太極拳課程已有4年。近期因關節不適減少運動頻率，希望透過專業指導恢復運動習慣。




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "pasport-condition-exercise-history-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/PASportConditionExerciseHistory"]
  },
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "confirmed"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS-Sport",
      "code" : "PhysicalActivity",
      "display" : "Physical Activity"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "229070002",
      "display" : "Stretching exercises"
    }],
    "text" : "患者過去有規律運動習慣，主要以散步和太極拳為主"
  },
  "subject" : {
    "reference" : "Patient/ltc-patient-chen-ming-hui"
  },
  "onsetDateTime" : "2020-01-01",
  "recordedDate" : "2024-01-15",
  "recorder" : {
    "reference" : "PractitionerRole/ltc-practitioner-role-nurse-example"
  },
  "evidence" : [{
    "detail" : [{
      "reference" : "Observation/pasport-observation-heart-rate-example"
    }]
  }],
  "note" : [{
    "time" : "2024-01-15",
    "text" : "患者報告從60歲開始每日早晨散步30分鐘，並參加社區太極拳課程已有4年。近期因關節不適減少運動頻率，希望透過專業指導恢復運動習慣。"
  }]
}

```
