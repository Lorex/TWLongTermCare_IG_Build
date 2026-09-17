# 在宅急症完成療程範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症完成療程範例**

## Example EpisodeOfCare: 在宅急症完成療程範例

Profile: [在宅急症－收案療程](StructureDefinition-HAHEpisodeOfCare.md)

**在宅急症－療程結束原因**: 完成治療

**identifier**: `https://example.org/hah/episodes`/HAH-20260901-001

**status**: Finished

**type**: 在宅急症照護

### Diagnoses

| | |
| :--- | :--- |
| - | **Condition** |
| * | [Condition ](Condition-hah-condition.md) |

**patient**: [王測試 Male, DoB: 1945-03-15 ( Provider number)](Patient-hah-patient.md)

**managingOrganization**: [Organization 在宅急症示範醫療機構](Organization-hah-organization.md)

**period**: 2026-09-01 08:00:00+0800 --> 2026-09-05 12:00:00+0800

**team**: [CareTeam: status = inactive](CareTeam-hah-team.md)



## Resource Content

```json
{
  "resourceType" : "EpisodeOfCare",
  "id" : "hah-episode",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHEpisodeOfCare"]
  },
  "extension" : [{
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHAHOutcome",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-outcome",
        "code" : "completed-treatment"
      }]
    }
  }],
  "identifier" : [{
    "system" : "https://example.org/hah/episodes",
    "value" : "HAH-20260901-001"
  }],
  "status" : "finished",
  "type" : [{
    "coding" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-activity",
      "code" : "acute-home"
    }]
  }],
  "diagnosis" : [{
    "condition" : {
      "reference" : "Condition/hah-condition"
    }
  }],
  "patient" : {
    "reference" : "Patient/hah-patient"
  },
  "managingOrganization" : {
    "reference" : "Organization/hah-organization"
  },
  "period" : {
    "start" : "2026-09-01T08:00:00+08:00",
    "end" : "2026-09-05T12:00:00+08:00"
  },
  "team" : [{
    "reference" : "CareTeam/hah-team"
  }]
}

```
