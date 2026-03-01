# 步態分析測量範例 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **步態分析測量範例**

## Example Observation: 步態分析測量範例

Profile: [穿戴裝置－步態分析](StructureDefinition-PASportObservationGaitType.md)

**status**: Final

**category**: Activity

**code**: Finding of gait

**subject**: [陳明慧 Female, DoB: 1945-03-15 ( National Person Identifier (TWN): A123456789 (use: official, ))](Patient-ltc-patient-chen-ming-hui.md)

**effective**: 2024-01-15 10:15:00+0800

**performer**: [Practitioner 王美玲(official)](Practitioner-ltc-practitioner-example.md)

**value**: Gait normal

**bodySite**: Foot structure

> **component****code**: Gait normal**value**: 75 % (Details: UCUM code% = '%')

> **component****code**: Medial rotation - action**value**: 15 % (Details: UCUM code% = '%')

> **component****code**: Lateral rotation - action**value**: 10 % (Details: UCUM code% = '%')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "pasport-observation-gait-type-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationGaitType"]
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
      "code" : "298302000",
      "display" : "Finding of gait"
    }]
  },
  "subject" : {
    "reference" : "Patient/ltc-patient-chen-ming-hui"
  },
  "effectiveDateTime" : "2024-01-15T10:15:00+08:00",
  "performer" : [{
    "reference" : "Practitioner/ltc-practitioner-example"
  }],
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "8117002",
      "display" : "Gait normal"
    }]
  },
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
        "system" : "http://snomed.info/sct",
        "code" : "8117002",
        "display" : "Gait normal"
      }]
    },
    "valueQuantity" : {
      "value" : 75,
      "unit" : "%",
      "system" : "http://unitsofmeasure.org",
      "code" : "%"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "264739002",
        "display" : "Medial rotation - action"
      }]
    },
    "valueQuantity" : {
      "value" : 15,
      "unit" : "%",
      "system" : "http://unitsofmeasure.org",
      "code" : "%"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "264730003",
        "display" : "Lateral rotation - action"
      }]
    },
    "valueQuantity" : {
      "value" : 10,
      "unit" : "%",
      "system" : "http://unitsofmeasure.org",
      "code" : "%"
    }
  }]
}

```
