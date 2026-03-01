# 體重量測範例 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **體重量測範例**

## Example Observation: 體重量測範例

Profile: [基礎生理量測－體重](StructureDefinition-PASportObservationWeight.md)

**status**: Final

**category**: Vital Signs

**code**: Body weight

**subject**: [陳明慧 Female, DoB: 1945-03-15 ( National Person Identifier (TWN): A123456789 (use: official, ))](Patient-ltc-patient-chen-ming-hui.md)

**effective**: 2024-01-15 08:00:00+0800

**performer**: [Practitioner 王美玲(official)](Practitioner-ltc-practitioner-example.md)

**value**: 65.5 kg (Details: UCUM codekg = 'kg')

**note**: @2024-01-15 08:00:00+0800

> 

運動計畫開始前基線體重測量，較上月減輕0.8公斤，患者狀況良好


**method**: Measured body weight

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Weight W clothes Measured | -0.8 kg (Details: UCUM codekg = 'kg') |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "pasport-observation-weight-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationWeight"]
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
      "code" : "29463-7",
      "display" : "Body weight"
    }]
  },
  "subject" : {
    "reference" : "Patient/ltc-patient-chen-ming-hui"
  },
  "effectiveDateTime" : "2024-01-15T08:00:00+08:00",
  "performer" : [{
    "reference" : "Practitioner/ltc-practitioner-example"
  }],
  "valueQuantity" : {
    "value" : 65.5,
    "unit" : "kg",
    "system" : "http://unitsofmeasure.org",
    "code" : "kg"
  },
  "note" : [{
    "time" : "2024-01-15T08:00:00+08:00",
    "text" : "運動計畫開始前基線體重測量，較上月減輕0.8公斤，患者狀況良好"
  }],
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "363808001",
      "display" : "Measured body weight"
    }]
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "8350-1",
        "display" : "Weight W clothes Measured"
      }]
    },
    "valueQuantity" : {
      "value" : -0.8,
      "unit" : "kg",
      "system" : "http://unitsofmeasure.org",
      "code" : "kg"
    }
  }]
}

```
