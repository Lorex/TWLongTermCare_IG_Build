# 在宅急症未給藥範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症未給藥範例**

## Example MedicationAdministration: 在宅急症未給藥範例

Profile: [在宅急症－給藥與輸注](StructureDefinition-HAHMedicationAdministration.md)

**status**: Not Done

**statusReason**: 本次給藥經評估取消

**medication**: 示範用輸注液

**subject**: [王測試 Male, DoB: 1945-03-15 ( Provider number)](Patient-hah-patient.md)

**context**: [Encounter: extension = in-person; status = finished; class = home health (ActCode#HH); type = 訪視; period = 2026-09-01 09:00:00+0800 --> 2026-09-01 10:00:00+0800](Encounter-hah-visit.md)

**effective**: 2026-09-01 09:50:00+0800

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Practitioner 李示範](Practitioner-hah-practitioner.md) |

**request**: [MedicationRequest: status = completed; intent = order; medication[x] = ; authoredOn = 2026-09-01 09:10:00+0800](MedicationRequest-hah-medication-order.md)



## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "hah-medication-not-done",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHMedicationAdministration"]
  },
  "status" : "not-done",
  "statusReason" : [{
    "text" : "本次給藥經評估取消"
  }],
  "medicationCodeableConcept" : {
    "text" : "示範用輸注液"
  },
  "subject" : {
    "reference" : "Patient/hah-patient"
  },
  "context" : {
    "reference" : "Encounter/hah-visit"
  },
  "effectiveDateTime" : "2026-09-01T09:50:00+08:00",
  "performer" : [{
    "actor" : {
      "reference" : "Practitioner/hah-practitioner"
    }
  }],
  "request" : {
    "reference" : "MedicationRequest/hah-medication-order"
  }
}

```
