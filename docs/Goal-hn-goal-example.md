# 居家護理照護目標範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理照護目標範例**

## Example Goal: 居家護理照護目標範例

Profile: [居家護理－照護目標](StructureDefinition-HNGoal.md)

**居家護理－收案關聯**: [EpisodeOfCare: extension = ->Response to Questionnaire '->居家護理－個案基本資料' about '->陳明慧 Male, DoB: 1945-03-15 ( National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code)'; identifier = https://example.org/home-nursing/episodes#HN0001-20251208; status = active; period = 2025-12-08 --> (ongoing)](EpisodeOfCare-hn-episode-example.md)

**居家護理－來源表單**: [Response to Questionnaire '->居家護理－照護計畫目標' about '->陳明慧 Male, DoB: 1945-03-15 ( National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code)'](QuestionnaireResponse-hn-targets-example.md)

**居家護理－主要目標**: false

**lifecycleStatus**: Active

**description**: 降低跌倒風險

**subject**: [陳明慧 Male, DoB: 1945-03-15 ( National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code)](Patient-hn-patient-example.md)

**start**: 2025-12-08

### Targets

| | |
| :--- | :--- |
| - | **Due[x]** |
| * | 2026-01-08 |

**expressedBy**: [Practitioner 王美玲](Practitioner-hn-nurse-example.md)



## Resource Content

```json
{
  "resourceType" : "Goal",
  "id" : "hn-goal-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HNGoal"]
  },
  "extension" : [{
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHNEpisode",
    "valueReference" : {
      "reference" : "EpisodeOfCare/hn-episode-example"
    }
  },
  {
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHNSourceForm",
    "valueReference" : {
      "reference" : "QuestionnaireResponse/hn-targets-example"
    }
  },
  {
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHNMainTarget",
    "valueBoolean" : false
  }],
  "lifecycleStatus" : "active",
  "description" : {
    "coding" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-workflow",
      "code" : "care-goal"
    }],
    "text" : "降低跌倒風險"
  },
  "subject" : {
    "reference" : "Patient/hn-patient-example"
  },
  "startDate" : "2025-12-08",
  "target" : [{
    "dueDate" : "2026-01-08"
  }],
  "expressedBy" : {
    "reference" : "Practitioner/hn-nurse-example"
  }
}

```
