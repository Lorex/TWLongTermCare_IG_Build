# 身心障礙手冊持有狀態範例 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **身心障礙手冊持有狀態範例**

## Example Condition: 身心障礙手冊持有狀態範例

Profile: [長期照顧－身心障礙手冊持有狀態](StructureDefinition-LTCConditionDisability.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Problem List Item

**code**: 有身心障礙手冊

**subject**: [陳明慧 Female, DoB: 1945-03-15 ( National Person Identifier (TWN): A123456789 (use: official, ))](Patient-ltc-patient-cms-chen-ming-hui-example.md)

**onset**: 2015-08-20

**recorder**: [PractitionerRole Registered nurse](PractitionerRole-ltc-practitioner-role-nurse-example.md)

**note**: @2024-01-15

> 

住民持有身心障礙手冊，類別為肢體障礙輕度




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ltc-condition-disability-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionDisability"]
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
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/ConditionDisabilityCS-TWLTC",
      "code" : "disability-handbook",
      "display" : "有身心障礙手冊"
    }]
  },
  "subject" : {
    "reference" : "Patient/ltc-patient-cms-chen-ming-hui-example"
  },
  "onsetDateTime" : "2015-08-20",
  "recorder" : {
    "reference" : "PractitionerRole/ltc-practitioner-role-nurse-example"
  },
  "note" : [{
    "time" : "2024-01-15",
    "text" : "住民持有身心障礙手冊，類別為肢體障礙輕度"
  }]
}

```
