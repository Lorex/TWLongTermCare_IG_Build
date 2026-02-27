# 安靜心率測量範例 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **安靜心率測量範例**

## Example Observation: 安靜心率測量範例

Profile: [基礎生理量測－安靜心率](StructureDefinition-PASportObservationRestingHeartRate.md)

**status**: Final

**category**: Vital Signs

**code**: Heart rate

**subject**: [陳明慧 Female, DoB: 1945-03-15 ( National Person Identifier (TWN): A123456789 (use: official, ))](Patient-ltc-patient-chen-ming-hui.md)

**effective**: 2024-01-15 08:45:00+0800

**performer**: [Practitioner 王美玲(official)](Practitioner-ltc-practitioner-example.md)

**value**: 68 /min (Details: UCUM code/min = '/min')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "pasport-observation-resting-heart-rate-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationRestingHeartRate"]
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
      "code" : "8867-4",
      "display" : "Heart rate"
    },
    {
      "system" : "http://loinc.org",
      "code" : "40443-4",
      "display" : "Heart rate --resting"
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
    "value" : 68,
    "unit" : "/min",
    "system" : "http://unitsofmeasure.org",
    "code" : "/min"
  }
}

```
