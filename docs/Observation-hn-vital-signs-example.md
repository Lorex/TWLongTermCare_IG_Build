# 居家護理生命徵象資源範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理生命徵象資源範例**

## Example Observation: 居家護理生命徵象資源範例

Profile: [居家護理－生命徵象](StructureDefinition-HNVitalSigns.md)

**居家護理－收案關聯**: [EpisodeOfCare: extension = ->Response to Questionnaire '->居家護理－個案基本資料' about '->陳明慧 Male, DoB: 1945-03-15 ( National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code)'; identifier = https://example.org/home-nursing/episodes#HN0001-20251208; status = active; period = 2025-12-08 --> (ongoing)](EpisodeOfCare-hn-episode-example.md)

**居家護理－來源表單**: [Response to Questionnaire '->居家護理－生命徵象' about '->陳明慧 Male, DoB: 1945-03-15 ( National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code)'](QuestionnaireResponse-hn-vitalsign-example.md)

**status**: Final

**category**: Vital Signs

**code**: Vital signs, weight, height, head circumference, oxygen saturation and BMI panel

**subject**: [陳明慧 Male, DoB: 1945-03-15 ( National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code)](Patient-hn-patient-example.md)

**effective**: 2025-12-08 09:00:00+0800

**performer**: [Practitioner 王美玲](Practitioner-hn-nurse-example.md)

**hasMember**: 

* [Observation Body temperature](Observation-hn-temperature-example.md)
* [Observation Heart rate](Observation-hn-pulse-example.md)
* [Observation Respiratory rate](Observation-hn-respiration-example.md)
* [Observation Blood pressure panel with all children optional](Observation-hn-bloodpressure-example.md)
* [Observation Oxygen saturation in Arterial blood](Observation-hn-oxygen-example.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "hn-vital-signs-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HNVitalSigns"]
  },
  "extension" : [{
    "url" : "http://ltc-ig.fhir.tw/StructureDefinition/ExtHNEpisode",
    "valueReference" : {
      "reference" : "EpisodeOfCare/hn-episode-example"
    }
  },
  {
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
      "code" : "85353-1"
    }]
  },
  "subject" : {
    "reference" : "Patient/hn-patient-example"
  },
  "effectiveDateTime" : "2025-12-08T09:00:00+08:00",
  "performer" : [{
    "reference" : "Practitioner/hn-nurse-example"
  }],
  "hasMember" : [{
    "reference" : "Observation/hn-temperature-example"
  },
  {
    "reference" : "Observation/hn-pulse-example"
  },
  {
    "reference" : "Observation/hn-respiration-example"
  },
  {
    "reference" : "Observation/hn-bloodpressure-example"
  },
  {
    "reference" : "Observation/hn-oxygen-example"
  }]
}

```
