# 長照 SDK－評估核定摘要（Observation）範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **長照 SDK－評估核定摘要（Observation）範例**

## Example Observation: 長照 SDK－評估核定摘要（Observation）範例

Profile: [長照 SDK－評估核定摘要](StructureDefinition-LTC-Observation-Assessment-Payload.md)

**status**: Final

**code**: Blood pressure method

**subject**: [王小明 Male, DoB: 1950-01-01 ( Provider number (use: official, ))](Patient-ltc-patient-sdk-example.md)

**effective**: 2025-01-01

> **component****code**: 長照福利身分**value**: 第3類

> **component****code**: CMS 等級**value**: 1a

> **component****code**: 評估類型**value**: 初評

> **component****code**: 計畫起始日**value**: 2025-01-01



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ltc-observation-assessment-sdk-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/LTC-Observation-Assessment-Payload"]
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
    "reference" : "Patient/ltc-patient-sdk-example"
  },
  "effectiveDateTime" : "2025-01-01",
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-assessment-component",
        "code" : "welfare-identity",
        "display" : "長照福利身分"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-welfare-identity",
        "code" : "cat3",
        "display" : "第3類"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-assessment-component",
        "code" : "cms-level",
        "display" : "CMS 等級"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-cmslevel",
        "code" : "1a",
        "display" : "1a"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-assessment-component",
        "code" : "assessment-type",
        "display" : "評估類型"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-assessment-type",
        "code" : "initial",
        "display" : "初評"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/cs-tw-ltc-assessment-component",
        "code" : "plan-start",
        "display" : "計畫起始日"
      }]
    },
    "valueDateTime" : "2025-01-01"
  }]
}

```
