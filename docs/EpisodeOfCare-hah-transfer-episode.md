# 再次收案後轉院的療程範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **再次收案後轉院的療程範例**

## Example EpisodeOfCare: 再次收案後轉院的療程範例

Profile: [在宅急症－收案療程](StructureDefinition-HAHEpisodeOfCare.md)

**在宅急症－療程結束原因**: 轉急診或住院

**identifier**: `https://example.org/hah/episodes`/HAH-20260910-002

**status**: Finished

**type**: 在宅急症照護

**patient**: [王測試 Male, DoB: 1945-03-15 ( Provider number)](Patient-hah-patient.md)

**managingOrganization**: [Organization 在宅急症示範醫療機構](Organization-hah-organization.md)

**period**: 2026-09-10 08:00:00+0800 --> 2026-09-11 10:00:00+0800



## Resource Content

```json
{
  "resourceType" : "EpisodeOfCare",
  "id" : "hah-transfer-episode",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHEpisodeOfCare"]
  },
  "extension" : [{
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHAHOutcome",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-outcome",
        "code" : "hospital-transfer"
      }]
    }
  }],
  "identifier" : [{
    "system" : "https://example.org/hah/episodes",
    "value" : "HAH-20260910-002"
  }],
  "status" : "finished",
  "type" : [{
    "coding" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-activity",
      "code" : "acute-home"
    }]
  }],
  "patient" : {
    "reference" : "Patient/hah-patient"
  },
  "managingOrganization" : {
    "reference" : "Organization/hah-organization"
  },
  "period" : {
    "start" : "2026-09-10T08:00:00+08:00",
    "end" : "2026-09-11T10:00:00+08:00"
  }
}

```
