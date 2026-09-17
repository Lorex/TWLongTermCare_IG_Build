# 在宅急症持續輸注範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症持續輸注範例**

## Example MedicationAdministration: 在宅急症持續輸注範例

Profile: [在宅急症－給藥與輸注](StructureDefinition-HAHMedicationAdministration.md)

**status**: Completed

**medication**: 示範用輸注液

**subject**: [王測試 Male, DoB: 1945-03-15 ( Provider number)](Patient-hah-patient.md)

**context**: [Encounter: extension = in-person; status = finished; class = home health (ActCode#HH); type = 訪視; period = 2026-09-01 09:00:00+0800 --> 2026-09-01 10:00:00+0800](Encounter-hah-visit.md)

**effective**: 2026-09-01 09:15:00+0800 --> 2026-09-01 09:45:00+0800

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Practitioner 李示範](Practitioner-hah-practitioner.md) |

**request**: [MedicationRequest: status = completed; intent = order; medication[x] = ; authoredOn = 2026-09-01 09:10:00+0800](MedicationRequest-hah-medication-order.md)

### Dosages

| | | |
| :--- | :--- | :--- |
| - | **Route** | **Rate[x]** |
| * | 靜脈 | 100 mL/h (Details: UCUM codemL/h = 'mL/h') |



## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "hah-infusion",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHMedicationAdministration"]
  },
  "status" : "completed",
  "medicationCodeableConcept" : {
    "text" : "示範用輸注液"
  },
  "subject" : {
    "reference" : "Patient/hah-patient"
  },
  "context" : {
    "reference" : "Encounter/hah-visit"
  },
  "effectivePeriod" : {
    "start" : "2026-09-01T09:15:00+08:00",
    "end" : "2026-09-01T09:45:00+08:00"
  },
  "performer" : [{
    "actor" : {
      "reference" : "Practitioner/hah-practitioner"
    }
  }],
  "request" : {
    "reference" : "MedicationRequest/hah-medication-order"
  },
  "dosage" : {
    "route" : {
      "text" : "靜脈"
    },
    "rateQuantity" : {
      "value" : 100,
      "unit" : "mL/h",
      "system" : "http://unitsofmeasure.org",
      "code" : "mL/h"
    }
  }
}

```
