# 肌肉量測量範例 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **肌肉量測量範例**

## Example Observation: 肌肉量測量範例

Profile: [身體組成分析儀－肌肉量](StructureDefinition-PASportObservationSoftLeanMass.md)

**status**: Final

**category**: Vital Signs

**code**: 肌肉量

**subject**: [陳明慧 Female, DoB: 1945-03-15 ( National Person Identifier (TWN): A123456789 (use: official, ))](Patient-ltc-patient-chen-ming-hui.md)

**effective**: 2024-01-15 08:45:00+0800

**performer**: [Practitioner 王美玲(official)](Practitioner-ltc-practitioner-example.md)

**value**: 28.6 kg (Details: UCUM codekg = 'kg')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "pasport-observation-soft-lean-mass-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationSoftLeanMass"]
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
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS-Sport",
      "code" : "SLM",
      "display" : "肌肉量"
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
    "value" : 28.6,
    "unit" : "kg",
    "system" : "http://unitsofmeasure.org",
    "code" : "kg"
  }
}

```
