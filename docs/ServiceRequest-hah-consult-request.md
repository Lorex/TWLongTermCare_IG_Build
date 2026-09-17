# 在宅急症照會請求範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症照會請求範例**

## Example ServiceRequest: 在宅急症照會請求範例

Profile: [在宅急症－服務請求](StructureDefinition-HAHServiceRequest.md)

**status**: Completed

**intent**: Order

**category**: 專科照會

**code**: 專科照會

**subject**: [王測試 Male, DoB: 1945-03-15 ( Provider number)](Patient-hah-patient.md)

**encounter**: [Encounter: extension = in-person; status = finished; class = home health (ActCode#HH); type = 訪視; period = 2026-09-01 09:00:00+0800 --> 2026-09-01 10:00:00+0800](Encounter-hah-visit.md)

**authoredOn**: 2026-09-01 09:05:00+0800

**requester**: [Practitioner 李示範](Practitioner-hah-practitioner.md)

**performer**: [Practitioner 李示範](Practitioner-hah-practitioner.md)

**reasonReference**: [Condition ](Condition-hah-condition.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "hah-consult-request",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHServiceRequest"]
  },
  "status" : "completed",
  "intent" : "order",
  "category" : [{
    "coding" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-activity",
      "code" : "consultation"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-activity",
      "code" : "consultation"
    }]
  },
  "subject" : {
    "reference" : "Patient/hah-patient"
  },
  "encounter" : {
    "reference" : "Encounter/hah-visit"
  },
  "authoredOn" : "2026-09-01T09:05:00+08:00",
  "requester" : {
    "reference" : "Practitioner/hah-practitioner"
  },
  "performer" : [{
    "reference" : "Practitioner/hah-practitioner"
  }],
  "reasonReference" : [{
    "reference" : "Condition/hah-condition"
  }]
}

```
