# 在宅急症照護目標範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症照護目標範例**

## Example Goal: 在宅急症照護目標範例

Profile: [在宅急症－照護目標](StructureDefinition-HAHGoal.md)

**在宅急症－療程關聯**: [EpisodeOfCare: extension = 完成治療; identifier = https://example.org/hah/episodes#HAH-20260901-001; status = finished; type = 在宅急症照護; period = 2026-09-01 08:00:00+0800 --> 2026-09-05 12:00:00+0800](EpisodeOfCare-hah-episode.md)

**lifecycleStatus**: Completed

**description**: 本次照護期間能由照顧者協助完成居家量測並回報不適情形

**subject**: [王測試 Male, DoB: 1945-03-15 ( Provider number)](Patient-hah-patient.md)

### Targets

| | |
| :--- | :--- |
| - | **Due[x]** |
| * | 2026-09-05 |



## Resource Content

```json
{
  "resourceType" : "Goal",
  "id" : "hah-goal",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHGoal"]
  },
  "extension" : [{
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHAHEpisode",
    "valueReference" : {
      "reference" : "EpisodeOfCare/hah-episode"
    }
  }],
  "lifecycleStatus" : "completed",
  "description" : {
    "coding" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-activity",
      "code" : "care-goal"
    }],
    "text" : "本次照護期間能由照顧者協助完成居家量測並回報不適情形"
  },
  "subject" : {
    "reference" : "Patient/hah-patient"
  },
  "target" : [{
    "dueDate" : "2026-09-05"
  }]
}

```
