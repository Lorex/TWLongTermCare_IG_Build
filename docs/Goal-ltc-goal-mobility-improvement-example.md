# 行動能力改善目標範例 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **行動能力改善目標範例**

## Example Goal: 行動能力改善目標範例

Profile: [長期照顧－照顧目標](StructureDefinition-LTCGoal.md)

**lifecycleStatus**: Active

**description**: 改善住民行動能力

**subject**: [陳明慧 Female, DoB: 1945-03-15 ( National Person Identifier (TWN): A123456789 (use: official, ))](Patient-ltc-patient-referral-chen-ming-hui-example.md)

**start**: 2024-01-15

### Targets

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Measure** | **Detail[x]** | **Due[x]** |
| * | Impaired mobility (finding) | 能夠獨立使用助行器行走50公尺 | 2024-04-15 |

**expressedBy**: [PractitionerRole Registered nurse](PractitionerRole-ltc-practitioner-role-nurse-example.md)

**note**: @2024-01-15

> 

住民目前需要部分協助才能行走，期望透過復健訓練達到獨立行走的目標




## Resource Content

```json
{
  "resourceType" : "Goal",
  "id" : "ltc-goal-mobility-improvement-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCGoal"]
  },
  "lifecycleStatus" : "active",
  "description" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "710950005",
      "display" : "Progressive mobility (regime/therapy)"
    }],
    "text" : "改善住民行動能力"
  },
  "subject" : {
    "reference" : "Patient/ltc-patient-referral-chen-ming-hui-example"
  },
  "startDate" : "2024-01-15",
  "target" : [{
    "measure" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "82971005",
        "display" : "Impaired mobility (finding)"
      }]
    },
    "detailString" : "能夠獨立使用助行器行走50公尺",
    "dueDate" : "2024-04-15"
  }],
  "expressedBy" : {
    "reference" : "PractitionerRole/ltc-practitioner-role-nurse-example"
  },
  "note" : [{
    "time" : "2024-01-15",
    "text" : "住民目前需要部分協助才能行走，期望透過復健訓練達到獨立行走的目標"
  }]
}

```
