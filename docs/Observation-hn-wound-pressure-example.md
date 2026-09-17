# 居家護理壓傷範例 - 臺灣長期照顧實作指引(TW LTC IG) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **居家護理壓傷範例**

## Example Observation: 居家護理壓傷範例

Profile: [居家護理－傷口紀錄](StructureDefinition-HNWound.md)

**居家護理－收案關聯**: [EpisodeOfCare: extension = ->Response to Questionnaire '->居家護理－個案基本資料' about '->陳明慧 Male, DoB: 1945-03-15 ( National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code)'; identifier = https://example.org/home-nursing/episodes#HN0001-20251208; status = active; period = 2025-12-08 --> (ongoing)](EpisodeOfCare-hn-episode-example.md)

**居家護理－來源表單**: [Response to Questionnaire '->居家護理－照護紀錄' about '->陳明慧 Male, DoB: 1945-03-15 ( National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code)'](QuestionnaireResponse-hn-carerecord-wounds-example.md)

**status**: Final

**category**: Exam

**code**: 傷口紀錄

**subject**: [陳明慧 Male, DoB: 1945-03-15 ( National Person Identifier where the xxx is the ISO table 3166 3-character (alphabetic) country code)](Patient-hn-patient-example.md)

**effective**: 2025-12-08 09:00:00+0800

**performer**: [Practitioner 王美玲](Practitioner-hn-nurse-example.md)

**bodySite**: 右小腿

> **component****code**: 傷口分類**value**: 壓傷

> **component****code**: 長度**dataAbsentReason**: Unknown

> **component****code**: 寬度**dataAbsentReason**: Unknown

> **component****code**: 深度**dataAbsentReason**: Unknown

> **component****code**: 傷口等級**value**: 無法分期



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "hn-wound-pressure-example",
  "meta" : {
    "profile" : ["http://ltc-ig.fhir.tw/StructureDefinition/HNWound"]
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
      "reference" : "QuestionnaireResponse/hn-carerecord-wounds-example"
    }
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "exam"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-workflow",
      "code" : "wound"
    }]
  },
  "subject" : {
    "reference" : "Patient/hn-patient-example"
  },
  "effectiveDateTime" : "2025-12-08T09:00:00+08:00",
  "performer" : [{
    "reference" : "Practitioner/hn-nurse-example"
  }],
  "bodySite" : {
    "text" : "右小腿"
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-workflow",
        "code" : "wound-category"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-answer",
        "code" : "c7ead2b329689",
        "display" : "壓傷"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-workflow",
        "code" : "length"
      }]
    },
    "dataAbsentReason" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
        "code" : "unknown"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-workflow",
        "code" : "width"
      }]
    },
    "dataAbsentReason" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
        "code" : "unknown"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-workflow",
        "code" : "depth"
      }]
    },
    "dataAbsentReason" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
        "code" : "unknown"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-workflow",
        "code" : "wound-level"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ltc-ig.fhir.tw/CodeSystem/hn-answer",
        "code" : "cecf422c03011",
        "display" : "無法分期"
      }]
    }
  }]
}

```
