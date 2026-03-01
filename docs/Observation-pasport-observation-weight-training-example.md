# 重量訓練記錄範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **重量訓練記錄範例**

## Example Observation: 重量訓練記錄範例

Profile: [運動項目－重量訓練](StructureDefinition-PASportObservationWeightTraining.md)

**status**: Final

**category**: Activity

**code**: Weights

**subject**: [陳明慧 Female, DoB: 1945-03-15 ( National Person Identifier (TWN): A123456789 (use: official, ))](Patient-ltc-patient-chen-ming-hui.md)

**effective**: 2024-01-15 11:00:00+0800

**performer**: [Practitioner 王美玲(official)](Practitioner-ltc-practitioner-example.md)

**value**: 臥推（Bench Press）

> **component****code**: 訓練重量**value**: 60 kg (Details: UCUM codekg = 'kg')

> **component****code**: 訓練組數**value**: 3

> **component****code**: Repetition count**value**: 10



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "pasport-observation-weight-training-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationWeightTraining"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "activity",
      "display" : "Activity"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "LA11839-0",
      "display" : "Weights"
    }]
  },
  "subject" : {
    "reference" : "Patient/ltc-patient-chen-ming-hui"
  },
  "effectiveDateTime" : "2024-01-15T11:00:00+08:00",
  "performer" : [{
    "reference" : "Practitioner/ltc-practitioner-example"
  }],
  "valueCodeableConcept" : {
    "text" : "臥推（Bench Press）"
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/SportTrainingCS-Sport",
        "code" : "training-wt",
        "display" : "訓練重量"
      }]
    },
    "valueQuantity" : {
      "value" : 60,
      "unit" : "kg",
      "system" : "http://unitsofmeasure.org",
      "code" : "kg"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/SportTrainingCS-Sport",
        "code" : "sets",
        "display" : "訓練組數"
      }]
    },
    "valueQuantity" : {
      "value" : 3
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "100298-9",
        "display" : "Repetition count"
      }]
    },
    "valueQuantity" : {
      "value" : 10
    }
  }]
}

```
