# 在宅急症血糖檢驗範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **在宅急症血糖檢驗範例**

## Example Observation: 在宅急症血糖檢驗範例

Profile: [在宅急症－檢驗結果](StructureDefinition-HAHObservationLab.md)

**basedOn**: [ServiceRequest ](ServiceRequest-hah-lab-request.md)

**status**: Final

**category**: Laboratory

**code**: Glucose [Mass/volume] in Blood

**subject**: [王測試 Male, DoB: 1945-03-15 ( Provider number)](Patient-hah-patient.md)

**encounter**: [Encounter: extension = in-person; status = finished; class = home health (ActCode#HH); type = 訪視; period = 2026-09-01 09:00:00+0800 --> 2026-09-01 10:00:00+0800](Encounter-hah-visit.md)

**effective**: 2026-09-01 09:10:00+0800

**performer**: [Practitioner 李示範](Practitioner-hah-practitioner.md)

**value**: 110 mg/dL (Details: UCUM codemg/dL = 'mg/dL')

**specimen**: [Specimen: identifier = https://example.org/specimens#HAH-SPECIMEN-1; type = ](Specimen-hah-specimen.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "hah-glucose",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HAHObservationLab"]
  },
  "basedOn" : [{
    "reference" : "ServiceRequest/hah-lab-request"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "2339-0"
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
    "value" : 110,
    "unit" : "mg/dL",
    "system" : "http://unitsofmeasure.org",
    "code" : "mg/dL"
  },
  "specimen" : {
    "reference" : "Specimen/hah-specimen"
  }
}

```
