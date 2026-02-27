# 腰臀圍比測量範例 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **腰臀圍比測量範例**

## Example Observation: 腰臀圍比測量範例

Profile: [身體組成分析儀－腰臀圍比](StructureDefinition-PASportObservationWaistHipRate.md)

**status**: Final

**category**: Vital Signs

**code**: 腰臀圍比

**subject**: [陳明慧 Female, DoB: 1945-03-15 ( National Person Identifier (TWN): A123456789 (use: official, ))](Patient-ltc-patient-chen-ming-hui.md)

**effective**: 2024-01-15 08:45:00+0800

**performer**: [Practitioner 王美玲(official)](Practitioner-ltc-practitioner-example.md)

**value**: 0.85



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "pasport-observation-waist-hip-rate-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationWaistHipRate"]
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
      "code" : "WHR",
      "display" : "腰臀圍比"
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
    "value" : 0.85
  }
}

```
