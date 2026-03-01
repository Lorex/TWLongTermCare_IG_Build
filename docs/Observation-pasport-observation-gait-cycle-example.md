# 步態週期測量範例 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **步態週期測量範例**

## Example Observation: 步態週期測量範例

Profile: [穿戴裝置－步態週期](StructureDefinition-PASportObservationGaitCycle.md)

**status**: Final

**category**: Activity

**code**: Measure of gait

**subject**: [陳明慧 Female, DoB: 1945-03-15 ( National Person Identifier (TWN): A123456789 (use: official, ))](Patient-ltc-patient-chen-ming-hui.md)

**effective**: 2024-01-15 10:00:00+0800

**performer**: [Practitioner 王美玲(official)](Practitioner-ltc-practitioner-example.md)

**bodySite**: Foot structure

> **component****code**: 支撐期(stance phase)**value**: 60 % (Details: UCUM code% = '%')

> **component****code**: 擺動期(swing phase)**value**: 40 % (Details: UCUM code% = '%')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "pasport-observation-gait-cycle-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationGaitCycle"]
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
      "system" : "http://snomed.info/sct",
      "code" : "363837002",
      "display" : "Measure of gait"
    }]
  },
  "subject" : {
    "reference" : "Patient/ltc-patient-chen-ming-hui"
  },
  "effectiveDateTime" : "2024-01-15T10:00:00+08:00",
  "performer" : [{
    "reference" : "Practitioner/ltc-practitioner-example"
  }],
  "bodySite" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "56459004",
      "display" : "Foot structure"
    }]
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/GaitCycleCS-Sport",
        "code" : "1",
        "display" : "支撐期(stance phase)"
      }]
    },
    "valueQuantity" : {
      "value" : 60,
      "unit" : "%",
      "system" : "http://unitsofmeasure.org",
      "code" : "%"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/GaitCycleCS-Sport",
        "code" : "2",
        "display" : "擺動期(swing phase)"
      }]
    },
    "valueQuantity" : {
      "value" : 40,
      "unit" : "%",
      "system" : "http://unitsofmeasure.org",
      "code" : "%"
    }
  }]
}

```
