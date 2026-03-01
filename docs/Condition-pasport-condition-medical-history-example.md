# 病史記錄範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **病史記錄範例**

## Example Condition: 病史記錄範例

Profile: [運動處方－病史](StructureDefinition-PASportConditionMedicalHistory.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: History of Present illness Narrative

**code**: 第二型糖尿病，已控制

**subject**: [陳明慧 Female, DoB: 1945-03-15 ( National Person Identifier (TWN): A123456789 (use: official, ))](Patient-ltc-patient-chen-ming-hui.md)

**recordedDate**: 2024-01-15



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "pasport-condition-medical-history-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/PASportConditionMedicalHistory"]
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
      "system" : "http://loinc.org",
      "code" : "10164-2",
      "display" : "History of Present illness Narrative"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "73211009",
      "display" : "Diabetes mellitus"
    }],
    "text" : "第二型糖尿病，已控制"
  },
  "subject" : {
    "reference" : "Patient/ltc-patient-chen-ming-hui"
  },
  "recordedDate" : "2024-01-15"
}

```
