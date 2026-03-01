# 長照 CS100－評估核定摘要（Observation）範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 CS100－評估核定摘要（Observation）範例**

## Example Observation: 長照 CS100－評估核定摘要（Observation）範例

Profile: [長照 SDK－評估核定摘要（Observation）](StructureDefinition-LTC-Observation-Assessment-CS100.md)

**status**: Final

**code**: Blood pressure method

**subject**: [王小明 (no stated gender), DoB Unknown ( https://example.org/mrn#A0001)](Patient-ltc-patient-cs100-example.md)

**effective**: 2025-10-02

> **component****code**: CMS 等級**value**: 1a

> **component****code**: 長照福利身分**value**: 第3類



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ltc-observation-assessment-cs100-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTC-Observation-Assessment-CS100"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "8357-6",
      "display" : "Blood pressure method"
    }]
  },
  "subject" : {
    "reference" : "Patient/ltc-patient-cs100-example"
  },
  "effectiveDateTime" : "2025-10-02",
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-assessment-component",
        "code" : "cms-level"
      }]
    },
    "valueCodeableConcept" : {
      "text" : "1a"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-assessment-component",
        "code" : "welfare-identity"
      }]
    },
    "valueCodeableConcept" : {
      "text" : "第3類"
    }
  }]
}

```
