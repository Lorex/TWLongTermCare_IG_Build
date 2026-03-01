# 心率量測範例 - 臺灣長期照顧實作指引 (Taiwan Long-Term Care Implementation Guide) v0.4.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **心率量測範例**

## Example Observation: 心率量測範例

Profile: [基礎生理量測－心率](StructureDefinition-PASportObservationHeartRate.md)

**status**: Final

**category**: Vital Signs

**code**: Heart rate

**subject**: [陳明慧 Female, DoB: 1945-03-15 ( National Person Identifier (TWN): A123456789 (use: official, ))](Patient-ltc-patient-chen-ming-hui.md)

**effective**: 2024-01-15 09:30:00+0800

**performer**: [Practitioner 王美玲(official)](Practitioner-ltc-practitioner-example.md)

**value**: 72 beats/min (Details: UCUM code/min = '/min')

**note**: @2024-01-15 09:30:00+0800

> 

運動前靜息心率，患者狀態穩定，準備開始進行步行運動


**bodySite**: Right upper arm structure

**method**: Auscultation



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "pasport-observation-heart-rate-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationHeartRate"]
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
    }]
  },
  "subject" : {
    "reference" : "Patient/ltc-patient-chen-ming-hui"
  },
  "effectiveDateTime" : "2024-01-15T09:30:00+08:00",
  "performer" : [{
    "reference" : "Practitioner/ltc-practitioner-example"
  }],
  "valueQuantity" : {
    "value" : 72,
    "unit" : "beats/min",
    "system" : "http://unitsofmeasure.org",
    "code" : "/min"
  },
  "note" : [{
    "time" : "2024-01-15T09:30:00+08:00",
    "text" : "運動前靜息心率，患者狀態穩定，準備開始進行步行運動"
  }],
  "bodySite" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "368209003",
      "display" : "Right upper arm structure"
    }]
  },
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "37931006",
      "display" : "Auscultation"
    }]
  }
}

```
