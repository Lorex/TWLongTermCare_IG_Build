# 身高量測範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **身高量測範例**

## Example Observation: 身高量測範例

Profile: [基礎生理量測－身高](StructureDefinition-PASportObservationHeight.md)

**status**: Final

**category**: Vital Signs

**code**: Body height

**subject**: [陳明慧 Female, DoB: 1945-03-15 ( National Person Identifier (TWN): A123456789 (use: official, ))](Patient-ltc-patient-chen-ming-hui.md)

**effective**: 2024-01-15 08:15:00+0800

**performer**: [Practitioner 王美玲(official)](Practitioner-ltc-practitioner-example.md)

**value**: 165.8 cm (Details: UCUM codecm = 'cm')

**note**: @2024-01-15 08:15:00+0800

> 

身高165.8公分，用於計算BMI及設計個人化運動計畫


**method**: Measured body weight



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "pasport-observation-height-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationHeight"]
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
      "code" : "8302-2",
      "display" : "Body height"
    }]
  },
  "subject" : {
    "reference" : "Patient/ltc-patient-chen-ming-hui"
  },
  "effectiveDateTime" : "2024-01-15T08:15:00+08:00",
  "performer" : [{
    "reference" : "Practitioner/ltc-practitioner-example"
  }],
  "valueQuantity" : {
    "value" : 165.8,
    "unit" : "cm",
    "system" : "http://unitsofmeasure.org",
    "code" : "cm"
  },
  "note" : [{
    "time" : "2024-01-15T08:15:00+08:00",
    "text" : "身高165.8公分，用於計算BMI及設計個人化運動計畫"
  }],
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "363808001",
      "display" : "Measured body weight"
    }]
  }
}

```
