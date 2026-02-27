# 跑步機運動記錄範例 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **跑步機運動記錄範例**

## Example Observation: 跑步機運動記錄範例

Profile: [運動項目－跑步機](StructureDefinition-PASportObservationTreadmill.md)

**status**: Final

**category**: Activity

**code**: Treadmill, powered

**subject**: [陳明慧 Female, DoB: 1945-03-15 ( National Person Identifier (TWN): A123456789 (use: official, ))](Patient-ltc-patient-chen-ming-hui.md)

**effective**: 2024-01-15 10:30:00+0800

**performer**: [Practitioner 王美玲(official)](Practitioner-ltc-practitioner-example.md)

> **component****code**: Exercise duration**value**: 30 min (Details: UCUM codemin = 'min')

> **component****code**: Exercise distance unspecified time**value**: 3.5 km (Details: UCUM codekm = 'km')

> **component****code**: Calories burned Machine estimate**value**: 250 kcal (Details: UCUM codekcal = 'kcal')

> **component****code**: Treadmill speed achieved**value**: 7 km/h (Details: UCUM codekm/h = 'km/h')

> **component****code**: Maximum heart rate**value**: 145 /min (Details: UCUM code/min = '/min')

> **component****code**: Mean heart rate**value**: 128 /min (Details: UCUM code/min = '/min')

> **component****code**: Treadmill gradient achieved**value**: 5 % (Details: UCUM code% = '%')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "pasport-observation-treadmill-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationTreadmill"]
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
      "code" : "466021001",
      "display" : "Treadmill, powered"
    }]
  },
  "subject" : {
    "reference" : "Patient/ltc-patient-chen-ming-hui"
  },
  "effectiveDateTime" : "2024-01-15T10:30:00+08:00",
  "performer" : [{
    "reference" : "Practitioner/ltc-practitioner-example"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "55411-3",
        "display" : "Exercise duration"
      }]
    },
    "valueQuantity" : {
      "value" : 30,
      "unit" : "min",
      "system" : "http://unitsofmeasure.org",
      "code" : "min"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "55412-1",
        "display" : "Exercise distance unspecified time"
      }]
    },
    "valueQuantity" : {
      "value" : 3.5,
      "unit" : "km",
      "system" : "http://unitsofmeasure.org",
      "code" : "km"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "55421-2",
        "display" : "Calories burned Machine estimate"
      }]
    },
    "valueQuantity" : {
      "value" : 250,
      "unit" : "kcal",
      "system" : "http://unitsofmeasure.org",
      "code" : "kcal"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "252141006",
        "display" : "Treadmill speed achieved"
      }]
    },
    "valueQuantity" : {
      "value" : 7,
      "unit" : "km/h",
      "system" : "http://unitsofmeasure.org",
      "code" : "km/h"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "101692-2",
        "display" : "Maximum heart rate"
      }]
    },
    "valueQuantity" : {
      "value" : 145,
      "unit" : "/min",
      "system" : "http://unitsofmeasure.org",
      "code" : "/min"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "103205-1",
        "display" : "Mean heart rate"
      }]
    },
    "valueQuantity" : {
      "value" : 128,
      "unit" : "/min",
      "system" : "http://unitsofmeasure.org",
      "code" : "/min"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "252140007",
        "display" : "Treadmill gradient achieved"
      }]
    },
    "valueQuantity" : {
      "value" : 5,
      "unit" : "%",
      "system" : "http://unitsofmeasure.org",
      "code" : "%"
    }
  }]
}

```
