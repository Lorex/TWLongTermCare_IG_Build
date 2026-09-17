# 在宅急症跨機構團隊範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症跨機構團隊範例**

## Example CareTeam: 在宅急症跨機構團隊範例

Profile: [在宅急症－照護團隊](StructureDefinition-HAHCareTeam.md)

**status**: Inactive

**subject**: [王測試 Male, DoB: 1945-03-15 ( Provider number)](Patient-hah-patient.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); type = 在宅急症照護; period = 2026-09-01 09:00:00+0800 --> 2026-09-05 12:00:00+0800](Encounter-hah-admission.md)

> **participant****role**: 主責醫療人員**member**: [Practitioner 李示範](Practitioner-hah-practitioner.md)**period**: 2026-09-01 --> 2026-09-05

> **participant****role**: 共照機構**member**: [Organization 在宅急症示範醫療機構](Organization-hah-organization.md)



## Resource Content

```json
{
  "resourceType" : "CareTeam",
  "id" : "hah-team",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHCareTeam"]
  },
  "status" : "inactive",
  "subject" : {
    "reference" : "Patient/hah-patient"
  },
  "encounter" : {
    "reference" : "Encounter/hah-admission"
  },
  "participant" : [{
    "role" : [{
      "text" : "主責醫療人員"
    }],
    "member" : {
      "reference" : "Practitioner/hah-practitioner"
    },
    "period" : {
      "start" : "2026-09-01",
      "end" : "2026-09-05"
    }
  },
  {
    "role" : [{
      "text" : "共照機構"
    }],
    "member" : {
      "reference" : "Organization/hah-organization"
    }
  }]
}

```
