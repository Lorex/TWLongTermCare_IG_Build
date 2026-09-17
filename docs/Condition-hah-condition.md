# 在宅急症診斷範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症診斷範例**

## Example Condition: 在宅急症診斷範例

Profile: [在宅急症－診斷與照護問題](StructureDefinition-HAHCondition.md)

**clinicalStatus**: Resolved

**verificationStatus**: Confirmed

**category**: Encounter Diagnosis

**code**: 呼吸道感染

**subject**: [王測試 Male, DoB: 1945-03-15 ( Provider number)](Patient-hah-patient.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); type = 在宅急症照護; period = 2026-09-01 09:00:00+0800 --> 2026-09-05 12:00:00+0800](Encounter-hah-admission.md)

**recordedDate**: 2026-09-01 09:00:00+0800



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "hah-condition",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHCondition"]
  },
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "resolved"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "confirmed"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
      "code" : "encounter-diagnosis"
    }]
  }],
  "code" : {
    "text" : "呼吸道感染"
  },
  "subject" : {
    "reference" : "Patient/hah-patient"
  },
  "encounter" : {
    "reference" : "Encounter/hah-admission"
  },
  "recordedDate" : "2026-09-01T09:00:00+08:00"
}

```
