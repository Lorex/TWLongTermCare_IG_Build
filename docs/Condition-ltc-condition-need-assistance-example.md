# 需要照護協助狀況範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **需要照護協助狀況範例**

## Example Condition: 需要照護協助狀況範例

Profile: [長期照顧－主要問題及需求](StructureDefinition-LTCConditionNeed.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Problem List Item

**severity**: Severe

**code**: 需要協助刮鬍

**subject**: [陳明慧 Female, DoB: 1945-03-15 ( National Person Identifier (TWN): A123456789 (use: official, ))](Patient-ltc-patient-referral-chen-ming-hui-example.md)

**onset**: 2024-01-15

**recordedDate**: 2024-09-15

**note**: 

> 

個案由於身體功能退化，在日常生活活動上需要他人協助，包括洗澡、穿衣、進食等基本活動




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ltc-condition-need-assistance-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionNeed"]
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
  "severity" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "24484000",
      "display" : "Severe"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "296391000000100",
      "display" : "Needs assistance with shaving (finding)"
    }],
    "text" : "需要協助刮鬍"
  },
  "subject" : {
    "reference" : "Patient/ltc-patient-referral-chen-ming-hui-example"
  },
  "onsetDateTime" : "2024-01-15",
  "recordedDate" : "2024-09-15",
  "note" : [{
    "text" : "個案由於身體功能退化，在日常生活活動上需要他人協助，包括洗澡、穿衣、進食等基本活動"
  }]
}

```
