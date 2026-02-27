# 心率變異性測量範例 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **心率變異性測量範例**

## Example Observation: 心率變異性測量範例

Profile: [基礎生理量測－心率變異性](StructureDefinition-PASportObservationHeartRateVariability.md)

**status**: Final

**category**: Vital Signs

**code**: R-R interval.standard deviation (Heart rate variability)

**subject**: [陳明慧 Female, DoB: 1945-03-15 ( National Person Identifier (TWN): A123456789 (use: official, ))](Patient-ltc-patient-chen-ming-hui.md)

**effective**: 2024-01-15 08:45:00+0800

**performer**: [Practitioner 王美玲(official)](Practitioner-ltc-practitioner-example.md)

**value**: 45.2 ms (Details: UCUM codems = 'ms')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "pasport-observation-heart-rate-variability-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationHeartRateVariability"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "vital-signs",
      "display" : "Vital Signs"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "80404-7",
      "display" : "R-R interval.standard deviation (Heart rate variability)"
    }]
  },
  "subject" : {
    "reference" : "Patient/ltc-patient-chen-ming-hui"
  },
  "effectiveDateTime" : "2024-01-15T08:45:00+08:00",
  "performer" : [{
    "reference" : "Practitioner/ltc-practitioner-example"
  }],
  "valueQuantity" : {
    "value" : 45.2,
    "unit" : "ms",
    "system" : "http://unitsofmeasure.org",
    "code" : "ms"
  }
}

```
