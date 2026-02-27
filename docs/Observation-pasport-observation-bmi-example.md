# 身體質量指數測量範例 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **身體質量指數測量範例**

## Example Observation: 身體質量指數測量範例

Profile: [身體組成分析儀－身體質量指數](StructureDefinition-PASportObservationBodyMassIndex.md)

**status**: Final

**category**: Vital Signs

**code**: Body mass index (BMI) [Ratio]

**subject**: [陳明慧 Female, DoB: 1945-03-15 ( National Person Identifier (TWN): A123456789 (use: official, ))](Patient-ltc-patient-chen-ming-hui.md)

**effective**: 2024-01-15 08:30:00+0800

**performer**: [PractitionerRole Registered nurse](PractitionerRole-ltc-practitioner-role-nurse-example.md)

**value**: 23.8 kg/m2 (Details: UCUM codekg/m2 = 'kg/m2')

**interpretation**: Normal

**note**: @2024-01-15 08:30:00+0800

> 

BMI值23.8，屬於正常範圍，建議維持目前體重並透過運動增強體能


**derivedFrom**: 

* [Observation Body weight](Observation-pasport-observation-weight-example.md)
* [Observation Body height](Observation-pasport-observation-height-example.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "pasport-observation-bmi-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationBodyMassIndex"]
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
      "code" : "39156-5",
      "display" : "Body mass index (BMI) [Ratio]"
    }]
  },
  "subject" : {
    "reference" : "Patient/ltc-patient-chen-ming-hui"
  },
  "effectiveDateTime" : "2024-01-15T08:30:00+08:00",
  "performer" : [{
    "reference" : "PractitionerRole/ltc-practitioner-role-nurse-example"
  }],
  "valueQuantity" : {
    "value" : 23.8,
    "unit" : "kg/m2",
    "system" : "http://unitsofmeasure.org",
    "code" : "kg/m2"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "N",
      "display" : "Normal"
    }]
  }],
  "note" : [{
    "time" : "2024-01-15T08:30:00+08:00",
    "text" : "BMI值23.8，屬於正常範圍，建議維持目前體重並透過運動增強體能"
  }],
  "derivedFrom" : [{
    "reference" : "Observation/pasport-observation-weight-example"
  },
  {
    "reference" : "Observation/pasport-observation-height-example"
  }]
}

```
