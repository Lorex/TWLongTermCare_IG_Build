# 與家人同住居住狀況範例 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **與家人同住居住狀況範例**

## Example Condition: 與家人同住居住狀況範例

Profile: [長期照顧－居住狀況](StructureDefinition-LTCConditionResidence.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Problem List Item

**code**: 非獨居

**subject**: [陳明慧 Female, DoB: 1945-03-15 ( National Person Identifier (TWN): A123456789 (use: official, ))](Patient-ltc-patient-referral-chen-ming-hui-example.md)

**note**: @2024-01-15

> 

與配偶同住




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ltc-condition-residence-not-alone-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTCConditionResidence"]
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
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/ReferralConditionResidenceCS-TWLTC",
      "code" : "not-alone",
      "display" : "非獨居"
    }]
  },
  "subject" : {
    "reference" : "Patient/ltc-patient-referral-chen-ming-hui-example"
  },
  "note" : [{
    "time" : "2024-01-15",
    "text" : "與配偶同住"
  }]
}

```
