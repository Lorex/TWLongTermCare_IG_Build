# 在宅急症過敏資訊範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症過敏資訊範例**

## Example AllergyIntolerance: 在宅急症過敏資訊範例

Profile: [在宅急症－過敏資訊](StructureDefinition-HAHAllergyIntolerance.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**code**: 青黴素

**patient**: [王測試 Male, DoB: 1945-03-15 ( Provider number)](Patient-hah-patient.md)

**encounter**: [Encounter: extension = in-person; status = finished; class = home health (ActCode#HH); type = 訪視; period = 2026-09-01 09:00:00+0800 --> 2026-09-01 10:00:00+0800](Encounter-hah-visit.md)

**recordedDate**: 2026-09-01 09:00:00+0800

### Reactions

| | |
| :--- | :--- |
| - | **Manifestation** |
| * | 皮疹 |



## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "hah-allergy",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHAllergyIntolerance"]
  },
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
      "code" : "active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
      "code" : "confirmed"
    }]
  },
  "code" : {
    "text" : "青黴素"
  },
  "patient" : {
    "reference" : "Patient/hah-patient"
  },
  "encounter" : {
    "reference" : "Encounter/hah-visit"
  },
  "recordedDate" : "2026-09-01T09:00:00+08:00",
  "reaction" : [{
    "manifestation" : [{
      "text" : "皮疹"
    }]
  }]
}

```
