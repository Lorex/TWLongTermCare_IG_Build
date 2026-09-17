# 在宅急症體溫量測範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症體溫量測範例**

## Example Observation: 在宅急症體溫量測範例

Profile: [基礎生理量測－體溫](StructureDefinition-PASportObservationBodyTemperature.md)

**status**: Final

**category**: Vital Signs

**code**: Body temperature

**subject**: [王測試 Male, DoB: 1945-03-15 ( Provider number)](Patient-hah-patient.md)

**encounter**: [Encounter: extension = in-person; status = finished; class = home health (ActCode#HH); type = 訪視; period = 2026-09-01 09:00:00+0800 --> 2026-09-01 10:00:00+0800](Encounter-hah-visit.md)

**effective**: 2026-09-01 09:10:00+0800

**performer**: [Practitioner 李示範](Practitioner-hah-practitioner.md)

**value**: 37.2 Cel (Details: UCUM codeCel = 'Cel')

**device**: [Device: identifier = https://example.org/devices#THERMOMETER-001; status = active; type = ](Device-hah-device.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "hah-temperature",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationBodyTemperature"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "vital-signs"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "8310-5",
      "display" : "Body temperature"
    }]
  },
  "subject" : {
    "reference" : "Patient/hah-patient"
  },
  "encounter" : {
    "reference" : "Encounter/hah-visit"
  },
  "effectiveDateTime" : "2026-09-01T09:10:00+08:00",
  "performer" : [{
    "reference" : "Practitioner/hah-practitioner"
  }],
  "valueQuantity" : {
    "value" : 37.2,
    "unit" : "Cel",
    "system" : "http://unitsofmeasure.org",
    "code" : "Cel"
  },
  "device" : {
    "reference" : "Device/hah-device"
  }
}

```
