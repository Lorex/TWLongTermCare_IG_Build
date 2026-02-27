# 肌肉質量指數測量範例 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **肌肉質量指數測量範例**

## Example Observation: 肌肉質量指數測量範例

Profile: [身體組成分析儀－肌肉質量指數](StructureDefinition-PASportObservationSkeletalMuscleMassIndex.md)

**status**: Final

**category**: Vital Signs

**code**: 肌肉質量指數

**subject**: [陳明慧 Female, DoB: 1945-03-15 ( National Person Identifier (TWN): A123456789 (use: official, ))](Patient-ltc-patient-chen-ming-hui.md)

**effective**: 2024-01-15 08:45:00+0800

**performer**: [Practitioner 王美玲(official)](Practitioner-ltc-practitioner-example.md)

**value**: 7.2 kg/m2 (Details: UCUM codekg/m2 = 'kg/m2')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "pasport-observation-skeletal-muscle-mass-index-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationSkeletalMuscleMassIndex"]
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
      "code" : "SMI",
      "display" : "肌肉質量指數"
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
    "value" : 7.2,
    "unit" : "kg/m2",
    "system" : "http://unitsofmeasure.org",
    "code" : "kg/m2"
  }
}

```
