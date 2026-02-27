# 體脂率測量範例 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **體脂率測量範例**

## Example Observation: 體脂率測量範例

Profile: [身體組成分析儀－體脂率](StructureDefinition-PASportObservationBodyFatPercentage.md)

**status**: Final

**category**: Vital Signs

**code**: Percentage of body fat Measured

**subject**: [陳明慧 Female, DoB: 1945-03-15 ( National Person Identifier (TWN): A123456789 (use: official, ))](Patient-ltc-patient-chen-ming-hui.md)

**effective**: 2024-01-15 08:45:00+0800

**performer**: [Practitioner 王美玲(official)](Practitioner-ltc-practitioner-example.md)

**value**: 28.5 % (Details: UCUM code% = '%')

**interpretation**: Normal

**note**: @2024-01-15 08:45:00+0800

> 

體脂率28.5%，位於女性正常範圍內。建議透過有氧運動和肌力訓練來優化身體組成


**method**: Pulse oximetry

**device**: InBody 270 身體組成分析儀

### ReferenceRanges

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Low** | **High** | **Text** |
| * | 21 % (Details: UCUM code% = '%') | 33 % (Details: UCUM code% = '%') | 女性正常範圍 |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "pasport-observation-body-fat-percentage-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationBodyFatPercentage"]
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
      "code" : "41982-0",
      "display" : "Percentage of body fat Measured"
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
    "value" : 28.5,
    "unit" : "%",
    "system" : "http://unitsofmeasure.org",
    "code" : "%"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "N",
      "display" : "Normal"
    }]
  }],
  "note" : [{
    "time" : "2024-01-15T08:45:00+08:00",
    "text" : "體脂率28.5%，位於女性正常範圍內。建議透過有氧運動和肌力訓練來優化身體組成"
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
      "value" : 21,
      "unit" : "%",
      "system" : "http://unitsofmeasure.org",
      "code" : "%"
    },
    "high" : {
      "value" : 33,
      "unit" : "%",
      "system" : "http://unitsofmeasure.org",
      "code" : "%"
    },
    "text" : "女性正常範圍"
  }]
}

```
