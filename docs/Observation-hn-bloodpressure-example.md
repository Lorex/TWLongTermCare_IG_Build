# 居家護理－血壓量測範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－血壓量測範例**

## Example Observation: 居家護理－血壓量測範例

Profile: [基礎生理量測－血壓](StructureDefinition-PASportObservationBloodPressure.md)

**居家護理－來源表單**: [Response to Questionnaire '->居家護理－生命徵象' about '->陳明慧 Male, DoB: 1945-03-15 ( National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code)'](QuestionnaireResponse-hn-vitalsign-example.md)

**status**: Final

**category**: Vital Signs

**code**: Blood pressure panel with all children optional

**subject**: [陳明慧 Male, DoB: 1945-03-15 ( National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code)](Patient-hn-patient-example.md)

**effective**: 2025-12-08 09:00:00+0800

**performer**: [Practitioner 王美玲](Practitioner-hn-nurse-example.md)

> **component****code**: Systolic blood pressure**value**: 112 mm[Hg] (Details: UCUM codemm[Hg] = 'mm[Hg]')

> **component****code**: Diastolic blood pressure**value**: 73 mm[Hg] (Details: UCUM codemm[Hg] = 'mm[Hg]')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "hn-bloodpressure-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationBloodPressure"]
  },
  "extension" : [{
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHNSourceForm",
    "valueReference" : {
      "reference" : "QuestionnaireResponse/hn-vitalsign-example"
    }
  }],
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
      "code" : "85354-9"
    }]
  },
  "subject" : {
    "reference" : "Patient/hn-patient-example"
  },
  "effectiveDateTime" : "2025-12-08T09:00:00+08:00",
  "performer" : [{
    "reference" : "Practitioner/hn-nurse-example"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "8480-6"
      }]
    },
    "valueQuantity" : {
      "value" : 112,
      "unit" : "mm[Hg]",
      "system" : "http://unitsofmeasure.org",
      "code" : "mm[Hg]"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "8462-4"
      }]
    },
    "valueQuantity" : {
      "value" : 73,
      "unit" : "mm[Hg]",
      "system" : "http://unitsofmeasure.org",
      "code" : "mm[Hg]"
    }
  }]
}

```
