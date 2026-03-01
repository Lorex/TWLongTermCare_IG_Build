# 轉介－身心障礙類型（肢體）範例 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **轉介－身心障礙類型（肢體）範例**

## Example Condition: 轉介－身心障礙類型（肢體）範例

Profile: [長期照顧－身心障礙類型](StructureDefinition-LTCConditionDisabilityType.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Problem List Item

**code**: 第七類

**subject**: [陳明慧 Female, DoB: 1945-03-15 ( National Person Identifier (TWN): A123456789 (use: official, ))](Patient-ltc-patient-referral-chen-ming-hui-example.md)

**onset**: 2015-08-20

**recorder**: [PractitionerRole Registered nurse](PractitionerRole-ltc-practitioner-role-nurse-example.md)



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ltc-condition-disability-type-limb-referral-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionDisabilityType"]
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
      "code" : "problem-list-item"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/ConditionDisabilityTypeCS-TWLTC",
      "code" : "07"
    }]
  },
  "subject" : {
    "reference" : "Patient/ltc-patient-referral-chen-ming-hui-example"
  },
  "onsetDateTime" : "2015-08-20",
  "recorder" : {
    "reference" : "PractitionerRole/ltc-practitioner-role-nurse-example"
  }
}

```
