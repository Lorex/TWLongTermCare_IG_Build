# 居家護理－呼吸量測範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理－呼吸量測範例**

## Example Observation: 居家護理－呼吸量測範例

Profile: [基礎生理量測－呼吸速率](StructureDefinition-PASportObservationRespiratoryRate.md)

**居家護理－來源表單**: [Response to Questionnaire '->居家護理－生命徵象' about '->陳明慧 Male, DoB: 1945-03-15 ( National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code)'](QuestionnaireResponse-hn-vitalsign-example.md)

**status**: Final

**category**: Vital Signs

**code**: Respiratory rate

**subject**: [陳明慧 Male, DoB: 1945-03-15 ( National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code)](Patient-hn-patient-example.md)

**effective**: 2025-12-08 09:00:00+0800

**performer**: [Practitioner 王美玲](Practitioner-hn-nurse-example.md)

**value**: 16 /min (Details: UCUM code/min = '/min')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "hn-respiration-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/PASportObservationRespiratoryRate"]
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
      "code" : "9279-1",
      "display" : "Respiratory rate"
    }]
  },
  "subject" : {
    "reference" : "Patient/hn-patient-example"
  },
  "effectiveDateTime" : "2025-12-08T09:00:00+08:00",
  "performer" : [{
    "reference" : "Practitioner/hn-nurse-example"
  }],
  "valueQuantity" : {
    "value" : 16,
    "unit" : "/min",
    "system" : "http://unitsofmeasure.org",
    "code" : "/min"
  }
}

```
