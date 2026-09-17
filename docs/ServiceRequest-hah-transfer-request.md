# 在宅急症轉院申請範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症轉院申請範例**

## Example ServiceRequest: 在宅急症轉院申請範例

Profile: [在宅急症－服務請求](StructureDefinition-HAHServiceRequest.md)

**status**: Active

**intent**: Order

**category**: 轉介

**code**: 轉介

**subject**: [王測試 Male, DoB: 1945-03-15 ( Provider number)](Patient-hah-patient.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); type = 在宅急症照護; period = 2026-09-10 08:00:00+0800 --> 2026-09-11 10:00:00+0800](Encounter-hah-transfer-admission.md)

**authoredOn**: 2026-09-11 09:30:00+0800

**requester**: [Practitioner 李示範](Practitioner-hah-practitioner.md)

**performer**: [Organization 轉院接收示範醫院](Organization-hah-receiving-hospital.md)

**reasonCode**: 本次照護需要超出居家服務能力，安排轉院評估。



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "hah-transfer-request",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHServiceRequest"]
  },
  "status" : "active",
  "intent" : "order",
  "category" : [{
    "coding" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-activity",
      "code" : "referral"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/hah-activity",
      "code" : "referral"
    }]
  },
  "subject" : {
    "reference" : "Patient/hah-patient"
  },
  "encounter" : {
    "reference" : "Encounter/hah-transfer-admission"
  },
  "authoredOn" : "2026-09-11T09:30:00+08:00",
  "requester" : {
    "reference" : "Practitioner/hah-practitioner"
  },
  "performer" : [{
    "reference" : "Organization/hah-receiving-hospital"
  }],
  "reasonCode" : [{
    "text" : "本次照護需要超出居家服務能力，安排轉院評估。"
  }]
}

```
