# 骨骼肌重測量範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **骨骼肌重測量範例**

## Example Observation: 骨骼肌重測量範例

Profile: [身體組成分析儀－骨骼肌重](StructureDefinition-PASportObservationSkeletalMuscleMass.md)

**status**: Final

**category**: Vital Signs

**code**: 骨骼肌重

**subject**: [陳明慧 Female, DoB: 1945-03-15 ( National Person Identifier (TWN): A123456789 (use: official, ))](Patient-ltc-patient-chen-ming-hui.md)

**effective**: 2024-01-15 08:45:00+0800

**performer**: [Practitioner 王美玲(official)](Practitioner-ltc-practitioner-example.md)

**value**: 20.8 kg (Details: UCUM codekg = 'kg')

**interpretation**: Low

**note**: @2024-01-15 08:45:00+0800

> 

骨骼肌重20.8公斤，略低於年齡標準。建議增加阻力訓練以提升肌肉量，預防肌少症


**method**: Pulse oximetry

**device**: InBody 270 身體組成分析儀

### ReferenceRanges

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Low** | **High** | **Text** |
| * | 22 kg (Details: UCUM codekg = 'kg') | 27 kg (Details: UCUM codekg = 'kg') | 65歲女性正常範圍 |

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | 肌肉質量指數 | 7.6 kg/m2 (Details: UCUM codekg/m2 = 'kg/m2') |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "pasport-observation-skeletal-muscle-mass-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationSkeletalMuscleMass"]
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
      "code" : "SMM",
      "display" : "骨骼肌重"
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
    "value" : 20.8,
    "unit" : "kg",
    "system" : "http://unitsofmeasure.org",
    "code" : "kg"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "L",
      "display" : "Low"
    }]
  }],
  "note" : [{
    "time" : "2024-01-15T08:45:00+08:00",
    "text" : "骨骼肌重20.8公斤，略低於年齡標準。建議增加阻力訓練以提升肌肉量，預防肌少症"
  }],
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "252465000",
      "display" : "Pulse oximetry"
    }]
  },
  "device" : {
    "display" : "InBody 270 身體組成分析儀"
  },
  "referenceRange" : [{
    "low" : {
      "value" : 22,
      "unit" : "kg",
      "system" : "http://unitsofmeasure.org",
      "code" : "kg"
    },
    "high" : {
      "value" : 27,
      "unit" : "kg",
      "system" : "http://unitsofmeasure.org",
      "code" : "kg"
    },
    "text" : "65歲女性正常範圍"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/TempCodeCS-Sport",
        "code" : "SMI",
        "display" : "肌肉質量指數"
      }]
    },
    "valueQuantity" : {
      "value" : 7.6,
      "unit" : "kg/m2",
      "system" : "http://unitsofmeasure.org",
      "code" : "kg/m2"
    }
  }]
}

```
