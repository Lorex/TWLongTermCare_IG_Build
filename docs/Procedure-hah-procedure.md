# 在宅急症處置範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症處置範例**

## Example Procedure: 在宅急症處置範例

Profile: [在宅急症－處置紀錄](StructureDefinition-HAHProcedure.md)

**status**: Completed

**code**: 照護者衛教

**subject**: [王測試 Male, DoB: 1945-03-15 ( Provider number)](Patient-hah-patient.md)

**encounter**: [Encounter: extension = in-person; status = finished; class = home health (ActCode#HH); type = 訪視; period = 2026-09-01 09:00:00+0800 --> 2026-09-01 10:00:00+0800](Encounter-hah-visit.md)

**performed**: 2026-09-01 09:40:00+0800

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Practitioner 李示範](Practitioner-hah-practitioner.md) |

**note**: 

> 

已向照顧者說明量測紀錄與聯繫方式。




## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "hah-procedure",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHProcedure"]
  },
  "status" : "completed",
  "code" : {
    "coding" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-activity",
      "code" : "education"
    }],
    "text" : "照護者衛教"
  },
  "subject" : {
    "reference" : "Patient/hah-patient"
  },
  "encounter" : {
    "reference" : "Encounter/hah-visit"
  },
  "performedDateTime" : "2026-09-01T09:40:00+08:00",
  "performer" : [{
    "actor" : {
      "reference" : "Practitioner/hah-practitioner"
    }
  }],
  "note" : [{
    "text" : "已向照顧者說明量測紀錄與聯繫方式。"
  }]
}

```
