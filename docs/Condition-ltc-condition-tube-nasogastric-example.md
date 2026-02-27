# 鼻胃管管路狀況範例 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **鼻胃管管路狀況範例**

## Example Condition: 鼻胃管管路狀況範例

Profile: [長期照顧－管路裝設狀況](StructureDefinition-LTCConditionTube.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Problem List Item

**code**: 鼻胃管

**subject**: [陳明慧 Female, DoB: 1945-03-15 ( National Person Identifier (TWN): A123456789 (use: official, ))](Patient-ltc-patient-referral-chen-ming-hui-example.md)

**onset**: 2024-01-01

**recorder**: [PractitionerRole Registered nurse](PractitionerRole-ltc-practitioner-role-nurse-example.md)

**note**: @2024-01-15

> 

持續置放鼻胃管，需定期更換




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ltc-condition-tube-nasogastric-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionTube"]
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
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/ReferralConditionTubeCS-TWLTC",
      "code" : "nasogastric-tube",
      "display" : "鼻胃管"
    }]
  },
  "subject" : {
    "reference" : "Patient/ltc-patient-referral-chen-ming-hui-example"
  },
  "onsetDateTime" : "2024-01-01",
  "recorder" : {
    "reference" : "PractitionerRole/ltc-practitioner-role-nurse-example"
  },
  "note" : [{
    "time" : "2024-01-15",
    "text" : "持續置放鼻胃管，需定期更換"
  }]
}

```
