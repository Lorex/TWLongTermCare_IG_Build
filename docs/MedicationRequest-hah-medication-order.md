# 在宅急症輸注處方範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症輸注處方範例**

## Example MedicationRequest: 在宅急症輸注處方範例

Profile: [在宅急症－給藥處方](StructureDefinition-HAHMedicationRequest.md)

**status**: Completed

**intent**: Order

**medication**: 示範用輸注液

**subject**: [王測試 Male, DoB: 1945-03-15 ( Provider number)](Patient-hah-patient.md)

**encounter**: [Encounter: extension = in-person; status = finished; class = home health (ActCode#HH); type = 訪視; period = 2026-09-01 09:00:00+0800 --> 2026-09-01 10:00:00+0800](Encounter-hah-visit.md)

**authoredOn**: 2026-09-01 09:10:00+0800

**requester**: [Practitioner 李示範](Practitioner-hah-practitioner.md)

### DosageInstructions

| | |
| :--- | :--- |
| - | **Text** |
| * | 本例僅示範輸注期間及速率欄位。 |



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "hah-medication-order",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHMedicationRequest"]
  },
  "status" : "completed",
  "intent" : "order",
  "medicationCodeableConcept" : {
    "text" : "示範用輸注液"
  },
  "subject" : {
    "reference" : "Patient/hah-patient"
  },
  "encounter" : {
    "reference" : "Encounter/hah-visit"
  },
  "authoredOn" : "2026-09-01T09:10:00+08:00",
  "requester" : {
    "reference" : "Practitioner/hah-practitioner"
  },
  "dosageInstruction" : [{
    "text" : "本例僅示範輸注期間及速率欄位。"
  }]
}

```
