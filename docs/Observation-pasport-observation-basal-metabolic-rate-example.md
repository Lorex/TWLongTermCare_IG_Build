# 基礎代謝率測量範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **基礎代謝率測量範例**

## Example Observation: 基礎代謝率測量範例

Profile: [身體組成分析儀－基礎代謝率](StructureDefinition-PASportObservationBasalMetabolicRate.md)

**status**: Final

**category**: Vital Signs

**code**: Basal metabolic rate

**subject**: [陳明慧 Female, DoB: 1945-03-15 ( National Person Identifier (TWN): A123456789 (use: official, ))](Patient-ltc-patient-chen-ming-hui.md)

**effective**: 2024-01-15 08:45:00+0800

**performer**: [Practitioner 王美玲(official)](Practitioner-ltc-practitioner-example.md)

**value**: 1350 kcal (Details: UCUM codekcal = 'kcal')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "pasport-observation-basal-metabolic-rate-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationBasalMetabolicRate"]
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
      "system" : "http://snomed.info/sct",
      "code" : "165109007",
      "display" : "Basal metabolic rate"
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
    "value" : 1350,
    "unit" : "kcal",
    "system" : "http://unitsofmeasure.org",
    "code" : "kcal"
  }
}

```
