# 肢體障礙類型範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **肢體障礙類型範例**

## Example Condition: 肢體障礙類型範例

Profile: [長期照顧－身心障礙類型](StructureDefinition-LTCConditionDisabilityType.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Problem List Item

**severity**: Mild (qualifier value)

**code**: 第七類

**bodySite**: Lower limb structure

**subject**: [陳明慧 Female, DoB: 1945-03-15 ( National Person Identifier (TWN): A123456789 (use: official, ))](Patient-ltc-patient-cms-chen-ming-hui-example.md)

**onset**: 2015-08-20

**recorder**: [PractitionerRole Registered nurse](PractitionerRole-ltc-practitioner-role-nurse-example.md)

**note**: @2024-01-15

> 

左下肢功能輕度受限，影響行走功能，持有身心障礙手冊




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ltc-condition-disability-type-limb-example",
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
      "code" : "problem-list-item",
      "display" : "Problem List Item"
    }]
  }],
  "severity" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "255604002",
      "display" : "Mild (qualifier value)"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/ConditionDisabilityTypeCS-TWLTC",
      "code" : "07",
      "display" : "第七類"
    }]
  },
  "bodySite" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "61685007",
      "display" : "Lower limb structure"
    }]
  }],
  "subject" : {
    "reference" : "Patient/ltc-patient-cms-chen-ming-hui-example"
  },
  "onsetDateTime" : "2015-08-20",
  "recorder" : {
    "reference" : "PractitionerRole/ltc-practitioner-role-nurse-example"
  },
  "note" : [{
    "time" : "2024-01-15",
    "text" : "左下肢功能輕度受限，影響行走功能，持有身心障礙手冊"
  }]
}

```
