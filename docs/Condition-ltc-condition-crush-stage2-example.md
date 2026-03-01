# 第二期壓傷範例 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **第二期壓傷範例**

## Example Condition: 第二期壓傷範例

Profile: [長期照顧－壓傷狀況](StructureDefinition-LTCConditionCrush.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Problem List Item

**code**: 壓傷

**bodySite**: Bone structure of sacrum

**subject**: [陳明慧 Female, DoB: 1945-03-15 ( National Person Identifier (TWN): A123456789 (use: official, ))](Patient-ltc-patient-referral-chen-ming-hui-example.md)

**onset**: 2024-01-10

**recorder**: [PractitionerRole Registered nurse](PractitionerRole-ltc-practitioner-role-nurse-example.md)

**note**: @2024-01-15

> 

部位：薦骨部位，等級：第二期，大小：3x2 cm^2，正在進行傷口護理




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ltc-condition-crush-stage2-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionCrush"]
  },
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active"
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
      "code" : "problem-list-item",
      "display" : "Problem List Item"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/ReferralConditionCrushCS-TWLTC",
      "code" : "crush",
      "display" : "壓傷"
    }]
  },
  "bodySite" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "54735007",
      "display" : "Bone structure of sacrum"
    }]
  }],
  "subject" : {
    "reference" : "Patient/ltc-patient-referral-chen-ming-hui-example"
  },
  "onsetDateTime" : "2024-01-10",
  "recorder" : {
    "reference" : "PractitionerRole/ltc-practitioner-role-nurse-example"
  },
  "note" : [{
    "time" : "2024-01-15",
    "text" : "部位：薦骨部位，等級：第二期，大小：3x2 cm^2，正在進行傷口護理"
  }]
}

```
